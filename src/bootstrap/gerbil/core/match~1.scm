(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40416_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40417_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40418_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40419_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40420_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40421_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40422_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40423_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40424_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40425_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40426_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40427_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40428_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40429_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40430_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40443_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40451_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40452_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40453_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40458_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40459_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40460_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40461_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40462_|
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
      (lambda _%$args35737%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35737%_)))
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
      (lambda (_%stx35734%_)
        (if (gx#identifier? _%stx35734%_)
            (let ((__tmp40415 (gx#syntax-local-value _%stx35734%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40415))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx34036%_ _%match-stx34038%_)
        (letrec ((_%parse134040%_
                  (lambda (_%hd34399%_)
                    (let* ((_%__stx3820338204%_ _%hd34399%_)
                           (_%g3442534567%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3820338204%_))))
                      (let ((_%__kont3820638207%_
                             (lambda (_%g3442735497%_ _%g3442835499%_)
                               (let* ((_%__stx3812338124%_ _%g3442735497%_)
                                      (_%g3551635549%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3812338124%_))))
                                 (let ((_%__kont3812638127%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3442835499%_ '()))))
                                       (_%__kont3812838129%_
                                        (lambda (_%g3551835690%_)
                                          (cons '?:
                                                (cons _%g3442835499%_
                                                      (cons (_%parse134040%_
                                                             _%g3551835690%_)
                                                            '())))))
                                       (_%__kont3813038131%_
                                        (lambda (_%g3552235660%_)
                                          (cons '?:
                                                (cons _%g3442835499%_
                                                      (cons '=>:
                                                            (cons (_%parse134040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3552235660%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3813238133%_
                                        (lambda (_%g3552935611%_
                                                 _%g3553035613%_)
                                          (cons '?:
                                                (cons _%g3442835499%_
                                                      (cons '::
                                                            (cons _%g3553035613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse134040%_ _%g3552935611%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3813438135%_
                                        (lambda ()
                                          (_%parse-error34047%_ _%hd34399%_))))
                                   (let ((_%g3551235701%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3812338124%_)
                                                (let ((_%e3551935680%_
                                                       (gx#syntax-e
                                                        _%__stx3812338124%_)))
                                                  (let ((_%tl3552135687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3551935680%_)))
                                                        (_%hd3552035684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3551935680%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3552135687%_)
                                                        (_%__kont3812838129%_
                                                         _%hd3552035684%_)
                                                        (if (gx#identifier?
                                                             _%hd3552035684%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40416_|
                         _%hd3552035684%_)
                        (if (gx#stx-pair? _%tl3552135687%_)
                            (let ((_%e3552635650%_
                                   (gx#syntax-e _%tl3552135687%_)))
                              (let ((_%tl3552835657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3552635650%_)))
                                    (_%hd3552735654%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3552635650%_))))
                                (if (gx#stx-null? _%tl3552835657%_)
                                    (_%__kont3813038131%_ _%hd3552735654%_)
                                    (_%__kont3813438135%_))))
                            (_%__kont3813438135%_))
                        (_%__kont3813438135%_))
                    (if (gx#stx-datum? _%hd3552035684%_)
                        (let ((_%e3553435577%_ (gx#stx-e _%hd3552035684%_)))
                          (if (equal? _%e3553435577%_ '::)
                              (if (gx#stx-pair? _%tl3552135687%_)
                                  (let ((_%e3553535581%_
                                         (gx#syntax-e _%tl3552135687%_)))
                                    (let ((_%tl3553735588%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3553535581%_)))
                                          (_%hd3553635585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3553535581%_))))
                                      (if (gx#stx-pair? _%tl3553735588%_)
                                          (let ((_%e3553835591%_
                                                 (gx#syntax-e
                                                  _%tl3553735588%_)))
                                            (let ((_%tl3554035598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3553835591%_)))
                                                  (_%hd3553935595%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3553835591%_))))
                                              (if (gx#identifier?
                                                   _%hd3553935595%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40417_|
                                                       _%hd3553935595%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3554035598%_)
                                                          (let ((_%e3554135601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3554035598%_)))
                    (let ((_%tl3554335608%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3554135601%_)))
                          (_%hd3554235605%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3554135601%_))))
                      (if (gx#stx-null? _%tl3554335608%_)
                          (_%__kont3813238133%_
                           _%hd3554235605%_
                           _%hd3553635585%_)
                          (_%__kont3813438135%_))))
                  (_%__kont3813438135%_))
              (_%__kont3813438135%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3813438135%_))))
                                          (_%__kont3813438135%_))))
                                  (_%__kont3813438135%_))
                              (_%__kont3813438135%_)))
                        (_%__kont3813438135%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3813438135%_)))))
                                     (if (gx#stx-null? _%__stx3812338124%_)
                                         (_%__kont3812638127%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3551235701%_))))))))
                            (_%__kont3820838209%_
                             (lambda (_%g3443535402%_)
                               (let* ((_%__stx3810538106%_ _%g3443535402%_)
                                      (_%g3541435425%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3810538106%_))))
                                 (let ((_%__kont3810838109%_
                                        (lambda (_%g3541635453%_)
                                          (_%parse134040%_ _%g3541635453%_)))
                                       (_%__kont3811038111%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse134040%_
                                                 _%g3443535402%_)))))
                                   (if (gx#stx-pair? _%__stx3810538106%_)
                                       (let ((_%e3541735443%_
                                              (gx#syntax-e
                                               _%__stx3810538106%_)))
                                         (let ((_%tl3541935450%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3541735443%_)))
                                               (_%hd3541835447%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3541735443%_))))
                                           (if (gx#stx-null? _%tl3541935450%_)
                                               (_%__kont3810838109%_
                                                _%hd3541835447%_)
                                               (_%__kont3811038111%_))))
                                       (_%__kont3811038111%_))))))
                            (_%__kont3821038211%_
                             (lambda (_%g3443935317%_)
                               (let* ((_%__stx3808738088%_ _%g3443935317%_)
                                      (_%g3532935340%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3808738088%_))))
                                 (let ((_%__kont3809038091%_
                                        (lambda (_%g3533135368%_)
                                          (_%parse134040%_ _%g3533135368%_)))
                                       (_%__kont3809238093%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse134040%_
                                                 _%g3443935317%_)))))
                                   (if (gx#stx-pair? _%__stx3808738088%_)
                                       (let ((_%e3533235358%_
                                              (gx#syntax-e
                                               _%__stx3808738088%_)))
                                         (let ((_%tl3533435365%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3533235358%_)))
                                               (_%hd3533335362%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3533235358%_))))
                                           (if (gx#stx-null? _%tl3533435365%_)
                                               (_%__kont3809038091%_
                                                _%hd3533335362%_)
                                               (_%__kont3809238093%_))))
                                       (_%__kont3809238093%_))))))
                            (_%__kont3821238213%_
                             (lambda (_%g3444335287%_)
                               (cons 'not:
                                     (cons (_%parse134040%_ _%g3444335287%_)
                                           '()))))
                            (_%__kont3821438215%_
                             (lambda (_%g3445035243%_ _%g3445135245%_)
                               (cons 'cons:
                                     (cons (_%parse134040%_ _%g3445135245%_)
                                           (cons (_%parse134040%_
                                                  _%g3445035243%_)
                                                 '())))))
                            (_%__kont3821638217%_
                             (lambda (_%g3446135187%_
                                      _%g3446235189%_
                                      _%g3446335190%_)
                               (if (gx#stx-null? _%g3446135187%_)
                                   (cons 'cons:
                                         (cons (_%parse134040%_
                                                _%g3446335190%_)
                                               (cons (_%parse134040%_
                                                      _%g3446235189%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse134040%_
                                                _%g3446335190%_)
                                               (cons (_%parse134040%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3446235189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3446135187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3821838219%_
                             (lambda (_%g3447335139%_)
                               (_%parse-list34042%_ _%g3447335139%_)))
                            (_%__kont3822038221%_
                             (lambda (_%g3447735109%_)
                               (cons 'box:
                                     (cons (_%parse134040%_ _%g3447735109%_)
                                           '()))))
                            (_%__kont3822238223%_
                             (lambda (_%g3448435072%_)
                               (cons 'box:
                                     (cons (_%parse134040%_ _%g3448435072%_)
                                           '()))))
                            (_%__kont3822438225%_
                             (lambda (_%g3448635048%_)
                               (_%parse134040%_ _%g3448635048%_)))
                            (_%__kont3822638227%_
                             (lambda (_%g3449335010%_)
                               (cons 'values:
                                     (cons (_%parse-vector34043%_
                                            _%g3449335010%_)
                                           '()))))
                            (_%__kont3822838229%_
                             (lambda (_%g3449734982%_)
                               (cons 'vector:
                                     (cons (_%parse-vector34043%_
                                            _%g3449734982%_)
                                           '()))))
                            (_%__kont3823038231%_
                             (lambda (_%g3450134943%_)
                               (cons 'vector:
                                     (cons (_%parse-vector34043%_
                                            (foldr (lambda (_%g3495634959%_
                                                            _%g3495734962%_)
                                                     (cons _%g3495634959%_
                                                           _%g3495734962%_))
                                                   '()
                                                   _%g3450134943%_))
                                           '()))))
                            (_%__kont3823438235%_
                             (lambda (_%g3451234891%_ _%g3451334893%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3451334893%_)
                                           (cons (_%parse-vector34043%_
                                                  _%g3451234891%_)
                                                 '())))))
                            (_%__kont3823638237%_
                             (lambda (_%g3451734861%_ _%g3451834863%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3451834863%_)
                                           (cons (_%parse-class-body34045%_
                                                  _%g3451734861%_)
                                                 '())))))
                            (_%__kont3823838239%_
                             (lambda (_%g3452234821%_ _%g3452334823%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3452334823%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3452234821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3824038241%_
                             (lambda (_%g3453034781%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3453034781%_) '()))))
                            (_%__kont3824238243%_
                             (lambda (_%g3453734741%_)
                               (_%parse-qq34046%_ _%g3453734741%_)))
                            (_%__kont3824438245%_
                             (lambda (_%g3454434697%_ _%g3454534699%_)
                               (cons 'apply:
                                     (cons _%g3454534699%_
                                           (cons (_%parse134040%_
                                                  _%g3454434697%_)
                                                 '())))))
                            (_%__kont3824638247%_
                             (lambda (_%g3455534645%_)
                               (_%parse134040%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3455534645%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd34399%_)
                                  (let ((_%$e34656%_
                                         (gx#stx-source _%hd34399%_)))
                                    (if _%$e34656%_
                                        _%$e34656%_
                                        (gx#stx-source _%stx34036%_))))))))
                            (_%__kont3824838249%_
                             (lambda (_%g3455934619%_) (cons 'any: '())))
                            (_%__kont3825038251%_
                             (lambda (_%g3456034603%_)
                               (cons 'var: (cons _%g3456034603%_ '()))))
                            (_%__kont3825238253%_
                             (lambda (_%g3456134585%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3456134585%_) '()))))
                            (_%__kont3825438255%_
                             (lambda () (_%parse-error34047%_ _%hd34399%_))))
                        (let* ((_%g3442334596%_
                                (lambda ()
                                  (let ((_%g3456134585%_ _%__stx3820338204%_))
                                    (if (gx#stx-datum? _%g3456134585%_)
                                        (_%__kont3825238253%_ _%g3456134585%_)
                                        (_%__kont3825438255%_)))))
                               (_%g3442234612%_
                                (lambda ()
                                  (let ((_%g3456034603%_ _%__stx3820338204%_))
                                    (if (and (gx#identifier? _%g3456034603%_)
                                             (not (gx#ellipsis?
                                                   _%g3456034603%_)))
                                        (_%__kont3825038251%_ _%g3456034603%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3442334596%_))))))
                               (_%g3442134628%_
                                (lambda ()
                                  (let ((_%g3455934619%_ _%__stx3820338204%_))
                                    (if (gx#underscore? _%g3455934619%_)
                                        (_%__kont3824838249%_ _%g3455934619%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3442234612%_))))))
                               (_%__match3853038531%_
                                (lambda (_%e3455634635%_
                                         _%hd3455734639%_
                                         _%tl3455834642%_)
                                  (let ((_%g3455534645%_ _%hd3455734639%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3455534645%_)
                                        (_%__kont3824638247%_ _%g3455534645%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3442134628%_))))))
                               (_%__match3846438465%_
                                (lambda (_%e3452434801%_
                                         _%hd3452534805%_
                                         _%tl3452634808%_
                                         _%e3452734811%_
                                         _%hd3452834815%_
                                         _%tl3452934818%_)
                                  (let ((_%g3452234821%_ _%hd3452834815%_)
                                        (_%g3452334823%_ _%hd3452534805%_))
                                    (if (and (gx#identifier? _%g3452334823%_)
                                             (or (gx#free-identifier=?
                                                  _%g3452334823%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3452334823%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3452334823%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3823838239%_
                                         _%g3452234821%_
                                         _%g3452334823%_)
                                        (if (gx#identifier? _%hd3452534805%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40418_|
                                                 _%hd3452534805%_)
                                                (_%__kont3824038241%_
                                                 _%hd3452834815%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40419_|
                                                     _%hd3452534805%_)
                                                    (_%__kont3824238243%_
                                                     _%hd3452834815%_)
                                                    (_%__match3853038531%_
                                                     _%e3452434801%_
                                                     _%hd3452534805%_
                                                     _%tl3452634808%_)))
                                            (_%__match3853038531%_
                                             _%e3452434801%_
                                             _%hd3452534805%_
                                             _%tl3452634808%_))))))
                               (_%__match3845038451%_
                                (lambda (_%e3451934851%_
                                         _%hd3452034855%_
                                         _%tl3452134858%_)
                                  (let ((_%g3451734861%_ _%tl3452134858%_)
                                        (_%g3451834863%_ _%hd3452034855%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3451834863%_))
                                        (_%__kont3823638237%_
                                         _%g3451734861%_
                                         _%g3451834863%_)
                                        (if (gx#stx-pair? _%tl3452134858%_)
                                            (let ((_%e3452734811%_
                                                   (gx#syntax-e
                                                    _%tl3452134858%_)))
                                              (let ((_%tl3452934818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3452734811%_)))
                                                    (_%hd3452834815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3452734811%_))))
                                                (if (gx#stx-null?
                                                     _%tl3452934818%_)
                                                    (_%__match3846438465%_
                                                     _%e3451934851%_
                                                     _%hd3452034855%_
                                                     _%tl3452134858%_
                                                     _%e3452734811%_
                                                     _%hd3452834815%_
                                                     _%tl3452934818%_)
                                                    (if (gx#identifier?
                                                         _%hd3452034855%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40418_|
                                                             _%hd3452034855%_)
                                                            (_%__match3853038531%_
                                                             _%e3451934851%_
                                                             _%hd3452034855%_
                                                             _%tl3452134858%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40419_|
                         _%hd3452034855%_)
                        (_%__match3853038531%_
                         _%e3451934851%_
                         _%hd3452034855%_
                         _%tl3452134858%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40420_|
                             _%hd3452034855%_)
                            (if (gx#stx-pair? _%tl3452934818%_)
                                (let ((_%e3455234687%_
                                       (gx#syntax-e _%tl3452934818%_)))
                                  (let ((_%tl3455434694%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3455234687%_)))
                                        (_%hd3455334691%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3455234687%_))))
                                    (if (gx#stx-null? _%tl3455434694%_)
                                        (_%__kont3824438245%_
                                         _%hd3455334691%_
                                         _%hd3452834815%_)
                                        (_%__match3853038531%_
                                         _%e3451934851%_
                                         _%hd3452034855%_
                                         _%tl3452134858%_))))
                                (_%__match3853038531%_
                                 _%e3451934851%_
                                 _%hd3452034855%_
                                 _%tl3452134858%_))
                            (_%__match3853038531%_
                             _%e3451934851%_
                             _%hd3452034855%_
                             _%tl3452134858%_))))
                (_%__match3853038531%_
                 _%e3451934851%_
                 _%hd3452034855%_
                 _%tl3452134858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3853038531%_
                                             _%e3451934851%_
                                             _%hd3452034855%_
                                             _%tl3452134858%_))))))
                               (_%__match3844438445%_
                                (lambda (_%e3451434881%_
                                         _%hd3451534885%_
                                         _%tl3451634888%_)
                                  (let ((_%g3451234891%_ _%tl3451634888%_)
                                        (_%g3451334893%_ _%hd3451534885%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3451334893%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3823438235%_
                                         _%g3451234891%_
                                         _%g3451334893%_)
                                        (_%__match3845038451%_
                                         _%e3451434881%_
                                         _%hd3451534885%_
                                         _%tl3451634888%_)))))
                               (_%__match3843838439%_
                                (lambda (_%e3450234911%_
                                         _%__splice3823238233%_
                                         _%target3450334915%_
                                         _%tl3450534918%_)
                                  (letrec ((_%loop3450634921%_
                                            (lambda (_%hd3450434925%_
                                                     _%body3451034928%_)
                                              (if (gx#stx-pair?
                                                   _%hd3450434925%_)
                                                  (let ((_%e3450734930%_
                                                         (gx#syntax-e
                                                          _%hd3450434925%_)))
                                                    (let ((_%lp-tl3450934937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3450734930%_)))
                                                          (_%lp-hd3450834934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3450734930%_))))
                                                      (_%loop3450634921%_
                                                       _%lp-tl3450934937%_
                                                       (cons _%lp-hd3450834934%_
                                                             _%body3451034928%_))))
                                                  (let ((_%body3451134940%_
                                                         (reverse _%body3451034928%_)))
                                                    (_%__kont3823038231%_
                                                     _%body3451134940%_))))))
                                    (_%loop3450634921%_
                                     _%target3450334915%_
                                     '()))))
                               (_%g3441334965%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3820338204%_)
                                      (let ((_%e3450234911%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3820338204%_))))
                                        (if (gx#stx-pair/null? _%e3450234911%_)
                                            (let ((_%__splice3823238233%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3450234911%_
                                                    '0)))
                                              (let ((_%tl3450534918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3823238233%_
                                                        '1)))
                                                    (_%target3450334915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3823238233%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3450534918%_)
                                                    (_%__match3843838439%_
                                                     _%e3450234911%_
                                                     _%__splice3823238233%_
                                                     _%target3450334915%_
                                                     _%tl3450534918%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3442134628%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3442134628%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3442134628%_)))))
                               (_%g3440935082%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3820338204%_)
                                      (let ((_%e3448535068%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3820338204%_))))
                                        (_%__kont3822238223%_ _%e3448535068%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3441334965%_)))))
                               (_%__match3829238293%_
                                (lambda (_%e3444035307%_
                                         _%hd3444135311%_
                                         _%tl3444235314%_)
                                  (let ((_%g3443935317%_ _%tl3444235314%_))
                                    (if (gx#stx-list? _%g3443935317%_)
                                        (_%__kont3821038211%_ _%g3443935317%_)
                                        (_%__match3844438445%_
                                         _%e3444035307%_
                                         _%hd3444135311%_
                                         _%tl3444235314%_)))))
                               (_%__match3828238283%_
                                (lambda (_%e3443635392%_
                                         _%hd3443735396%_
                                         _%tl3443835399%_)
                                  (let ((_%g3443535402%_ _%tl3443835399%_))
                                    (if (gx#stx-list? _%g3443535402%_)
                                        (_%__kont3820838209%_ _%g3443535402%_)
                                        (_%__match3844438445%_
                                         _%e3443635392%_
                                         _%hd3443735396%_
                                         _%tl3443835399%_))))))
                          (if (gx#stx-pair? _%__stx3820338204%_)
                              (let ((_%e3442935477%_
                                     (gx#syntax-e _%__stx3820338204%_)))
                                (let ((_%tl3443135484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3442935477%_)))
                                      (_%hd3443035481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3442935477%_))))
                                  (if (gx#identifier? _%hd3443035481%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40421_|
                                           _%hd3443035481%_)
                                          (if (gx#stx-pair? _%tl3443135484%_)
                                              (let ((_%e3443235487%_
                                                     (gx#syntax-e
                                                      _%tl3443135484%_)))
                                                (let ((_%tl3443435494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3443235487%_)))
                                                      (_%hd3443335491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3443235487%_))))
                                                  (_%__kont3820638207%_
                                                   _%tl3443435494%_
                                                   _%hd3443335491%_)))
                                              (_%__match3844438445%_
                                               _%e3442935477%_
                                               _%hd3443035481%_
                                               _%tl3443135484%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40422_|
                                               _%hd3443035481%_)
                                              (_%__match3828238283%_
                                               _%e3442935477%_
                                               _%hd3443035481%_
                                               _%tl3443135484%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40423_|
                                                   _%hd3443035481%_)
                                                  (_%__match3829238293%_
                                                   _%e3442935477%_
                                                   _%hd3443035481%_
                                                   _%tl3443135484%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40424_|
                                                       _%hd3443035481%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3443135484%_)
                                                          (let ((_%e3444735277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3443135484%_)))
                    (let ((_%tl3444935284%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3444735277%_)))
                          (_%hd3444835281%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3444735277%_))))
                      (if (gx#stx-null? _%tl3444935284%_)
                          (_%__kont3821238213%_ _%hd3444835281%_)
                          (_%__match3844438445%_
                           _%e3442935477%_
                           _%hd3443035481%_
                           _%tl3443135484%_))))
                  (_%__match3844438445%_
                   _%e3442935477%_
                   _%hd3443035481%_
                   _%tl3443135484%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40425_|
                   _%hd3443035481%_)
                  (if (gx#stx-pair? _%tl3443135484%_)
                      (let ((_%e3445535223%_ (gx#syntax-e _%tl3443135484%_)))
                        (let ((_%tl3445735230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3445535223%_)))
                              (_%hd3445635227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3445535223%_))))
                          (if (gx#stx-pair? _%tl3445735230%_)
                              (let ((_%e3445835233%_
                                     (gx#syntax-e _%tl3445735230%_)))
                                (let ((_%tl3446035240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3445835233%_)))
                                      (_%hd3445935237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3445835233%_))))
                                  (if (gx#stx-null? _%tl3446035240%_)
                                      (_%__kont3821438215%_
                                       _%hd3445935237%_
                                       _%hd3445635227%_)
                                      (_%__match3844438445%_
                                       _%e3442935477%_
                                       _%hd3443035481%_
                                       _%tl3443135484%_))))
                              (_%__match3844438445%_
                               _%e3442935477%_
                               _%hd3443035481%_
                               _%tl3443135484%_))))
                      (_%__match3844438445%_
                       _%e3442935477%_
                       _%hd3443035481%_
                       _%tl3443135484%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40426_|
                       _%hd3443035481%_)
                      (if (gx#stx-pair? _%tl3443135484%_)
                          (let ((_%e3446735167%_
                                 (gx#syntax-e _%tl3443135484%_)))
                            (let ((_%tl3446935174%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3446735167%_)))
                                  (_%hd3446835171%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3446735167%_))))
                              (if (gx#stx-pair? _%tl3446935174%_)
                                  (let ((_%e3447035177%_
                                         (gx#syntax-e _%tl3446935174%_)))
                                    (let ((_%tl3447235184%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3447035177%_)))
                                          (_%hd3447135181%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3447035177%_))))
                                      (_%__kont3821638217%_
                                       _%tl3447235184%_
                                       _%hd3447135181%_
                                       _%hd3446835171%_)))
                                  (_%__match3844438445%_
                                   _%e3442935477%_
                                   _%hd3443035481%_
                                   _%tl3443135484%_))))
                          (_%__match3844438445%_
                           _%e3442935477%_
                           _%hd3443035481%_
                           _%tl3443135484%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40427_|
                           _%hd3443035481%_)
                          (_%__kont3821838219%_ _%tl3443135484%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40428_|
                               _%hd3443035481%_)
                              (if (gx#stx-pair? _%tl3443135484%_)
                                  (let ((_%e3448135099%_
                                         (gx#syntax-e _%tl3443135484%_)))
                                    (let ((_%tl3448335106%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3448135099%_)))
                                          (_%hd3448235103%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3448135099%_))))
                                      (if (gx#stx-null? _%tl3448335106%_)
                                          (_%__kont3822038221%_
                                           _%hd3448235103%_)
                                          (_%__match3844438445%_
                                           _%e3442935477%_
                                           _%hd3443035481%_
                                           _%tl3443135484%_))))
                                  (_%__match3844438445%_
                                   _%e3442935477%_
                                   _%hd3443035481%_
                                   _%tl3443135484%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40429_|
                                   _%hd3443035481%_)
                                  (if (gx#stx-pair? _%tl3443135484%_)
                                      (let ((_%e3449035038%_
                                             (gx#syntax-e _%tl3443135484%_)))
                                        (let ((_%tl3449235045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3449035038%_)))
                                              (_%hd3449135042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3449035038%_))))
                                          (if (gx#stx-null? _%tl3449235045%_)
                                              (_%__kont3822438225%_
                                               _%hd3449135042%_)
                                              (_%__kont3822638227%_
                                               _%tl3443135484%_))))
                                      (_%__kont3822638227%_ _%tl3443135484%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40430_|
                                       _%hd3443035481%_)
                                      (_%__kont3822838229%_ _%tl3443135484%_)
                                      (_%__match3844438445%_
                                       _%e3442935477%_
                                       _%hd3443035481%_
                                       _%tl3443135484%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3844438445%_
                                       _%e3442935477%_
                                       _%hd3443035481%_
                                       _%tl3443135484%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3440935082%_))))))))
                 (_%parse-list34042%_
                  (lambda (_%body34222%_)
                    (let* ((_%__stx3853338534%_ _%body34222%_)
                           (_%g3422834257%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3853338534%_))))
                      (let ((_%__kont3853638537%_
                             (lambda (_%g3423034381%_)
                               (_%parse134040%_ _%g3423034381%_)))
                            (_%__kont3853838539%_
                             (lambda (_%g3423834333%_
                                      _%g3423934335%_
                                      _%g3424034336%_)
                               (cons 'splice:
                                     (cons (_%parse134040%_ _%g3424034336%_)
                                           (cons (_%parse-list34042%_
                                                  _%g3423834333%_)
                                                 '())))))
                            (_%__kont3854038541%_
                             (lambda (_%g3424734291%_ _%g3424834293%_)
                               (cons 'cons:
                                     (cons (_%parse134040%_ _%g3424834293%_)
                                           (cons (_%parse-list34042%_
                                                  _%g3424734291%_)
                                                 '())))))
                            (_%__kont3854238543%_
                             (lambda ()
                               (if (gx#stx-null? _%body34222%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body34222%_)
                                       (_%parse-error34047%_ _%body34222%_)
                                       (_%parse134040%_ _%body34222%_))))))
                        (let* ((_%__match3858238583%_
                                (lambda (_%e3424934281%_
                                         _%hd3425034285%_
                                         _%tl3425134288%_)
                                  (let ((_%g3424734291%_ _%tl3425134288%_)
                                        (_%g3424834293%_ _%hd3425034285%_))
                                    (if (gx#ellipsis? _%g3424834293%_)
                                        (_%__kont3854238543%_)
                                        (_%__kont3854038541%_
                                         _%g3424734291%_
                                         _%g3424834293%_)))))
                               (_%__match3857638577%_
                                (lambda (_%e3424134313%_
                                         _%hd3424234317%_
                                         _%tl3424334320%_
                                         _%e3424434323%_
                                         _%hd3424534327%_
                                         _%tl3424634330%_)
                                  (let ((_%g3423834333%_ _%tl3424634330%_)
                                        (_%g3423934335%_ _%hd3424534327%_)
                                        (_%g3424034336%_ _%hd3424234317%_))
                                    (if (gx#ellipsis? _%g3423934335%_)
                                        (_%__kont3853838539%_
                                         _%g3423834333%_
                                         _%g3423934335%_
                                         _%g3424034336%_)
                                        (_%__match3858238583%_
                                         _%e3424134313%_
                                         _%hd3424234317%_
                                         _%tl3424334320%_))))))
                          (if (gx#stx-pair? _%__stx3853338534%_)
                              (let ((_%e3423134357%_
                                     (gx#syntax-e _%__stx3853338534%_)))
                                (let ((_%tl3423334364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3423134357%_)))
                                      (_%hd3423234361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3423134357%_))))
                                  (if (gx#stx-datum? _%hd3423234361%_)
                                      (let ((_%e3423434367%_
                                             (gx#stx-e _%hd3423234361%_)))
                                        (if (equal? _%e3423434367%_ '::)
                                            (if (gx#stx-pair? _%tl3423334364%_)
                                                (let ((_%e3423534371%_
                                                       (gx#syntax-e
                                                        _%tl3423334364%_)))
                                                  (let ((_%tl3423734378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3423534371%_)))
                                                        (_%hd3423634375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3423534371%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3423734378%_)
                                                        (_%__kont3853638537%_
                                                         _%hd3423634375%_)
                                                        (_%__match3857638577%_
                                                         _%e3423134357%_
                                                         _%hd3423234361%_
                                                         _%tl3423334364%_
                                                         _%e3423534371%_
                                                         _%hd3423634375%_
                                                         _%tl3423734378%_))))
                                                (_%__match3858238583%_
                                                 _%e3423134357%_
                                                 _%hd3423234361%_
                                                 _%tl3423334364%_))
                                            (if (gx#stx-pair? _%tl3423334364%_)
                                                (let ((_%e3424434323%_
                                                       (gx#syntax-e
                                                        _%tl3423334364%_)))
                                                  (let ((_%tl3424634330%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3424434323%_)))
                                                        (_%hd3424534327%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3424434323%_))))
                                                    (_%__match3857638577%_
                                                     _%e3423134357%_
                                                     _%hd3423234361%_
                                                     _%tl3423334364%_
                                                     _%e3424434323%_
                                                     _%hd3424534327%_
                                                     _%tl3424634330%_)))
                                                (_%__match3858238583%_
                                                 _%e3423134357%_
                                                 _%hd3423234361%_
                                                 _%tl3423334364%_))))
                                      (if (gx#stx-pair? _%tl3423334364%_)
                                          (let ((_%e3424434323%_
                                                 (gx#syntax-e
                                                  _%tl3423334364%_)))
                                            (let ((_%tl3424634330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3424434323%_)))
                                                  (_%hd3424534327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3424434323%_))))
                                              (_%__match3857638577%_
                                               _%e3423134357%_
                                               _%hd3423234361%_
                                               _%tl3423334364%_
                                               _%e3424434323%_
                                               _%hd3424534327%_
                                               _%tl3424634330%_)))
                                          (_%__match3858238583%_
                                           _%e3423134357%_
                                           _%hd3423234361%_
                                           _%tl3423334364%_)))))
                              (_%__kont3854238543%_)))))))
                 (_%parse-vector34043%_
                  (lambda (_%body34219%_)
                    (if (_%simple-vector?34044%_ _%body34219%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse134040%_ _%body34219%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list34042%_ _%body34219%_)
                                    '())))))
                 (_%simple-vector?34044%_
                  (lambda (_%body34156%_)
                    (let* ((_%__stx3858538586%_ _%body34156%_)
                           (_%g3416034172%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3858538586%_))))
                      (let ((_%__kont3858838589%_
                             (lambda (_%g3416234200%_ _%g3416334202%_)
                               (if (gx#ellipsis? _%g3416334202%_)
                                   '#f
                                   (_%simple-vector?34044%_ _%g3416234200%_))))
                            (_%__kont3859038591%_
                             (lambda () (gx#stx-null? _%body34156%_))))
                        (if (gx#stx-pair? _%__stx3858538586%_)
                            (let ((_%e3416434190%_
                                   (gx#syntax-e _%__stx3858538586%_)))
                              (let ((_%tl3416634197%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3416434190%_)))
                                    (_%hd3416534194%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3416434190%_))))
                                (_%__kont3858838589%_
                                 _%tl3416634197%_
                                 _%hd3416534194%_)))
                            (_%__kont3859038591%_))))))
                 (_%parse-class-body34045%_
                  (lambda (_%body34065%_)
                    (let _%recur34068%_ ((_%rest34071%_ _%body34065%_))
                      (let* ((_%__stx3860138602%_ _%rest34071%_)
                             (_%g3407534091%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3860138602%_))))
                        (let ((_%__kont3860438605%_
                               (lambda (_%g3407734129%_
                                        _%g3407834131%_
                                        _%g3407934132%_)
                                 (cons _%g3407934132%_
                                       (cons (_%parse134040%_ _%g3407834131%_)
                                             (_%recur34068%_
                                              _%g3407734129%_)))))
                              (_%__kont3860638607%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest34071%_)
                                     '()
                                     (_%parse-error34047%_ _%rest34071%_)))))
                          (let ((_%__match3862038621%_
                                 (lambda (_%e3408034109%_
                                          _%hd3408134113%_
                                          _%tl3408234116%_
                                          _%e3408334119%_
                                          _%hd3408434123%_
                                          _%tl3408534126%_)
                                   (let ((_%g3407734129%_ _%tl3408534126%_)
                                         (_%g3407834131%_ _%hd3408434123%_)
                                         (_%g3407934132%_ _%hd3408134113%_))
                                     (if (gx#stx-keyword? _%g3407934132%_)
                                         (_%__kont3860438605%_
                                          _%g3407734129%_
                                          _%g3407834131%_
                                          _%g3407934132%_)
                                         (_%__kont3860638607%_))))))
                            (if (gx#stx-pair? _%__stx3860138602%_)
                                (let ((_%e3408034109%_
                                       (gx#syntax-e _%__stx3860138602%_)))
                                  (let ((_%tl3408234116%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3408034109%_)))
                                        (_%hd3408134113%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3408034109%_))))
                                    (if (gx#stx-pair? _%tl3408234116%_)
                                        (let ((_%e3408334119%_
                                               (gx#syntax-e _%tl3408234116%_)))
                                          (let ((_%tl3408534126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3408334119%_)))
                                                (_%hd3408434123%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3408334119%_))))
                                            (_%__match3862038621%_
                                             _%e3408034109%_
                                             _%hd3408134113%_
                                             _%tl3408234116%_
                                             _%e3408334119%_
                                             _%hd3408434123%_
                                             _%tl3408534126%_)))
                                        (_%__kont3860638607%_))))
                                (_%__kont3860638607%_))))))))
                 (_%parse-qq34046%_
                  (lambda (_%hd34052%_)
                    (let ((_%g3405434061%_
                           (lambda (_%g3405534057%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3405534057%_))))
                      (_%g3405434061%_ _%hd34052%_))))
                 (_%parse-error34047%_
                  (lambda (_%hd34049%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx34038%_
                               (cons _%match-stx34038%_
                                     (cons _%stx34036%_
                                           (cons _%hd34049%_ '())))
                               (cons _%stx34036%_ (cons _%hd34049%_ '())))))))
          (_%parse134040%_ _%stx34036%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35724%_)
        (let ((_%match-stx35727%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35724%_
           _%match-stx35727%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40431_
        (let ((_g40432_ (let () (declare (not safe)) (##length _g40431_))))
          (cond ((let () (declare (not safe)) (##fx= _g40432_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g40431_))
                ((let () (declare (not safe)) (##fx= _g40432_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g40431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40431_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx34021%_)
        (let ((__tmp40433
               (lambda (_%E34024%_)
                 (with-exception-handler
                  (let ((_%E!34027%_ (current-exception-handler)))
                    (lambda (_%e34030%_)
                      (if (syntax-error? _%e34030%_)
                          (_%E34024%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!34027%_ _%e34030%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx34021%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40433))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32756%_)
        (letrec ((_%loop32759%_
                  (lambda (_%ptree33046%_ _%vars33048%_ _%K33049%_)
                    (let* ((_%__stx3871938720%_ _%ptree33046%_)
                           (_%g3306233172%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3871938720%_))))
                      (let ((_%__kont3872238723%_
                             (lambda (_%g3306433802%_)
                               (let* ((_%__stx3863938640%_ _%g3306433802%_)
                                      (_%g3381933853%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3863938640%_))))
                                 (let ((_%__kont3864238643%_
                                        (lambda (_%g3382134002%_)
                                          (_%loop32759%_
                                           _%g3382134002%_
                                           _%vars33048%_
                                           _%K33049%_)))
                                       (_%__kont3864438645%_
                                        (lambda (_%g3382533971%_)
                                          (_%loop32759%_
                                           _%g3382533971%_
                                           _%vars33048%_
                                           _%K33049%_)))
                                       (_%__kont3864638647%_
                                        (lambda (_%g3383333919%_)
                                          (_%loop32759%_
                                           _%g3383333919%_
                                           _%vars33048%_
                                           _%K33049%_)))
                                       (_%__kont3864838649%_
                                        (lambda ()
                                          (_%K33049%_ _%vars33048%_))))
                                   (if (gx#stx-pair? _%__stx3863938640%_)
                                       (let ((_%e3382233992%_
                                              (gx#syntax-e
                                               _%__stx3863938640%_)))
                                         (let ((_%tl3382433999%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3382233992%_)))
                                               (_%hd3382333996%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3382233992%_))))
                                           (if (gx#stx-null? _%tl3382433999%_)
                                               (_%__kont3864238643%_
                                                _%hd3382333996%_)
                                               (if (gx#stx-datum?
                                                    _%hd3382333996%_)
                                                   (let ((_%e3382933957%_
                                                          (gx#stx-e
                                                           _%hd3382333996%_)))
                                                     (if (equal? _%e3382933957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3382433999%_)
                     (let ((_%e3383033961%_ (gx#syntax-e _%tl3382433999%_)))
                       (let ((_%tl3383233968%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3383033961%_)))
                             (_%hd3383133965%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3383033961%_))))
                         (if (gx#stx-null? _%tl3383233968%_)
                             (_%__kont3864438645%_ _%hd3383133965%_)
                             (_%__kont3864838649%_))))
                     (_%__kont3864838649%_))
                 (if (equal? _%e3382933957%_ '::)
                     (if (gx#stx-pair? _%tl3382433999%_)
                         (let ((_%e3383833885%_
                                (gx#syntax-e _%tl3382433999%_)))
                           (let ((_%tl3384033892%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3383833885%_)))
                                 (_%hd3383933889%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3383833885%_))))
                             (if (gx#stx-pair? _%tl3384033892%_)
                                 (let ((_%e3384133895%_
                                        (gx#syntax-e _%tl3384033892%_)))
                                   (let ((_%tl3384333902%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3384133895%_)))
                                         (_%hd3384233899%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3384133895%_))))
                                     (if (gx#stx-datum? _%hd3384233899%_)
                                         (let ((_%e3384433905%_
                                                (gx#stx-e _%hd3384233899%_)))
                                           (if (equal? _%e3384433905%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3384333902%_)
                                                   (let ((_%e3384533909%_
                                                          (gx#syntax-e
                                                           _%tl3384333902%_)))
                                                     (let ((_%tl3384733916%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3384533909%_)))
                                                           (_%hd3384633913%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3384533909%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3384733916%_)
                                                           (_%__kont3864638647%_
                                                            _%hd3384633913%_)
                                                           (_%__kont3864838649%_))))
                                                   (_%__kont3864838649%_))
                                               (_%__kont3864838649%_)))
                                         (_%__kont3864838649%_))))
                                 (_%__kont3864838649%_))))
                         (_%__kont3864838649%_))
                     (_%__kont3864838649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3864838649%_)))))
                                       (_%__kont3864838649%_))))))
                            (_%__kont3872438725%_
                             (lambda (_%g3307233689%_ _%g3307333691%_)
                               (let* ((_%__stx3862338624%_ _%g3307233689%_)
                                      (_%g3370733719%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3862338624%_))))
                                 (let ((_%__kont3862638627%_
                                        (lambda (_%g3370933747%_
                                                 _%g3371033749%_)
                                          (_%loop32759%_
                                           _%g3371033749%_
                                           _%vars33048%_
                                           (lambda (_%g3376133763%_)
                                             (_%loop32759%_
                                              (cons _%g3307333691%_
                                                    _%g3370933747%_)
                                              _%g3376133763%_
                                              _%K33049%_)))))
                                       (_%__kont3862838629%_
                                        (lambda ()
                                          (_%K33049%_ _%vars33048%_))))
                                   (if (gx#stx-pair? _%__stx3862338624%_)
                                       (let ((_%e3371133737%_
                                              (gx#syntax-e
                                               _%__stx3862338624%_)))
                                         (let ((_%tl3371333744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3371133737%_)))
                                               (_%hd3371233741%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3371133737%_))))
                                           (_%__kont3862638627%_
                                            _%tl3371333744%_
                                            _%hd3371233741%_)))
                                       (_%__kont3862838629%_))))))
                            (_%__kont3872638727%_
                             (lambda (_%g3307733658%_)
                               (_%loop32759%_
                                _%g3307733658%_
                                _%vars33048%_
                                _%K33049%_)))
                            (_%__kont3872838729%_
                             (lambda (_%g3308533604%_ _%g3308633606%_)
                               (_%loop32759%_
                                _%g3308633606%_
                                _%vars33048%_
                                (lambda (_%g3362133623%_)
                                  (_%loop32759%_
                                   _%g3308533604%_
                                   _%g3362133623%_
                                   _%K33049%_)))))
                            (_%__kont3873038731%_
                             (lambda (_%g3309733540%_ _%g3309833542%_)
                               (_%loop32759%_
                                _%g3309833542%_
                                _%vars33048%_
                                (lambda (_%g3355733559%_)
                                  (_%loop32759%_
                                   _%g3309733540%_
                                   _%g3355733559%_
                                   _%K33049%_)))))
                            (_%__kont3873238733%_
                             (lambda (_%g3310933485%_)
                               (_%loop32759%_
                                _%g3310933485%_
                                _%vars33048%_
                                _%K33049%_)))
                            (_%__kont3873438735%_
                             (lambda (_%g3311733435%_ _%g3311833437%_)
                               (_%loop-vector32761%_
                                _%g3311733435%_
                                _%vars33048%_
                                _%K33049%_)))
                            (_%__kont3873638737%_
                             (lambda (_%g3312533392%_)
                               (_%loop-vector32761%_
                                _%g3312533392%_
                                _%vars33048%_
                                _%K33049%_)))
                            (_%__kont3873838739%_
                             (lambda (_%g3313633335%_)
                               (_%loop-class-list32763%_
                                _%g3313633335%_
                                _%vars33048%_
                                _%K33049%_)))
                            (_%__kont3874038741%_
                             (lambda (_%g3314733276%_ _%g3314833278%_)
                               (_%loop32759%_
                                _%g3314733276%_
                                _%vars33048%_
                                _%K33049%_)))
                            (_%__kont3874238743%_
                             (lambda (_%g3315933214%_)
                               (if (find (lambda (_%g3322933231%_)
                                           (gx#bound-identifier=?
                                            _%g3322933231%_
                                            _%g3315933214%_))
                                         _%vars33048%_)
                                   (_%K33049%_ _%vars33048%_)
                                   (_%K33049%_
                                    (cons _%g3315933214%_ _%vars33048%_)))))
                            (_%__kont3874438745%_
                             (lambda () (_%K33049%_ _%vars33048%_))))
                        (let* ((_%__match3887638877%_
                                (lambda (_%e3311933415%_
                                         _%hd3312033419%_
                                         _%tl3312133422%_
                                         _%e3312233425%_
                                         _%hd3312333429%_
                                         _%tl3312433432%_)
                                  (let ((_%g3311733435%_ _%hd3312333429%_)
                                        (_%g3311833437%_ _%hd3312033419%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3311833437%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3311833437%_))
                                        (_%__kont3873438735%_
                                         _%g3311733435%_
                                         _%g3311833437%_)
                                        (if (gx#stx-datum? _%hd3312033419%_)
                                            (let ((_%e3312933368%_
                                                   (gx#stx-e
                                                    _%hd3312033419%_)))
                                              (if (equal? _%e3312933368%_
                                                          'struct:)
                                                  (_%__kont3874438745%_)
                                                  (if (equal? _%e3312933368%_
                                                              'class:)
                                                      (_%__kont3874438745%_)
                                                      (if (equal? _%e3312933368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3874438745%_)
                  (if (equal? _%e3312933368%_ 'var:)
                      (_%__kont3874238743%_ _%hd3312333429%_)
                      (_%__kont3874438745%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3874438745%_))))))
                               (_%__match3877038771%_
                                (lambda (_%e3307433679%_
                                         _%hd3307533683%_
                                         _%tl3307633686%_)
                                  (let ((_%g3307233689%_ _%tl3307633686%_)
                                        (_%g3307333691%_ _%hd3307533683%_))
                                    (if (or (gx#stx-eq? 'and: _%g3307333691%_)
                                            (gx#stx-eq? 'or: _%g3307333691%_))
                                        (_%__kont3872438725%_
                                         _%g3307233689%_
                                         _%g3307333691%_)
                                        (if (gx#stx-datum? _%hd3307533683%_)
                                            (let ((_%e3308133644%_
                                                   (gx#stx-e
                                                    _%hd3307533683%_)))
                                              (if (equal? _%e3308133644%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3307633686%_)
                                                      (let ((_%e3308233648%_
                                                             (gx#syntax-e
                                                              _%tl3307633686%_)))
                                                        (let ((_%tl3308433655%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3308233648%_)))
                      (_%hd3308333652%_
                       (let () (declare (not safe)) (##car _%e3308233648%_))))
                  (if (gx#stx-null? _%tl3308433655%_)
                      (_%__kont3872638727%_ _%hd3308333652%_)
                      (_%__kont3874438745%_))))
              (_%__kont3874438745%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3308133644%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3307633686%_)
                                                          (let ((_%e3309133584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3307633686%_)))
                    (let ((_%tl3309333591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3309133584%_)))
                          (_%hd3309233588%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3309133584%_))))
                      (if (gx#stx-pair? _%tl3309333591%_)
                          (let ((_%e3309433594%_
                                 (gx#syntax-e _%tl3309333591%_)))
                            (let ((_%tl3309633601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3309433594%_)))
                                  (_%hd3309533598%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3309433594%_))))
                              (if (gx#stx-null? _%tl3309633601%_)
                                  (_%__kont3872838729%_
                                   _%hd3309533598%_
                                   _%hd3309233588%_)
                                  (_%__kont3874438745%_))))
                          (if (gx#stx-null? _%tl3309333591%_)
                              (_%__match3887638877%_
                               _%e3307433679%_
                               _%hd3307533683%_
                               _%tl3307633686%_
                               _%e3309133584%_
                               _%hd3309233588%_
                               _%tl3309333591%_)
                              (_%__kont3874438745%_)))))
                  (_%__kont3874438745%_))
              (if (equal? _%e3308133644%_ 'splice:)
                  (if (gx#stx-pair? _%tl3307633686%_)
                      (let ((_%e3310333520%_ (gx#syntax-e _%tl3307633686%_)))
                        (let ((_%tl3310533527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3310333520%_)))
                              (_%hd3310433524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3310333520%_))))
                          (if (gx#stx-pair? _%tl3310533527%_)
                              (let ((_%e3310633530%_
                                     (gx#syntax-e _%tl3310533527%_)))
                                (let ((_%tl3310833537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3310633530%_)))
                                      (_%hd3310733534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3310633530%_))))
                                  (if (gx#stx-null? _%tl3310833537%_)
                                      (_%__kont3873038731%_
                                       _%hd3310733534%_
                                       _%hd3310433524%_)
                                      (_%__kont3874438745%_))))
                              (if (gx#stx-null? _%tl3310533527%_)
                                  (_%__match3887638877%_
                                   _%e3307433679%_
                                   _%hd3307533683%_
                                   _%tl3307633686%_
                                   _%e3310333520%_
                                   _%hd3310433524%_
                                   _%tl3310533527%_)
                                  (_%__kont3874438745%_)))))
                      (_%__kont3874438745%_))
                  (if (equal? _%e3308133644%_ 'box:)
                      (if (gx#stx-pair? _%tl3307633686%_)
                          (let ((_%e3311433475%_
                                 (gx#syntax-e _%tl3307633686%_)))
                            (let ((_%tl3311633482%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3311433475%_)))
                                  (_%hd3311533479%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3311433475%_))))
                              (if (gx#stx-null? _%tl3311633482%_)
                                  (_%__kont3873238733%_ _%hd3311533479%_)
                                  (_%__kont3874438745%_))))
                          (_%__kont3874438745%_))
                      (if (gx#stx-pair? _%tl3307633686%_)
                          (let ((_%e3312233425%_
                                 (gx#syntax-e _%tl3307633686%_)))
                            (let ((_%tl3312433432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3312233425%_)))
                                  (_%hd3312333429%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3312233425%_))))
                              (if (gx#stx-null? _%tl3312433432%_)
                                  (_%__match3887638877%_
                                   _%e3307433679%_
                                   _%hd3307533683%_
                                   _%tl3307633686%_
                                   _%e3312233425%_
                                   _%hd3312333429%_
                                   _%tl3312433432%_)
                                  (if (equal? _%e3308133644%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3312433432%_)
                                          (let ((_%e3313333382%_
                                                 (gx#syntax-e
                                                  _%tl3312433432%_)))
                                            (let ((_%tl3313533389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3313333382%_)))
                                                  (_%hd3313433386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3313333382%_))))
                                              (if (gx#stx-null?
                                                   _%tl3313533389%_)
                                                  (_%__kont3873638737%_
                                                   _%hd3313433386%_)
                                                  (_%__kont3874438745%_))))
                                          (_%__kont3874438745%_))
                                      (if (equal? _%e3308133644%_ 'class:)
                                          (if (gx#stx-pair? _%tl3312433432%_)
                                              (let ((_%e3314433325%_
                                                     (gx#syntax-e
                                                      _%tl3312433432%_)))
                                                (let ((_%tl3314633332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3314433325%_)))
                                                      (_%hd3314533329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3314433325%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3314633332%_)
                                                      (_%__kont3873838739%_
                                                       _%hd3314533329%_)
                                                      (_%__kont3874438745%_))))
                                              (_%__kont3874438745%_))
                                          (if (equal? _%e3308133644%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3312433432%_)
                                                  (let ((_%e3315633266%_
                                                         (gx#syntax-e
                                                          _%tl3312433432%_)))
                                                    (let ((_%tl3315833273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3315633266%_)))
                                                          (_%hd3315733270%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3315633266%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3315833273%_)
                                                          (_%__kont3874038741%_
                                                           _%hd3315733270%_
                                                           _%hd3312333429%_)
                                                          (_%__kont3874438745%_))))
                                                  (_%__kont3874438745%_))
                                              (_%__kont3874438745%_)))))))
                          (_%__kont3874438745%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3307633686%_)
                                                (let ((_%e3312233425%_
                                                       (gx#syntax-e
                                                        _%tl3307633686%_)))
                                                  (let ((_%tl3312433432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3312233425%_)))
                                                        (_%hd3312333429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3312233425%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3312433432%_)
                                                        (_%__match3887638877%_
                                                         _%e3307433679%_
                                                         _%hd3307533683%_
                                                         _%tl3307633686%_
                                                         _%e3312233425%_
                                                         _%hd3312333429%_
                                                         _%tl3312433432%_)
                                                        (_%__kont3874438745%_))))
                                                (_%__kont3874438745%_))))))))
                          (if (gx#stx-pair? _%__stx3871938720%_)
                              (let ((_%e3306533778%_
                                     (gx#syntax-e _%__stx3871938720%_)))
                                (let ((_%tl3306733785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3306533778%_)))
                                      (_%hd3306633782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3306533778%_))))
                                  (if (gx#stx-datum? _%hd3306633782%_)
                                      (let ((_%e3306833788%_
                                             (gx#stx-e _%hd3306633782%_)))
                                        (if (equal? _%e3306833788%_ '?:)
                                            (if (gx#stx-pair? _%tl3306733785%_)
                                                (let ((_%e3306933792%_
                                                       (gx#syntax-e
                                                        _%tl3306733785%_)))
                                                  (let ((_%tl3307133799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3306933792%_)))
                                                        (_%hd3307033796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3306933792%_))))
                                                    (_%__kont3872238723%_
                                                     _%tl3307133799%_)))
                                                (_%__match3877038771%_
                                                 _%e3306533778%_
                                                 _%hd3306633782%_
                                                 _%tl3306733785%_))
                                            (_%__match3877038771%_
                                             _%e3306533778%_
                                             _%hd3306633782%_
                                             _%tl3306733785%_)))
                                      (_%__match3877038771%_
                                       _%e3306533778%_
                                       _%hd3306633782%_
                                       _%tl3306733785%_))))
                              (_%__kont3874438745%_)))))))
                 (_%loop-vector32761%_
                  (lambda (_%body32922%_ _%vars32924%_ _%K32925%_)
                    (let* ((_%__stx3897738978%_ _%body32922%_)
                           (_%g3292832951%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3897738978%_))))
                      (let ((_%__kont3898038981%_
                             (lambda (_%g3293033028%_)
                               (_%loop-list32762%_
                                _%g3293033028%_
                                _%vars32924%_
                                _%K32925%_)))
                            (_%__kont3898238983%_
                             (lambda (_%g3293832982%_)
                               (_%loop32759%_
                                _%g3293832982%_
                                _%vars32924%_
                                _%K32925%_))))
                        (if (gx#stx-pair? _%__stx3897738978%_)
                            (let ((_%e3293133004%_
                                   (gx#syntax-e _%__stx3897738978%_)))
                              (let ((_%tl3293333011%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3293133004%_)))
                                    (_%hd3293233008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3293133004%_))))
                                (if (gx#stx-datum? _%hd3293233008%_)
                                    (let ((_%e3293433014%_
                                           (gx#stx-e _%hd3293233008%_)))
                                      (if (equal? _%e3293433014%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3293333011%_)
                                              (let ((_%e3293533018%_
                                                     (gx#syntax-e
                                                      _%tl3293333011%_)))
                                                (let ((_%tl3293733025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3293533018%_)))
                                                      (_%hd3293633022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3293533018%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3293733025%_)
                                                      (_%__kont3898038981%_
                                                       _%hd3293633022%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3292832951%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3292832951%_)))
                                          (if (equal? _%e3293433014%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3293333011%_)
                                                  (let ((_%e3294332972%_
                                                         (gx#syntax-e
                                                          _%tl3293333011%_)))
                                                    (let ((_%tl3294532979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3294332972%_)))
                                                          (_%hd3294432976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3294332972%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3294532979%_)
                                                          (_%__kont3898238983%_
                                                           _%hd3294432976%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3292832951%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3292832951%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3292832951%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3292832951%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3292832951%_)))))))
                 (_%loop-list32762%_
                  (lambda (_%rest32852%_ _%vars32854%_ _%K32855%_)
                    (let* ((_%__stx3902739028%_ _%rest32852%_)
                           (_%g3285832870%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3902739028%_))))
                      (let ((_%__kont3903039031%_
                             (lambda (_%g3286032898%_ _%g3286132900%_)
                               (_%loop32759%_
                                _%g3286132900%_
                                _%vars32854%_
                                (lambda (_%g3291232914%_)
                                  (_%loop-list32762%_
                                   _%g3286032898%_
                                   _%g3291232914%_
                                   _%K32855%_)))))
                            (_%__kont3903239033%_
                             (lambda () (_%K32855%_ _%vars32854%_))))
                        (if (gx#stx-pair? _%__stx3902739028%_)
                            (let ((_%e3286232888%_
                                   (gx#syntax-e _%__stx3902739028%_)))
                              (let ((_%tl3286432895%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3286232888%_)))
                                    (_%hd3286332892%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3286232888%_))))
                                (_%__kont3903039031%_
                                 _%tl3286432895%_
                                 _%hd3286332892%_)))
                            (_%__kont3903239033%_))))))
                 (_%loop-class-list32763%_
                  (lambda (_%rest32765%_ _%vars32767%_ _%K32768%_)
                    (let* ((_%__stx3904339044%_ _%rest32765%_)
                           (_%g3277132786%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3904339044%_))))
                      (let ((_%__kont3904639047%_
                             (lambda (_%g3277332824%_ _%g3277432826%_)
                               (_%loop32759%_
                                _%g3277432826%_
                                _%vars32767%_
                                (lambda (_%g3284232844%_)
                                  (_%loop-class-list32763%_
                                   _%g3277332824%_
                                   _%g3284232844%_
                                   _%K32768%_)))))
                            (_%__kont3904839049%_
                             (lambda () (_%K32768%_ _%vars32767%_))))
                        (if (gx#stx-pair? _%__stx3904339044%_)
                            (let ((_%e3277532804%_
                                   (gx#syntax-e _%__stx3904339044%_)))
                              (let ((_%tl3277732811%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3277532804%_)))
                                    (_%hd3277632808%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3277532804%_))))
                                (if (gx#stx-pair? _%tl3277732811%_)
                                    (let ((_%e3277832814%_
                                           (gx#syntax-e _%tl3277732811%_)))
                                      (let ((_%tl3278032821%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3277832814%_)))
                                            (_%hd3277932818%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3277832814%_))))
                                        (_%__kont3904639047%_
                                         _%tl3278032821%_
                                         _%hd3277932818%_)))
                                    (_%__kont3904839049%_))))
                            (_%__kont3904839049%_)))))))
          (_%loop32759%_ _%ptree32756%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29688%_ _%tgt29690%_ _%ptree29691%_ _%K29692%_ _%E29693%_)
        (letrec ((_%generate129695%_
                  (lambda (_%tgt30955%_ _%ptree30957%_ _%K30958%_ _%E30959%_)
                    (let* ((_%g3096130969%_
                            (lambda (_%g3096230965%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3096230965%_)))
                           (_%g3096032752%_
                            (lambda (_%g3096230973%_)
                              (let* ((_%__stx3927939280%_ _%ptree30957%_)
                                     (_%g3100331145%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx3927939280%_))))
                                (let ((_%__kont3928239283%_
                                       (lambda (_%g3100532467%_
                                                _%g3100632469%_)
                                         (let* ((_%__stx3919739198%_
                                                 _%g3100532467%_)
                                                (_%g3248632521%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3919739198%_))))
                                           (let ((_%__kont3920039201%_
                                                  (lambda ()
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _%g3100632469%_
                                    (cons _%g3096230973%_ '())))
                        (cons _%K30958%_ (cons _%E30959%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3920239203%_
                                                  (lambda (_%g3248832722%_)
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _%g3100632469%_
                                    (cons _%g3096230973%_ '())))
                        (cons (_%generate129695%_
                               _%tgt30955%_
                               _%g3248832722%_
                               _%K30958%_
                               _%E30959%_)
                              (cons _%E30959%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3920439205%_
                                                  (lambda (_%g3249232660%_)
                                                    (let* ((_%g3267432682%_
                                                            (lambda (_%g3267532678%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g3267532678%_)))
                                                           (_%g3267332701%_
                                                            (lambda (_%g3267532686%_)
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%g3267532686%_
                                              (cons (cons _%g3100632469%_
                                                          (cons _%g3096230973%_
                                                                '()))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons _%g3267532686%_
                                                    (cons (_%generate129695%_
                                                           _%g3267532686%_
                                                           _%g3249232660%_
                                                           _%K30958%_
                                                           _%E30959%_)
                                                          (cons _%E30959%_
                                                                '()))))
                                        '()))))))
              (_%g3267332701%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3920639207%_
                                                  (lambda (_%g3250032576%_
                                                           _%g3250132578%_)
                                                    (let* ((_%g3259832606%_
                                                            (lambda (_%g3259932602%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g3259932602%_)))
                                                           (_%g3259732625%_
                                                            (lambda (_%g3259932610%_)
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '?)
                                        (cons _%g3100632469%_
                                              (cons _%g3096230973%_ '())))
                                  (cons (cons 'let
                                              (cons (cons (cons _%g3259932610%_
                                                                (cons (cons _%g3250132578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%g3096230973%_ '()))
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_%generate129695%_
                                                           _%g3259932610%_
                                                           _%g3250032576%_
                                                           _%K30958%_
                                                           _%E30959%_)
                                                          '())))
                                        (cons _%E30959%_ '())))))))
              (_%g3259732625%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_%g3248332733%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%__stx3919739198%_)
                                                          (let ((_%e3248932712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%__stx3919739198%_)))
                    (let ((_%tl3249132719%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3248932712%_)))
                          (_%hd3249032716%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3248932712%_))))
                      (if (gx#stx-null? _%tl3249132719%_)
                          (_%__kont3920239203%_ _%hd3249032716%_)
                          (if (gx#stx-datum? _%hd3249032716%_)
                              (let ((_%e3249632646%_
                                     (gx#stx-e _%hd3249032716%_)))
                                (if (equal? _%e3249632646%_ '=>:)
                                    (if (gx#stx-pair? _%tl3249132719%_)
                                        (let ((_%e3249732650%_
                                               (gx#syntax-e _%tl3249132719%_)))
                                          (let ((_%tl3249932657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3249732650%_)))
                                                (_%hd3249832654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3249732650%_))))
                                            (if (gx#stx-null? _%tl3249932657%_)
                                                (_%__kont3920439205%_
                                                 _%hd3249832654%_)
                                                (_%g3248632521%_))))
                                        (_%g3248632521%_))
                                    (if (equal? _%e3249632646%_ '::)
                                        (if (gx#stx-pair? _%tl3249132719%_)
                                            (let ((_%e3250632542%_
                                                   (gx#syntax-e
                                                    _%tl3249132719%_)))
                                              (let ((_%tl3250832549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3250632542%_)))
                                                    (_%hd3250732546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3250632542%_))))
                                                (if (gx#stx-pair?
                                                     _%tl3250832549%_)
                                                    (let ((_%e3250932552%_
                                                           (gx#syntax-e
                                                            _%tl3250832549%_)))
                                                      (let ((_%tl3251132559%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3250932552%_)))
                    (_%hd3251032556%_
                     (let () (declare (not safe)) (##car _%e3250932552%_))))
                (if (gx#stx-datum? _%hd3251032556%_)
                    (let ((_%e3251232562%_ (gx#stx-e _%hd3251032556%_)))
                      (if (equal? _%e3251232562%_ '=>:)
                          (if (gx#stx-pair? _%tl3251132559%_)
                              (let ((_%e3251332566%_
                                     (gx#syntax-e _%tl3251132559%_)))
                                (let ((_%tl3251532573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3251332566%_)))
                                      (_%hd3251432570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3251332566%_))))
                                  (if (gx#stx-null? _%tl3251532573%_)
                                      (_%__kont3920639207%_
                                       _%hd3251432570%_
                                       _%hd3250732546%_)
                                      (_%g3248632521%_))))
                              (_%g3248632521%_))
                          (_%g3248632521%_)))
                    (_%g3248632521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3248632521%_))))
                                            (_%g3248632521%_))
                                        (_%g3248632521%_))))
                              (_%g3248632521%_)))))
                  (_%g3248632521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%__stx3919739198%_)
                                                   (_%__kont3920039201%_)
                                                   (_%g3248332733%_)))))))
                                      (_%__kont3928439285%_
                                       (lambda (_%g3101432364%_)
                                         (let* ((_%__stx3918139182%_
                                                 _%g3101432364%_)
                                                (_%g3237732389%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3918139182%_))))
                                           (let ((_%__kont3918439185%_
                                                  (lambda (_%g3237932417%_
                                                           _%g3238032419%_)
                                                    (_%generate129695%_
                                                     _%tgt30955%_
                                                     _%g3238032419%_
                                                     (_%generate129695%_
                                                      _%tgt30955%_
                                                      (cons 'and:
                                                            _%g3237932417%_)
                                                      _%K30958%_
                                                      _%E30959%_)
                                                     _%E30959%_)))
                                                 (_%__kont3918639187%_
                                                  (lambda () _%K30958%_)))
                                             (if (gx#stx-pair?
                                                  _%__stx3918139182%_)
                                                 (let ((_%e3238132407%_
                                                        (gx#syntax-e
                                                         _%__stx3918139182%_)))
                                                   (let ((_%tl3238332414%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3238132407%_)))
                                                         (_%hd3238232411%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3238132407%_))))
                                                     (_%__kont3918439185%_
                                                      _%tl3238332414%_
                                                      _%hd3238232411%_)))
                                                 (_%__kont3918639187%_))))))
                                      (_%__kont3928639287%_
                                       (lambda (_%g3101932271%_)
                                         (let* ((_%__stx3916539166%_
                                                 _%g3101932271%_)
                                                (_%g3228432296%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3916539166%_))))
                                           (let ((_%__kont3916839169%_
                                                  (lambda (_%g3228632324%_
                                                           _%g3228732326%_)
                                                    (_%generate129695%_
                                                     _%tgt30955%_
                                                     _%g3228732326%_
                                                     _%K30958%_
                                                     (_%generate129695%_
                                                      _%tgt30955%_
                                                      (cons 'or:
                                                            _%g3228632324%_)
                                                      _%K30958%_
                                                      _%E30959%_))))
                                                 (_%__kont3917039171%_
                                                  (lambda () _%E30959%_)))
                                             (if (gx#stx-pair?
                                                  _%__stx3916539166%_)
                                                 (let ((_%e3228832314%_
                                                        (gx#syntax-e
                                                         _%__stx3916539166%_)))
                                                   (let ((_%tl3229032321%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3228832314%_)))
                                                         (_%hd3228932318%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3228832314%_))))
                                                     (_%__kont3916839169%_
                                                      _%tl3229032321%_
                                                      _%hd3228932318%_)))
                                                 (_%__kont3917039171%_))))))
                                      (_%__kont3928839289%_
                                       (lambda (_%g3102432236%_)
                                         (_%generate129695%_
                                          _%tgt30955%_
                                          _%g3102432236%_
                                          _%E30959%_
                                          _%K30958%_)))
                                      (_%__kont3929039291%_
                                       (lambda (_%g3103232110%_
                                                _%g3103332112%_)
                                         (let* ((_%g3212932144%_
                                                 (lambda (_%g3213032140%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3213032140%_)))
                                                (_%g3212832201%_
                                                 (lambda (_%g3213032148%_)
                                                   (if (gx#stx-pair?
                                                        _%g3213032148%_)
                                                       (let ((_%e3213332151%_
                                                              (gx#syntax-e
                                                               _%g3213032148%_)))
                                                         (let ((_%hd3213432155%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e3213332151%_)))
                       (_%tl3213532158%_
                        (let () (declare (not safe)) (##cdr _%e3213332151%_))))
                   (if (gx#stx-pair? _%tl3213532158%_)
                       (let ((_%e3213632161%_ (gx#syntax-e _%tl3213532158%_)))
                         (let ((_%hd3213732165%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3213632161%_)))
                               (_%tl3213832168%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3213632161%_))))
                           (if (gx#stx-null? _%tl3213832168%_)
                               (cons 'if
                                     (cons (cons (gx#datum->syntax '#f 'pair?)
                                                 (cons _%g3096230973%_ '()))
                                           (cons (let ((_%hd-pat32189%_
                                                        (gx#stx-e
                                                         _%g3103332112%_))
                                                       (_%tl-pat32191%_
                                                        (gx#stx-e
                                                         _%g3103232110%_)))
                                                   (if (and (equal? _%hd-pat32189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '(any:))
                    (equal? _%tl-pat32191%_ '(any:)))
               _%K30958%_
               (if (equal? _%tl-pat32191%_ '(any:))
                   (cons 'let
                         (cons (cons (cons _%hd3213432155%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##car)
                                                       (cons _%g3096230973%_
                                                             '()))
                                                 '()))
                                     '())
                               (cons (_%generate129695%_
                                      _%hd3213432155%_
                                      _%g3103332112%_
                                      _%K30958%_
                                      _%E30959%_)
                                     '())))
                   (if (equal? _%hd-pat32189%_ '(any:))
                       (cons 'let
                             (cons (cons (cons _%hd3213732165%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _%g3096230973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (_%generate129695%_
                                          _%hd3213732165%_
                                          _%g3103232110%_
                                          _%K30958%_
                                          _%E30959%_)
                                         '())))
                       (cons 'let
                             (cons (cons (cons _%hd3213432155%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _%g3096230973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons _%hd3213732165%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3096230973%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (_%generate129695%_
                                          _%hd3213432155%_
                                          _%g3103332112%_
                                          (_%generate129695%_
                                           _%hd3213732165%_
                                           _%g3103232110%_
                                           _%K30958%_
                                           _%E30959%_)
                                          _%E30959%_)
                                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%E30959%_ '()))))
                               (_%g3212932144%_ _%g3213032148%_))))
                       (_%g3212932144%_ _%g3213032148%_))))
               (_%g3212932144%_ _%g3213032148%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g3212832201%_
                                            (list (gx#genident 'hd)
                                                  (gx#genident 'tl))))))
                                      (_%__kont3929239293%_
                                       (lambda ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'null?)
                                                           (cons _%g3096230973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%K30958%_
                                                           (cons _%E30959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__kont3929439295%_
                                       (lambda (_%g3104832026%_
                                                _%g3104932028%_)
                                         (_%generate-splice29697%_
                                          _%tgt30955%_
                                          _%g3104932028%_
                                          _%g3104832026%_
                                          _%K30958%_
                                          _%E30959%_)))
                                      (_%__kont3929639297%_
                                       (lambda (_%g3106031940%_)
                                         (let* ((_%g3195431962%_
                                                 (lambda (_%g3195531958%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3195531958%_)))
                                                (_%g3195331981%_
                                                 (lambda (_%g3195531966%_)
                                                   (cons 'if
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'box?)
                             (cons _%g3096230973%_ '()))
                       (cons (cons 'let
                                   (cons (cons (cons _%g3195531966%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _%g3096230973%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129695%_
                                                _%g3195531966%_
                                                _%g3106031940%_
                                                _%K30958%_
                                                _%E30959%_)
                                               '())))
                             (cons _%E30959%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g3195331981%_
                                            (gx#genident 'e)))))
                                      (_%__kont3929839299%_
                                       (lambda (_%g3106831745%_)
                                         (let* ((_%__stx3911539116%_
                                                 _%g3106831745%_)
                                                (_%g3176031783%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3911539116%_))))
                                           (let ((_%__kont3911839119%_
                                                  (lambda (_%g3176231860%_)
                                                    (let* ((_%g3187431882%_
                                                            (lambda (_%g3187531878%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g3187531878%_)))
                                                           (_%g3187331901%_
                                                            (lambda (_%g3187531886%_)
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx=)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'values-count)
                                                    (cons _%g3096230973%_ '()))
                                              (cons _%g3187531886%_ '())))
                                  (cons (_%generate-simple-vector29698%_
                                         _%tgt30955%_
                                         _%g3176231860%_
                                         '0
                                         '##values-ref
                                         _%K30958%_
                                         _%E30959%_)
                                        (cons _%E30959%_ '())))))))
              (_%g3187331901%_ (gx#stx-length _%g3176231860%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3912039121%_
                                                  (lambda (_%g3177031814%_)
                                                    (_%generate-list-vector29699%_
                                                     _%tgt30955%_
                                                     _%g3177031814%_
                                                     'values->list
                                                     _%K30958%_
                                                     _%E30959%_))))
                                             (if (gx#stx-pair?
                                                  _%__stx3911539116%_)
                                                 (let ((_%e3176331836%_
                                                        (gx#syntax-e
                                                         _%__stx3911539116%_)))
                                                   (let ((_%tl3176531843%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3176331836%_)))
                                                         (_%hd3176431840%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3176331836%_))))
                                                     (if (gx#stx-datum?
                                                          _%hd3176431840%_)
                                                         (let ((_%e3176631846%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd3176431840%_)))
                   (if (equal? _%e3176631846%_ 'simple:)
                       (if (gx#stx-pair? _%tl3176531843%_)
                           (let ((_%e3176731850%_
                                  (gx#syntax-e _%tl3176531843%_)))
                             (let ((_%tl3176931857%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3176731850%_)))
                                   (_%hd3176831854%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3176731850%_))))
                               (if (gx#stx-null? _%tl3176931857%_)
                                   (_%__kont3911839119%_ _%hd3176831854%_)
                                   (_%g3176031783%_))))
                           (_%g3176031783%_))
                       (if (equal? _%e3176631846%_ 'list:)
                           (if (gx#stx-pair? _%tl3176531843%_)
                               (let ((_%e3177531804%_
                                      (gx#syntax-e _%tl3176531843%_)))
                                 (let ((_%tl3177731811%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3177531804%_)))
                                       (_%hd3177631808%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3177531804%_))))
                                   (if (gx#stx-null? _%tl3177731811%_)
                                       (_%__kont3912039121%_ _%hd3177631808%_)
                                       (_%g3176031783%_))))
                               (_%g3176031783%_))
                           (_%g3176031783%_))))
                 (_%g3176031783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3176031783%_))))))
                                      (_%__kont3930039301%_
                                       (lambda (_%g3107631550%_)
                                         (let* ((_%__stx3906539066%_
                                                 _%g3107631550%_)
                                                (_%g3156531588%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3906539066%_))))
                                           (let ((_%__kont3906839069%_
                                                  (lambda (_%g3156731665%_)
                                                    (let* ((_%g3167931687%_
                                                            (lambda (_%g3168031683%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g3168031683%_)))
                                                           (_%g3167831706%_
                                                            (lambda (_%g3168031691%_)
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'vector?)
                                        (cons _%g3096230973%_ '()))
                                  (cons (cons 'if
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx=)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector-length)
                              (cons _%g3096230973%_ '()))
                        (cons _%g3168031691%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_%generate-simple-vector29698%_
                                                           _%tgt30955%_
                                                           _%g3156731665%_
                                                           '0
                                                           '##vector-ref
                                                           _%K30958%_
                                                           _%E30959%_)
                                                          (cons _%E30959%_
                                                                '()))))
                                        (cons _%E30959%_ '())))))))
              (_%g3167831706%_ (gx#stx-length _%g3156731665%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3907039071%_
                                                  (lambda (_%g3157531619%_)
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector?)
                              (cons _%g3096230973%_ '()))
                        (cons (_%generate-list-vector29699%_
                               _%tgt30955%_
                               _%g3157531619%_
                               'vector->list
                               _%K30958%_
                               _%E30959%_)
                              (cons _%E30959%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair?
                                                  _%__stx3906539066%_)
                                                 (let ((_%e3156831641%_
                                                        (gx#syntax-e
                                                         _%__stx3906539066%_)))
                                                   (let ((_%tl3157031648%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3156831641%_)))
                                                         (_%hd3156931645%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3156831641%_))))
                                                     (if (gx#stx-datum?
                                                          _%hd3156931645%_)
                                                         (let ((_%e3157131651%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd3156931645%_)))
                   (if (equal? _%e3157131651%_ 'simple:)
                       (if (gx#stx-pair? _%tl3157031648%_)
                           (let ((_%e3157231655%_
                                  (gx#syntax-e _%tl3157031648%_)))
                             (let ((_%tl3157431662%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3157231655%_)))
                                   (_%hd3157331659%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3157231655%_))))
                               (if (gx#stx-null? _%tl3157431662%_)
                                   (_%__kont3906839069%_ _%hd3157331659%_)
                                   (_%g3156531588%_))))
                           (_%g3156531588%_))
                       (if (equal? _%e3157131651%_ 'list:)
                           (if (gx#stx-pair? _%tl3157031648%_)
                               (let ((_%e3158031609%_
                                      (gx#syntax-e _%tl3157031648%_)))
                                 (let ((_%tl3158231616%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3158031609%_)))
                                       (_%hd3158131613%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3158031609%_))))
                                   (if (gx#stx-null? _%tl3158231616%_)
                                       (_%__kont3907039071%_ _%hd3158131613%_)
                                       (_%g3156531588%_))))
                               (_%g3156531588%_))
                           (_%g3156531588%_))))
                 (_%g3156531588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3156531588%_))))))
                                      (_%__kont3930239303%_
                                       (lambda (_%g3108431501%_
                                                _%g3108531503%_)
                                         (_%generate-struct29700%_
                                          (gx#stx-e _%g3108531503%_)
                                          _%tgt30955%_
                                          _%g3108431501%_
                                          _%K30958%_
                                          _%E30959%_)))
                                      (_%__kont3930439305%_
                                       (lambda (_%g3109631442%_
                                                _%g3109731444%_)
                                         (_%generate-class29703%_
                                          (gx#stx-e _%g3109731444%_)
                                          _%tgt30955%_
                                          _%g3109631442%_
                                          _%K30958%_
                                          _%E30959%_)))
                                      (_%__kont3930639307%_
                                       (lambda (_%g3110831339%_)
                                         (let* ((_%g3135331361%_
                                                 (lambda (_%g3135431357%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3135431357%_)))
                                                (_%g3135231380%_
                                                 (lambda (_%g3135431365%_)
                                                   (cons 'if
                                                         (cons (cons _%g3135431365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3096230973%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g3110831339%_ '()))
                                         '())))
                       (cons _%K30958%_ (cons _%E30959%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g3135231380%_
                                            (let ((_%e31384%_
                                                   (gx#stx-e _%g3110831339%_)))
                                              (if (or (symbol? _%e31384%_)
                                                      (keyword? _%e31384%_)
                                                      (immediate? _%e31384%_))
                                                  '##eq?
                                                  (if (number? _%e31384%_)
                                                      'eqv?
                                                      'equal?)))))))
                                      (_%__kont3930839309%_
                                       (lambda (_%g3111631259%_
                                                _%g3111731261%_)
                                         (let* ((_%g3127731285%_
                                                 (lambda (_%g3127831281%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3127831281%_)))
                                                (_%g3127631304%_
                                                 (lambda (_%g3127831289%_)
                                                   (cons 'let
                                                         (cons (cons (cons _%g3127831289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons _%g3111731261%_
                                               (cons _%g3096230973%_ '()))
                                         '()))
                             '())
                       (cons (_%generate129695%_
                              _%g3127831289%_
                              _%g3111631259%_
                              _%K30958%_
                              _%E30959%_)
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g3127631304%_
                                            (gx#genident 'e)))))
                                      (_%__kont3931039311%_
                                       (lambda (_%g3112831201%_)
                                         (cons 'let
                                               (cons (cons (cons _%g3112831201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g3096230973%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%K30958%_ '())))))
                                      (_%__kont3931239313%_
                                       (lambda () _%K30958%_)))
                                  (if (gx#stx-pair? _%__stx3927939280%_)
                                      (let ((_%e3100732443%_
                                             (gx#syntax-e
                                              _%__stx3927939280%_)))
                                        (let ((_%tl3100932450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3100732443%_)))
                                              (_%hd3100832447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3100732443%_))))
                                          (if (gx#stx-datum? _%hd3100832447%_)
                                              (let ((_%e3101032453%_
                                                     (gx#stx-e
                                                      _%hd3100832447%_)))
                                                (if (equal? _%e3101032453%_
                                                            '?:)
                                                    (if (gx#stx-pair?
                                                         _%tl3100932450%_)
                                                        (let ((_%e3101132457%_
                                                               (gx#syntax-e
                                                                _%tl3100932450%_)))
                                                          (let ((_%tl3101332464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3101132457%_)))
                        (_%hd3101232461%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3101132457%_))))
                    (_%__kont3928239283%_ _%tl3101332464%_ _%hd3101232461%_)))
                (_%g3100331145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e3101032453%_
                                                                'and:)
                                                        (_%__kont3928439285%_
                                                         _%tl3100932450%_)
                                                        (if (equal? _%e3101032453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'or:)
                    (_%__kont3928639287%_ _%tl3100932450%_)
                    (if (equal? _%e3101032453%_ 'not:)
                        (if (gx#stx-pair? _%tl3100932450%_)
                            (let ((_%e3102932226%_
                                   (gx#syntax-e _%tl3100932450%_)))
                              (let ((_%tl3103132233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3102932226%_)))
                                    (_%hd3103032230%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3102932226%_))))
                                (if (gx#stx-null? _%tl3103132233%_)
                                    (_%__kont3928839289%_ _%hd3103032230%_)
                                    (_%g3100331145%_))))
                            (_%g3100331145%_))
                        (if (equal? _%e3101032453%_ 'cons:)
                            (if (gx#stx-pair? _%tl3100932450%_)
                                (let ((_%e3103832090%_
                                       (gx#syntax-e _%tl3100932450%_)))
                                  (let ((_%tl3104032097%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3103832090%_)))
                                        (_%hd3103932094%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3103832090%_))))
                                    (if (gx#stx-pair? _%tl3104032097%_)
                                        (let ((_%e3104132100%_
                                               (gx#syntax-e _%tl3104032097%_)))
                                          (let ((_%tl3104332107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3104132100%_)))
                                                (_%hd3104232104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3104132100%_))))
                                            (if (gx#stx-null? _%tl3104332107%_)
                                                (_%__kont3929039291%_
                                                 _%hd3104232104%_
                                                 _%hd3103932094%_)
                                                (_%g3100331145%_))))
                                        (_%g3100331145%_))))
                                (_%g3100331145%_))
                            (if (equal? _%e3101032453%_ 'null:)
                                (if (gx#stx-null? _%tl3100932450%_)
                                    (_%__kont3929239293%_)
                                    (_%g3100331145%_))
                                (if (equal? _%e3101032453%_ 'splice:)
                                    (if (gx#stx-pair? _%tl3100932450%_)
                                        (let ((_%e3105432006%_
                                               (gx#syntax-e _%tl3100932450%_)))
                                          (let ((_%tl3105632013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3105432006%_)))
                                                (_%hd3105532010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3105432006%_))))
                                            (if (gx#stx-pair? _%tl3105632013%_)
                                                (let ((_%e3105732016%_
                                                       (gx#syntax-e
                                                        _%tl3105632013%_)))
                                                  (let ((_%tl3105932023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3105732016%_)))
                                                        (_%hd3105832020%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3105732016%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3105932023%_)
                                                        (_%__kont3929439295%_
                                                         _%hd3105832020%_
                                                         _%hd3105532010%_)
                                                        (_%g3100331145%_))))
                                                (_%g3100331145%_))))
                                        (_%g3100331145%_))
                                    (if (equal? _%e3101032453%_ 'box:)
                                        (if (gx#stx-pair? _%tl3100932450%_)
                                            (let ((_%e3106531930%_
                                                   (gx#syntax-e
                                                    _%tl3100932450%_)))
                                              (let ((_%tl3106731937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3106531930%_)))
                                                    (_%hd3106631934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3106531930%_))))
                                                (if (gx#stx-null?
                                                     _%tl3106731937%_)
                                                    (_%__kont3929639297%_
                                                     _%hd3106631934%_)
                                                    (_%g3100331145%_))))
                                            (_%g3100331145%_))
                                        (if (equal? _%e3101032453%_ 'values:)
                                            (if (gx#stx-pair? _%tl3100932450%_)
                                                (let ((_%e3107331735%_
                                                       (gx#syntax-e
                                                        _%tl3100932450%_)))
                                                  (let ((_%tl3107531742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3107331735%_)))
                                                        (_%hd3107431739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3107331735%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3107531742%_)
                                                        (_%__kont3929839299%_
                                                         _%hd3107431739%_)
                                                        (_%g3100331145%_))))
                                                (_%g3100331145%_))
                                            (if (equal? _%e3101032453%_
                                                        'vector:)
                                                (if (gx#stx-pair?
                                                     _%tl3100932450%_)
                                                    (let ((_%e3108131540%_
                                                           (gx#syntax-e
                                                            _%tl3100932450%_)))
                                                      (let ((_%tl3108331547%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3108131540%_)))
                    (_%hd3108231544%_
                     (let () (declare (not safe)) (##car _%e3108131540%_))))
                (if (gx#stx-null? _%tl3108331547%_)
                    (_%__kont3930039301%_ _%hd3108231544%_)
                    (_%g3100331145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3100331145%_))
                                                (if (equal? _%e3101032453%_
                                                            'struct:)
                                                    (if (gx#stx-pair?
                                                         _%tl3100932450%_)
                                                        (let ((_%e3109031481%_
                                                               (gx#syntax-e
                                                                _%tl3100932450%_)))
                                                          (let ((_%tl3109231488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3109031481%_)))
                        (_%hd3109131485%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3109031481%_))))
                    (if (gx#stx-pair? _%tl3109231488%_)
                        (let ((_%e3109331491%_ (gx#syntax-e _%tl3109231488%_)))
                          (let ((_%tl3109531498%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3109331491%_)))
                                (_%hd3109431495%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3109331491%_))))
                            (if (gx#stx-null? _%tl3109531498%_)
                                (_%__kont3930239303%_
                                 _%hd3109431495%_
                                 _%hd3109131485%_)
                                (_%g3100331145%_))))
                        (_%g3100331145%_))))
                (_%g3100331145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e3101032453%_
                                                                'class:)
                                                        (if (gx#stx-pair?
                                                             _%tl3100932450%_)
                                                            (let ((_%e3110231422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3100932450%_)))
                      (let ((_%tl3110431429%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3110231422%_)))
                            (_%hd3110331426%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3110231422%_))))
                        (if (gx#stx-pair? _%tl3110431429%_)
                            (let ((_%e3110531432%_
                                   (gx#syntax-e _%tl3110431429%_)))
                              (let ((_%tl3110731439%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3110531432%_)))
                                    (_%hd3110631436%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3110531432%_))))
                                (if (gx#stx-null? _%tl3110731439%_)
                                    (_%__kont3930439305%_
                                     _%hd3110631436%_
                                     _%hd3110331426%_)
                                    (_%g3100331145%_))))
                            (_%g3100331145%_))))
                    (_%g3100331145%_))
                (if (equal? _%e3101032453%_ 'datum:)
                    (if (gx#stx-pair? _%tl3100932450%_)
                        (let ((_%e3111331329%_ (gx#syntax-e _%tl3100932450%_)))
                          (let ((_%tl3111531336%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3111331329%_)))
                                (_%hd3111431333%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3111331329%_))))
                            (if (gx#stx-null? _%tl3111531336%_)
                                (_%__kont3930639307%_ _%hd3111431333%_)
                                (_%g3100331145%_))))
                        (_%g3100331145%_))
                    (if (equal? _%e3101032453%_ 'apply:)
                        (if (gx#stx-pair? _%tl3100932450%_)
                            (let ((_%e3112231239%_
                                   (gx#syntax-e _%tl3100932450%_)))
                              (let ((_%tl3112431246%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3112231239%_)))
                                    (_%hd3112331243%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3112231239%_))))
                                (if (gx#stx-pair? _%tl3112431246%_)
                                    (let ((_%e3112531249%_
                                           (gx#syntax-e _%tl3112431246%_)))
                                      (let ((_%tl3112731256%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3112531249%_)))
                                            (_%hd3112631253%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3112531249%_))))
                                        (if (gx#stx-null? _%tl3112731256%_)
                                            (_%__kont3930839309%_
                                             _%hd3112631253%_
                                             _%hd3112331243%_)
                                            (_%g3100331145%_))))
                                    (_%g3100331145%_))))
                            (_%g3100331145%_))
                        (if (equal? _%e3101032453%_ 'var:)
                            (if (gx#stx-pair? _%tl3100932450%_)
                                (let ((_%e3113331191%_
                                       (gx#syntax-e _%tl3100932450%_)))
                                  (let ((_%tl3113531198%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3113331191%_)))
                                        (_%hd3113431195%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3113331191%_))))
                                    (if (gx#stx-null? _%tl3113531198%_)
                                        (_%__kont3931039311%_ _%hd3113431195%_)
                                        (_%g3100331145%_))))
                                (_%g3100331145%_))
                            (if (equal? _%e3101032453%_ 'any:)
                                (if (gx#stx-null? _%tl3100932450%_)
                                    (_%__kont3931239313%_)
                                    (_%g3100331145%_))
                                (_%g3100331145%_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3100331145%_))))
                                      (_%g3100331145%_)))))))
                      (_%g3096032752%_ _%tgt30955%_))))
                 (_%generate-splice29697%_
                  (lambda (_%tgt30333%_
                           _%hd30335%_
                           _%rest30336%_
                           _%K30337%_
                           _%E30338%_)
                    (let* ((_%g3034030357%_
                            (lambda (_%g3034130353%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3034130353%_)))
                           (_%g3033930951%_
                            (lambda (_%g3034130361%_)
                              (if (gx#stx-pair/null? _%g3034130361%_)
                                  (let ((_g40434_
                                         (gx#syntax-split-splice
                                          _%g3034130361%_
                                          '0)))
                                    (begin
                                      (let ((_g40435_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40434_)
                                                   (##values-length _g40434_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40435_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40435_)))
                                      (let ((_%target3034330364%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40434_ 0)))
                                            (_%tl3034530367%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40434_ 1))))
                                        (if (gx#stx-null? _%tl3034530367%_)
                                            (letrec ((_%loop3034630370%_
                                                      (lambda (_%hd3034430374%_
                                                               _%var3035030377%_)
                                                        (if (gx#stx-pair?
                                                             _%hd3034430374%_)
                                                            (let ((_%e3034730379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd3034430374%_)))
                      (let ((_%lp-hd3034830383%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3034730379%_)))
                            (_%lp-tl3034930386%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3034730379%_))))
                        (_%loop3034630370%_
                         _%lp-tl3034930386%_
                         (cons _%lp-hd3034830383%_ _%var3035030377%_))))
                    (let* ((_%var3035130389%_ (reverse _%var3035030377%_))
                           (_%g3040830425%_
                            (lambda (_%g3040930421%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3040930421%_)))
                           (_%g3040730939%_
                            (lambda (_%g3040930429%_)
                              (if (gx#stx-pair/null? _%g3040930429%_)
                                  (let ((_g40436_
                                         (gx#syntax-split-splice
                                          _%g3040930429%_
                                          '0)))
                                    (begin
                                      (let ((_g40437_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40436_)
                                                   (##values-length _g40436_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40437_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40437_)))
                                      (let ((_%target3041130432%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40436_ 0)))
                                            (_%tl3041330435%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40436_ 1))))
                                        (if (gx#stx-null? _%tl3041330435%_)
                                            (letrec ((_%loop3041430438%_
                                                      (lambda (_%hd3041230442%_
                                                               _%var-r3041830445%_)
                                                        (if (gx#stx-pair?
                                                             _%hd3041230442%_)
                                                            (let ((_%e3041530447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd3041230442%_)))
                      (let ((_%lp-hd3041630451%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3041530447%_)))
                            (_%lp-tl3041730454%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3041530447%_))))
                        (_%loop3041430438%_
                         _%lp-tl3041730454%_
                         (cons _%lp-hd3041630451%_ _%var-r3041830445%_))))
                    (let* ((_%var-r3041930457%_ (reverse _%var-r3041830445%_))
                           (_%g3047730494%_
                            (lambda (_%g3047830490%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3047830490%_)))
                           (_%g3047630927%_
                            (lambda (_%g3047830498%_)
                              (if (gx#stx-pair/null? _%g3047830498%_)
                                  (let ((_g40438_
                                         (gx#syntax-split-splice
                                          _%g3047830498%_
                                          '0)))
                                    (begin
                                      (let ((_g40439_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40438_)
                                                   (##values-length _g40438_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40439_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40439_)))
                                      (let ((_%target3048030501%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40438_ 0)))
                                            (_%tl3048230504%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40438_ 1))))
                                        (if (gx#stx-null? _%tl3048230504%_)
                                            (letrec ((_%loop3048330507%_
                                                      (lambda (_%hd3048130511%_
                                                               _%init3048730514%_)
                                                        (if (gx#stx-pair?
                                                             _%hd3048130511%_)
                                                            (let ((_%e3048430516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd3048130511%_)))
                      (let ((_%lp-hd3048530520%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3048430516%_)))
                            (_%lp-tl3048630523%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3048430516%_))))
                        (_%loop3048330507%_
                         _%lp-tl3048630523%_
                         (cons _%lp-hd3048530520%_ _%init3048730514%_))))
                    (let* ((_%init3048830526%_ (reverse _%init3048730514%_))
                           (_%g3054630554%_
                            (lambda (_%g3054730550%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3054730550%_)))
                           (_%g3054530923%_
                            (lambda (_%g3054730558%_)
                              (let* ((_%g3057430582%_
                                      (lambda (_%g3057530578%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3057530578%_)))
                                     (_%g3057330919%_
                                      (lambda (_%g3057530586%_)
                                        (let* ((_%g3060230610%_
                                                (lambda (_%g3060330606%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g3060330606%_)))
                                               (_%g3060130915%_
                                                (lambda (_%g3060330614%_)
                                                  (let* ((_%g3063030638%_
                                                          (lambda (_%g3063130634%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g3063130634%_)))
                                                         (_%g3062930911%_
                                                          (lambda (_%g3063130642%_)
                                                            (let* ((_%g3065830666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3065930662%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3065930662%_)))
                           (_%g3065730907%_
                            (lambda (_%g3065930670%_)
                              (let* ((_%g3068630694%_
                                      (lambda (_%g3068730690%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3068730690%_)))
                                     (_%g3068530903%_
                                      (lambda (_%g3068730698%_)
                                        (let* ((_%g3071430722%_
                                                (lambda (_%g3071530718%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g3071530718%_)))
                                               (_%g3071330899%_
                                                (lambda (_%g3071530726%_)
                                                  (let* ((_%g3074230750%_
                                                          (lambda (_%g3074330746%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g3074330746%_)))
                                                         (_%g3074130884%_
                                                          (lambda (_%g3074330754%_)
                                                            (let* ((_%g3077030778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3077130774%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3077130774%_)))
                           (_%g3076930872%_
                            (lambda (_%g3077130782%_)
                              (let* ((_%g3079830806%_
                                      (lambda (_%g3079930802%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3079930802%_)))
                                     (_%g3079730868%_
                                      (lambda (_%g3079930810%_)
                                        (cons (gx#datum->syntax '#f 'letrec)
                                              (cons (cons (cons _%g3057530586%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'lambda)
                                    (cons (cons _%g3068730698%_
                                                (foldr (lambda (_%g3082730838%_
                                                                _%g3082830841%_)
                                                         (cons _%g3082730838%_
                                                               _%g3082830841%_))
                                                       '()
                                                       _%var3035130389%_))
                                          (cons _%g3071530726%_ '())))
                              '()))
                  (cons (cons _%g3063130642%_
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _%g3065930670%_
                                                      (cons _%g3068730698%_
                                                            (foldr (lambda (_%g3082930844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g3083030847%_)
                             (cons _%g3082930844%_ _%g3083030847%_))
                           '()
                           _%var-r3041930457%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g3079930810%_ '())))
                                    '()))
                        (cons (cons _%g3060330614%_
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g3068730698%_
                                                            (foldr (lambda (_%g3083130850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g3083230853%_)
                             (cons _%g3083130850%_ _%g3083230853%_))
                           '()
                           _%var-r3041930457%_))
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'pair?)
                                      (cons _%g3068730698%_ '()))
                                (cons (cons _%g3063130642%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##car)
                                                        (cons _%g3068730698%_
                                                              '()))
                                                  (cons _%g3068730698%_
                                                        (foldr (lambda (_%g3083330856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g3083430859%_)
                         (cons _%g3083330856%_ _%g3083430859%_))
                       '()
                       _%var-r3041930457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%g3077130782%_ '()))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g3060330614%_
                                                                (cons _%g3054730558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%g3083530862%_ _%g3083630865%_)
                                       (cons _%g3083530862%_ _%g3083630865%_))
                                     '()
                                     _%init3048830526%_)))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%g3079730868%_
                                 (_%generate129695%_
                                  _%g3065930670%_
                                  _%hd30335%_
                                  _%g3074330754%_
                                  _%g3077130782%_))))))
                      (_%g3076930872%_
                       (cons _%g3057530586%_
                             (cons _%g3068730698%_
                                   (foldr (lambda (_%g3087530878%_
                                                   _%g3087630881%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'reverse)
                                                        (cons _%g3087530878%_
                                                              '()))
                                                  _%g3087630881%_))
                                          '()
                                          _%var-r3041930457%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3074130884%_
                                                     (cons _%g3060330614%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3068730698%_ '()))
                         (begin
                           (gx#syntax-check-splice-targets
                            _%var-r3041930457%_
                            _%var3035130389%_)
                           (foldr (lambda (_%g3088730891%_
                                           _%g3088830894%_
                                           _%g3088930896%_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _%g3088830894%_
                                                      (cons _%g3088730891%_
                                                            '())))
                                          _%g3088930896%_))
                                  '()
                                  _%var-r3041930457%_
                                  _%var3035130389%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g3071330899%_
                                           (_%generate129695%_
                                            _%g3068730698%_
                                            _%rest30336%_
                                            _%K30337%_
                                            _%E30338%_))))))
                                (_%g3068530903%_ (gx#genident 'rest))))))
                      (_%g3065730907%_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3062930911%_
                                                     (gx#genident
                                                      'splice-try))))))
                                          (_%g3060130915%_
                                           (gx#genident 'splice-loop))))))
                                (_%g3057330919%_
                                 (gx#genident 'splice-rest))))))
                      (_%g3054530923%_ _%tgt30333%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop3048330507%_
                                               _%target3048030501%_
                                               '()))
                                            (_%g3047730494%_
                                             _%g3047830498%_)))))
                                  (_%g3047730494%_ _%g3047830498%_)))))
                      (_%g3047630927%_
                       (make-list
                        (gx#stx-length
                         (foldr (lambda (_%g3093030933%_ _%g3093130936%_)
                                  (cons _%g3093030933%_ _%g3093130936%_))
                                '()
                                _%var3035130389%_))
                        (cons (gx#datum->syntax '#f '@list) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop3041430438%_
                                               _%target3041130432%_
                                               '()))
                                            (_%g3040830425%_
                                             _%g3040930429%_)))))
                                  (_%g3040830425%_ _%g3040930429%_)))))
                      (_%g3040730939%_
                       (gx#gentemps
                        (foldr (lambda (_%g3094230945%_ _%g3094330948%_)
                                 (cons _%g3094230945%_ _%g3094330948%_))
                               '()
                               _%var3035130389%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop3034630370%_
                                               _%target3034330364%_
                                               '()))
                                            (_%g3034030357%_
                                             _%g3034130361%_)))))
                                  (_%g3034030357%_ _%g3034130361%_)))))
                      (_%g3033930951%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd30335%_)))))
                 (_%generate-simple-vector29698%_
                  (lambda (_%tgt30156%_
                           _%body30158%_
                           _%start30159%_
                           _%ref30160%_
                           _%K30161%_
                           _%E30162%_)
                    (let _%recur30164%_ ((_%rest30167%_ _%body30158%_)
                                         (_%off30169%_ _%start30159%_))
                      (let* ((_%__stx3963739638%_ _%rest30167%_)
                             (_%g3017230184%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3963739638%_))))
                        (let ((_%__kont3964039641%_
                               (lambda (_%g3017430212%_ _%g3017530214%_)
                                 (let* ((_%g3022930252%_
                                         (lambda (_%g3023030248%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3023030248%_)))
                                        (_%g3022830325%_
                                         (lambda (_%g3023030256%_)
                                           (if (gx#stx-pair? _%g3023030256%_)
                                               (let ((_%e3023530259%_
                                                      (gx#syntax-e
                                                       _%g3023030256%_)))
                                                 (let ((_%hd3023630263%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3023530259%_)))
                                                       (_%tl3023730266%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3023530259%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3023730266%_)
                                                       (let ((_%e3023830269%_
                                                              (gx#syntax-e
                                                               _%tl3023730266%_)))
                                                         (let ((_%hd3023930273%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e3023830269%_)))
                       (_%tl3024030276%_
                        (let () (declare (not safe)) (##cdr _%e3023830269%_))))
                   (if (gx#stx-pair? _%tl3024030276%_)
                       (let ((_%e3024130279%_ (gx#syntax-e _%tl3024030276%_)))
                         (let ((_%hd3024230283%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3024130279%_)))
                               (_%tl3024330286%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3024130279%_))))
                           (if (gx#stx-pair? _%tl3024330286%_)
                               (let ((_%e3024430289%_
                                      (gx#syntax-e _%tl3024330286%_)))
                                 (let ((_%hd3024530293%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3024430289%_)))
                                       (_%tl3024630296%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3024430289%_))))
                                   (if (gx#stx-null? _%tl3024630296%_)
                                       (cons 'let
                                             (cons (cons (cons _%hd3023630263%_
                                                               (cons (cons _%hd3024530293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%hd3023930273%_
                                         (cons _%hd3024230283%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129695%_
                                                          _%hd3023630263%_
                                                          _%g3017530214%_
                                                          (_%recur30164%_
                                                           _%g3017430212%_
                                                           (fx1+ _%off30169%_))
                                                          _%E30162%_)
                                                         '())))
                                       (_%g3022930252%_ _%g3023030256%_))))
                               (_%g3022930252%_ _%g3023030256%_))))
                       (_%g3022930252%_ _%g3023030256%_))))
               (_%g3022930252%_ _%g3023030256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3022930252%_
                                                _%g3023030256%_)))))
                                   (_%g3022830325%_
                                    (list (gx#genident 'e)
                                          _%tgt30156%_
                                          _%off30169%_
                                          _%ref30160%_)))))
                              (_%__kont3964239643%_ (lambda () _%K30161%_)))
                          (if (gx#stx-pair? _%__stx3963739638%_)
                              (let ((_%e3017630202%_
                                     (gx#syntax-e _%__stx3963739638%_)))
                                (let ((_%tl3017830209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3017630202%_)))
                                      (_%hd3017730206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3017630202%_))))
                                  (_%__kont3964039641%_
                                   _%tl3017830209%_
                                   _%hd3017730206%_)))
                              (_%__kont3964239643%_)))))))
                 (_%generate-list-vector29699%_
                  (lambda (_%tgt30048%_
                           _%body30050%_
                           _%->list30051%_
                           _%K30052%_
                           _%E30053%_)
                    (let* ((_%g3005530063%_
                            (lambda (_%g3005630059%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3005630059%_)))
                           (_%g3005430152%_
                            (lambda (_%g3005630067%_)
                              (let* ((_%g3008230090%_
                                      (lambda (_%g3008330086%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3008330086%_)))
                                     (_%g3008130148%_
                                      (lambda (_%g3008330094%_)
                                        (let* ((_%g3011030118%_
                                                (lambda (_%g3011130114%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g3011130114%_)))
                                               (_%g3010930140%_
                                                (lambda (_%g3011130122%_)
                                                  (cons 'let
                                                        (cons (cons (cons _%g3005630067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%g3011130122%_ '()))
                            '())
                      (cons (_%generate129695%_
                             _%g3005630067%_
                             _%body30050%_
                             _%K30052%_
                             _%E30053%_)
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g3010930140%_
                                           (let ((_%$e30144%_ _%->list30051%_))
                                             (if (eq? 'values->list
                                                      _%$e30144%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'values->list)
                                                       (cons _%g3008330094%_
                                                             '()))
                                                 (if (eq? 'vector->list
                                                          _%$e30144%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '##vector->list)
                                                           (cons _%g3008330094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (eq? 'struct->list
                                                              _%$e30144%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'struct->list)
                                   (cons _%g3008330094%_ '()))
                             '()))
                 (gx#raise-syntax-error
                  '#f
                  '"Unexpected list conversion"
                  _%stx29688%_
                  _%->list30051%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%g3008130148%_ _%tgt30048%_)))))
                      (_%g3005430152%_ (gx#genident 'e)))))
                 (_%generate-struct29700%_
                  (lambda (_%info29919%_
                           _%tgt29921%_
                           _%body29922%_
                           _%K29923%_
                           _%E29924%_)
                    (let* ((_%__stx3965339654%_ _%body29922%_)
                           (_%g2992729950%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3965339654%_))))
                      (let ((_%__kont3965639657%_
                             (lambda (_%g2992930027%_)
                               (let ((_%fields30041%_
                                      (_%struct-field-accessors29702%_
                                       _%info29919%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj40407
                                                          _%info29919%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40407
                                                            'gerbil/core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40407
                                                            '15
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40407
                                                          'predicate)))
                                                   (cons _%tgt29921%_ '()))
                                             (cons (_%generate-simple-struct-body29701%_
                                                    _%info29919%_
                                                    _%tgt29921%_
                                                    _%g2992930027%_
                                                    _%K29923%_
                                                    _%E29924%_)
                                                   (cons _%E29924%_ '())))))))
                            (_%__kont3965839659%_
                             (lambda (_%g2993729981%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40408
                                                        _%info29919%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40408
                                                          'gerbil/core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40408
                                                          '15
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40408
                                                        'predicate)))
                                                 (cons _%tgt29921%_ '()))
                                           (cons (_%generate-list-vector29699%_
                                                  _%tgt29921%_
                                                  _%g2993729981%_
                                                  'struct->list
                                                  _%K29923%_
                                                  _%E29924%_)
                                                 (cons _%E29924%_ '())))))))
                        (if (gx#stx-pair? _%__stx3965339654%_)
                            (let ((_%e2993030003%_
                                   (gx#syntax-e _%__stx3965339654%_)))
                              (let ((_%tl2993230010%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2993030003%_)))
                                    (_%hd2993130007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2993030003%_))))
                                (if (gx#stx-datum? _%hd2993130007%_)
                                    (let ((_%e2993330013%_
                                           (gx#stx-e _%hd2993130007%_)))
                                      (if (equal? _%e2993330013%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2993230010%_)
                                              (let ((_%e2993430017%_
                                                     (gx#syntax-e
                                                      _%tl2993230010%_)))
                                                (let ((_%tl2993630024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2993430017%_)))
                                                      (_%hd2993530021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2993430017%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2993630024%_)
                                                      (_%__kont3965639657%_
                                                       _%hd2993530021%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2992729950%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2992729950%_)))
                                          (if (equal? _%e2993330013%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2993230010%_)
                                                  (let ((_%e2994229971%_
                                                         (gx#syntax-e
                                                          _%tl2993230010%_)))
                                                    (let ((_%tl2994429978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2994229971%_)))
                                                          (_%hd2994329975%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2994229971%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2994429978%_)
                                                          (_%__kont3965839659%_
                                                           _%hd2994329975%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2992729950%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2992729950%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2992729950%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2992729950%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2992729950%_)))))))
                 (_%generate-simple-struct-body29701%_
                  (lambda (_%info29839%_
                           _%tgt29841%_
                           _%body29842%_
                           _%K29843%_
                           _%E29844%_)
                    (let _%recur29846%_ ((_%rest29849%_ _%body29842%_)
                                         (_%fields29851%_
                                          (_%struct-field-accessors29702%_
                                           _%info29839%_)))
                      (let* ((_%__stx3970339704%_ _%rest29849%_)
                             (_%g2985429866%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3970339704%_))))
                        (let ((_%__kont3970639707%_
                               (lambda (_%g2985629894%_ _%g2985729896%_)
                                 (if (null? _%fields29851%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29688%_
                                      _%info29839%_
                                      (let ((__obj40409 _%info29839%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40409
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40409
                                               '3
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40409
                                             'name))))
                                     (let ((_%$tgt29911%_ (gx#genident 'e))
                                           (_%getf29913%_
                                            (car _%fields29851%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29911%_
                                                               (cons (cons _%getf29913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29841%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129695%_
                                                          _%$tgt29911%_
                                                          _%g2985729896%_
                                                          (_%recur29846%_
                                                           _%g2985629894%_
                                                           (cdr _%fields29851%_))
                                                          _%E29844%_)
                                                         '())))))))
                              (_%__kont3970839709%_ (lambda () _%K29843%_)))
                          (if (gx#stx-pair? _%__stx3970339704%_)
                              (let ((_%e2985829884%_
                                     (gx#syntax-e _%__stx3970339704%_)))
                                (let ((_%tl2986029891%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2985829884%_)))
                                      (_%hd2985929888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2985829884%_))))
                                  (_%__kont3970639707%_
                                   _%tl2986029891%_
                                   _%hd2985929888%_)))
                              (_%__kont3970839709%_)))))))
                 (_%struct-field-accessors29702%_
                  (lambda (_%info29820%_)
                    (let _%recur29823%_ ((_%next29826%_
                                          (cons _%info29820%_ '())))
                      (if (null? _%next29826%_)
                          '()
                          (let ((_%ti29829%_ (car _%next29826%_)))
                            (let ((__tmp40441
                                   (_%recur29823%_
                                    (map gx#syntax-local-value
                                         (let ((__obj40410 _%ti29829%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj40410
                                                  'gerbil/core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj40410
                                                  '5
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj40410
                                                'super))))))
                                  (__tmp40440
                                   (map (lambda (_%slot29832%_)
                                          (let ((_%$e29835%_
                                                 (agetq _%slot29832%_
                                                        (let ((__obj40411
                                                               _%ti29829%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj40411
                         'gerbil/core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj40411 '18 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj40411
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29835%_
                                                _%$e29835%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29688%_
                                                 _%info29820%_
                                                 _%slot29832%_))))
                                        (let ((__obj40412 _%ti29829%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40412
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40412
                                                 '6
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40412
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40441 __tmp40440)))))))
                 (_%generate-class29703%_
                  (lambda (_%info29813%_
                           _%tgt29815%_
                           _%body29816%_
                           _%K29817%_
                           _%E29818%_)
                    (cons 'if
                          (cons (cons (let ((__obj40413 _%info29813%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40413
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40413
                                               '15
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40413
                                             'predicate)))
                                      (cons _%tgt29815%_ '()))
                                (cons (_%generate-class-body29704%_
                                       _%info29813%_
                                       _%tgt29815%_
                                       _%body29816%_
                                       _%K29817%_
                                       _%E29818%_)
                                      (cons _%E29818%_ '()))))))
                 (_%generate-class-body29704%_
                  (lambda (_%info29706%_
                           _%tgt29708%_
                           _%body29709%_
                           _%K29710%_
                           _%E29711%_)
                    (let _%recur29713%_ ((_%rest29716%_ _%body29709%_))
                      (let* ((_%__stx3971939720%_ _%rest29716%_)
                             (_%g2972029736%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3971939720%_))))
                        (let ((_%__kont3972239723%_
                               (lambda (_%g2972229774%_
                                        _%g2972329776%_
                                        _%g2972429777%_)
                                 (let ((_%$e29797%_
                                        (agetq (let ((__tmp40442
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2972429777%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp40442))
                                               (let ((__obj40414
                                                      _%info29706%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40414
                                                        'gerbil/core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40414
                                                        '18
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40414
                                                      'unchecked-accessors))))))
                                   (if _%$e29797%_
                                       (let ((_%$tgt29804%_ (gx#genident 'e)))
                                         (cons 'let
                                               (cons (cons (cons _%$tgt29804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _%$e29797%_ (cons _%tgt29708%_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (_%generate129695%_
                                                            _%$tgt29804%_
                                                            _%g2972329776%_
                                                            (_%recur29713%_
                                                             _%g2972229774%_)
                                                            _%E29711%_)
                                                           '()))))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29688%_
                                        _%info29706%_
                                        _%g2972429777%_)))))
                              (_%__kont3972439725%_ (lambda () _%K29710%_)))
                          (if (gx#stx-pair? _%__stx3971939720%_)
                              (let ((_%e2972529754%_
                                     (gx#syntax-e _%__stx3971939720%_)))
                                (let ((_%tl2972729761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2972529754%_)))
                                      (_%hd2972629758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2972529754%_))))
                                  (if (gx#stx-pair? _%tl2972729761%_)
                                      (let ((_%e2972829764%_
                                             (gx#syntax-e _%tl2972729761%_)))
                                        (let ((_%tl2973029771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2972829764%_)))
                                              (_%hd2972929768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2972829764%_))))
                                          (_%__kont3972239723%_
                                           _%tl2973029771%_
                                           _%hd2972929768%_
                                           _%hd2972629758%_)))
                                      (_%__kont3972439725%_))))
                              (_%__kont3972439725%_))))))))
          (_%generate129695%_
           _%tgt29690%_
           _%ptree29691%_
           _%K29692%_
           _%E29693%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28507%_ _%tgt-lst28509%_ _%clauses28510%_)
        (letrec ((_%parse-body28512%_
                  (lambda (_%hd-len29510%_)
                    (let _%lp29513%_ ((_%rest29516%_ _%clauses28510%_)
                                      (_%r29518%_ '()))
                      (let* ((_%__stx3976939770%_ _%rest29516%_)
                             (_%g2952129533%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3976939770%_))))
                        (let ((_%__kont3977239773%_
                               (lambda (_%g2952329561%_ _%g2952429563%_)
                                 (let* ((_%__stx3974139742%_ _%g2952429563%_)
                                        (_%g2958029596%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3974139742%_))))
                                   (let ((_%__kont3974439745%_
                                          (lambda (_%g2958229665%_)
                                            (if (gx#stx-null? _%g2952329561%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2958229665%_)
                                 (let ((_%$e29676%_
                                        (gx#stx-source _%g2952429563%_)))
                                   (if _%$e29676%_
                                       _%$e29676%_
                                       (gx#stx-source _%stx28507%_))))
                                '())))
              _%r29518%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28507%_
                                                 _%g2952429563%_))))
                                         (_%__kont3974639747%_
                                          (lambda (_%g2958629624%_
                                                   _%g2958729626%_)
                                            (_%lp29513%_
                                             _%g2952329561%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2963829640%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2963829640%_
                           _%stx28507%_))
                        _%g2958729626%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2958629624%_)
                              (let ((_%$e29644%_
                                     (gx#stx-source _%g2952429563%_)))
                                (if _%$e29644%_
                                    _%$e29644%_
                                    (gx#stx-source _%stx28507%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29518%_))))
                                         (_%__kont3974839749%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28507%_
                                             _%g2952429563%_))))
                                     (let* ((_%__match3976639767%_
                                             (lambda (_%e2958829614%_
                                                      _%hd2958929618%_
                                                      _%tl2959029621%_)
                                               (let ((_%g2958629624%_
                                                      _%tl2959029621%_)
                                                     (_%g2958729626%_
                                                      _%hd2958929618%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2958729626%_)
                                                          (fx= (gx#stx-length
                                                                _%g2958729626%_)
                                                               _%hd-len29510%_)
                                                          (gx#stx-list?
                                                           _%g2958629624%_)
                                                          (not (gx#stx-null?
                                                                _%g2958629624%_)))
                                                     (_%__kont3974639747%_
                                                      _%g2958629624%_
                                                      _%g2958729626%_)
                                                     (_%__kont3974839749%_)))))
                                            (_%__match3976039761%_
                                             (lambda (_%e2958329655%_
                                                      _%hd2958429659%_
                                                      _%tl2958529662%_)
                                               (let ((_%g2958229665%_
                                                      _%tl2958529662%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2958229665%_)
                                                          (not (gx#stx-null?
                                                                _%g2958229665%_)))
                                                     (_%__kont3974439745%_
                                                      _%g2958229665%_)
                                                     (_%__match3976639767%_
                                                      _%e2958329655%_
                                                      _%hd2958429659%_
                                                      _%tl2958529662%_))))))
                                       (if (gx#stx-pair? _%__stx3974139742%_)
                                           (let ((_%e2958329655%_
                                                  (gx#syntax-e
                                                   _%__stx3974139742%_)))
                                             (let ((_%tl2958529662%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2958329655%_)))
                                                   (_%hd2958429659%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2958329655%_))))
                                               (if (gx#identifier?
                                                    _%hd2958429659%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40443_|
                                                        _%hd2958429659%_)
                                                       (_%__match3976039761%_
                                                        _%e2958329655%_
                                                        _%hd2958429659%_
                                                        _%tl2958529662%_)
                                                       (_%__match3976639767%_
                                                        _%e2958329655%_
                                                        _%hd2958429659%_
                                                        _%tl2958529662%_))
                                                   (_%__match3976639767%_
                                                    _%e2958329655%_
                                                    _%hd2958429659%_
                                                    _%tl2958529662%_))))
                                           (_%__kont3974839749%_)))))))
                              (_%__kont3977439775%_ (lambda () _%r29518%_)))
                          (if (gx#stx-pair? _%__stx3976939770%_)
                              (let ((_%e2952529551%_
                                     (gx#syntax-e _%__stx3976939770%_)))
                                (let ((_%tl2952729558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2952529551%_)))
                                      (_%hd2952629555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2952529551%_))))
                                  (_%__kont3977239773%_
                                   _%tl2952729558%_
                                   _%hd2952629555%_)))
                              (_%__kont3977439775%_)))))))
                 (_%generate-body28514%_
                  (lambda (_%body29216%_)
                    (let* ((_%g2921929227%_
                            (lambda (_%g2922029223%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2922029223%_)))
                           (_%g2921829506%_
                            (lambda (_%g2922029231%_)
                              (let* ((_%g2924629263%_
                                      (lambda (_%g2924729259%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2924729259%_)))
                                     (_%g2924529502%_
                                      (lambda (_%g2924729267%_)
                                        (if (gx#stx-pair/null? _%g2924729267%_)
                                            (let ((_g40444_
                                                   (gx#syntax-split-splice
                                                    _%g2924729267%_
                                                    '0)))
                                              (begin
                                                (let ((_g40445_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40444_)
                                                             (##values-length
                                                              _g40444_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40445_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2924929270%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40444_
                                                          0)))
                                                      (_%tl2925129273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40444_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2925129273%_)
                                                      (letrec ((_%loop2925229276%_
                                                                (lambda (_%hd2925029280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%target2925629283%_)
                          (if (gx#stx-pair? _%hd2925029280%_)
                              (let ((_%e2925329285%_
                                     (gx#syntax-e _%hd2925029280%_)))
                                (let ((_%lp-hd2925429289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2925329285%_)))
                                      (_%lp-tl2925529292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2925329285%_))))
                                  (_%loop2925229276%_
                                   _%lp-tl2925529292%_
                                   (cons _%lp-hd2925429289%_
                                         _%target2925629283%_))))
                              (let* ((_%target2925729295%_
                                      (reverse _%target2925629283%_))
                                     (_%g2931529332%_
                                      (lambda (_%g2931629328%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2931629328%_)))
                                     (_%g2931429498%_
                                      (lambda (_%g2931629336%_)
                                        (if (gx#stx-pair/null? _%g2931629336%_)
                                            (let ((_g40446_
                                                   (gx#syntax-split-splice
                                                    _%g2931629336%_
                                                    '0)))
                                              (begin
                                                (let ((_g40447_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40446_)
                                                             (##values-length
                                                              _g40446_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40447_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2931829339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40446_
                                                          0)))
                                                      (_%tl2932029342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40446_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2932029342%_)
                                                      (letrec ((_%loop2932129345%_
                                                                (lambda (_%hd2931929349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%fail-diagnostic2932529352%_)
                          (if (gx#stx-pair? _%hd2931929349%_)
                              (let ((_%e2932229354%_
                                     (gx#syntax-e _%hd2931929349%_)))
                                (let ((_%lp-hd2932329358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2932229354%_)))
                                      (_%lp-tl2932429361%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2932229354%_))))
                                  (_%loop2932129345%_
                                   _%lp-tl2932429361%_
                                   (cons _%lp-hd2932329358%_
                                         _%fail-diagnostic2932529352%_))))
                              (let* ((_%fail-diagnostic2932629364%_
                                      (reverse _%fail-diagnostic2932529352%_))
                                     (_%g2938429392%_
                                      (lambda (_%g2938529388%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2938529388%_)))
                                     (_%g2938329478%_
                                      (lambda (_%g2938529396%_)
                                        (let* ((_%g2941229420%_
                                                (lambda (_%g2941329416%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2941329416%_)))
                                               (_%g2941129474%_
                                                (lambda (_%g2941329424%_)
                                                  (let* ((_%g2944029448%_
                                                          (lambda (_%g2944129444%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2944129444%_)))
                                                         (_%g2943929470%_
                                                          (lambda (_%g2944129452%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (gx#datum->syntax '#f '@match)
                                (cons _%g2944129452%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2943929470%_
                                                     (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (cons (cons _%g2922029231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (cons _%g2938529396%_ '()))
                                '())
                          (cons _%g2941329424%_ '())))
              (gx#stx-source _%stx28507%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2941129474%_
                                           (_%generate-clauses28515%_
                                            _%body29216%_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@abort)
                                                              '())
                                                        (cons (cons _%g2922029231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%g2938329478%_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'error)
                                                          (cons '"No clause matching"
                                                                (foldr (lambda (_%g2948129486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%g2948229489%_)
                                 (cons _%g2948129486%_ _%g2948229489%_))
                               (foldr (lambda (_%g2948329492%_ _%g2948429495%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g2948329492%_ '()))
                                              _%g2948429495%_))
                                      '()
                                      _%fail-diagnostic2932629364%_)
                               _%target2925729295%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)
                        '())
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (gx#stx-source _%stx28507%_))))))))
                (_%loop2932129345%_ _%target2931829339%_ '()))
              (_%g2931529332%_ _%g2931629336%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2931529332%_
                                             _%g2931629336%_)))))
                                (_%g2931429498%_
                                 (gx#stx-map gx#stx-car _%clauses28510%_)))))))
                (_%loop2925229276%_ _%target2924929270%_ '()))
              (_%g2924629263%_ _%g2924729267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2924629263%_
                                             _%g2924729267%_)))))
                                (_%g2924529502%_ _%tgt-lst28509%_)))))
                      (_%g2921829506%_ (gx#genident 'E)))))
                 (_%generate-clauses28515%_
                  (lambda (_%rest28868%_ _%E28870%_)
                    (let* ((_%__stx3978539786%_ _%rest28868%_)
                           (_%g2887428890%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3978539786%_))))
                      (let ((_%__kont3978839789%_
                             (lambda (_%g2887629124%_)
                               (let* ((_%g2913529153%_
                                       (lambda (_%g2913629149%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2913629149%_)))
                                      (_%g2913429208%_
                                       (lambda (_%g2913629157%_)
                                         (if (gx#stx-pair? _%g2913629157%_)
                                             (let ((_%e2913929160%_
                                                    (gx#syntax-e
                                                     _%g2913629157%_)))
                                               (let ((_%hd2914029164%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2913929160%_)))
                                                     (_%tl2914129167%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2913929160%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2914129167%_)
                                                     (let ((_%e2914229170%_
                                                            (gx#syntax-e
                                                             _%tl2914129167%_)))
                                                       (let ((_%hd2914329174%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2914229170%_)))
                     (_%tl2914429177%_
                      (let () (declare (not safe)) (##cdr _%e2914229170%_))))
                 (if (gx#stx-pair? _%tl2914429177%_)
                     (let ((_%e2914529180%_ (gx#syntax-e _%tl2914429177%_)))
                       (let ((_%hd2914629184%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2914529180%_)))
                             (_%tl2914729187%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2914529180%_))))
                         (if (gx#stx-null? _%tl2914729187%_)
                             (cons 'begin-annotation
                                   (cons '@match-body
                                         (cons (if (gx#stx-e _%hd2914329174%_)
                                                   (_%generate128516%_
                                                    _%hd2914329174%_
                                                    _%hd2914629184%_
                                                    _%E28870%_)
                                                   _%hd2914629184%_)
                                               '())))
                             (_%g2913529153%_ _%g2913629157%_))))
                     (_%g2913529153%_ _%g2913629157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2913529153%_
                                                      _%g2913629157%_))))
                                             (_%g2913529153%_
                                              _%g2913629157%_)))))
                                 (_%g2913429208%_ _%g2887629124%_))))
                            (_%__kont3979039791%_
                             (lambda (_%g2888028918%_ _%g2888128920%_)
                               (let* ((_%g2893328952%_
                                       (lambda (_%g2893428948%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2893428948%_)))
                                      (_%g2893229103%_
                                       (lambda (_%g2893428956%_)
                                         (if (gx#stx-pair? _%g2893428956%_)
                                             (let ((_%e2893828959%_
                                                    (gx#syntax-e
                                                     _%g2893428956%_)))
                                               (let ((_%hd2893928963%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2893828959%_)))
                                                     (_%tl2894028966%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2893828959%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2894028966%_)
                                                     (let ((_%e2894128969%_
                                                            (gx#syntax-e
                                                             _%tl2894028966%_)))
                                                       (let ((_%hd2894228973%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2894128969%_)))
                     (_%tl2894328976%_
                      (let () (declare (not safe)) (##cdr _%e2894128969%_))))
                 (if (gx#stx-pair? _%tl2894328976%_)
                     (let ((_%e2894428979%_ (gx#syntax-e _%tl2894328976%_)))
                       (let ((_%hd2894528983%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2894428979%_)))
                             (_%tl2894628986%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2894428979%_))))
                         (if (gx#stx-null? _%tl2894628986%_)
                             (if (gx#stx-e _%hd2894228973%_)
                                 (let* ((_%g2900929024%_
                                         (lambda (_%g2901029020%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2901029020%_)))
                                        (_%g2900829069%_
                                         (lambda (_%g2901029028%_)
                                           (if (gx#stx-pair? _%g2901029028%_)
                                               (let ((_%e2901329031%_
                                                      (gx#syntax-e
                                                       _%g2901029028%_)))
                                                 (let ((_%hd2901429035%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2901329031%_)))
                                                       (_%tl2901529038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2901329031%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2901529038%_)
                                                       (let ((_%e2901629041%_
                                                              (gx#syntax-e
                                                               _%tl2901529038%_)))
                                                         (let ((_%hd2901729045%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2901629041%_)))
                       (_%tl2901829048%_
                        (let () (declare (not safe)) (##cdr _%e2901629041%_))))
                   (if (gx#stx-null? _%tl2901829048%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _%hd2893928963%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%hd2901429035%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons _%hd2901729045%_ '())))
                       (_%g2900929024%_ _%g2901029028%_))))
               (_%g2900929024%_ _%g2901029028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2900929024%_
                                                _%g2901029028%_)))))
                                   (_%g2900829069%_
                                    (list (_%generate128516%_
                                           _%hd2894228973%_
                                           _%hd2894528983%_
                                           _%E28870%_)
                                          (_%generate-clauses28515%_
                                           _%g2888028918%_
                                           (cons _%hd2893928963%_ '())))))
                                 (let* ((_%g2907329081%_
                                         (lambda (_%g2907429077%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2907429077%_)))
                                        (_%g2907229099%_
                                         (lambda (_%g2907429085%_)
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%hd2893928963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (gx#datum->syntax
                                              '#f
                                              '@match-else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _%hd2894528983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))
                     '())
               (cons _%g2907429085%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%g2907229099%_
                                    (_%generate-clauses28515%_
                                     _%g2888028918%_
                                     (cons _%hd2893928963%_ '())))))
                             (_%g2893328952%_ _%g2893428956%_))))
                     (_%g2893328952%_ _%g2893428956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2893328952%_
                                                      _%g2893428956%_))))
                                             (_%g2893328952%_
                                              _%g2893428956%_)))))
                                 (_%g2893229103%_ _%g2888128920%_))))
                            (_%__kont3979239793%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28870%_ '()))))))
                        (if (gx#stx-pair? _%__stx3978539786%_)
                            (let ((_%e2887729114%_
                                   (gx#syntax-e _%__stx3978539786%_)))
                              (let ((_%tl2887929121%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2887729114%_)))
                                    (_%hd2887829118%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2887729114%_))))
                                (if (gx#stx-null? _%tl2887929121%_)
                                    (_%__kont3978839789%_ _%hd2887829118%_)
                                    (_%__kont3979039791%_
                                     _%tl2887929121%_
                                     _%hd2887829118%_))))
                            (_%__kont3979239793%_))))))
                 (_%generate128516%_
                  (lambda (_%clause28518%_ _%body28520%_ _%E28521%_)
                    (let* ((_%g2852328547%_
                            (lambda (_%g2852428543%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2852428543%_)))
                           (_%g2852228864%_
                            (lambda (_%g2852428551%_)
                              (if (gx#stx-pair? _%g2852428551%_)
                                  (let ((_%e2852728554%_
                                         (gx#syntax-e _%g2852428551%_)))
                                    (let ((_%hd2852828558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2852728554%_)))
                                          (_%tl2852928561%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2852728554%_))))
                                      (if (gx#stx-pair? _%tl2852928561%_)
                                          (let ((_%e2853028564%_
                                                 (gx#syntax-e
                                                  _%tl2852928561%_)))
                                            (let ((_%hd2853128568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2853028564%_)))
                                                  (_%tl2853228571%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2853028564%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2853128568%_)
                                                  (let ((_g40448_
                                                         (gx#syntax-split-splice
                                                          _%hd2853128568%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40449_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40448_)
                           (##values-length _g40448_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40449_ 2)))
                    (error "Context expects 2 values" _g40449_)))
              (let ((_%target2853328574%_
                     (let () (declare (not safe)) (##values-ref _g40448_ 0)))
                    (_%tl2853528577%_
                     (let () (declare (not safe)) (##values-ref _g40448_ 1))))
                (if (gx#stx-null? _%tl2853528577%_)
                    (letrec ((_%loop2853628580%_
                              (lambda (_%hd2853428584%_ _%var2854028587%_)
                                (if (gx#stx-pair? _%hd2853428584%_)
                                    (let ((_%e2853728589%_
                                           (gx#syntax-e _%hd2853428584%_)))
                                      (let ((_%lp-hd2853828593%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2853728589%_)))
                                            (_%lp-tl2853928596%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2853728589%_))))
                                        (_%loop2853628580%_
                                         _%lp-tl2853928596%_
                                         (cons _%lp-hd2853828593%_
                                               _%var2854028587%_))))
                                    (let ((_%var2854128599%_
                                           (reverse _%var2854028587%_)))
                                      (if (gx#stx-null? _%tl2853228571%_)
                                          (let ()
                                            (gx#check-duplicate-identifiers
                                             (foldr (lambda (_%g2862528628%_
                                                             _%g2862628631%_)
                                                      (cons _%g2862528628%_
                                                            _%g2862628631%_))
                                                    '()
                                                    _%var2854128599%_)
                                             _%stx28507%_)
                                            (let* ((_%g2863428642%_
                                                    (lambda (_%g2863528638%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g2863528638%_)))
                                                   (_%g2863328736%_
                                                    (lambda (_%g2863528646%_)
                                                      (let* ((_%g2866228670%_
                                                              (lambda (_%g2866328666%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2866328666%_)))
                     (_%g2866128732%_
                      (lambda (_%g2866328674%_)
                        (let* ((_%g2869028698%_
                                (lambda (_%g2869128694%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g2869128694%_)))
                               (_%g2868928720%_
                                (lambda (_%g2869128702%_)
                                  (gx#stx-wrap-source
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons _%hd2852828558%_
                                                     (cons _%g2869128702%_
                                                           '()))
                                               (cons _%g2863528646%_ '())))
                                   (gx#stx-source _%stx28507%_)))))
                          (_%g2868928720%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (foldr (lambda (_%g2872328726%_
                                                        _%g2872428729%_)
                                                 (cons _%g2872328726%_
                                                       _%g2872428729%_))
                                               '()
                                               _%var2854128599%_)
                                        (cons _%g2866328674%_ '())))
                            (gx#stx-source _%stx28507%_)))))))
                (_%g2866128732%_ _%body28520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2863328736%_
                                               (let _%recur28740%_ ((_%rest28743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause28518%_)
                            (_%rest-targets28745%_ _%tgt-lst28509%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx3981139812%_
                                                         _%rest28743%_)
                                                        (_%g2874828760%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx3981139812%_))))
                                                   (let ((_%__kont3981439815%_
                                                          (lambda (_%g2875028796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2875128798%_)
                    (let* ((_%g2881328825%_
                            (lambda (_%g2881428821%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2881428821%_)))
                           (_%g2881228856%_
                            (lambda (_%g2881428829%_)
                              (if (gx#stx-pair? _%g2881428829%_)
                                  (let ((_%e2881728832%_
                                         (gx#syntax-e _%g2881428829%_)))
                                    (let ((_%hd2881828836%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2881728832%_)))
                                          (_%tl2881928839%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2881728832%_))))
                                      (|gerbil/core/match[1]#generate-match1|
                                       _%stx28507%_
                                       _%hd2881828836%_
                                       _%g2875128798%_
                                       (_%recur28740%_
                                        _%g2875028796%_
                                        _%tl2881928839%_)
                                       _%E28521%_)))
                                  (_%g2881328825%_ _%g2881428829%_)))))
                      (_%g2881228856%_ _%rest-targets28745%_))))
                 (_%__kont3981639817%_
                  (lambda ()
                    (cons _%hd2852828558%_
                          (foldr (lambda (_%g2877028773%_ _%g2877128776%_)
                                   (cons _%g2877028773%_ _%g2877128776%_))
                                 '()
                                 _%var2854128599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair?
                                                          _%__stx3981139812%_)
                                                         (let ((_%e2875228786%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%__stx3981139812%_)))
                   (let ((_%tl2875428793%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e2875228786%_)))
                         (_%hd2875328790%_
                          (let ()
                            (declare (not safe))
                            (##car _%e2875228786%_))))
                     (_%__kont3981439815%_ _%tl2875428793%_ _%hd2875328790%_)))
                 (_%__kont3981639817%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2852328547%_
                                           _%g2852428551%_)))))))
                      (_%loop2853628580%_ _%target2853328574%_ '()))
                    (_%g2852328547%_ _%g2852428551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2852328547%_
                                                   _%g2852428551%_))))
                                          (_%g2852328547%_ _%g2852428551%_))))
                                  (_%g2852328547%_ _%g2852428551%_)))))
                      (_%g2852228864%_
                       (list (gx#genident 'K)
                             (let ((__tmp40450
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28518%_)))
                               (declare (not safe))
                               (##apply append __tmp40450))))))))
          (_%generate-body28514%_
           (_%parse-body28512%_ (gx#stx-length _%tgt-lst28509%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx28409%_ _%tgt28411%_ _%clauses28412%_)
        (letrec ((_%reclause28414%_
                  (lambda (_%clause28417%_)
                    (let* ((_%__stx3982739828%_ _%clause28417%_)
                           (_%g2842228437%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3982739828%_))))
                      (let ((_%__kont3983039831%_ (lambda () _%clause28417%_))
                            (_%__kont3983239833%_
                             (lambda (_%g2842728465%_ _%g2842828467%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2842828467%_ '())
                                      _%g2842728465%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3983439835%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx28409%_
                                _%clause28417%_))))
                        (if (gx#stx-pair? _%__stx3982739828%_)
                            (let ((_%e2842428489%_
                                   (gx#syntax-e _%__stx3982739828%_)))
                              (let ((_%tl2842628496%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2842428489%_)))
                                    (_%hd2842528493%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2842428489%_))))
                                (if (gx#identifier? _%hd2842528493%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40451_|
                                         _%hd2842528493%_)
                                        (_%__kont3983039831%_)
                                        (_%__kont3983239833%_
                                         _%tl2842628496%_
                                         _%hd2842528493%_))
                                    (_%__kont3983239833%_
                                     _%tl2842628496%_
                                     _%hd2842528493%_))))
                            (_%__kont3983439835%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx28409%_
           (cons _%tgt28411%_ '())
           (gx#stx-map _%reclause28414%_ _%clauses28412%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35750%_)
        (let* ((_%__stx3985539856%_ _%stx35750%_)
               (_%g3575535784%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3985539856%_))))
          (let ((_%__kont3985839859%_
                 (lambda (_%g3575736024%_)
                   (let* ((_%g3603736045%_
                           (lambda (_%g3603836041%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3603836041%_)))
                          (_%g3603636098%_
                           (lambda (_%g3603836049%_)
                             (let* ((_%g3606436072%_
                                     (lambda (_%g3606536068%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g3606536068%_)))
                                    (_%g3606336094%_
                                     (lambda (_%g3606536076%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons _%g3603836049%_ '())
                                                   (cons _%g3606536076%_
                                                         '()))))))
                               (_%g3606336094%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'match)
                                       (cons _%g3603836049%_ _%g3575736024%_))
                                 (gx#stx-source _%stx35750%_)))))))
                     (_%g3603636098%_ (gx#genident 'e)))))
                (_%__kont3986039861%_
                 (lambda (_%g3576435919%_)
                   (let* ((_%g3593235940%_
                           (lambda (_%g3593335936%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3593335936%_)))
                          (_%g3593135993%_
                           (lambda (_%g3593335944%_)
                             (let* ((_%g3595935967%_
                                     (lambda (_%g3596035963%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g3596035963%_)))
                                    (_%g3595835989%_
                                     (lambda (_%g3596035971%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons _%g3593335944%_
                                                   (cons _%g3596035971%_
                                                         '()))))))
                               (_%g3595835989%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'match)
                                       (cons _%g3593335944%_ _%g3576435919%_))
                                 (gx#stx-source _%stx35750%_)))))))
                     (_%g3593135993%_ (gx#genident 'args)))))
                (_%__kont3986239863%_
                 (lambda (_%g3577135811%_ _%g3577235813%_)
                   (let* ((_%g3582735835%_
                           (lambda (_%g3582835831%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3582835831%_)))
                          (_%g3582635888%_
                           (lambda (_%g3582835839%_)
                             (let* ((_%g3585435862%_
                                     (lambda (_%g3585535858%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g3585535858%_)))
                                    (_%g3585335884%_
                                     (lambda (_%g3585535866%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (cons _%g3582835839%_
                                                               (cons _%g3577235813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%g3585535866%_
                                                         '()))))))
                               (_%g3585335884%_
                                (|gerbil/core/match[1]#generate-match|
                                 _%stx35750%_
                                 _%g3582835839%_
                                 _%g3577135811%_))))))
                     (_%g3582635888%_ (gx#genident _%g3577235813%_))))))
            (let* ((_%__match3990839909%_
                    (lambda (_%e3577335791%_
                             _%hd3577435795%_
                             _%tl3577535798%_
                             _%e3577635801%_
                             _%hd3577735805%_
                             _%tl3577835808%_)
                      (let ((_%g3577135811%_ _%tl3577835808%_)
                            (_%g3577235813%_ _%hd3577735805%_))
                        (if (gx#stx-list? _%g3577135811%_)
                            (_%__kont3986239863%_
                             _%g3577135811%_
                             _%g3577235813%_)
                            (let () (declare (not safe)) (_%g3575535784%_))))))
                   (_%__match3989639897%_
                    (lambda (_%e3576535899%_
                             _%hd3576635903%_
                             _%tl3576735906%_
                             _%e3576835909%_
                             _%hd3576935913%_
                             _%tl3577035916%_)
                      (let ((_%g3576435919%_ _%tl3577035916%_))
                        (if (gx#stx-list? _%g3576435919%_)
                            (_%__kont3986039861%_ _%g3576435919%_)
                            (_%__match3990839909%_
                             _%e3576535899%_
                             _%hd3576635903%_
                             _%tl3576735906%_
                             _%e3576835909%_
                             _%hd3576935913%_
                             _%tl3577035916%_)))))
                   (_%__match3988039881%_
                    (lambda (_%e3575836004%_
                             _%hd3575936008%_
                             _%tl3576036011%_
                             _%e3576136014%_
                             _%hd3576236018%_
                             _%tl3576336021%_)
                      (let ((_%g3575736024%_ _%tl3576336021%_))
                        (if (gx#stx-list? _%g3575736024%_)
                            (_%__kont3985839859%_ _%g3575736024%_)
                            (_%__match3990839909%_
                             _%e3575836004%_
                             _%hd3575936008%_
                             _%tl3576036011%_
                             _%e3576136014%_
                             _%hd3576236018%_
                             _%tl3576336021%_))))))
              (if (gx#stx-pair? _%__stx3985539856%_)
                  (let ((_%e3575836004%_ (gx#syntax-e _%__stx3985539856%_)))
                    (let ((_%tl3576036011%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3575836004%_)))
                          (_%hd3575936008%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3575836004%_))))
                      (if (gx#stx-pair? _%tl3576036011%_)
                          (let ((_%e3576136014%_
                                 (gx#syntax-e _%tl3576036011%_)))
                            (let ((_%tl3576336021%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3576136014%_)))
                                  (_%hd3576236018%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3576136014%_))))
                              (if (gx#identifier? _%hd3576236018%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40452_|
                                       _%hd3576236018%_)
                                      (_%__match3988039881%_
                                       _%e3575836004%_
                                       _%hd3575936008%_
                                       _%tl3576036011%_
                                       _%e3576136014%_
                                       _%hd3576236018%_
                                       _%tl3576336021%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40453_|
                                           _%hd3576236018%_)
                                          (_%__match3989639897%_
                                           _%e3575836004%_
                                           _%hd3575936008%_
                                           _%tl3576036011%_
                                           _%e3576136014%_
                                           _%hd3576236018%_
                                           _%tl3576336021%_)
                                          (_%__match3990839909%_
                                           _%e3575836004%_
                                           _%hd3575936008%_
                                           _%tl3576036011%_
                                           _%e3576136014%_
                                           _%hd3576236018%_
                                           _%tl3576336021%_)))
                                  (_%__match3990839909%_
                                   _%e3575836004%_
                                   _%hd3575936008%_
                                   _%tl3576036011%_
                                   _%e3576136014%_
                                   _%hd3576236018%_
                                   _%tl3576336021%_))))
                          (let () (declare (not safe)) (_%g3575535784%_)))))
                  (let () (declare (not safe)) (_%g3575535784%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx36106%_)
        (let* ((_%g3610936133%_
                (lambda (_%g3611036129%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3611036129%_)))
               (_%g3610836341%_
                (lambda (_%g3611036137%_)
                  (if (gx#stx-pair? _%g3611036137%_)
                      (let ((_%e3611336140%_ (gx#syntax-e _%g3611036137%_)))
                        (let ((_%hd3611436144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3611336140%_)))
                              (_%tl3611536147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3611336140%_))))
                          (if (gx#stx-pair? _%tl3611536147%_)
                              (let ((_%e3611636150%_
                                     (gx#syntax-e _%tl3611536147%_)))
                                (let ((_%hd3611736154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3611636150%_)))
                                      (_%tl3611836157%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3611636150%_))))
                                  (if (gx#stx-pair/null? _%hd3611736154%_)
                                      (let ((_g40454_
                                             (gx#syntax-split-splice
                                              _%hd3611736154%_
                                              '0)))
                                        (begin
                                          (let ((_g40455_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40454_)
                                                       (##values-length
                                                        _g40454_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40455_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40455_)))
                                          (let ((_%target3611936160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40454_ 0)))
                                                (_%tl3612136163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40454_ 1))))
                                            (if (gx#stx-null? _%tl3612136163%_)
                                                (letrec ((_%loop3612236166%_
                                                          (lambda (_%hd3612036170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3612636173%_)
                    (if (gx#stx-pair? _%hd3612036170%_)
                        (let ((_%e3612336175%_ (gx#syntax-e _%hd3612036170%_)))
                          (let ((_%lp-hd3612436179%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3612336175%_)))
                                (_%lp-tl3612536182%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3612336175%_))))
                            (_%loop3612236166%_
                             _%lp-tl3612536182%_
                             (cons _%lp-hd3612436179%_ _%e3612636173%_))))
                        (let ((_%e3612736185%_ (reverse _%e3612636173%_)))
                          (if (gx#stx-list? _%tl3611836157%_)
                              (let* ((_%g3620836225%_
                                      (lambda (_%g3620936221%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3620936221%_)))
                                     (_%g3620736329%_
                                      (lambda (_%g3620936229%_)
                                        (if (gx#stx-pair/null? _%g3620936229%_)
                                            (let ((_g40456_
                                                   (gx#syntax-split-splice
                                                    _%g3620936229%_
                                                    '0)))
                                              (begin
                                                (let ((_g40457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40456_)
                                                             (##values-length
                                                              _g40456_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3621136232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40456_
                                                          0)))
                                                      (_%tl3621336235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40456_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3621336235%_)
                                                      (letrec ((_%loop3621436238%_
                                                                (lambda (_%hd3621236242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$e3621836245%_)
                          (if (gx#stx-pair? _%hd3621236242%_)
                              (let ((_%e3621536247%_
                                     (gx#syntax-e _%hd3621236242%_)))
                                (let ((_%lp-hd3621636251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3621536247%_)))
                                      (_%lp-tl3621736254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3621536247%_))))
                                  (_%loop3621436238%_
                                   _%lp-tl3621736254%_
                                   (cons _%lp-hd3621636251%_
                                         _%$e3621836245%_))))
                              (let* ((_%$e3621936257%_
                                      (reverse _%$e3621836245%_))
                                     (_%g3627636284%_
                                      (lambda (_%g3627736280%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3627736280%_)))
                                     (_%g3627536317%_
                                      (lambda (_%g3627736288%_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _%e3612736185%_
                                                       _%$e3621936257%_)
                                                      (foldr (lambda (_%g3630536309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g3630636312%_
                              _%g3630736314%_)
                       (cons (cons _%g3630636312%_ (cons _%g3630536309%_ '()))
                             _%g3630736314%_))
                     '()
                     _%e3612736185%_
                     _%$e3621936257%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g3627736288%_
                                                          '()))))))
                                (_%g3627536317%_
                                 (|gerbil/core/match[1]#generate-match*|
                                  _%stx36106%_
                                  (foldr (lambda (_%g3632036323%_
                                                  _%g3632136326%_)
                                           (cons _%g3632036323%_
                                                 _%g3632136326%_))
                                         '()
                                         _%$e3621936257%_)
                                  _%tl3611836157%_)))))))
                (_%loop3621436238%_ _%target3621136232%_ '()))
              (_%g3620836225%_ _%g3620936229%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3620836225%_
                                             _%g3620936229%_)))))
                                (_%g3620736329%_
                                 (gx#gentemps
                                  (foldr (lambda (_%g3633236335%_
                                                  _%g3633336338%_)
                                           (cons _%g3633236335%_
                                                 _%g3633336338%_))
                                         '()
                                         _%e3612736185%_))))
                              (_%g3610936133%_ _%g3611036137%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3612236166%_
                                                   _%target3611936160%_
                                                   '()))
                                                (_%g3610936133%_
                                                 _%g3611036137%_)))))
                                      (_%g3610936133%_ _%g3611036137%_))))
                              (_%g3610936133%_ _%g3611036137%_))))
                      (_%g3610936133%_ _%g3611036137%_)))))
          (_%g3610836341%_ _%stx36106%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx36347%_)
        (let* ((_%__stx3991139912%_ _%$stx36347%_)
               (_%g3635336436%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3991139912%_))))
          (let ((_%__kont3991439915%_
                 (lambda (_%g3635536756%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3677236775%_ _%g3677336778%_)
                                        (cons _%g3677236775%_ _%g3677336778%_))
                                      '()
                                      _%g3635536756%_)))))
                (_%__kont3991839919%_
                 (lambda (_%g3637136666%_
                          _%g3637236668%_
                          _%g3637336669%_
                          _%g3637436670%_)
                   (cons _%g3637436670%_
                         (cons (cons (cons _%g3637336669%_
                                           (cons _%g3637236668%_ '()))
                                     '())
                               (foldr (lambda (_%g3669236695%_ _%g3669336698%_)
                                        (cons _%g3669236695%_ _%g3669336698%_))
                                      '()
                                      _%g3637136666%_)))))
                (_%__kont3992239923%_
                 (lambda (_%g3639636541%_ _%g3639736543%_ _%g3639836544%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3656636573%_ _%g3656736576%_)
                                        (cons _%g3656636573%_ _%g3656736576%_))
                                      '()
                                      _%g3639736543%_)
                               (cons (cons (foldr (lambda (_%g3656836579%_
                                                           _%g3656936582%_)
                                                    (cons _%g3656836579%_
                                                          _%g3656936582%_))
                                                  '()
                                                  _%g3639836544%_)
                                           (foldr (lambda (_%g3657036585%_
                                                           _%g3657136588%_)
                                                    (cons _%g3657036585%_
                                                          _%g3657136588%_))
                                                  '()
                                                  _%g3639636541%_))
                                     '()))))))
            (let* ((_%__match4000440005%_
                    (lambda (_%e3639936443%_
                             _%hd3640036447%_
                             _%tl3640136450%_
                             _%e3640236453%_
                             _%hd3640336457%_
                             _%tl3640436460%_
                             _%__splice3992439925%_
                             _%target3640536463%_
                             _%tl3640736466%_)
                      (letrec ((_%loop3640836469%_
                                (lambda (_%hd3640636473%_
                                         _%expr3641236476%_
                                         _%hd3641336477%_)
                                  (if (gx#stx-pair? _%hd3640636473%_)
                                      (let ((_%e3640936479%_
                                             (gx#syntax-e _%hd3640636473%_)))
                                        (let ((_%lp-tl3641136486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3640936479%_)))
                                              (_%lp-hd3641036483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3640936479%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3641036483%_)
                                              (let ((_%e3641636489%_
                                                     (gx#syntax-e
                                                      _%lp-hd3641036483%_)))
                                                (let ((_%tl3641836496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3641636489%_)))
                                                      (_%hd3641736493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3641636489%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3641836496%_)
                                                      (let ((_%e3641936499%_
                                                             (gx#syntax-e
                                                              _%tl3641836496%_)))
                                                        (let ((_%tl3642136506%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3641936499%_)))
                      (_%hd3642036503%_
                       (let () (declare (not safe)) (##car _%e3641936499%_))))
                  (if (gx#stx-null? _%tl3642136506%_)
                      (_%loop3640836469%_
                       _%lp-tl3641136486%_
                       (cons _%hd3642036503%_ _%expr3641236476%_)
                       (cons _%hd3641736493%_ _%hd3641336477%_))
                      (let () (declare (not safe)) (_%g3635336436%_)))))
              (let () (declare (not safe)) (_%g3635336436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3635336436%_)))))
                                      (let ((_%hd3641536511%_
                                             (reverse _%hd3641336477%_))
                                            (_%expr3641436509%_
                                             (reverse _%expr3641236476%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3640436460%_)
                                            (let ((_%__splice3992639927%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3640436460%_
                                                    '0)))
                                              (let ((_%tl3642436516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3992639927%_
                                                        '1)))
                                                    (_%target3642236513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3992639927%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3642436516%_)
                                                    (letrec ((_%loop3642536519%_
                                                              (lambda (_%hd3642336523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3642936526%_)
                        (if (gx#stx-pair? _%hd3642336523%_)
                            (let ((_%e3642636528%_
                                   (gx#syntax-e _%hd3642336523%_)))
                              (let ((_%lp-tl3642836535%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3642636528%_)))
                                    (_%lp-hd3642736532%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3642636528%_))))
                                (_%loop3642536519%_
                                 _%lp-tl3642836535%_
                                 (cons _%lp-hd3642736532%_
                                       _%body3642936526%_))))
                            (let ((_%body3643036538%_
                                   (reverse _%body3642936526%_)))
                              (_%__kont3992239923%_
                               _%body3643036538%_
                               _%expr3641436509%_
                               _%hd3641536511%_))))))
              (_%loop3642536519%_ _%target3642236513%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3635336436%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3635336436%_))))))))
                        (_%loop3640836469%_ _%target3640536463%_ '() '()))))
                   (_%__match3999639997%_
                    (lambda (_%e3639936443%_
                             _%hd3640036447%_
                             _%tl3640136450%_
                             _%e3640236453%_
                             _%hd3640336457%_
                             _%tl3640436460%_)
                      (if (gx#stx-pair/null? _%hd3640336457%_)
                          (let ((_%__splice3992439925%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3640336457%_
                                  '0)))
                            (let ((_%tl3640736466%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3992439925%_ '1)))
                                  (_%target3640536463%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3992439925%_
                                      '0))))
                              (if (gx#stx-null? _%tl3640736466%_)
                                  (_%__match4000440005%_
                                   _%e3639936443%_
                                   _%hd3640036447%_
                                   _%tl3640136450%_
                                   _%e3640236453%_
                                   _%hd3640336457%_
                                   _%tl3640436460%_
                                   _%__splice3992439925%_
                                   _%target3640536463%_
                                   _%tl3640736466%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3635336436%_)))))
                          (let () (declare (not safe)) (_%g3635336436%_)))))
                   (_%__match3998439985%_
                    (lambda (_%e3637536598%_
                             _%hd3637636602%_
                             _%tl3637736605%_
                             _%e3637836608%_
                             _%hd3637936612%_
                             _%tl3638036615%_
                             _%e3638136618%_
                             _%hd3638236622%_
                             _%tl3638336625%_
                             _%e3638436628%_
                             _%hd3638536632%_
                             _%tl3638636635%_
                             _%__splice3992039921%_
                             _%target3638736638%_
                             _%tl3638936641%_)
                      (letrec ((_%loop3639036644%_
                                (lambda (_%hd3638836648%_ _%body3639436651%_)
                                  (if (gx#stx-pair? _%hd3638836648%_)
                                      (let ((_%e3639136653%_
                                             (gx#syntax-e _%hd3638836648%_)))
                                        (let ((_%lp-tl3639336660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3639136653%_)))
                                              (_%lp-hd3639236657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3639136653%_))))
                                          (_%loop3639036644%_
                                           _%lp-tl3639336660%_
                                           (cons _%lp-hd3639236657%_
                                                 _%body3639436651%_))))
                                      (let ((_%body3639536663%_
                                             (reverse _%body3639436651%_)))
                                        (let ((_%g3637136666%_
                                               _%body3639536663%_)
                                              (_%g3637236668%_
                                               _%hd3638536632%_)
                                              (_%g3637336669%_
                                               _%hd3638236622%_)
                                              (_%g3637436670%_
                                               _%hd3637636602%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3637336669%_)
                                              (_%__kont3991839919%_
                                               _%g3637136666%_
                                               _%g3637236668%_
                                               _%g3637336669%_
                                               _%g3637436670%_)
                                              (_%__match3999639997%_
                                               _%e3637536598%_
                                               _%hd3637636602%_
                                               _%tl3637736605%_
                                               _%e3637836608%_
                                               _%hd3637936612%_
                                               _%tl3638036615%_))))))))
                        (_%loop3639036644%_ _%target3638736638%_ '()))))
                   (_%__match3995039951%_
                    (lambda (_%e3635636708%_
                             _%hd3635736712%_
                             _%tl3635836715%_
                             _%e3635936718%_
                             _%hd3636036722%_
                             _%tl3636136725%_
                             _%__splice3991639917%_
                             _%target3636236728%_
                             _%tl3636436731%_)
                      (letrec ((_%loop3636536734%_
                                (lambda (_%hd3636336738%_ _%body3636936741%_)
                                  (if (gx#stx-pair? _%hd3636336738%_)
                                      (let ((_%e3636636743%_
                                             (gx#syntax-e _%hd3636336738%_)))
                                        (let ((_%lp-tl3636836750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3636636743%_)))
                                              (_%lp-hd3636736747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3636636743%_))))
                                          (_%loop3636536734%_
                                           _%lp-tl3636836750%_
                                           (cons _%lp-hd3636736747%_
                                                 _%body3636936741%_))))
                                      (let ((_%body3637036753%_
                                             (reverse _%body3636936741%_)))
                                        (_%__kont3991439915%_
                                         _%body3637036753%_))))))
                        (_%loop3636536734%_ _%target3636236728%_ '())))))
              (if (gx#stx-pair? _%__stx3991139912%_)
                  (let ((_%e3635636708%_ (gx#syntax-e _%__stx3991139912%_)))
                    (let ((_%tl3635836715%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3635636708%_)))
                          (_%hd3635736712%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3635636708%_))))
                      (if (gx#stx-pair? _%tl3635836715%_)
                          (let ((_%e3635936718%_
                                 (gx#syntax-e _%tl3635836715%_)))
                            (let ((_%tl3636136725%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3635936718%_)))
                                  (_%hd3636036722%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3635936718%_))))
                              (if (gx#stx-null? _%hd3636036722%_)
                                  (if (gx#stx-pair/null? _%tl3636136725%_)
                                      (let ((_%__splice3991639917%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3636136725%_
                                              '0)))
                                        (let ((_%tl3636436731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3991639917%_
                                                  '1)))
                                              (_%target3636236728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3991639917%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3636436731%_)
                                              (_%__match3995039951%_
                                               _%e3635636708%_
                                               _%hd3635736712%_
                                               _%tl3635836715%_
                                               _%e3635936718%_
                                               _%hd3636036722%_
                                               _%tl3636136725%_
                                               _%__splice3991639917%_
                                               _%target3636236728%_
                                               _%tl3636436731%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3636036722%_)
                                                  (let ((_%__splice3992439925%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3636036722%_
                                                          '0)))
                                                    (let ((_%tl3640736466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3992439925%_
                                                              '1)))
                                                          (_%target3640536463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3992439925%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3640736466%_)
                                                          (_%__match4000440005%_
                                                           _%e3635636708%_
                                                           _%hd3635736712%_
                                                           _%tl3635836715%_
                                                           _%e3635936718%_
                                                           _%hd3636036722%_
                                                           _%tl3636136725%_
                                                           _%__splice3992439925%_
                                                           _%target3640536463%_
                                                           _%tl3640736466%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3635336436%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3635336436%_))))))
                                      (if (gx#stx-pair/null? _%hd3636036722%_)
                                          (let ((_%__splice3992439925%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3636036722%_
                                                  '0)))
                                            (let ((_%tl3640736466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3992439925%_
                                                      '1)))
                                                  (_%target3640536463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3992439925%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3640736466%_)
                                                  (_%__match4000440005%_
                                                   _%e3635636708%_
                                                   _%hd3635736712%_
                                                   _%tl3635836715%_
                                                   _%e3635936718%_
                                                   _%hd3636036722%_
                                                   _%tl3636136725%_
                                                   _%__splice3992439925%_
                                                   _%target3640536463%_
                                                   _%tl3640736466%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3635336436%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3635336436%_))))
                                  (if (gx#stx-pair? _%hd3636036722%_)
                                      (let ((_%e3638136618%_
                                             (gx#syntax-e _%hd3636036722%_)))
                                        (let ((_%tl3638336625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3638136618%_)))
                                              (_%hd3638236622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3638136618%_))))
                                          (if (gx#stx-pair? _%tl3638336625%_)
                                              (let ((_%e3638436628%_
                                                     (gx#syntax-e
                                                      _%tl3638336625%_)))
                                                (let ((_%tl3638636635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3638436628%_)))
                                                      (_%hd3638536632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3638436628%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3638636635%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3636136725%_)
                                                          (let ((_%__splice3992039921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3636136725%_ '0)))
                    (let ((_%tl3638936641%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3992039921%_ '1)))
                          (_%target3638736638%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3992039921%_ '0))))
                      (if (gx#stx-null? _%tl3638936641%_)
                          (_%__match3998439985%_
                           _%e3635636708%_
                           _%hd3635736712%_
                           _%tl3635836715%_
                           _%e3635936718%_
                           _%hd3636036722%_
                           _%tl3636136725%_
                           _%e3638136618%_
                           _%hd3638236622%_
                           _%tl3638336625%_
                           _%e3638436628%_
                           _%hd3638536632%_
                           _%tl3638636635%_
                           _%__splice3992039921%_
                           _%target3638736638%_
                           _%tl3638936641%_)
                          (if (gx#stx-pair/null? _%hd3636036722%_)
                              (let ((_%__splice3992439925%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3636036722%_
                                      '0)))
                                (let ((_%tl3640736466%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3992439925%_
                                          '1)))
                                      (_%target3640536463%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3992439925%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3640736466%_)
                                      (_%__match4000440005%_
                                       _%e3635636708%_
                                       _%hd3635736712%_
                                       _%tl3635836715%_
                                       _%e3635936718%_
                                       _%hd3636036722%_
                                       _%tl3636136725%_
                                       _%__splice3992439925%_
                                       _%target3640536463%_
                                       _%tl3640736466%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3635336436%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3635336436%_))))))
                  (if (gx#stx-pair/null? _%hd3636036722%_)
                      (let ((_%__splice3992439925%_
                             (gx#syntax-split-splice->vector
                              _%hd3636036722%_
                              '0)))
                        (let ((_%tl3640736466%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3992439925%_ '1)))
                              (_%target3640536463%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3992439925%_ '0))))
                          (if (gx#stx-null? _%tl3640736466%_)
                              (_%__match4000440005%_
                               _%e3635636708%_
                               _%hd3635736712%_
                               _%tl3635836715%_
                               _%e3635936718%_
                               _%hd3636036722%_
                               _%tl3636136725%_
                               _%__splice3992439925%_
                               _%target3640536463%_
                               _%tl3640736466%_)
                              (let ()
                                (declare (not safe))
                                (_%g3635336436%_)))))
                      (let () (declare (not safe)) (_%g3635336436%_))))
              (if (gx#stx-pair/null? _%hd3636036722%_)
                  (let ((_%__splice3992439925%_
                         (gx#syntax-split-splice->vector _%hd3636036722%_ '0)))
                    (let ((_%tl3640736466%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3992439925%_ '1)))
                          (_%target3640536463%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3992439925%_ '0))))
                      (if (gx#stx-null? _%tl3640736466%_)
                          (_%__match4000440005%_
                           _%e3635636708%_
                           _%hd3635736712%_
                           _%tl3635836715%_
                           _%e3635936718%_
                           _%hd3636036722%_
                           _%tl3636136725%_
                           _%__splice3992439925%_
                           _%target3640536463%_
                           _%tl3640736466%_)
                          (let () (declare (not safe)) (_%g3635336436%_)))))
                  (let () (declare (not safe)) (_%g3635336436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3636036722%_)
                                                  (let ((_%__splice3992439925%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3636036722%_
                                                          '0)))
                                                    (let ((_%tl3640736466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3992439925%_
                                                              '1)))
                                                          (_%target3640536463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3992439925%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3640736466%_)
                                                          (_%__match4000440005%_
                                                           _%e3635636708%_
                                                           _%hd3635736712%_
                                                           _%tl3635836715%_
                                                           _%e3635936718%_
                                                           _%hd3636036722%_
                                                           _%tl3636136725%_
                                                           _%__splice3992439925%_
                                                           _%target3640536463%_
                                                           _%tl3640736466%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3635336436%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3635336436%_))))))
                                      (if (gx#stx-pair/null? _%hd3636036722%_)
                                          (let ((_%__splice3992439925%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3636036722%_
                                                  '0)))
                                            (let ((_%tl3640736466%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3992439925%_
                                                      '1)))
                                                  (_%target3640536463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3992439925%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3640736466%_)
                                                  (_%__match4000440005%_
                                                   _%e3635636708%_
                                                   _%hd3635736712%_
                                                   _%tl3635836715%_
                                                   _%e3635936718%_
                                                   _%hd3636036722%_
                                                   _%tl3636136725%_
                                                   _%__splice3992439925%_
                                                   _%target3640536463%_
                                                   _%tl3640736466%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3635336436%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3635336436%_)))))))
                          (let () (declare (not safe)) (_%g3635336436%_)))))
                  (let () (declare (not safe)) (_%g3635336436%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36789%_)
        (let* ((_%__stx4000740008%_ _%$stx36789%_)
               (_%g3679436846%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4000740008%_))))
          (let ((_%__kont4001040011%_
                 (lambda (_%g3679637012%_
                          _%g3679737014%_
                          _%g3679837015%_
                          _%g3679937016%_
                          _%g3680037017%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3679937016%_
                                           (cons _%g3679837015%_ '()))
                                     '())
                               (cons (cons _%g3680037017%_
                                           (cons _%g3679737014%_
                                                 (foldr (lambda (_%g3704237045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3704337048%_)
                  (cons _%g3704237045%_ _%g3704337048%_))
                '()
                _%g3679637012%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4001440015%_
                 (lambda (_%g3682536901%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3691836921%_ _%g3691936924%_)
                                        (cons _%g3691836921%_ _%g3691936924%_))
                                      '()
                                      _%g3682536901%_))))))
            (let* ((_%__match4008040081%_
                    (lambda (_%e3682636853%_
                             _%hd3682736857%_
                             _%tl3682836860%_
                             _%e3682936863%_
                             _%hd3683036867%_
                             _%tl3683136870%_
                             _%__splice4001640017%_
                             _%target3683236873%_
                             _%tl3683436876%_)
                      (letrec ((_%loop3683536879%_
                                (lambda (_%hd3683336883%_ _%body3683936886%_)
                                  (if (gx#stx-pair? _%hd3683336883%_)
                                      (let ((_%e3683636888%_
                                             (gx#syntax-e _%hd3683336883%_)))
                                        (let ((_%lp-tl3683836895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3683636888%_)))
                                              (_%lp-hd3683736892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3683636888%_))))
                                          (_%loop3683536879%_
                                           _%lp-tl3683836895%_
                                           (cons _%lp-hd3683736892%_
                                                 _%body3683936886%_))))
                                      (let ((_%body3684036898%_
                                             (reverse _%body3683936886%_)))
                                        (_%__kont4001440015%_
                                         _%body3684036898%_))))))
                        (_%loop3683536879%_ _%target3683236873%_ '()))))
                   (_%__match4005840059%_
                    (lambda (_%e3680136934%_
                             _%hd3680236938%_
                             _%tl3680336941%_
                             _%e3680436944%_
                             _%hd3680536948%_
                             _%tl3680636951%_
                             _%e3680736954%_
                             _%hd3680836958%_
                             _%tl3680936961%_
                             _%e3681036964%_
                             _%hd3681136968%_
                             _%tl3681236971%_
                             _%e3681336974%_
                             _%hd3681436978%_
                             _%tl3681536981%_
                             _%__splice4001240013%_
                             _%target3681636984%_
                             _%tl3681836987%_)
                      (letrec ((_%loop3681936990%_
                                (lambda (_%hd3681736994%_ _%body3682336997%_)
                                  (if (gx#stx-pair? _%hd3681736994%_)
                                      (let ((_%e3682036999%_
                                             (gx#syntax-e _%hd3681736994%_)))
                                        (let ((_%lp-tl3682237006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3682036999%_)))
                                              (_%lp-hd3682137003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3682036999%_))))
                                          (_%loop3681936990%_
                                           _%lp-tl3682237006%_
                                           (cons _%lp-hd3682137003%_
                                                 _%body3682336997%_))))
                                      (let ((_%body3682437009%_
                                             (reverse _%body3682336997%_)))
                                        (_%__kont4001040011%_
                                         _%body3682437009%_
                                         _%tl3680936961%_
                                         _%hd3681436978%_
                                         _%hd3681136968%_
                                         _%hd3680236938%_))))))
                        (_%loop3681936990%_ _%target3681636984%_ '())))))
              (if (gx#stx-pair? _%__stx4000740008%_)
                  (let ((_%e3680136934%_ (gx#syntax-e _%__stx4000740008%_)))
                    (let ((_%tl3680336941%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3680136934%_)))
                          (_%hd3680236938%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3680136934%_))))
                      (if (gx#stx-pair? _%tl3680336941%_)
                          (let ((_%e3680436944%_
                                 (gx#syntax-e _%tl3680336941%_)))
                            (let ((_%tl3680636951%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3680436944%_)))
                                  (_%hd3680536948%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3680436944%_))))
                              (if (gx#stx-pair? _%hd3680536948%_)
                                  (let ((_%e3680736954%_
                                         (gx#syntax-e _%hd3680536948%_)))
                                    (let ((_%tl3680936961%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3680736954%_)))
                                          (_%hd3680836958%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3680736954%_))))
                                      (if (gx#stx-pair? _%hd3680836958%_)
                                          (let ((_%e3681036964%_
                                                 (gx#syntax-e
                                                  _%hd3680836958%_)))
                                            (let ((_%tl3681236971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3681036964%_)))
                                                  (_%hd3681136968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3681036964%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3681236971%_)
                                                  (let ((_%e3681336974%_
                                                         (gx#syntax-e
                                                          _%tl3681236971%_)))
                                                    (let ((_%tl3681536981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3681336974%_)))
                                                          (_%hd3681436978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3681336974%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3681536981%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3680636951%_)
                                                              (let ((_%__splice4001240013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3680636951%_
                              '0)))
                        (let ((_%tl3681836987%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4001240013%_ '1)))
                              (_%target3681636984%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4001240013%_ '0))))
                          (if (gx#stx-null? _%tl3681836987%_)
                              (_%__match4005840059%_
                               _%e3680136934%_
                               _%hd3680236938%_
                               _%tl3680336941%_
                               _%e3680436944%_
                               _%hd3680536948%_
                               _%tl3680636951%_
                               _%e3680736954%_
                               _%hd3680836958%_
                               _%tl3680936961%_
                               _%e3681036964%_
                               _%hd3681136968%_
                               _%tl3681236971%_
                               _%e3681336974%_
                               _%hd3681436978%_
                               _%tl3681536981%_
                               _%__splice4001240013%_
                               _%target3681636984%_
                               _%tl3681836987%_)
                              (let ()
                                (declare (not safe))
                                (_%g3679436846%_)))))
                      (let () (declare (not safe)) (_%g3679436846%_)))
                  (let () (declare (not safe)) (_%g3679436846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3679436846%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3679436846%_)))))
                                  (if (gx#stx-null? _%hd3680536948%_)
                                      (if (gx#stx-pair/null? _%tl3680636951%_)
                                          (let ((_%__splice4001640017%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3680636951%_
                                                  '0)))
                                            (let ((_%tl3683436876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4001640017%_
                                                      '1)))
                                                  (_%target3683236873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4001640017%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3683436876%_)
                                                  (_%__match4008040081%_
                                                   _%e3680136934%_
                                                   _%hd3680236938%_
                                                   _%tl3680336941%_
                                                   _%e3680436944%_
                                                   _%hd3680536948%_
                                                   _%tl3680636951%_
                                                   _%__splice4001640017%_
                                                   _%target3683236873%_
                                                   _%tl3683436876%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3679436846%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3679436846%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3679436846%_))))))
                          (let () (declare (not safe)) (_%g3679436846%_)))))
                  (let () (declare (not safe)) (_%g3679436846%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx37057%_)
        (let* ((_%__stx4008340084%_ _%$stx37057%_)
               (_%g3706837214%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4008340084%_))))
          (let ((_%__kont4008640087%_
                 (lambda (_%g3707037814%_ _%g3707137816%_ _%g3707237817%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3783837841%_ _%g3783937844%_)
                                  (cons (cons _%g3707237817%_
                                              (cons _%g3783837841%_
                                                    (cons _%g3707037814%_
                                                          '())))
                                        _%g3783937844%_))
                                '()
                                _%g3707137816%_))))
                (_%__kont4009040091%_
                 (lambda (_%g3709437706%_ _%g3709537708%_ _%g3709637709%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3773037733%_ _%g3773137736%_)
                                  (cons (cons _%g3709637709%_
                                              (cons _%g3773037733%_
                                                    (cons _%g3709437706%_
                                                          '())))
                                        _%g3773137736%_))
                                '()
                                _%g3709537708%_))))
                (_%__kont4009440095%_
                 (lambda (_%g3711837608%_ _%g3711937610%_ _%g3712037611%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3712037611%_
                                     (cons _%g3711937610%_
                                           (cons _%g3711837608%_ '())))
                               '()))))
                (_%__kont4009640097%_
                 (lambda (_%g3713637534%_ _%g3713737536%_)
                   (cons _%g3713737536%_ (cons _%g3713637534%_ '()))))
                (_%__kont4009840099%_
                 (lambda (_%g3714737482%_ _%g3714837484%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3714837484%_
                                           (cons _%g3714737482%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont4010040101%_
                 (lambda (_%g3715537434%_ _%g3715637436%_ _%g3715737437%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3715737437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3715637436%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3715537434%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4010240103%_
                 (lambda (_%g3717037365%_ _%g3717137367%_ _%g3717237368%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3717237368%_
                                                       (cons _%g3717137367%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3717037365%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4010440105%_
                 (lambda (_%g3718637285%_
                          _%g3718737287%_
                          _%g3718837288%_
                          _%g3718937289%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3718937289%_
                                                       (cons _%g3718837288%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3718637285%_
                                                             (cons (cons _%g3718737287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match4025640257%_
                    (lambda (_%e3715837394%_
                             _%hd3715937398%_
                             _%tl3716037401%_
                             _%e3716137404%_
                             _%hd3716237408%_
                             _%tl3716337411%_
                             _%e3716437414%_
                             _%hd3716537418%_
                             _%tl3716637421%_)
                      (if (gx#identifier? _%hd3716537418%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40458_|
                               _%hd3716537418%_)
                              (if (gx#stx-pair? _%tl3716637421%_)
                                  (let ((_%e3716737424%_
                                         (gx#syntax-e _%tl3716637421%_)))
                                    (let ((_%tl3716937431%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3716737424%_)))
                                          (_%hd3716837428%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3716737424%_))))
                                      (if (gx#stx-null? _%tl3716937431%_)
                                          (_%__kont4010040101%_
                                           _%hd3716837428%_
                                           _%hd3716237408%_
                                           _%hd3715937398%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706837214%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706837214%_)))
                              (let () (declare (not safe)) (_%g3706837214%_)))
                          (if (gx#stx-datum? _%hd3716537418%_)
                              (let ((_%e3718237351%_
                                     (gx#stx-e _%hd3716537418%_)))
                                (if (equal? _%e3718237351%_ '::)
                                    (if (gx#stx-pair? _%tl3716637421%_)
                                        (let ((_%e3718337355%_
                                               (gx#syntax-e _%tl3716637421%_)))
                                          (let ((_%tl3718537362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3718337355%_)))
                                                (_%hd3718437359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3718337355%_))))
                                            (if (gx#stx-null? _%tl3718537362%_)
                                                (_%__kont4010240103%_
                                                 _%hd3718437359%_
                                                 _%hd3716237408%_
                                                 _%hd3715937398%_)
                                                (if (gx#stx-pair?
                                                     _%tl3718537362%_)
                                                    (let ((_%e3720337265%_
                                                           (gx#syntax-e
                                                            _%tl3718537362%_)))
                                                      (let ((_%tl3720537272%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3720337265%_)))
                    (_%hd3720437269%_
                     (let () (declare (not safe)) (##car _%e3720337265%_))))
                (if (gx#identifier? _%hd3720437269%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40459_|
                         _%hd3720437269%_)
                        (if (gx#stx-pair? _%tl3720537272%_)
                            (let ((_%e3720637275%_
                                   (gx#syntax-e _%tl3720537272%_)))
                              (let ((_%tl3720837282%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3720637275%_)))
                                    (_%hd3720737279%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3720637275%_))))
                                (if (gx#stx-null? _%tl3720837282%_)
                                    (_%__kont4010440105%_
                                     _%hd3720737279%_
                                     _%hd3718437359%_
                                     _%hd3716237408%_
                                     _%hd3715937398%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_)))))
                            (let () (declare (not safe)) (_%g3706837214%_)))
                        (let () (declare (not safe)) (_%g3706837214%_)))
                    (let () (declare (not safe)) (_%g3706837214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3706837214%_))))))
                   (_%__match4023640237%_
                    (lambda (_%e3714937462%_
                             _%hd3715037466%_
                             _%tl3715137469%_
                             _%e3715237472%_
                             _%hd3715337476%_
                             _%tl3715437479%_)
                      (if (gx#stx-null? _%tl3715437479%_)
                          (_%__kont4009840099%_
                           _%hd3715337476%_
                           _%hd3715037466%_)
                          (if (gx#stx-pair? _%tl3715437479%_)
                              (let ((_%e3716437414%_
                                     (gx#syntax-e _%tl3715437479%_)))
                                (let ((_%tl3716637421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3716437414%_)))
                                      (_%hd3716537418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3716437414%_))))
                                  (if (gx#identifier? _%hd3716537418%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40458_|
                                           _%hd3716537418%_)
                                          (if (gx#stx-pair? _%tl3716637421%_)
                                              (let ((_%e3716737424%_
                                                     (gx#syntax-e
                                                      _%tl3716637421%_)))
                                                (let ((_%tl3716937431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3716737424%_)))
                                                      (_%hd3716837428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3716737424%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3716937431%_)
                                                      (_%__kont4010040101%_
                                                       _%hd3716837428%_
                                                       _%hd3715337476%_
                                                       _%hd3715037466%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3706837214%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706837214%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706837214%_)))
                                      (if (gx#stx-datum? _%hd3716537418%_)
                                          (let ((_%e3718237351%_
                                                 (gx#stx-e _%hd3716537418%_)))
                                            (if (equal? _%e3718237351%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3716637421%_)
                                                    (let ((_%e3718337355%_
                                                           (gx#syntax-e
                                                            _%tl3716637421%_)))
                                                      (let ((_%tl3718537362%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3718337355%_)))
                    (_%hd3718437359%_
                     (let () (declare (not safe)) (##car _%e3718337355%_))))
                (if (gx#stx-null? _%tl3718537362%_)
                    (_%__kont4010240103%_
                     _%hd3718437359%_
                     _%hd3715337476%_
                     _%hd3715037466%_)
                    (if (gx#stx-pair? _%tl3718537362%_)
                        (let ((_%e3720337265%_ (gx#syntax-e _%tl3718537362%_)))
                          (let ((_%tl3720537272%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3720337265%_)))
                                (_%hd3720437269%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3720337265%_))))
                            (if (gx#identifier? _%hd3720437269%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40459_|
                                     _%hd3720437269%_)
                                    (if (gx#stx-pair? _%tl3720537272%_)
                                        (let ((_%e3720637275%_
                                               (gx#syntax-e _%tl3720537272%_)))
                                          (let ((_%tl3720837282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3720637275%_)))
                                                (_%hd3720737279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3720637275%_))))
                                            (if (gx#stx-null? _%tl3720837282%_)
                                                (_%__kont4010440105%_
                                                 _%hd3720737279%_
                                                 _%hd3718437359%_
                                                 _%hd3715337476%_
                                                 _%hd3715037466%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706837214%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706837214%_)))))
                        (let () (declare (not safe)) (_%g3706837214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706837214%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706837214%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3706837214%_))))))
                   (_%__match4016640167%_
                    (lambda (_%e3709737638%_
                             _%hd3709837642%_
                             _%tl3709937645%_
                             _%e3710037648%_
                             _%hd3710137652%_
                             _%tl3710237655%_
                             _%e3710337658%_
                             _%hd3710437662%_
                             _%tl3710537665%_
                             _%__splice4009240093%_
                             _%target3710637668%_
                             _%tl3710837671%_)
                      (letrec ((_%loop3710937674%_
                                (lambda (_%hd3710737678%_ _%pred3711337681%_)
                                  (if (gx#stx-pair? _%hd3710737678%_)
                                      (let ((_%e3711037683%_
                                             (gx#syntax-e _%hd3710737678%_)))
                                        (let ((_%lp-tl3711237690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3711037683%_)))
                                              (_%lp-hd3711137687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3711037683%_))))
                                          (_%loop3710937674%_
                                           _%lp-tl3711237690%_
                                           (cons _%lp-hd3711137687%_
                                                 _%pred3711337681%_))))
                                      (let ((_%pred3711437693%_
                                             (reverse _%pred3711337681%_)))
                                        (if (gx#stx-pair? _%tl3710237655%_)
                                            (let ((_%e3711537696%_
                                                   (gx#syntax-e
                                                    _%tl3710237655%_)))
                                              (let ((_%tl3711737703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3711537696%_)))
                                                    (_%hd3711637700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3711537696%_))))
                                                (if (gx#stx-null?
                                                     _%tl3711737703%_)
                                                    (_%__kont4009040091%_
                                                     _%hd3711637700%_
                                                     _%pred3711437693%_
                                                     _%hd3709837642%_)
                                                    (_%__match4025640257%_
                                                     _%e3709737638%_
                                                     _%hd3709837642%_
                                                     _%tl3709937645%_
                                                     _%e3710037648%_
                                                     _%hd3710137652%_
                                                     _%tl3710237655%_
                                                     _%e3711537696%_
                                                     _%hd3711637700%_
                                                     _%tl3711737703%_))))
                                            (_%__match4023640237%_
                                             _%e3709737638%_
                                             _%hd3709837642%_
                                             _%tl3709937645%_
                                             _%e3710037648%_
                                             _%hd3710137652%_
                                             _%tl3710237655%_)))))))
                        (_%loop3710937674%_ _%target3710637668%_ '()))))
                   (_%__match4013640137%_
                    (lambda (_%e3707337746%_
                             _%hd3707437750%_
                             _%tl3707537753%_
                             _%e3707637756%_
                             _%hd3707737760%_
                             _%tl3707837763%_
                             _%e3707937766%_
                             _%hd3708037770%_
                             _%tl3708137773%_
                             _%__splice4008840089%_
                             _%target3708237776%_
                             _%tl3708437779%_)
                      (letrec ((_%loop3708537782%_
                                (lambda (_%hd3708337786%_ _%pred3708937789%_)
                                  (if (gx#stx-pair? _%hd3708337786%_)
                                      (let ((_%e3708637791%_
                                             (gx#syntax-e _%hd3708337786%_)))
                                        (let ((_%lp-tl3708837798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3708637791%_)))
                                              (_%lp-hd3708737795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3708637791%_))))
                                          (_%loop3708537782%_
                                           _%lp-tl3708837798%_
                                           (cons _%lp-hd3708737795%_
                                                 _%pred3708937789%_))))
                                      (let ((_%pred3709037801%_
                                             (reverse _%pred3708937789%_)))
                                        (if (gx#stx-pair? _%tl3707837763%_)
                                            (let ((_%e3709137804%_
                                                   (gx#syntax-e
                                                    _%tl3707837763%_)))
                                              (let ((_%tl3709337811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3709137804%_)))
                                                    (_%hd3709237808%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3709137804%_))))
                                                (if (gx#stx-null?
                                                     _%tl3709337811%_)
                                                    (_%__kont4008640087%_
                                                     _%hd3709237808%_
                                                     _%pred3709037801%_
                                                     _%hd3707437750%_)
                                                    (_%__match4025640257%_
                                                     _%e3707337746%_
                                                     _%hd3707437750%_
                                                     _%tl3707537753%_
                                                     _%e3707637756%_
                                                     _%hd3707737760%_
                                                     _%tl3707837763%_
                                                     _%e3709137804%_
                                                     _%hd3709237808%_
                                                     _%tl3709337811%_))))
                                            (_%__match4023640237%_
                                             _%e3707337746%_
                                             _%hd3707437750%_
                                             _%tl3707537753%_
                                             _%e3707637756%_
                                             _%hd3707737760%_
                                             _%tl3707837763%_)))))))
                        (_%loop3708537782%_ _%target3708237776%_ '())))))
              (if (gx#stx-pair? _%__stx4008340084%_)
                  (let ((_%e3707337746%_ (gx#syntax-e _%__stx4008340084%_)))
                    (let ((_%tl3707537753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3707337746%_)))
                          (_%hd3707437750%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3707337746%_))))
                      (if (gx#stx-pair? _%tl3707537753%_)
                          (let ((_%e3707637756%_
                                 (gx#syntax-e _%tl3707537753%_)))
                            (let ((_%tl3707837763%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3707637756%_)))
                                  (_%hd3707737760%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3707637756%_))))
                              (if (gx#stx-pair? _%hd3707737760%_)
                                  (let ((_%e3707937766%_
                                         (gx#syntax-e _%hd3707737760%_)))
                                    (let ((_%tl3708137773%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3707937766%_)))
                                          (_%hd3708037770%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3707937766%_))))
                                      (if (gx#identifier? _%hd3708037770%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40460_|
                                               _%hd3708037770%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3708137773%_)
                                                  (let ((_%__splice4008840089%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3708137773%_
                                                          '0)))
                                                    (let ((_%tl3708437779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4008840089%_
                                                              '1)))
                                                          (_%target3708237776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4008840089%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3708437779%_)
                                                          (_%__match4013640137%_
                                                           _%e3707337746%_
                                                           _%hd3707437750%_
                                                           _%tl3707537753%_
                                                           _%e3707637756%_
                                                           _%hd3707737760%_
                                                           _%tl3707837763%_
                                                           _%e3707937766%_
                                                           _%hd3708037770%_
                                                           _%tl3708137773%_
                                                           _%__splice4008840089%_
                                                           _%target3708237776%_
                                                           _%tl3708437779%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3707837763%_)
                                                              (let ((_%e3714437524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3707837763%_)))
                        (let ((_%tl3714637531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3714437524%_)))
                              (_%hd3714537528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3714437524%_))))
                          (if (gx#stx-null? _%tl3714637531%_)
                              (_%__kont4009640097%_
                               _%hd3714537528%_
                               _%hd3707737760%_)
                              (if (gx#identifier? _%hd3714537528%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40458_|
                                       _%hd3714537528%_)
                                      (if (gx#stx-pair? _%tl3714637531%_)
                                          (let ((_%e3716737424%_
                                                 (gx#syntax-e
                                                  _%tl3714637531%_)))
                                            (let ((_%tl3716937431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3716737424%_)))
                                                  (_%hd3716837428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3716737424%_))))
                                              (if (gx#stx-null?
                                                   _%tl3716937431%_)
                                                  (_%__kont4010040101%_
                                                   _%hd3716837428%_
                                                   _%hd3707737760%_
                                                   _%hd3707437750%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706837214%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706837214%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706837214%_)))
                                  (if (gx#stx-datum? _%hd3714537528%_)
                                      (let ((_%e3718237351%_
                                             (gx#stx-e _%hd3714537528%_)))
                                        (if (equal? _%e3718237351%_ '::)
                                            (if (gx#stx-pair? _%tl3714637531%_)
                                                (let ((_%e3718337355%_
                                                       (gx#syntax-e
                                                        _%tl3714637531%_)))
                                                  (let ((_%tl3718537362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3718337355%_)))
                                                        (_%hd3718437359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3718337355%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3718537362%_)
                                                        (_%__kont4010240103%_
                                                         _%hd3718437359%_
                                                         _%hd3707737760%_
                                                         _%hd3707437750%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3718537362%_)
                                                            (let ((_%e3720337265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3718537362%_)))
                      (let ((_%tl3720537272%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3720337265%_)))
                            (_%hd3720437269%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3720337265%_))))
                        (if (gx#identifier? _%hd3720437269%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40459_|
                                 _%hd3720437269%_)
                                (if (gx#stx-pair? _%tl3720537272%_)
                                    (let ((_%e3720637275%_
                                           (gx#syntax-e _%tl3720537272%_)))
                                      (let ((_%tl3720837282%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3720637275%_)))
                                            (_%hd3720737279%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3720637275%_))))
                                        (if (gx#stx-null? _%tl3720837282%_)
                                            (_%__kont4010440105%_
                                             _%hd3720737279%_
                                             _%hd3718437359%_
                                             _%hd3707737760%_
                                             _%hd3707437750%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706837214%_)))
                            (let () (declare (not safe)) (_%g3706837214%_)))))
                    (let () (declare (not safe)) (_%g3706837214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706837214%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706837214%_)))))))
                      (if (gx#stx-null? _%tl3707837763%_)
                          (_%__kont4009840099%_
                           _%hd3707737760%_
                           _%hd3707437750%_)
                          (let () (declare (not safe)) (_%g3706837214%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3707837763%_)
                                                      (let ((_%e3714437524%_
                                                             (gx#syntax-e
                                                              _%tl3707837763%_)))
                                                        (let ((_%tl3714637531%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3714437524%_)))
                      (_%hd3714537528%_
                       (let () (declare (not safe)) (##car _%e3714437524%_))))
                  (if (gx#stx-null? _%tl3714637531%_)
                      (_%__kont4009640097%_ _%hd3714537528%_ _%hd3707737760%_)
                      (if (gx#identifier? _%hd3714537528%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40458_|
                               _%hd3714537528%_)
                              (if (gx#stx-pair? _%tl3714637531%_)
                                  (let ((_%e3716737424%_
                                         (gx#syntax-e _%tl3714637531%_)))
                                    (let ((_%tl3716937431%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3716737424%_)))
                                          (_%hd3716837428%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3716737424%_))))
                                      (if (gx#stx-null? _%tl3716937431%_)
                                          (_%__kont4010040101%_
                                           _%hd3716837428%_
                                           _%hd3707737760%_
                                           _%hd3707437750%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706837214%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706837214%_)))
                              (let () (declare (not safe)) (_%g3706837214%_)))
                          (if (gx#stx-datum? _%hd3714537528%_)
                              (let ((_%e3718237351%_
                                     (gx#stx-e _%hd3714537528%_)))
                                (if (equal? _%e3718237351%_ '::)
                                    (if (gx#stx-pair? _%tl3714637531%_)
                                        (let ((_%e3718337355%_
                                               (gx#syntax-e _%tl3714637531%_)))
                                          (let ((_%tl3718537362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3718337355%_)))
                                                (_%hd3718437359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3718337355%_))))
                                            (if (gx#stx-null? _%tl3718537362%_)
                                                (_%__kont4010240103%_
                                                 _%hd3718437359%_
                                                 _%hd3707737760%_
                                                 _%hd3707437750%_)
                                                (if (gx#stx-pair?
                                                     _%tl3718537362%_)
                                                    (let ((_%e3720337265%_
                                                           (gx#syntax-e
                                                            _%tl3718537362%_)))
                                                      (let ((_%tl3720537272%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3720337265%_)))
                    (_%hd3720437269%_
                     (let () (declare (not safe)) (##car _%e3720337265%_))))
                (if (gx#identifier? _%hd3720437269%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40459_|
                         _%hd3720437269%_)
                        (if (gx#stx-pair? _%tl3720537272%_)
                            (let ((_%e3720637275%_
                                   (gx#syntax-e _%tl3720537272%_)))
                              (let ((_%tl3720837282%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3720637275%_)))
                                    (_%hd3720737279%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3720637275%_))))
                                (if (gx#stx-null? _%tl3720837282%_)
                                    (_%__kont4010440105%_
                                     _%hd3720737279%_
                                     _%hd3718437359%_
                                     _%hd3707737760%_
                                     _%hd3707437750%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_)))))
                            (let () (declare (not safe)) (_%g3706837214%_)))
                        (let () (declare (not safe)) (_%g3706837214%_)))
                    (let () (declare (not safe)) (_%g3706837214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3706837214%_)))))))
              (if (gx#stx-null? _%tl3707837763%_)
                  (_%__kont4009840099%_ _%hd3707737760%_ _%hd3707437750%_)
                  (let () (declare (not safe)) (_%g3706837214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40461_|
                                                   _%hd3708037770%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3708137773%_)
                                                      (let ((_%__splice4009240093%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3708137773%_
                                                              '0)))
                                                        (let ((_%tl3710837671%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4009240093%_ '1)))
                      (_%target3710637668%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4009240093%_ '0))))
                  (if (gx#stx-null? _%tl3710837671%_)
                      (_%__match4016640167%_
                       _%e3707337746%_
                       _%hd3707437750%_
                       _%tl3707537753%_
                       _%e3707637756%_
                       _%hd3707737760%_
                       _%tl3707837763%_
                       _%e3707937766%_
                       _%hd3708037770%_
                       _%tl3708137773%_
                       _%__splice4009240093%_
                       _%target3710637668%_
                       _%tl3710837671%_)
                      (if (gx#stx-pair? _%tl3707837763%_)
                          (let ((_%e3714437524%_
                                 (gx#syntax-e _%tl3707837763%_)))
                            (let ((_%tl3714637531%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3714437524%_)))
                                  (_%hd3714537528%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3714437524%_))))
                              (if (gx#stx-null? _%tl3714637531%_)
                                  (_%__kont4009640097%_
                                   _%hd3714537528%_
                                   _%hd3707737760%_)
                                  (if (gx#identifier? _%hd3714537528%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40458_|
                                           _%hd3714537528%_)
                                          (if (gx#stx-pair? _%tl3714637531%_)
                                              (let ((_%e3716737424%_
                                                     (gx#syntax-e
                                                      _%tl3714637531%_)))
                                                (let ((_%tl3716937431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3716737424%_)))
                                                      (_%hd3716837428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3716737424%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3716937431%_)
                                                      (_%__kont4010040101%_
                                                       _%hd3716837428%_
                                                       _%hd3707737760%_
                                                       _%hd3707437750%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3706837214%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706837214%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706837214%_)))
                                      (if (gx#stx-datum? _%hd3714537528%_)
                                          (let ((_%e3718237351%_
                                                 (gx#stx-e _%hd3714537528%_)))
                                            (if (equal? _%e3718237351%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3714637531%_)
                                                    (let ((_%e3718337355%_
                                                           (gx#syntax-e
                                                            _%tl3714637531%_)))
                                                      (let ((_%tl3718537362%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3718337355%_)))
                    (_%hd3718437359%_
                     (let () (declare (not safe)) (##car _%e3718337355%_))))
                (if (gx#stx-null? _%tl3718537362%_)
                    (_%__kont4010240103%_
                     _%hd3718437359%_
                     _%hd3707737760%_
                     _%hd3707437750%_)
                    (if (gx#stx-pair? _%tl3718537362%_)
                        (let ((_%e3720337265%_ (gx#syntax-e _%tl3718537362%_)))
                          (let ((_%tl3720537272%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3720337265%_)))
                                (_%hd3720437269%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3720337265%_))))
                            (if (gx#identifier? _%hd3720437269%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40459_|
                                     _%hd3720437269%_)
                                    (if (gx#stx-pair? _%tl3720537272%_)
                                        (let ((_%e3720637275%_
                                               (gx#syntax-e _%tl3720537272%_)))
                                          (let ((_%tl3720837282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3720637275%_)))
                                                (_%hd3720737279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3720637275%_))))
                                            (if (gx#stx-null? _%tl3720837282%_)
                                                (_%__kont4010440105%_
                                                 _%hd3720737279%_
                                                 _%hd3718437359%_
                                                 _%hd3707737760%_
                                                 _%hd3707437750%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706837214%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706837214%_)))))
                        (let () (declare (not safe)) (_%g3706837214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706837214%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706837214%_)))))))
                          (if (gx#stx-null? _%tl3707837763%_)
                              (_%__kont4009840099%_
                               _%hd3707737760%_
                               _%hd3707437750%_)
                              (let ()
                                (declare (not safe))
                                (_%g3706837214%_)))))))
              (if (gx#stx-pair? _%tl3707837763%_)
                  (let ((_%e3714437524%_ (gx#syntax-e _%tl3707837763%_)))
                    (let ((_%tl3714637531%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3714437524%_)))
                          (_%hd3714537528%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3714437524%_))))
                      (if (gx#stx-null? _%tl3714637531%_)
                          (_%__kont4009640097%_
                           _%hd3714537528%_
                           _%hd3707737760%_)
                          (if (gx#identifier? _%hd3714537528%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40458_|
                                   _%hd3714537528%_)
                                  (if (gx#stx-pair? _%tl3714637531%_)
                                      (let ((_%e3716737424%_
                                             (gx#syntax-e _%tl3714637531%_)))
                                        (let ((_%tl3716937431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3716737424%_)))
                                              (_%hd3716837428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3716737424%_))))
                                          (if (gx#stx-null? _%tl3716937431%_)
                                              (_%__kont4010040101%_
                                               _%hd3716837428%_
                                               _%hd3707737760%_
                                               _%hd3707437750%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706837214%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706837214%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706837214%_)))
                              (if (gx#stx-datum? _%hd3714537528%_)
                                  (let ((_%e3718237351%_
                                         (gx#stx-e _%hd3714537528%_)))
                                    (if (equal? _%e3718237351%_ '::)
                                        (if (gx#stx-pair? _%tl3714637531%_)
                                            (let ((_%e3718337355%_
                                                   (gx#syntax-e
                                                    _%tl3714637531%_)))
                                              (let ((_%tl3718537362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3718337355%_)))
                                                    (_%hd3718437359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3718337355%_))))
                                                (if (gx#stx-null?
                                                     _%tl3718537362%_)
                                                    (_%__kont4010240103%_
                                                     _%hd3718437359%_
                                                     _%hd3707737760%_
                                                     _%hd3707437750%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3718537362%_)
                                                        (let ((_%e3720337265%_
                                                               (gx#syntax-e
                                                                _%tl3718537362%_)))
                                                          (let ((_%tl3720537272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3720337265%_)))
                        (_%hd3720437269%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3720337265%_))))
                    (if (gx#identifier? _%hd3720437269%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40459_|
                             _%hd3720437269%_)
                            (if (gx#stx-pair? _%tl3720537272%_)
                                (let ((_%e3720637275%_
                                       (gx#syntax-e _%tl3720537272%_)))
                                  (let ((_%tl3720837282%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3720637275%_)))
                                        (_%hd3720737279%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3720637275%_))))
                                    (if (gx#stx-null? _%tl3720837282%_)
                                        (_%__kont4010440105%_
                                         _%hd3720737279%_
                                         _%hd3718437359%_
                                         _%hd3707737760%_
                                         _%hd3707437750%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706837214%_)))
                            (let () (declare (not safe)) (_%g3706837214%_)))
                        (let () (declare (not safe)) (_%g3706837214%_)))))
                (let () (declare (not safe)) (_%g3706837214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706837214%_)))))))
                  (if (gx#stx-null? _%tl3707837763%_)
                      (_%__kont4009840099%_ _%hd3707737760%_ _%hd3707437750%_)
                      (let () (declare (not safe)) (_%g3706837214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40462_|
                                                       _%hd3708037770%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3708137773%_)
                                                          (let ((_%e3713037588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3708137773%_)))
                    (let ((_%tl3713237595%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3713037588%_)))
                          (_%hd3713137592%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3713037588%_))))
                      (if (gx#stx-null? _%tl3713237595%_)
                          (if (gx#stx-pair? _%tl3707837763%_)
                              (let ((_%e3713337598%_
                                     (gx#syntax-e _%tl3707837763%_)))
                                (let ((_%tl3713537605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3713337598%_)))
                                      (_%hd3713437602%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3713337598%_))))
                                  (if (gx#stx-null? _%tl3713537605%_)
                                      (_%__kont4009440095%_
                                       _%hd3713437602%_
                                       _%hd3713137592%_
                                       _%hd3707437750%_)
                                      (if (gx#identifier? _%hd3713437602%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40458_|
                                               _%hd3713437602%_)
                                              (if (gx#stx-pair?
                                                   _%tl3713537605%_)
                                                  (let ((_%e3716737424%_
                                                         (gx#syntax-e
                                                          _%tl3713537605%_)))
                                                    (let ((_%tl3716937431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3716737424%_)))
                                                          (_%hd3716837428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3716737424%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3716937431%_)
                                                          (_%__kont4010040101%_
                                                           _%hd3716837428%_
                                                           _%hd3707737760%_
                                                           _%hd3707437750%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3706837214%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706837214%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706837214%_)))
                                          (if (gx#stx-datum? _%hd3713437602%_)
                                              (let ((_%e3718237351%_
                                                     (gx#stx-e
                                                      _%hd3713437602%_)))
                                                (if (equal? _%e3718237351%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3713537605%_)
                                                        (let ((_%e3718337355%_
                                                               (gx#syntax-e
                                                                _%tl3713537605%_)))
                                                          (let ((_%tl3718537362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3718337355%_)))
                        (_%hd3718437359%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3718337355%_))))
                    (if (gx#stx-null? _%tl3718537362%_)
                        (_%__kont4010240103%_
                         _%hd3718437359%_
                         _%hd3707737760%_
                         _%hd3707437750%_)
                        (if (gx#stx-pair? _%tl3718537362%_)
                            (let ((_%e3720337265%_
                                   (gx#syntax-e _%tl3718537362%_)))
                              (let ((_%tl3720537272%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3720337265%_)))
                                    (_%hd3720437269%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3720337265%_))))
                                (if (gx#identifier? _%hd3720437269%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40459_|
                                         _%hd3720437269%_)
                                        (if (gx#stx-pair? _%tl3720537272%_)
                                            (let ((_%e3720637275%_
                                                   (gx#syntax-e
                                                    _%tl3720537272%_)))
                                              (let ((_%tl3720837282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3720637275%_)))
                                                    (_%hd3720737279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3720637275%_))))
                                                (if (gx#stx-null?
                                                     _%tl3720837282%_)
                                                    (_%__kont4010440105%_
                                                     _%hd3720737279%_
                                                     _%hd3718437359%_
                                                     _%hd3707737760%_
                                                     _%hd3707437750%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_)))))
                            (let () (declare (not safe)) (_%g3706837214%_))))))
                (let () (declare (not safe)) (_%g3706837214%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706837214%_)))))))
                              (if (gx#stx-null? _%tl3707837763%_)
                                  (_%__kont4009840099%_
                                   _%hd3707737760%_
                                   _%hd3707437750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706837214%_))))
                          (if (gx#stx-pair? _%tl3707837763%_)
                              (let ((_%e3714437524%_
                                     (gx#syntax-e _%tl3707837763%_)))
                                (let ((_%tl3714637531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3714437524%_)))
                                      (_%hd3714537528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3714437524%_))))
                                  (if (gx#stx-null? _%tl3714637531%_)
                                      (_%__kont4009640097%_
                                       _%hd3714537528%_
                                       _%hd3707737760%_)
                                      (if (gx#identifier? _%hd3714537528%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40458_|
                                               _%hd3714537528%_)
                                              (if (gx#stx-pair?
                                                   _%tl3714637531%_)
                                                  (let ((_%e3716737424%_
                                                         (gx#syntax-e
                                                          _%tl3714637531%_)))
                                                    (let ((_%tl3716937431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3716737424%_)))
                                                          (_%hd3716837428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3716737424%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3716937431%_)
                                                          (_%__kont4010040101%_
                                                           _%hd3716837428%_
                                                           _%hd3707737760%_
                                                           _%hd3707437750%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3706837214%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706837214%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706837214%_)))
                                          (if (gx#stx-datum? _%hd3714537528%_)
                                              (let ((_%e3718237351%_
                                                     (gx#stx-e
                                                      _%hd3714537528%_)))
                                                (if (equal? _%e3718237351%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3714637531%_)
                                                        (let ((_%e3718337355%_
                                                               (gx#syntax-e
                                                                _%tl3714637531%_)))
                                                          (let ((_%tl3718537362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3718337355%_)))
                        (_%hd3718437359%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3718337355%_))))
                    (if (gx#stx-null? _%tl3718537362%_)
                        (_%__kont4010240103%_
                         _%hd3718437359%_
                         _%hd3707737760%_
                         _%hd3707437750%_)
                        (if (gx#stx-pair? _%tl3718537362%_)
                            (let ((_%e3720337265%_
                                   (gx#syntax-e _%tl3718537362%_)))
                              (let ((_%tl3720537272%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3720337265%_)))
                                    (_%hd3720437269%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3720337265%_))))
                                (if (gx#identifier? _%hd3720437269%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40459_|
                                         _%hd3720437269%_)
                                        (if (gx#stx-pair? _%tl3720537272%_)
                                            (let ((_%e3720637275%_
                                                   (gx#syntax-e
                                                    _%tl3720537272%_)))
                                              (let ((_%tl3720837282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3720637275%_)))
                                                    (_%hd3720737279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3720637275%_))))
                                                (if (gx#stx-null?
                                                     _%tl3720837282%_)
                                                    (_%__kont4010440105%_
                                                     _%hd3720737279%_
                                                     _%hd3718437359%_
                                                     _%hd3707737760%_
                                                     _%hd3707437750%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_)))))
                            (let () (declare (not safe)) (_%g3706837214%_))))))
                (let () (declare (not safe)) (_%g3706837214%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706837214%_)))))))
                              (if (gx#stx-null? _%tl3707837763%_)
                                  (_%__kont4009840099%_
                                   _%hd3707737760%_
                                   _%hd3707437750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706837214%_)))))))
                  (if (gx#stx-pair? _%tl3707837763%_)
                      (let ((_%e3714437524%_ (gx#syntax-e _%tl3707837763%_)))
                        (let ((_%tl3714637531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3714437524%_)))
                              (_%hd3714537528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3714437524%_))))
                          (if (gx#stx-null? _%tl3714637531%_)
                              (_%__kont4009640097%_
                               _%hd3714537528%_
                               _%hd3707737760%_)
                              (if (gx#identifier? _%hd3714537528%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40458_|
                                       _%hd3714537528%_)
                                      (if (gx#stx-pair? _%tl3714637531%_)
                                          (let ((_%e3716737424%_
                                                 (gx#syntax-e
                                                  _%tl3714637531%_)))
                                            (let ((_%tl3716937431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3716737424%_)))
                                                  (_%hd3716837428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3716737424%_))))
                                              (if (gx#stx-null?
                                                   _%tl3716937431%_)
                                                  (_%__kont4010040101%_
                                                   _%hd3716837428%_
                                                   _%hd3707737760%_
                                                   _%hd3707437750%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706837214%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706837214%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706837214%_)))
                                  (if (gx#stx-datum? _%hd3714537528%_)
                                      (let ((_%e3718237351%_
                                             (gx#stx-e _%hd3714537528%_)))
                                        (if (equal? _%e3718237351%_ '::)
                                            (if (gx#stx-pair? _%tl3714637531%_)
                                                (let ((_%e3718337355%_
                                                       (gx#syntax-e
                                                        _%tl3714637531%_)))
                                                  (let ((_%tl3718537362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3718337355%_)))
                                                        (_%hd3718437359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3718337355%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3718537362%_)
                                                        (_%__kont4010240103%_
                                                         _%hd3718437359%_
                                                         _%hd3707737760%_
                                                         _%hd3707437750%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3718537362%_)
                                                            (let ((_%e3720337265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3718537362%_)))
                      (let ((_%tl3720537272%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3720337265%_)))
                            (_%hd3720437269%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3720337265%_))))
                        (if (gx#identifier? _%hd3720437269%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40459_|
                                 _%hd3720437269%_)
                                (if (gx#stx-pair? _%tl3720537272%_)
                                    (let ((_%e3720637275%_
                                           (gx#syntax-e _%tl3720537272%_)))
                                      (let ((_%tl3720837282%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3720637275%_)))
                                            (_%hd3720737279%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3720637275%_))))
                                        (if (gx#stx-null? _%tl3720837282%_)
                                            (_%__kont4010440105%_
                                             _%hd3720737279%_
                                             _%hd3718437359%_
                                             _%hd3707737760%_
                                             _%hd3707437750%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706837214%_)))
                            (let () (declare (not safe)) (_%g3706837214%_)))))
                    (let () (declare (not safe)) (_%g3706837214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706837214%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706837214%_)))))))
                      (if (gx#stx-null? _%tl3707837763%_)
                          (_%__kont4009840099%_
                           _%hd3707737760%_
                           _%hd3707437750%_)
                          (let () (declare (not safe)) (_%g3706837214%_)))))
              (if (gx#stx-pair? _%tl3707837763%_)
                  (let ((_%e3714437524%_ (gx#syntax-e _%tl3707837763%_)))
                    (let ((_%tl3714637531%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3714437524%_)))
                          (_%hd3714537528%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3714437524%_))))
                      (if (gx#stx-null? _%tl3714637531%_)
                          (_%__kont4009640097%_
                           _%hd3714537528%_
                           _%hd3707737760%_)
                          (if (gx#identifier? _%hd3714537528%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40458_|
                                   _%hd3714537528%_)
                                  (if (gx#stx-pair? _%tl3714637531%_)
                                      (let ((_%e3716737424%_
                                             (gx#syntax-e _%tl3714637531%_)))
                                        (let ((_%tl3716937431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3716737424%_)))
                                              (_%hd3716837428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3716737424%_))))
                                          (if (gx#stx-null? _%tl3716937431%_)
                                              (_%__kont4010040101%_
                                               _%hd3716837428%_
                                               _%hd3707737760%_
                                               _%hd3707437750%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706837214%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706837214%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706837214%_)))
                              (if (gx#stx-datum? _%hd3714537528%_)
                                  (let ((_%e3718237351%_
                                         (gx#stx-e _%hd3714537528%_)))
                                    (if (equal? _%e3718237351%_ '::)
                                        (if (gx#stx-pair? _%tl3714637531%_)
                                            (let ((_%e3718337355%_
                                                   (gx#syntax-e
                                                    _%tl3714637531%_)))
                                              (let ((_%tl3718537362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3718337355%_)))
                                                    (_%hd3718437359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3718337355%_))))
                                                (if (gx#stx-null?
                                                     _%tl3718537362%_)
                                                    (_%__kont4010240103%_
                                                     _%hd3718437359%_
                                                     _%hd3707737760%_
                                                     _%hd3707437750%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3718537362%_)
                                                        (let ((_%e3720337265%_
                                                               (gx#syntax-e
                                                                _%tl3718537362%_)))
                                                          (let ((_%tl3720537272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3720337265%_)))
                        (_%hd3720437269%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3720337265%_))))
                    (if (gx#identifier? _%hd3720437269%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40459_|
                             _%hd3720437269%_)
                            (if (gx#stx-pair? _%tl3720537272%_)
                                (let ((_%e3720637275%_
                                       (gx#syntax-e _%tl3720537272%_)))
                                  (let ((_%tl3720837282%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3720637275%_)))
                                        (_%hd3720737279%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3720637275%_))))
                                    (if (gx#stx-null? _%tl3720837282%_)
                                        (_%__kont4010440105%_
                                         _%hd3720737279%_
                                         _%hd3718437359%_
                                         _%hd3707737760%_
                                         _%hd3707437750%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706837214%_)))
                            (let () (declare (not safe)) (_%g3706837214%_)))
                        (let () (declare (not safe)) (_%g3706837214%_)))))
                (let () (declare (not safe)) (_%g3706837214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706837214%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706837214%_)))))))
                  (if (gx#stx-null? _%tl3707837763%_)
                      (_%__kont4009840099%_ _%hd3707737760%_ _%hd3707437750%_)
                      (let () (declare (not safe)) (_%g3706837214%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3707837763%_)
                                              (let ((_%e3714437524%_
                                                     (gx#syntax-e
                                                      _%tl3707837763%_)))
                                                (let ((_%tl3714637531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3714437524%_)))
                                                      (_%hd3714537528%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3714437524%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3714637531%_)
                                                      (_%__kont4009640097%_
                                                       _%hd3714537528%_
                                                       _%hd3707737760%_)
                                                      (if (gx#identifier?
                                                           _%hd3714537528%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40458_|
                                                               _%hd3714537528%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3714637531%_)
                          (let ((_%e3716737424%_
                                 (gx#syntax-e _%tl3714637531%_)))
                            (let ((_%tl3716937431%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3716737424%_)))
                                  (_%hd3716837428%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3716737424%_))))
                              (if (gx#stx-null? _%tl3716937431%_)
                                  (_%__kont4010040101%_
                                   _%hd3716837428%_
                                   _%hd3707737760%_
                                   _%hd3707437750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706837214%_)))))
                          (let () (declare (not safe)) (_%g3706837214%_)))
                      (let () (declare (not safe)) (_%g3706837214%_)))
                  (if (gx#stx-datum? _%hd3714537528%_)
                      (let ((_%e3718237351%_ (gx#stx-e _%hd3714537528%_)))
                        (if (equal? _%e3718237351%_ '::)
                            (if (gx#stx-pair? _%tl3714637531%_)
                                (let ((_%e3718337355%_
                                       (gx#syntax-e _%tl3714637531%_)))
                                  (let ((_%tl3718537362%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3718337355%_)))
                                        (_%hd3718437359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3718337355%_))))
                                    (if (gx#stx-null? _%tl3718537362%_)
                                        (_%__kont4010240103%_
                                         _%hd3718437359%_
                                         _%hd3707737760%_
                                         _%hd3707437750%_)
                                        (if (gx#stx-pair? _%tl3718537362%_)
                                            (let ((_%e3720337265%_
                                                   (gx#syntax-e
                                                    _%tl3718537362%_)))
                                              (let ((_%tl3720537272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3720337265%_)))
                                                    (_%hd3720437269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3720337265%_))))
                                                (if (gx#identifier?
                                                     _%hd3720437269%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40459_|
                                                         _%hd3720437269%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3720537272%_)
                                                            (let ((_%e3720637275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3720537272%_)))
                      (let ((_%tl3720837282%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3720637275%_)))
                            (_%hd3720737279%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3720637275%_))))
                        (if (gx#stx-null? _%tl3720837282%_)
                            (_%__kont4010440105%_
                             _%hd3720737279%_
                             _%hd3718437359%_
                             _%hd3707737760%_
                             _%hd3707437750%_)
                            (let () (declare (not safe)) (_%g3706837214%_)))))
                    (let () (declare (not safe)) (_%g3706837214%_)))
                (let () (declare (not safe)) (_%g3706837214%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706837214%_)))
                            (let () (declare (not safe)) (_%g3706837214%_))))
                      (let () (declare (not safe)) (_%g3706837214%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3707837763%_)
                                                  (_%__kont4009840099%_
                                                   _%hd3707737760%_
                                                   _%hd3707437750%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706837214%_)))))))
                                  (if (gx#stx-pair? _%tl3707837763%_)
                                      (let ((_%e3714437524%_
                                             (gx#syntax-e _%tl3707837763%_)))
                                        (let ((_%tl3714637531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3714437524%_)))
                                              (_%hd3714537528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3714437524%_))))
                                          (if (gx#stx-null? _%tl3714637531%_)
                                              (_%__kont4009640097%_
                                               _%hd3714537528%_
                                               _%hd3707737760%_)
                                              (if (gx#identifier?
                                                   _%hd3714537528%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40458_|
                                                       _%hd3714537528%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3714637531%_)
                                                          (let ((_%e3716737424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3714637531%_)))
                    (let ((_%tl3716937431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3716737424%_)))
                          (_%hd3716837428%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3716737424%_))))
                      (if (gx#stx-null? _%tl3716937431%_)
                          (_%__kont4010040101%_
                           _%hd3716837428%_
                           _%hd3707737760%_
                           _%hd3707437750%_)
                          (let () (declare (not safe)) (_%g3706837214%_)))))
                  (let () (declare (not safe)) (_%g3706837214%_)))
              (let () (declare (not safe)) (_%g3706837214%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3714537528%_)
                                                      (let ((_%e3718237351%_
                                                             (gx#stx-e
                                                              _%hd3714537528%_)))
                                                        (if (equal? _%e3718237351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3714637531%_)
                        (let ((_%e3718337355%_ (gx#syntax-e _%tl3714637531%_)))
                          (let ((_%tl3718537362%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3718337355%_)))
                                (_%hd3718437359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3718337355%_))))
                            (if (gx#stx-null? _%tl3718537362%_)
                                (_%__kont4010240103%_
                                 _%hd3718437359%_
                                 _%hd3707737760%_
                                 _%hd3707437750%_)
                                (if (gx#stx-pair? _%tl3718537362%_)
                                    (let ((_%e3720337265%_
                                           (gx#syntax-e _%tl3718537362%_)))
                                      (let ((_%tl3720537272%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3720337265%_)))
                                            (_%hd3720437269%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3720337265%_))))
                                        (if (gx#identifier? _%hd3720437269%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40459_|
                                                 _%hd3720437269%_)
                                                (if (gx#stx-pair?
                                                     _%tl3720537272%_)
                                                    (let ((_%e3720637275%_
                                                           (gx#syntax-e
                                                            _%tl3720537272%_)))
                                                      (let ((_%tl3720837282%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3720637275%_)))
                    (_%hd3720737279%_
                     (let () (declare (not safe)) (##car _%e3720637275%_))))
                (if (gx#stx-null? _%tl3720837282%_)
                    (_%__kont4010440105%_
                     _%hd3720737279%_
                     _%hd3718437359%_
                     _%hd3707737760%_
                     _%hd3707437750%_)
                    (let () (declare (not safe)) (_%g3706837214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706837214%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706837214%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706837214%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706837214%_))))))
                        (let () (declare (not safe)) (_%g3706837214%_)))
                    (let () (declare (not safe)) (_%g3706837214%_))))
              (let () (declare (not safe)) (_%g3706837214%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3707837763%_)
                                          (_%__kont4009840099%_
                                           _%hd3707737760%_
                                           _%hd3707437750%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706837214%_)))))))
                          (let () (declare (not safe)) (_%g3706837214%_)))))
                  (let () (declare (not safe)) (_%g3706837214%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37853%_)
        (let* ((_%__stx4035140352%_ _%$stx37853%_)
               (_%g3785837892%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4035140352%_))))
          (let ((_%__kont4035440355%_
                 (lambda (_%g3786037996%_ _%g3786137998%_ _%g3786237999%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3786237999%_
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
                                       (cons _%g3786137998%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3786037996%_ '()))
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
                (_%__kont4035640357%_
                 (lambda (_%g3787537929%_ _%g3787637931%_ _%g3787737932%_)
                   (cons _%g3787737932%_
                         (cons _%g3787637931%_
                               (cons _%g3787537929%_
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
            (let ((_%__match4038440385%_
                   (lambda (_%e3786337956%_
                            _%hd3786437960%_
                            _%tl3786537963%_
                            _%e3786637966%_
                            _%hd3786737970%_
                            _%tl3786837973%_
                            _%e3786937976%_
                            _%hd3787037980%_
                            _%tl3787137983%_
                            _%e3787237986%_
                            _%hd3787337990%_
                            _%tl3787437993%_)
                     (let ((_%g3786037996%_ _%hd3787337990%_)
                           (_%g3786137998%_ _%hd3787037980%_)
                           (_%g3786237999%_ _%hd3786737970%_))
                       (if (gx#identifier? _%g3786237999%_)
                           (_%__kont4035440355%_
                            _%g3786037996%_
                            _%g3786137998%_
                            _%g3786237999%_)
                           (let () (declare (not safe)) (_%g3785837892%_)))))))
              (if (gx#stx-pair? _%__stx4035140352%_)
                  (let ((_%e3786337956%_ (gx#syntax-e _%__stx4035140352%_)))
                    (let ((_%tl3786537963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3786337956%_)))
                          (_%hd3786437960%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3786337956%_))))
                      (if (gx#stx-pair? _%tl3786537963%_)
                          (let ((_%e3786637966%_
                                 (gx#syntax-e _%tl3786537963%_)))
                            (let ((_%tl3786837973%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3786637966%_)))
                                  (_%hd3786737970%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3786637966%_))))
                              (if (gx#stx-pair? _%tl3786837973%_)
                                  (let ((_%e3786937976%_
                                         (gx#syntax-e _%tl3786837973%_)))
                                    (let ((_%tl3787137983%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3786937976%_)))
                                          (_%hd3787037980%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3786937976%_))))
                                      (if (gx#stx-pair? _%tl3787137983%_)
                                          (let ((_%e3787237986%_
                                                 (gx#syntax-e
                                                  _%tl3787137983%_)))
                                            (let ((_%tl3787437993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3787237986%_)))
                                                  (_%hd3787337990%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3787237986%_))))
                                              (if (gx#stx-null?
                                                   _%tl3787437993%_)
                                                  (_%__match4038440385%_
                                                   _%e3786337956%_
                                                   _%hd3786437960%_
                                                   _%tl3786537963%_
                                                   _%e3786637966%_
                                                   _%hd3786737970%_
                                                   _%tl3786837973%_
                                                   _%e3786937976%_
                                                   _%hd3787037980%_
                                                   _%tl3787137983%_
                                                   _%e3787237986%_
                                                   _%hd3787337990%_
                                                   _%tl3787437993%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3785837892%_)))))
                                          (if (gx#stx-null? _%tl3787137983%_)
                                              (_%__kont4035640357%_
                                               _%hd3787037980%_
                                               _%hd3786737970%_
                                               _%hd3786437960%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3785837892%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3785837892%_)))))
                          (let () (declare (not safe)) (_%g3785837892%_)))))
                  (let () (declare (not safe)) (_%g3785837892%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx38021%_)
        (let* ((_%g3802538040%_
                (lambda (_%g3802638036%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3802638036%_)))
               (_%g3802438083%_
                (lambda (_%g3802638044%_)
                  (if (gx#stx-pair? _%g3802638044%_)
                      (let ((_%e3802938047%_ (gx#syntax-e _%g3802638044%_)))
                        (let ((_%hd3803038051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3802938047%_)))
                              (_%tl3803138054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3802938047%_))))
                          (if (gx#stx-pair? _%tl3803138054%_)
                              (let ((_%e3803238057%_
                                     (gx#syntax-e _%tl3803138054%_)))
                                (let ((_%hd3803338061%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3803238057%_)))
                                      (_%tl3803438064%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3803238057%_))))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'defsyntax-for-match)
                                        (cons _%hd3803338061%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'syntax-rules)
                                                          _%tl3803438064%_)
                                                    '())))))
                              (_%g3802538040%_ _%g3802638044%_))))
                      (_%g3802538040%_ _%g3802638044%_)))))
          (_%g3802438083%_ _%$stx38021%_))))))
