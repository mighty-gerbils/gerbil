(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40410_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40411_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40412_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40413_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40414_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40415_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40416_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40417_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40418_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40419_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40420_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40421_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40422_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40423_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40424_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40437_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40445_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40446_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40447_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40452_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40453_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40454_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40455_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40456_|
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
      (lambda _%$args35731%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35731%_)))
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
      (lambda (_%stx35728%_)
        (if (gx#identifier? _%stx35728%_)
            (let ((__tmp40409 (gx#syntax-local-value _%stx35728%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40409))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx34030%_ _%match-stx34032%_)
        (letrec ((_%parse134034%_
                  (lambda (_%hd34393%_)
                    (let* ((_%__stx3819738198%_ _%hd34393%_)
                           (_%g3441934561%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3819738198%_))))
                      (let ((_%__kont3820038201%_
                             (lambda (_%g3442135491%_ _%g3442235493%_)
                               (let* ((_%__stx3811738118%_ _%g3442135491%_)
                                      (_%g3551035543%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3811738118%_))))
                                 (let ((_%__kont3812038121%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3442235493%_ '()))))
                                       (_%__kont3812238123%_
                                        (lambda (_%g3551235684%_)
                                          (cons '?:
                                                (cons _%g3442235493%_
                                                      (cons (_%parse134034%_
                                                             _%g3551235684%_)
                                                            '())))))
                                       (_%__kont3812438125%_
                                        (lambda (_%g3551635654%_)
                                          (cons '?:
                                                (cons _%g3442235493%_
                                                      (cons '=>:
                                                            (cons (_%parse134034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3551635654%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3812638127%_
                                        (lambda (_%g3552335605%_
                                                 _%g3552435607%_)
                                          (cons '?:
                                                (cons _%g3442235493%_
                                                      (cons '::
                                                            (cons _%g3552435607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse134034%_ _%g3552335605%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3812838129%_
                                        (lambda ()
                                          (_%parse-error34041%_ _%hd34393%_))))
                                   (let ((_%g3550635695%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3811738118%_)
                                                (let ((_%e3551335674%_
                                                       (gx#syntax-e
                                                        _%__stx3811738118%_)))
                                                  (let ((_%tl3551535681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3551335674%_)))
                                                        (_%hd3551435678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3551335674%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3551535681%_)
                                                        (_%__kont3812238123%_
                                                         _%hd3551435678%_)
                                                        (if (gx#identifier?
                                                             _%hd3551435678%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40410_|
                         _%hd3551435678%_)
                        (if (gx#stx-pair? _%tl3551535681%_)
                            (let ((_%e3552035644%_
                                   (gx#syntax-e _%tl3551535681%_)))
                              (let ((_%tl3552235651%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3552035644%_)))
                                    (_%hd3552135648%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3552035644%_))))
                                (if (gx#stx-null? _%tl3552235651%_)
                                    (_%__kont3812438125%_ _%hd3552135648%_)
                                    (_%__kont3812838129%_))))
                            (_%__kont3812838129%_))
                        (_%__kont3812838129%_))
                    (if (gx#stx-datum? _%hd3551435678%_)
                        (let ((_%e3552835571%_ (gx#stx-e _%hd3551435678%_)))
                          (if (equal? _%e3552835571%_ '::)
                              (if (gx#stx-pair? _%tl3551535681%_)
                                  (let ((_%e3552935575%_
                                         (gx#syntax-e _%tl3551535681%_)))
                                    (let ((_%tl3553135582%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3552935575%_)))
                                          (_%hd3553035579%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3552935575%_))))
                                      (if (gx#stx-pair? _%tl3553135582%_)
                                          (let ((_%e3553235585%_
                                                 (gx#syntax-e
                                                  _%tl3553135582%_)))
                                            (let ((_%tl3553435592%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3553235585%_)))
                                                  (_%hd3553335589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3553235585%_))))
                                              (if (gx#identifier?
                                                   _%hd3553335589%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40411_|
                                                       _%hd3553335589%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3553435592%_)
                                                          (let ((_%e3553535595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3553435592%_)))
                    (let ((_%tl3553735602%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3553535595%_)))
                          (_%hd3553635599%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3553535595%_))))
                      (if (gx#stx-null? _%tl3553735602%_)
                          (_%__kont3812638127%_
                           _%hd3553635599%_
                           _%hd3553035579%_)
                          (_%__kont3812838129%_))))
                  (_%__kont3812838129%_))
              (_%__kont3812838129%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3812838129%_))))
                                          (_%__kont3812838129%_))))
                                  (_%__kont3812838129%_))
                              (_%__kont3812838129%_)))
                        (_%__kont3812838129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3812838129%_)))))
                                     (if (gx#stx-null? _%__stx3811738118%_)
                                         (_%__kont3812038121%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3550635695%_))))))))
                            (_%__kont3820238203%_
                             (lambda (_%g3442935396%_)
                               (let* ((_%__stx3809938100%_ _%g3442935396%_)
                                      (_%g3540835419%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3809938100%_))))
                                 (let ((_%__kont3810238103%_
                                        (lambda (_%g3541035447%_)
                                          (_%parse134034%_ _%g3541035447%_)))
                                       (_%__kont3810438105%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse134034%_
                                                 _%g3442935396%_)))))
                                   (if (gx#stx-pair? _%__stx3809938100%_)
                                       (let ((_%e3541135437%_
                                              (gx#syntax-e
                                               _%__stx3809938100%_)))
                                         (let ((_%tl3541335444%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3541135437%_)))
                                               (_%hd3541235441%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3541135437%_))))
                                           (if (gx#stx-null? _%tl3541335444%_)
                                               (_%__kont3810238103%_
                                                _%hd3541235441%_)
                                               (_%__kont3810438105%_))))
                                       (_%__kont3810438105%_))))))
                            (_%__kont3820438205%_
                             (lambda (_%g3443335311%_)
                               (let* ((_%__stx3808138082%_ _%g3443335311%_)
                                      (_%g3532335334%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3808138082%_))))
                                 (let ((_%__kont3808438085%_
                                        (lambda (_%g3532535362%_)
                                          (_%parse134034%_ _%g3532535362%_)))
                                       (_%__kont3808638087%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse134034%_
                                                 _%g3443335311%_)))))
                                   (if (gx#stx-pair? _%__stx3808138082%_)
                                       (let ((_%e3532635352%_
                                              (gx#syntax-e
                                               _%__stx3808138082%_)))
                                         (let ((_%tl3532835359%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3532635352%_)))
                                               (_%hd3532735356%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3532635352%_))))
                                           (if (gx#stx-null? _%tl3532835359%_)
                                               (_%__kont3808438085%_
                                                _%hd3532735356%_)
                                               (_%__kont3808638087%_))))
                                       (_%__kont3808638087%_))))))
                            (_%__kont3820638207%_
                             (lambda (_%g3443735281%_)
                               (cons 'not:
                                     (cons (_%parse134034%_ _%g3443735281%_)
                                           '()))))
                            (_%__kont3820838209%_
                             (lambda (_%g3444435237%_ _%g3444535239%_)
                               (cons 'cons:
                                     (cons (_%parse134034%_ _%g3444535239%_)
                                           (cons (_%parse134034%_
                                                  _%g3444435237%_)
                                                 '())))))
                            (_%__kont3821038211%_
                             (lambda (_%g3445535181%_
                                      _%g3445635183%_
                                      _%g3445735184%_)
                               (if (gx#stx-null? _%g3445535181%_)
                                   (cons 'cons:
                                         (cons (_%parse134034%_
                                                _%g3445735184%_)
                                               (cons (_%parse134034%_
                                                      _%g3445635183%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse134034%_
                                                _%g3445735184%_)
                                               (cons (_%parse134034%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3445635183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3445535181%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3821238213%_
                             (lambda (_%g3446735133%_)
                               (_%parse-list34036%_ _%g3446735133%_)))
                            (_%__kont3821438215%_
                             (lambda (_%g3447135103%_)
                               (cons 'box:
                                     (cons (_%parse134034%_ _%g3447135103%_)
                                           '()))))
                            (_%__kont3821638217%_
                             (lambda (_%g3447835066%_)
                               (cons 'box:
                                     (cons (_%parse134034%_ _%g3447835066%_)
                                           '()))))
                            (_%__kont3821838219%_
                             (lambda (_%g3448035042%_)
                               (_%parse134034%_ _%g3448035042%_)))
                            (_%__kont3822038221%_
                             (lambda (_%g3448735004%_)
                               (cons 'values:
                                     (cons (_%parse-vector34037%_
                                            _%g3448735004%_)
                                           '()))))
                            (_%__kont3822238223%_
                             (lambda (_%g3449134976%_)
                               (cons 'vector:
                                     (cons (_%parse-vector34037%_
                                            _%g3449134976%_)
                                           '()))))
                            (_%__kont3822438225%_
                             (lambda (_%g3449534937%_)
                               (cons 'vector:
                                     (cons (_%parse-vector34037%_
                                            (foldr (lambda (_%g3495034953%_
                                                            _%g3495134956%_)
                                                     (cons _%g3495034953%_
                                                           _%g3495134956%_))
                                                   '()
                                                   _%g3449534937%_))
                                           '()))))
                            (_%__kont3822838229%_
                             (lambda (_%g3450634885%_ _%g3450734887%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3450734887%_)
                                           (cons (_%parse-vector34037%_
                                                  _%g3450634885%_)
                                                 '())))))
                            (_%__kont3823038231%_
                             (lambda (_%g3451134855%_ _%g3451234857%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3451234857%_)
                                           (cons (_%parse-class-body34039%_
                                                  _%g3451134855%_)
                                                 '())))))
                            (_%__kont3823238233%_
                             (lambda (_%g3451634815%_ _%g3451734817%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3451734817%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3451634815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3823438235%_
                             (lambda (_%g3452434775%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3452434775%_) '()))))
                            (_%__kont3823638237%_
                             (lambda (_%g3453134735%_)
                               (_%parse-qq34040%_ _%g3453134735%_)))
                            (_%__kont3823838239%_
                             (lambda (_%g3453834691%_ _%g3453934693%_)
                               (cons 'apply:
                                     (cons _%g3453934693%_
                                           (cons (_%parse134034%_
                                                  _%g3453834691%_)
                                                 '())))))
                            (_%__kont3824038241%_
                             (lambda (_%g3454934639%_)
                               (_%parse134034%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3454934639%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd34393%_)
                                  (let ((_%$e34650%_
                                         (gx#stx-source _%hd34393%_)))
                                    (if _%$e34650%_
                                        _%$e34650%_
                                        (gx#stx-source _%stx34030%_))))))))
                            (_%__kont3824238243%_
                             (lambda (_%g3455334613%_) (cons 'any: '())))
                            (_%__kont3824438245%_
                             (lambda (_%g3455434597%_)
                               (cons 'var: (cons _%g3455434597%_ '()))))
                            (_%__kont3824638247%_
                             (lambda (_%g3455534579%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3455534579%_) '()))))
                            (_%__kont3824838249%_
                             (lambda () (_%parse-error34041%_ _%hd34393%_))))
                        (let* ((_%g3441734590%_
                                (lambda ()
                                  (let ((_%g3455534579%_ _%__stx3819738198%_))
                                    (if (gx#stx-datum? _%g3455534579%_)
                                        (_%__kont3824638247%_ _%g3455534579%_)
                                        (_%__kont3824838249%_)))))
                               (_%g3441634606%_
                                (lambda ()
                                  (let ((_%g3455434597%_ _%__stx3819738198%_))
                                    (if (and (gx#identifier? _%g3455434597%_)
                                             (not (gx#ellipsis?
                                                   _%g3455434597%_)))
                                        (_%__kont3824438245%_ _%g3455434597%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3441734590%_))))))
                               (_%g3441534622%_
                                (lambda ()
                                  (let ((_%g3455334613%_ _%__stx3819738198%_))
                                    (if (gx#underscore? _%g3455334613%_)
                                        (_%__kont3824238243%_ _%g3455334613%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3441634606%_))))))
                               (_%__match3852438525%_
                                (lambda (_%e3455034629%_
                                         _%hd3455134633%_
                                         _%tl3455234636%_)
                                  (let ((_%g3454934639%_ _%hd3455134633%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3454934639%_)
                                        (_%__kont3824038241%_ _%g3454934639%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3441534622%_))))))
                               (_%__match3845838459%_
                                (lambda (_%e3451834795%_
                                         _%hd3451934799%_
                                         _%tl3452034802%_
                                         _%e3452134805%_
                                         _%hd3452234809%_
                                         _%tl3452334812%_)
                                  (let ((_%g3451634815%_ _%hd3452234809%_)
                                        (_%g3451734817%_ _%hd3451934799%_))
                                    (if (and (gx#identifier? _%g3451734817%_)
                                             (or (gx#free-identifier=?
                                                  _%g3451734817%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3451734817%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3451734817%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3823238233%_
                                         _%g3451634815%_
                                         _%g3451734817%_)
                                        (if (gx#identifier? _%hd3451934799%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40412_|
                                                 _%hd3451934799%_)
                                                (_%__kont3823438235%_
                                                 _%hd3452234809%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40413_|
                                                     _%hd3451934799%_)
                                                    (_%__kont3823638237%_
                                                     _%hd3452234809%_)
                                                    (_%__match3852438525%_
                                                     _%e3451834795%_
                                                     _%hd3451934799%_
                                                     _%tl3452034802%_)))
                                            (_%__match3852438525%_
                                             _%e3451834795%_
                                             _%hd3451934799%_
                                             _%tl3452034802%_))))))
                               (_%__match3844438445%_
                                (lambda (_%e3451334845%_
                                         _%hd3451434849%_
                                         _%tl3451534852%_)
                                  (let ((_%g3451134855%_ _%tl3451534852%_)
                                        (_%g3451234857%_ _%hd3451434849%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3451234857%_))
                                        (_%__kont3823038231%_
                                         _%g3451134855%_
                                         _%g3451234857%_)
                                        (if (gx#stx-pair? _%tl3451534852%_)
                                            (let ((_%e3452134805%_
                                                   (gx#syntax-e
                                                    _%tl3451534852%_)))
                                              (let ((_%tl3452334812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3452134805%_)))
                                                    (_%hd3452234809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3452134805%_))))
                                                (if (gx#stx-null?
                                                     _%tl3452334812%_)
                                                    (_%__match3845838459%_
                                                     _%e3451334845%_
                                                     _%hd3451434849%_
                                                     _%tl3451534852%_
                                                     _%e3452134805%_
                                                     _%hd3452234809%_
                                                     _%tl3452334812%_)
                                                    (if (gx#identifier?
                                                         _%hd3451434849%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40412_|
                                                             _%hd3451434849%_)
                                                            (_%__match3852438525%_
                                                             _%e3451334845%_
                                                             _%hd3451434849%_
                                                             _%tl3451534852%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40413_|
                         _%hd3451434849%_)
                        (_%__match3852438525%_
                         _%e3451334845%_
                         _%hd3451434849%_
                         _%tl3451534852%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40414_|
                             _%hd3451434849%_)
                            (if (gx#stx-pair? _%tl3452334812%_)
                                (let ((_%e3454634681%_
                                       (gx#syntax-e _%tl3452334812%_)))
                                  (let ((_%tl3454834688%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3454634681%_)))
                                        (_%hd3454734685%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3454634681%_))))
                                    (if (gx#stx-null? _%tl3454834688%_)
                                        (_%__kont3823838239%_
                                         _%hd3454734685%_
                                         _%hd3452234809%_)
                                        (_%__match3852438525%_
                                         _%e3451334845%_
                                         _%hd3451434849%_
                                         _%tl3451534852%_))))
                                (_%__match3852438525%_
                                 _%e3451334845%_
                                 _%hd3451434849%_
                                 _%tl3451534852%_))
                            (_%__match3852438525%_
                             _%e3451334845%_
                             _%hd3451434849%_
                             _%tl3451534852%_))))
                (_%__match3852438525%_
                 _%e3451334845%_
                 _%hd3451434849%_
                 _%tl3451534852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3852438525%_
                                             _%e3451334845%_
                                             _%hd3451434849%_
                                             _%tl3451534852%_))))))
                               (_%__match3843838439%_
                                (lambda (_%e3450834875%_
                                         _%hd3450934879%_
                                         _%tl3451034882%_)
                                  (let ((_%g3450634885%_ _%tl3451034882%_)
                                        (_%g3450734887%_ _%hd3450934879%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3450734887%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3822838229%_
                                         _%g3450634885%_
                                         _%g3450734887%_)
                                        (_%__match3844438445%_
                                         _%e3450834875%_
                                         _%hd3450934879%_
                                         _%tl3451034882%_)))))
                               (_%__match3843238433%_
                                (lambda (_%e3449634905%_
                                         _%__splice3822638227%_
                                         _%target3449734909%_
                                         _%tl3449934912%_)
                                  (letrec ((_%loop3450034915%_
                                            (lambda (_%hd3449834919%_
                                                     _%body3450434922%_)
                                              (if (gx#stx-pair?
                                                   _%hd3449834919%_)
                                                  (let ((_%e3450134924%_
                                                         (gx#syntax-e
                                                          _%hd3449834919%_)))
                                                    (let ((_%lp-tl3450334931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3450134924%_)))
                                                          (_%lp-hd3450234928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3450134924%_))))
                                                      (_%loop3450034915%_
                                                       _%lp-tl3450334931%_
                                                       (cons _%lp-hd3450234928%_
                                                             _%body3450434922%_))))
                                                  (let ((_%body3450534934%_
                                                         (reverse _%body3450434922%_)))
                                                    (_%__kont3822438225%_
                                                     _%body3450534934%_))))))
                                    (_%loop3450034915%_
                                     _%target3449734909%_
                                     '()))))
                               (_%g3440734959%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3819738198%_)
                                      (let ((_%e3449634905%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3819738198%_))))
                                        (if (gx#stx-pair/null? _%e3449634905%_)
                                            (let ((_%__splice3822638227%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3449634905%_
                                                    '0)))
                                              (let ((_%tl3449934912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3822638227%_
                                                        '1)))
                                                    (_%target3449734909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3822638227%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3449934912%_)
                                                    (_%__match3843238433%_
                                                     _%e3449634905%_
                                                     _%__splice3822638227%_
                                                     _%target3449734909%_
                                                     _%tl3449934912%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3441534622%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3441534622%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3441534622%_)))))
                               (_%g3440335076%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3819738198%_)
                                      (let ((_%e3447935062%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3819738198%_))))
                                        (_%__kont3821638217%_ _%e3447935062%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3440734959%_)))))
                               (_%__match3828638287%_
                                (lambda (_%e3443435301%_
                                         _%hd3443535305%_
                                         _%tl3443635308%_)
                                  (let ((_%g3443335311%_ _%tl3443635308%_))
                                    (if (gx#stx-list? _%g3443335311%_)
                                        (_%__kont3820438205%_ _%g3443335311%_)
                                        (_%__match3843838439%_
                                         _%e3443435301%_
                                         _%hd3443535305%_
                                         _%tl3443635308%_)))))
                               (_%__match3827638277%_
                                (lambda (_%e3443035386%_
                                         _%hd3443135390%_
                                         _%tl3443235393%_)
                                  (let ((_%g3442935396%_ _%tl3443235393%_))
                                    (if (gx#stx-list? _%g3442935396%_)
                                        (_%__kont3820238203%_ _%g3442935396%_)
                                        (_%__match3843838439%_
                                         _%e3443035386%_
                                         _%hd3443135390%_
                                         _%tl3443235393%_))))))
                          (if (gx#stx-pair? _%__stx3819738198%_)
                              (let ((_%e3442335471%_
                                     (gx#syntax-e _%__stx3819738198%_)))
                                (let ((_%tl3442535478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3442335471%_)))
                                      (_%hd3442435475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3442335471%_))))
                                  (if (gx#identifier? _%hd3442435475%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40415_|
                                           _%hd3442435475%_)
                                          (if (gx#stx-pair? _%tl3442535478%_)
                                              (let ((_%e3442635481%_
                                                     (gx#syntax-e
                                                      _%tl3442535478%_)))
                                                (let ((_%tl3442835488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3442635481%_)))
                                                      (_%hd3442735485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3442635481%_))))
                                                  (_%__kont3820038201%_
                                                   _%tl3442835488%_
                                                   _%hd3442735485%_)))
                                              (_%__match3843838439%_
                                               _%e3442335471%_
                                               _%hd3442435475%_
                                               _%tl3442535478%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40416_|
                                               _%hd3442435475%_)
                                              (_%__match3827638277%_
                                               _%e3442335471%_
                                               _%hd3442435475%_
                                               _%tl3442535478%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40417_|
                                                   _%hd3442435475%_)
                                                  (_%__match3828638287%_
                                                   _%e3442335471%_
                                                   _%hd3442435475%_
                                                   _%tl3442535478%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40418_|
                                                       _%hd3442435475%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3442535478%_)
                                                          (let ((_%e3444135271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3442535478%_)))
                    (let ((_%tl3444335278%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3444135271%_)))
                          (_%hd3444235275%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3444135271%_))))
                      (if (gx#stx-null? _%tl3444335278%_)
                          (_%__kont3820638207%_ _%hd3444235275%_)
                          (_%__match3843838439%_
                           _%e3442335471%_
                           _%hd3442435475%_
                           _%tl3442535478%_))))
                  (_%__match3843838439%_
                   _%e3442335471%_
                   _%hd3442435475%_
                   _%tl3442535478%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40419_|
                   _%hd3442435475%_)
                  (if (gx#stx-pair? _%tl3442535478%_)
                      (let ((_%e3444935217%_ (gx#syntax-e _%tl3442535478%_)))
                        (let ((_%tl3445135224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3444935217%_)))
                              (_%hd3445035221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3444935217%_))))
                          (if (gx#stx-pair? _%tl3445135224%_)
                              (let ((_%e3445235227%_
                                     (gx#syntax-e _%tl3445135224%_)))
                                (let ((_%tl3445435234%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3445235227%_)))
                                      (_%hd3445335231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3445235227%_))))
                                  (if (gx#stx-null? _%tl3445435234%_)
                                      (_%__kont3820838209%_
                                       _%hd3445335231%_
                                       _%hd3445035221%_)
                                      (_%__match3843838439%_
                                       _%e3442335471%_
                                       _%hd3442435475%_
                                       _%tl3442535478%_))))
                              (_%__match3843838439%_
                               _%e3442335471%_
                               _%hd3442435475%_
                               _%tl3442535478%_))))
                      (_%__match3843838439%_
                       _%e3442335471%_
                       _%hd3442435475%_
                       _%tl3442535478%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40420_|
                       _%hd3442435475%_)
                      (if (gx#stx-pair? _%tl3442535478%_)
                          (let ((_%e3446135161%_
                                 (gx#syntax-e _%tl3442535478%_)))
                            (let ((_%tl3446335168%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3446135161%_)))
                                  (_%hd3446235165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3446135161%_))))
                              (if (gx#stx-pair? _%tl3446335168%_)
                                  (let ((_%e3446435171%_
                                         (gx#syntax-e _%tl3446335168%_)))
                                    (let ((_%tl3446635178%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3446435171%_)))
                                          (_%hd3446535175%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3446435171%_))))
                                      (_%__kont3821038211%_
                                       _%tl3446635178%_
                                       _%hd3446535175%_
                                       _%hd3446235165%_)))
                                  (_%__match3843838439%_
                                   _%e3442335471%_
                                   _%hd3442435475%_
                                   _%tl3442535478%_))))
                          (_%__match3843838439%_
                           _%e3442335471%_
                           _%hd3442435475%_
                           _%tl3442535478%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40421_|
                           _%hd3442435475%_)
                          (_%__kont3821238213%_ _%tl3442535478%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40422_|
                               _%hd3442435475%_)
                              (if (gx#stx-pair? _%tl3442535478%_)
                                  (let ((_%e3447535093%_
                                         (gx#syntax-e _%tl3442535478%_)))
                                    (let ((_%tl3447735100%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3447535093%_)))
                                          (_%hd3447635097%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3447535093%_))))
                                      (if (gx#stx-null? _%tl3447735100%_)
                                          (_%__kont3821438215%_
                                           _%hd3447635097%_)
                                          (_%__match3843838439%_
                                           _%e3442335471%_
                                           _%hd3442435475%_
                                           _%tl3442535478%_))))
                                  (_%__match3843838439%_
                                   _%e3442335471%_
                                   _%hd3442435475%_
                                   _%tl3442535478%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40423_|
                                   _%hd3442435475%_)
                                  (if (gx#stx-pair? _%tl3442535478%_)
                                      (let ((_%e3448435032%_
                                             (gx#syntax-e _%tl3442535478%_)))
                                        (let ((_%tl3448635039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3448435032%_)))
                                              (_%hd3448535036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3448435032%_))))
                                          (if (gx#stx-null? _%tl3448635039%_)
                                              (_%__kont3821838219%_
                                               _%hd3448535036%_)
                                              (_%__kont3822038221%_
                                               _%tl3442535478%_))))
                                      (_%__kont3822038221%_ _%tl3442535478%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40424_|
                                       _%hd3442435475%_)
                                      (_%__kont3822238223%_ _%tl3442535478%_)
                                      (_%__match3843838439%_
                                       _%e3442335471%_
                                       _%hd3442435475%_
                                       _%tl3442535478%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3843838439%_
                                       _%e3442335471%_
                                       _%hd3442435475%_
                                       _%tl3442535478%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3440335076%_))))))))
                 (_%parse-list34036%_
                  (lambda (_%body34216%_)
                    (let* ((_%__stx3852738528%_ _%body34216%_)
                           (_%g3422234251%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3852738528%_))))
                      (let ((_%__kont3853038531%_
                             (lambda (_%g3422434375%_)
                               (_%parse134034%_ _%g3422434375%_)))
                            (_%__kont3853238533%_
                             (lambda (_%g3423234327%_
                                      _%g3423334329%_
                                      _%g3423434330%_)
                               (cons 'splice:
                                     (cons (_%parse134034%_ _%g3423434330%_)
                                           (cons (_%parse-list34036%_
                                                  _%g3423234327%_)
                                                 '())))))
                            (_%__kont3853438535%_
                             (lambda (_%g3424134285%_ _%g3424234287%_)
                               (cons 'cons:
                                     (cons (_%parse134034%_ _%g3424234287%_)
                                           (cons (_%parse-list34036%_
                                                  _%g3424134285%_)
                                                 '())))))
                            (_%__kont3853638537%_
                             (lambda ()
                               (if (gx#stx-null? _%body34216%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body34216%_)
                                       (_%parse-error34041%_ _%body34216%_)
                                       (_%parse134034%_ _%body34216%_))))))
                        (let* ((_%__match3857638577%_
                                (lambda (_%e3424334275%_
                                         _%hd3424434279%_
                                         _%tl3424534282%_)
                                  (let ((_%g3424134285%_ _%tl3424534282%_)
                                        (_%g3424234287%_ _%hd3424434279%_))
                                    (if (gx#ellipsis? _%g3424234287%_)
                                        (_%__kont3853638537%_)
                                        (_%__kont3853438535%_
                                         _%g3424134285%_
                                         _%g3424234287%_)))))
                               (_%__match3857038571%_
                                (lambda (_%e3423534307%_
                                         _%hd3423634311%_
                                         _%tl3423734314%_
                                         _%e3423834317%_
                                         _%hd3423934321%_
                                         _%tl3424034324%_)
                                  (let ((_%g3423234327%_ _%tl3424034324%_)
                                        (_%g3423334329%_ _%hd3423934321%_)
                                        (_%g3423434330%_ _%hd3423634311%_))
                                    (if (gx#ellipsis? _%g3423334329%_)
                                        (_%__kont3853238533%_
                                         _%g3423234327%_
                                         _%g3423334329%_
                                         _%g3423434330%_)
                                        (_%__match3857638577%_
                                         _%e3423534307%_
                                         _%hd3423634311%_
                                         _%tl3423734314%_))))))
                          (if (gx#stx-pair? _%__stx3852738528%_)
                              (let ((_%e3422534351%_
                                     (gx#syntax-e _%__stx3852738528%_)))
                                (let ((_%tl3422734358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3422534351%_)))
                                      (_%hd3422634355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3422534351%_))))
                                  (if (gx#stx-datum? _%hd3422634355%_)
                                      (let ((_%e3422834361%_
                                             (gx#stx-e _%hd3422634355%_)))
                                        (if (equal? _%e3422834361%_ '::)
                                            (if (gx#stx-pair? _%tl3422734358%_)
                                                (let ((_%e3422934365%_
                                                       (gx#syntax-e
                                                        _%tl3422734358%_)))
                                                  (let ((_%tl3423134372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3422934365%_)))
                                                        (_%hd3423034369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3422934365%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3423134372%_)
                                                        (_%__kont3853038531%_
                                                         _%hd3423034369%_)
                                                        (_%__match3857038571%_
                                                         _%e3422534351%_
                                                         _%hd3422634355%_
                                                         _%tl3422734358%_
                                                         _%e3422934365%_
                                                         _%hd3423034369%_
                                                         _%tl3423134372%_))))
                                                (_%__match3857638577%_
                                                 _%e3422534351%_
                                                 _%hd3422634355%_
                                                 _%tl3422734358%_))
                                            (if (gx#stx-pair? _%tl3422734358%_)
                                                (let ((_%e3423834317%_
                                                       (gx#syntax-e
                                                        _%tl3422734358%_)))
                                                  (let ((_%tl3424034324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3423834317%_)))
                                                        (_%hd3423934321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3423834317%_))))
                                                    (_%__match3857038571%_
                                                     _%e3422534351%_
                                                     _%hd3422634355%_
                                                     _%tl3422734358%_
                                                     _%e3423834317%_
                                                     _%hd3423934321%_
                                                     _%tl3424034324%_)))
                                                (_%__match3857638577%_
                                                 _%e3422534351%_
                                                 _%hd3422634355%_
                                                 _%tl3422734358%_))))
                                      (if (gx#stx-pair? _%tl3422734358%_)
                                          (let ((_%e3423834317%_
                                                 (gx#syntax-e
                                                  _%tl3422734358%_)))
                                            (let ((_%tl3424034324%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3423834317%_)))
                                                  (_%hd3423934321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3423834317%_))))
                                              (_%__match3857038571%_
                                               _%e3422534351%_
                                               _%hd3422634355%_
                                               _%tl3422734358%_
                                               _%e3423834317%_
                                               _%hd3423934321%_
                                               _%tl3424034324%_)))
                                          (_%__match3857638577%_
                                           _%e3422534351%_
                                           _%hd3422634355%_
                                           _%tl3422734358%_)))))
                              (_%__kont3853638537%_)))))))
                 (_%parse-vector34037%_
                  (lambda (_%body34213%_)
                    (if (_%simple-vector?34038%_ _%body34213%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse134034%_ _%body34213%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list34036%_ _%body34213%_)
                                    '())))))
                 (_%simple-vector?34038%_
                  (lambda (_%body34150%_)
                    (let* ((_%__stx3857938580%_ _%body34150%_)
                           (_%g3415434166%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3857938580%_))))
                      (let ((_%__kont3858238583%_
                             (lambda (_%g3415634194%_ _%g3415734196%_)
                               (if (gx#ellipsis? _%g3415734196%_)
                                   '#f
                                   (_%simple-vector?34038%_ _%g3415634194%_))))
                            (_%__kont3858438585%_
                             (lambda () (gx#stx-null? _%body34150%_))))
                        (if (gx#stx-pair? _%__stx3857938580%_)
                            (let ((_%e3415834184%_
                                   (gx#syntax-e _%__stx3857938580%_)))
                              (let ((_%tl3416034191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3415834184%_)))
                                    (_%hd3415934188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3415834184%_))))
                                (_%__kont3858238583%_
                                 _%tl3416034191%_
                                 _%hd3415934188%_)))
                            (_%__kont3858438585%_))))))
                 (_%parse-class-body34039%_
                  (lambda (_%body34059%_)
                    (let _%recur34062%_ ((_%rest34065%_ _%body34059%_))
                      (let* ((_%__stx3859538596%_ _%rest34065%_)
                             (_%g3406934085%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3859538596%_))))
                        (let ((_%__kont3859838599%_
                               (lambda (_%g3407134123%_
                                        _%g3407234125%_
                                        _%g3407334126%_)
                                 (cons _%g3407334126%_
                                       (cons (_%parse134034%_ _%g3407234125%_)
                                             (_%recur34062%_
                                              _%g3407134123%_)))))
                              (_%__kont3860038601%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest34065%_)
                                     '()
                                     (_%parse-error34041%_ _%rest34065%_)))))
                          (let ((_%__match3861438615%_
                                 (lambda (_%e3407434103%_
                                          _%hd3407534107%_
                                          _%tl3407634110%_
                                          _%e3407734113%_
                                          _%hd3407834117%_
                                          _%tl3407934120%_)
                                   (let ((_%g3407134123%_ _%tl3407934120%_)
                                         (_%g3407234125%_ _%hd3407834117%_)
                                         (_%g3407334126%_ _%hd3407534107%_))
                                     (if (gx#stx-keyword? _%g3407334126%_)
                                         (_%__kont3859838599%_
                                          _%g3407134123%_
                                          _%g3407234125%_
                                          _%g3407334126%_)
                                         (_%__kont3860038601%_))))))
                            (if (gx#stx-pair? _%__stx3859538596%_)
                                (let ((_%e3407434103%_
                                       (gx#syntax-e _%__stx3859538596%_)))
                                  (let ((_%tl3407634110%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3407434103%_)))
                                        (_%hd3407534107%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3407434103%_))))
                                    (if (gx#stx-pair? _%tl3407634110%_)
                                        (let ((_%e3407734113%_
                                               (gx#syntax-e _%tl3407634110%_)))
                                          (let ((_%tl3407934120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3407734113%_)))
                                                (_%hd3407834117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3407734113%_))))
                                            (_%__match3861438615%_
                                             _%e3407434103%_
                                             _%hd3407534107%_
                                             _%tl3407634110%_
                                             _%e3407734113%_
                                             _%hd3407834117%_
                                             _%tl3407934120%_)))
                                        (_%__kont3860038601%_))))
                                (_%__kont3860038601%_))))))))
                 (_%parse-qq34040%_
                  (lambda (_%hd34046%_)
                    (let ((_%g3404834055%_
                           (lambda (_%g3404934051%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3404934051%_))))
                      (_%g3404834055%_ _%hd34046%_))))
                 (_%parse-error34041%_
                  (lambda (_%hd34043%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx34032%_
                               (cons _%match-stx34032%_
                                     (cons _%stx34030%_
                                           (cons _%hd34043%_ '())))
                               (cons _%stx34030%_ (cons _%hd34043%_ '())))))))
          (_%parse134034%_ _%stx34030%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35718%_)
        (let ((_%match-stx35721%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35718%_
           _%match-stx35721%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40425_
        (let ((_g40426_ (let () (declare (not safe)) (##length _g40425_))))
          (cond ((let () (declare (not safe)) (##fx= _g40426_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g40425_))
                ((let () (declare (not safe)) (##fx= _g40426_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g40425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40425_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx34015%_)
        (let ((__tmp40427
               (lambda (_%E34018%_)
                 (with-exception-handler
                  (let ((_%E!34021%_ (current-exception-handler)))
                    (lambda (_%e34024%_)
                      (if (syntax-error? _%e34024%_)
                          (_%E34018%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!34021%_ _%e34024%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx34015%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40427))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32750%_)
        (letrec ((_%loop32753%_
                  (lambda (_%ptree33040%_ _%vars33042%_ _%K33043%_)
                    (let* ((_%__stx3871338714%_ _%ptree33040%_)
                           (_%g3305633166%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3871338714%_))))
                      (let ((_%__kont3871638717%_
                             (lambda (_%g3305833796%_)
                               (let* ((_%__stx3863338634%_ _%g3305833796%_)
                                      (_%g3381333847%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3863338634%_))))
                                 (let ((_%__kont3863638637%_
                                        (lambda (_%g3381533996%_)
                                          (_%loop32753%_
                                           _%g3381533996%_
                                           _%vars33042%_
                                           _%K33043%_)))
                                       (_%__kont3863838639%_
                                        (lambda (_%g3381933965%_)
                                          (_%loop32753%_
                                           _%g3381933965%_
                                           _%vars33042%_
                                           _%K33043%_)))
                                       (_%__kont3864038641%_
                                        (lambda (_%g3382733913%_)
                                          (_%loop32753%_
                                           _%g3382733913%_
                                           _%vars33042%_
                                           _%K33043%_)))
                                       (_%__kont3864238643%_
                                        (lambda ()
                                          (_%K33043%_ _%vars33042%_))))
                                   (if (gx#stx-pair? _%__stx3863338634%_)
                                       (let ((_%e3381633986%_
                                              (gx#syntax-e
                                               _%__stx3863338634%_)))
                                         (let ((_%tl3381833993%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3381633986%_)))
                                               (_%hd3381733990%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3381633986%_))))
                                           (if (gx#stx-null? _%tl3381833993%_)
                                               (_%__kont3863638637%_
                                                _%hd3381733990%_)
                                               (if (gx#stx-datum?
                                                    _%hd3381733990%_)
                                                   (let ((_%e3382333951%_
                                                          (gx#stx-e
                                                           _%hd3381733990%_)))
                                                     (if (equal? _%e3382333951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3381833993%_)
                     (let ((_%e3382433955%_ (gx#syntax-e _%tl3381833993%_)))
                       (let ((_%tl3382633962%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3382433955%_)))
                             (_%hd3382533959%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3382433955%_))))
                         (if (gx#stx-null? _%tl3382633962%_)
                             (_%__kont3863838639%_ _%hd3382533959%_)
                             (_%__kont3864238643%_))))
                     (_%__kont3864238643%_))
                 (if (equal? _%e3382333951%_ '::)
                     (if (gx#stx-pair? _%tl3381833993%_)
                         (let ((_%e3383233879%_
                                (gx#syntax-e _%tl3381833993%_)))
                           (let ((_%tl3383433886%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3383233879%_)))
                                 (_%hd3383333883%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3383233879%_))))
                             (if (gx#stx-pair? _%tl3383433886%_)
                                 (let ((_%e3383533889%_
                                        (gx#syntax-e _%tl3383433886%_)))
                                   (let ((_%tl3383733896%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3383533889%_)))
                                         (_%hd3383633893%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3383533889%_))))
                                     (if (gx#stx-datum? _%hd3383633893%_)
                                         (let ((_%e3383833899%_
                                                (gx#stx-e _%hd3383633893%_)))
                                           (if (equal? _%e3383833899%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3383733896%_)
                                                   (let ((_%e3383933903%_
                                                          (gx#syntax-e
                                                           _%tl3383733896%_)))
                                                     (let ((_%tl3384133910%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3383933903%_)))
                                                           (_%hd3384033907%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3383933903%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3384133910%_)
                                                           (_%__kont3864038641%_
                                                            _%hd3384033907%_)
                                                           (_%__kont3864238643%_))))
                                                   (_%__kont3864238643%_))
                                               (_%__kont3864238643%_)))
                                         (_%__kont3864238643%_))))
                                 (_%__kont3864238643%_))))
                         (_%__kont3864238643%_))
                     (_%__kont3864238643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3864238643%_)))))
                                       (_%__kont3864238643%_))))))
                            (_%__kont3871838719%_
                             (lambda (_%g3306633683%_ _%g3306733685%_)
                               (let* ((_%__stx3861738618%_ _%g3306633683%_)
                                      (_%g3370133713%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3861738618%_))))
                                 (let ((_%__kont3862038621%_
                                        (lambda (_%g3370333741%_
                                                 _%g3370433743%_)
                                          (_%loop32753%_
                                           _%g3370433743%_
                                           _%vars33042%_
                                           (lambda (_%g3375533757%_)
                                             (_%loop32753%_
                                              (cons _%g3306733685%_
                                                    _%g3370333741%_)
                                              _%g3375533757%_
                                              _%K33043%_)))))
                                       (_%__kont3862238623%_
                                        (lambda ()
                                          (_%K33043%_ _%vars33042%_))))
                                   (if (gx#stx-pair? _%__stx3861738618%_)
                                       (let ((_%e3370533731%_
                                              (gx#syntax-e
                                               _%__stx3861738618%_)))
                                         (let ((_%tl3370733738%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3370533731%_)))
                                               (_%hd3370633735%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3370533731%_))))
                                           (_%__kont3862038621%_
                                            _%tl3370733738%_
                                            _%hd3370633735%_)))
                                       (_%__kont3862238623%_))))))
                            (_%__kont3872038721%_
                             (lambda (_%g3307133652%_)
                               (_%loop32753%_
                                _%g3307133652%_
                                _%vars33042%_
                                _%K33043%_)))
                            (_%__kont3872238723%_
                             (lambda (_%g3307933598%_ _%g3308033600%_)
                               (_%loop32753%_
                                _%g3308033600%_
                                _%vars33042%_
                                (lambda (_%g3361533617%_)
                                  (_%loop32753%_
                                   _%g3307933598%_
                                   _%g3361533617%_
                                   _%K33043%_)))))
                            (_%__kont3872438725%_
                             (lambda (_%g3309133534%_ _%g3309233536%_)
                               (_%loop32753%_
                                _%g3309233536%_
                                _%vars33042%_
                                (lambda (_%g3355133553%_)
                                  (_%loop32753%_
                                   _%g3309133534%_
                                   _%g3355133553%_
                                   _%K33043%_)))))
                            (_%__kont3872638727%_
                             (lambda (_%g3310333479%_)
                               (_%loop32753%_
                                _%g3310333479%_
                                _%vars33042%_
                                _%K33043%_)))
                            (_%__kont3872838729%_
                             (lambda (_%g3311133429%_ _%g3311233431%_)
                               (_%loop-vector32755%_
                                _%g3311133429%_
                                _%vars33042%_
                                _%K33043%_)))
                            (_%__kont3873038731%_
                             (lambda (_%g3311933386%_)
                               (_%loop-vector32755%_
                                _%g3311933386%_
                                _%vars33042%_
                                _%K33043%_)))
                            (_%__kont3873238733%_
                             (lambda (_%g3313033329%_)
                               (_%loop-class-list32757%_
                                _%g3313033329%_
                                _%vars33042%_
                                _%K33043%_)))
                            (_%__kont3873438735%_
                             (lambda (_%g3314133270%_ _%g3314233272%_)
                               (_%loop32753%_
                                _%g3314133270%_
                                _%vars33042%_
                                _%K33043%_)))
                            (_%__kont3873638737%_
                             (lambda (_%g3315333208%_)
                               (if (find (lambda (_%g3322333225%_)
                                           (gx#bound-identifier=?
                                            _%g3322333225%_
                                            _%g3315333208%_))
                                         _%vars33042%_)
                                   (_%K33043%_ _%vars33042%_)
                                   (_%K33043%_
                                    (cons _%g3315333208%_ _%vars33042%_)))))
                            (_%__kont3873838739%_
                             (lambda () (_%K33043%_ _%vars33042%_))))
                        (let* ((_%__match3887038871%_
                                (lambda (_%e3311333409%_
                                         _%hd3311433413%_
                                         _%tl3311533416%_
                                         _%e3311633419%_
                                         _%hd3311733423%_
                                         _%tl3311833426%_)
                                  (let ((_%g3311133429%_ _%hd3311733423%_)
                                        (_%g3311233431%_ _%hd3311433413%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3311233431%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3311233431%_))
                                        (_%__kont3872838729%_
                                         _%g3311133429%_
                                         _%g3311233431%_)
                                        (if (gx#stx-datum? _%hd3311433413%_)
                                            (let ((_%e3312333362%_
                                                   (gx#stx-e
                                                    _%hd3311433413%_)))
                                              (if (equal? _%e3312333362%_
                                                          'struct:)
                                                  (_%__kont3873838739%_)
                                                  (if (equal? _%e3312333362%_
                                                              'class:)
                                                      (_%__kont3873838739%_)
                                                      (if (equal? _%e3312333362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3873838739%_)
                  (if (equal? _%e3312333362%_ 'var:)
                      (_%__kont3873638737%_ _%hd3311733423%_)
                      (_%__kont3873838739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3873838739%_))))))
                               (_%__match3876438765%_
                                (lambda (_%e3306833673%_
                                         _%hd3306933677%_
                                         _%tl3307033680%_)
                                  (let ((_%g3306633683%_ _%tl3307033680%_)
                                        (_%g3306733685%_ _%hd3306933677%_))
                                    (if (or (gx#stx-eq? 'and: _%g3306733685%_)
                                            (gx#stx-eq? 'or: _%g3306733685%_))
                                        (_%__kont3871838719%_
                                         _%g3306633683%_
                                         _%g3306733685%_)
                                        (if (gx#stx-datum? _%hd3306933677%_)
                                            (let ((_%e3307533638%_
                                                   (gx#stx-e
                                                    _%hd3306933677%_)))
                                              (if (equal? _%e3307533638%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3307033680%_)
                                                      (let ((_%e3307633642%_
                                                             (gx#syntax-e
                                                              _%tl3307033680%_)))
                                                        (let ((_%tl3307833649%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3307633642%_)))
                      (_%hd3307733646%_
                       (let () (declare (not safe)) (##car _%e3307633642%_))))
                  (if (gx#stx-null? _%tl3307833649%_)
                      (_%__kont3872038721%_ _%hd3307733646%_)
                      (_%__kont3873838739%_))))
              (_%__kont3873838739%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3307533638%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3307033680%_)
                                                          (let ((_%e3308533578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3307033680%_)))
                    (let ((_%tl3308733585%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3308533578%_)))
                          (_%hd3308633582%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3308533578%_))))
                      (if (gx#stx-pair? _%tl3308733585%_)
                          (let ((_%e3308833588%_
                                 (gx#syntax-e _%tl3308733585%_)))
                            (let ((_%tl3309033595%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3308833588%_)))
                                  (_%hd3308933592%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3308833588%_))))
                              (if (gx#stx-null? _%tl3309033595%_)
                                  (_%__kont3872238723%_
                                   _%hd3308933592%_
                                   _%hd3308633582%_)
                                  (_%__kont3873838739%_))))
                          (if (gx#stx-null? _%tl3308733585%_)
                              (_%__match3887038871%_
                               _%e3306833673%_
                               _%hd3306933677%_
                               _%tl3307033680%_
                               _%e3308533578%_
                               _%hd3308633582%_
                               _%tl3308733585%_)
                              (_%__kont3873838739%_)))))
                  (_%__kont3873838739%_))
              (if (equal? _%e3307533638%_ 'splice:)
                  (if (gx#stx-pair? _%tl3307033680%_)
                      (let ((_%e3309733514%_ (gx#syntax-e _%tl3307033680%_)))
                        (let ((_%tl3309933521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3309733514%_)))
                              (_%hd3309833518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3309733514%_))))
                          (if (gx#stx-pair? _%tl3309933521%_)
                              (let ((_%e3310033524%_
                                     (gx#syntax-e _%tl3309933521%_)))
                                (let ((_%tl3310233531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3310033524%_)))
                                      (_%hd3310133528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3310033524%_))))
                                  (if (gx#stx-null? _%tl3310233531%_)
                                      (_%__kont3872438725%_
                                       _%hd3310133528%_
                                       _%hd3309833518%_)
                                      (_%__kont3873838739%_))))
                              (if (gx#stx-null? _%tl3309933521%_)
                                  (_%__match3887038871%_
                                   _%e3306833673%_
                                   _%hd3306933677%_
                                   _%tl3307033680%_
                                   _%e3309733514%_
                                   _%hd3309833518%_
                                   _%tl3309933521%_)
                                  (_%__kont3873838739%_)))))
                      (_%__kont3873838739%_))
                  (if (equal? _%e3307533638%_ 'box:)
                      (if (gx#stx-pair? _%tl3307033680%_)
                          (let ((_%e3310833469%_
                                 (gx#syntax-e _%tl3307033680%_)))
                            (let ((_%tl3311033476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3310833469%_)))
                                  (_%hd3310933473%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3310833469%_))))
                              (if (gx#stx-null? _%tl3311033476%_)
                                  (_%__kont3872638727%_ _%hd3310933473%_)
                                  (_%__kont3873838739%_))))
                          (_%__kont3873838739%_))
                      (if (gx#stx-pair? _%tl3307033680%_)
                          (let ((_%e3311633419%_
                                 (gx#syntax-e _%tl3307033680%_)))
                            (let ((_%tl3311833426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3311633419%_)))
                                  (_%hd3311733423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3311633419%_))))
                              (if (gx#stx-null? _%tl3311833426%_)
                                  (_%__match3887038871%_
                                   _%e3306833673%_
                                   _%hd3306933677%_
                                   _%tl3307033680%_
                                   _%e3311633419%_
                                   _%hd3311733423%_
                                   _%tl3311833426%_)
                                  (if (equal? _%e3307533638%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3311833426%_)
                                          (let ((_%e3312733376%_
                                                 (gx#syntax-e
                                                  _%tl3311833426%_)))
                                            (let ((_%tl3312933383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3312733376%_)))
                                                  (_%hd3312833380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3312733376%_))))
                                              (if (gx#stx-null?
                                                   _%tl3312933383%_)
                                                  (_%__kont3873038731%_
                                                   _%hd3312833380%_)
                                                  (_%__kont3873838739%_))))
                                          (_%__kont3873838739%_))
                                      (if (equal? _%e3307533638%_ 'class:)
                                          (if (gx#stx-pair? _%tl3311833426%_)
                                              (let ((_%e3313833319%_
                                                     (gx#syntax-e
                                                      _%tl3311833426%_)))
                                                (let ((_%tl3314033326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3313833319%_)))
                                                      (_%hd3313933323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3313833319%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3314033326%_)
                                                      (_%__kont3873238733%_
                                                       _%hd3313933323%_)
                                                      (_%__kont3873838739%_))))
                                              (_%__kont3873838739%_))
                                          (if (equal? _%e3307533638%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3311833426%_)
                                                  (let ((_%e3315033260%_
                                                         (gx#syntax-e
                                                          _%tl3311833426%_)))
                                                    (let ((_%tl3315233267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3315033260%_)))
                                                          (_%hd3315133264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3315033260%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3315233267%_)
                                                          (_%__kont3873438735%_
                                                           _%hd3315133264%_
                                                           _%hd3311733423%_)
                                                          (_%__kont3873838739%_))))
                                                  (_%__kont3873838739%_))
                                              (_%__kont3873838739%_)))))))
                          (_%__kont3873838739%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3307033680%_)
                                                (let ((_%e3311633419%_
                                                       (gx#syntax-e
                                                        _%tl3307033680%_)))
                                                  (let ((_%tl3311833426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3311633419%_)))
                                                        (_%hd3311733423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3311633419%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3311833426%_)
                                                        (_%__match3887038871%_
                                                         _%e3306833673%_
                                                         _%hd3306933677%_
                                                         _%tl3307033680%_
                                                         _%e3311633419%_
                                                         _%hd3311733423%_
                                                         _%tl3311833426%_)
                                                        (_%__kont3873838739%_))))
                                                (_%__kont3873838739%_))))))))
                          (if (gx#stx-pair? _%__stx3871338714%_)
                              (let ((_%e3305933772%_
                                     (gx#syntax-e _%__stx3871338714%_)))
                                (let ((_%tl3306133779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3305933772%_)))
                                      (_%hd3306033776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3305933772%_))))
                                  (if (gx#stx-datum? _%hd3306033776%_)
                                      (let ((_%e3306233782%_
                                             (gx#stx-e _%hd3306033776%_)))
                                        (if (equal? _%e3306233782%_ '?:)
                                            (if (gx#stx-pair? _%tl3306133779%_)
                                                (let ((_%e3306333786%_
                                                       (gx#syntax-e
                                                        _%tl3306133779%_)))
                                                  (let ((_%tl3306533793%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3306333786%_)))
                                                        (_%hd3306433790%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3306333786%_))))
                                                    (_%__kont3871638717%_
                                                     _%tl3306533793%_)))
                                                (_%__match3876438765%_
                                                 _%e3305933772%_
                                                 _%hd3306033776%_
                                                 _%tl3306133779%_))
                                            (_%__match3876438765%_
                                             _%e3305933772%_
                                             _%hd3306033776%_
                                             _%tl3306133779%_)))
                                      (_%__match3876438765%_
                                       _%e3305933772%_
                                       _%hd3306033776%_
                                       _%tl3306133779%_))))
                              (_%__kont3873838739%_)))))))
                 (_%loop-vector32755%_
                  (lambda (_%body32916%_ _%vars32918%_ _%K32919%_)
                    (let* ((_%__stx3897138972%_ _%body32916%_)
                           (_%g3292232945%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3897138972%_))))
                      (let ((_%__kont3897438975%_
                             (lambda (_%g3292433022%_)
                               (_%loop-list32756%_
                                _%g3292433022%_
                                _%vars32918%_
                                _%K32919%_)))
                            (_%__kont3897638977%_
                             (lambda (_%g3293232976%_)
                               (_%loop32753%_
                                _%g3293232976%_
                                _%vars32918%_
                                _%K32919%_))))
                        (if (gx#stx-pair? _%__stx3897138972%_)
                            (let ((_%e3292532998%_
                                   (gx#syntax-e _%__stx3897138972%_)))
                              (let ((_%tl3292733005%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3292532998%_)))
                                    (_%hd3292633002%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3292532998%_))))
                                (if (gx#stx-datum? _%hd3292633002%_)
                                    (let ((_%e3292833008%_
                                           (gx#stx-e _%hd3292633002%_)))
                                      (if (equal? _%e3292833008%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3292733005%_)
                                              (let ((_%e3292933012%_
                                                     (gx#syntax-e
                                                      _%tl3292733005%_)))
                                                (let ((_%tl3293133019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3292933012%_)))
                                                      (_%hd3293033016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3292933012%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3293133019%_)
                                                      (_%__kont3897438975%_
                                                       _%hd3293033016%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3292232945%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3292232945%_)))
                                          (if (equal? _%e3292833008%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3292733005%_)
                                                  (let ((_%e3293732966%_
                                                         (gx#syntax-e
                                                          _%tl3292733005%_)))
                                                    (let ((_%tl3293932973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3293732966%_)))
                                                          (_%hd3293832970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3293732966%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3293932973%_)
                                                          (_%__kont3897638977%_
                                                           _%hd3293832970%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3292232945%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3292232945%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3292232945%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3292232945%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3292232945%_)))))))
                 (_%loop-list32756%_
                  (lambda (_%rest32846%_ _%vars32848%_ _%K32849%_)
                    (let* ((_%__stx3902139022%_ _%rest32846%_)
                           (_%g3285232864%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3902139022%_))))
                      (let ((_%__kont3902439025%_
                             (lambda (_%g3285432892%_ _%g3285532894%_)
                               (_%loop32753%_
                                _%g3285532894%_
                                _%vars32848%_
                                (lambda (_%g3290632908%_)
                                  (_%loop-list32756%_
                                   _%g3285432892%_
                                   _%g3290632908%_
                                   _%K32849%_)))))
                            (_%__kont3902639027%_
                             (lambda () (_%K32849%_ _%vars32848%_))))
                        (if (gx#stx-pair? _%__stx3902139022%_)
                            (let ((_%e3285632882%_
                                   (gx#syntax-e _%__stx3902139022%_)))
                              (let ((_%tl3285832889%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3285632882%_)))
                                    (_%hd3285732886%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3285632882%_))))
                                (_%__kont3902439025%_
                                 _%tl3285832889%_
                                 _%hd3285732886%_)))
                            (_%__kont3902639027%_))))))
                 (_%loop-class-list32757%_
                  (lambda (_%rest32759%_ _%vars32761%_ _%K32762%_)
                    (let* ((_%__stx3903739038%_ _%rest32759%_)
                           (_%g3276532780%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3903739038%_))))
                      (let ((_%__kont3904039041%_
                             (lambda (_%g3276732818%_ _%g3276832820%_)
                               (_%loop32753%_
                                _%g3276832820%_
                                _%vars32761%_
                                (lambda (_%g3283632838%_)
                                  (_%loop-class-list32757%_
                                   _%g3276732818%_
                                   _%g3283632838%_
                                   _%K32762%_)))))
                            (_%__kont3904239043%_
                             (lambda () (_%K32762%_ _%vars32761%_))))
                        (if (gx#stx-pair? _%__stx3903739038%_)
                            (let ((_%e3276932798%_
                                   (gx#syntax-e _%__stx3903739038%_)))
                              (let ((_%tl3277132805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3276932798%_)))
                                    (_%hd3277032802%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3276932798%_))))
                                (if (gx#stx-pair? _%tl3277132805%_)
                                    (let ((_%e3277232808%_
                                           (gx#syntax-e _%tl3277132805%_)))
                                      (let ((_%tl3277432815%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3277232808%_)))
                                            (_%hd3277332812%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3277232808%_))))
                                        (_%__kont3904039041%_
                                         _%tl3277432815%_
                                         _%hd3277332812%_)))
                                    (_%__kont3904239043%_))))
                            (_%__kont3904239043%_)))))))
          (_%loop32753%_ _%ptree32750%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29682%_ _%tgt29684%_ _%ptree29685%_ _%K29686%_ _%E29687%_)
        (letrec ((_%generate129689%_
                  (lambda (_%tgt30949%_ _%ptree30951%_ _%K30952%_ _%E30953%_)
                    (let* ((_%g3095530963%_
                            (lambda (_%g3095630959%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3095630959%_)))
                           (_%g3095432746%_
                            (lambda (_%g3095630967%_)
                              (let* ((_%__stx3927339274%_ _%ptree30951%_)
                                     (_%g3099731139%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx3927339274%_))))
                                (let ((_%__kont3927639277%_
                                       (lambda (_%g3099932461%_
                                                _%g3100032463%_)
                                         (let* ((_%__stx3919139192%_
                                                 _%g3099932461%_)
                                                (_%g3248032515%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3919139192%_))))
                                           (let ((_%__kont3919439195%_
                                                  (lambda ()
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _%g3100032463%_
                                    (cons _%g3095630967%_ '())))
                        (cons _%K30952%_ (cons _%E30953%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3919639197%_
                                                  (lambda (_%g3248232716%_)
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _%g3100032463%_
                                    (cons _%g3095630967%_ '())))
                        (cons (_%generate129689%_
                               _%tgt30949%_
                               _%g3248232716%_
                               _%K30952%_
                               _%E30953%_)
                              (cons _%E30953%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3919839199%_
                                                  (lambda (_%g3248632654%_)
                                                    (let* ((_%g3266832676%_
                                                            (lambda (_%g3266932672%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g3266932672%_)))
                                                           (_%g3266732695%_
                                                            (lambda (_%g3266932680%_)
                                                              (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons _%g3266932680%_
                                              (cons (cons _%g3100032463%_
                                                          (cons _%g3095630967%_
                                                                '()))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons _%g3266932680%_
                                                    (cons (_%generate129689%_
                                                           _%g3266932680%_
                                                           _%g3248632654%_
                                                           _%K30952%_
                                                           _%E30953%_)
                                                          (cons _%E30953%_
                                                                '()))))
                                        '()))))))
              (_%g3266732695%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3920039201%_
                                                  (lambda (_%g3249432570%_
                                                           _%g3249532572%_)
                                                    (let* ((_%g3259232600%_
                                                            (lambda (_%g3259332596%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g3259332596%_)))
                                                           (_%g3259132619%_
                                                            (lambda (_%g3259332604%_)
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '?)
                                        (cons _%g3100032463%_
                                              (cons _%g3095630967%_ '())))
                                  (cons (cons 'let
                                              (cons (cons (cons _%g3259332604%_
                                                                (cons (cons _%g3249532572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%g3095630967%_ '()))
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_%generate129689%_
                                                           _%g3259332604%_
                                                           _%g3249432570%_
                                                           _%K30952%_
                                                           _%E30953%_)
                                                          '())))
                                        (cons _%E30953%_ '())))))))
              (_%g3259132619%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_%g3247732727%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%__stx3919139192%_)
                                                          (let ((_%e3248332706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%__stx3919139192%_)))
                    (let ((_%tl3248532713%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3248332706%_)))
                          (_%hd3248432710%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3248332706%_))))
                      (if (gx#stx-null? _%tl3248532713%_)
                          (_%__kont3919639197%_ _%hd3248432710%_)
                          (if (gx#stx-datum? _%hd3248432710%_)
                              (let ((_%e3249032640%_
                                     (gx#stx-e _%hd3248432710%_)))
                                (if (equal? _%e3249032640%_ '=>:)
                                    (if (gx#stx-pair? _%tl3248532713%_)
                                        (let ((_%e3249132644%_
                                               (gx#syntax-e _%tl3248532713%_)))
                                          (let ((_%tl3249332651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3249132644%_)))
                                                (_%hd3249232648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3249132644%_))))
                                            (if (gx#stx-null? _%tl3249332651%_)
                                                (_%__kont3919839199%_
                                                 _%hd3249232648%_)
                                                (_%g3248032515%_))))
                                        (_%g3248032515%_))
                                    (if (equal? _%e3249032640%_ '::)
                                        (if (gx#stx-pair? _%tl3248532713%_)
                                            (let ((_%e3250032536%_
                                                   (gx#syntax-e
                                                    _%tl3248532713%_)))
                                              (let ((_%tl3250232543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3250032536%_)))
                                                    (_%hd3250132540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3250032536%_))))
                                                (if (gx#stx-pair?
                                                     _%tl3250232543%_)
                                                    (let ((_%e3250332546%_
                                                           (gx#syntax-e
                                                            _%tl3250232543%_)))
                                                      (let ((_%tl3250532553%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3250332546%_)))
                    (_%hd3250432550%_
                     (let () (declare (not safe)) (##car _%e3250332546%_))))
                (if (gx#stx-datum? _%hd3250432550%_)
                    (let ((_%e3250632556%_ (gx#stx-e _%hd3250432550%_)))
                      (if (equal? _%e3250632556%_ '=>:)
                          (if (gx#stx-pair? _%tl3250532553%_)
                              (let ((_%e3250732560%_
                                     (gx#syntax-e _%tl3250532553%_)))
                                (let ((_%tl3250932567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3250732560%_)))
                                      (_%hd3250832564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3250732560%_))))
                                  (if (gx#stx-null? _%tl3250932567%_)
                                      (_%__kont3920039201%_
                                       _%hd3250832564%_
                                       _%hd3250132540%_)
                                      (_%g3248032515%_))))
                              (_%g3248032515%_))
                          (_%g3248032515%_)))
                    (_%g3248032515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3248032515%_))))
                                            (_%g3248032515%_))
                                        (_%g3248032515%_))))
                              (_%g3248032515%_)))))
                  (_%g3248032515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%__stx3919139192%_)
                                                   (_%__kont3919439195%_)
                                                   (_%g3247732727%_)))))))
                                      (_%__kont3927839279%_
                                       (lambda (_%g3100832358%_)
                                         (let* ((_%__stx3917539176%_
                                                 _%g3100832358%_)
                                                (_%g3237132383%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3917539176%_))))
                                           (let ((_%__kont3917839179%_
                                                  (lambda (_%g3237332411%_
                                                           _%g3237432413%_)
                                                    (_%generate129689%_
                                                     _%tgt30949%_
                                                     _%g3237432413%_
                                                     (_%generate129689%_
                                                      _%tgt30949%_
                                                      (cons 'and:
                                                            _%g3237332411%_)
                                                      _%K30952%_
                                                      _%E30953%_)
                                                     _%E30953%_)))
                                                 (_%__kont3918039181%_
                                                  (lambda () _%K30952%_)))
                                             (if (gx#stx-pair?
                                                  _%__stx3917539176%_)
                                                 (let ((_%e3237532401%_
                                                        (gx#syntax-e
                                                         _%__stx3917539176%_)))
                                                   (let ((_%tl3237732408%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3237532401%_)))
                                                         (_%hd3237632405%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3237532401%_))))
                                                     (_%__kont3917839179%_
                                                      _%tl3237732408%_
                                                      _%hd3237632405%_)))
                                                 (_%__kont3918039181%_))))))
                                      (_%__kont3928039281%_
                                       (lambda (_%g3101332265%_)
                                         (let* ((_%__stx3915939160%_
                                                 _%g3101332265%_)
                                                (_%g3227832290%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3915939160%_))))
                                           (let ((_%__kont3916239163%_
                                                  (lambda (_%g3228032318%_
                                                           _%g3228132320%_)
                                                    (_%generate129689%_
                                                     _%tgt30949%_
                                                     _%g3228132320%_
                                                     _%K30952%_
                                                     (_%generate129689%_
                                                      _%tgt30949%_
                                                      (cons 'or:
                                                            _%g3228032318%_)
                                                      _%K30952%_
                                                      _%E30953%_))))
                                                 (_%__kont3916439165%_
                                                  (lambda () _%E30953%_)))
                                             (if (gx#stx-pair?
                                                  _%__stx3915939160%_)
                                                 (let ((_%e3228232308%_
                                                        (gx#syntax-e
                                                         _%__stx3915939160%_)))
                                                   (let ((_%tl3228432315%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3228232308%_)))
                                                         (_%hd3228332312%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3228232308%_))))
                                                     (_%__kont3916239163%_
                                                      _%tl3228432315%_
                                                      _%hd3228332312%_)))
                                                 (_%__kont3916439165%_))))))
                                      (_%__kont3928239283%_
                                       (lambda (_%g3101832230%_)
                                         (_%generate129689%_
                                          _%tgt30949%_
                                          _%g3101832230%_
                                          _%E30953%_
                                          _%K30952%_)))
                                      (_%__kont3928439285%_
                                       (lambda (_%g3102632104%_
                                                _%g3102732106%_)
                                         (let* ((_%g3212332138%_
                                                 (lambda (_%g3212432134%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3212432134%_)))
                                                (_%g3212232195%_
                                                 (lambda (_%g3212432142%_)
                                                   (if (gx#stx-pair?
                                                        _%g3212432142%_)
                                                       (let ((_%e3212732145%_
                                                              (gx#syntax-e
                                                               _%g3212432142%_)))
                                                         (let ((_%hd3212832149%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e3212732145%_)))
                       (_%tl3212932152%_
                        (let () (declare (not safe)) (##cdr _%e3212732145%_))))
                   (if (gx#stx-pair? _%tl3212932152%_)
                       (let ((_%e3213032155%_ (gx#syntax-e _%tl3212932152%_)))
                         (let ((_%hd3213132159%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3213032155%_)))
                               (_%tl3213232162%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3213032155%_))))
                           (if (gx#stx-null? _%tl3213232162%_)
                               (cons 'if
                                     (cons (cons (gx#datum->syntax '#f 'pair?)
                                                 (cons _%g3095630967%_ '()))
                                           (cons (let ((_%hd-pat32183%_
                                                        (gx#stx-e
                                                         _%g3102732106%_))
                                                       (_%tl-pat32185%_
                                                        (gx#stx-e
                                                         _%g3102632104%_)))
                                                   (if (and (equal? _%hd-pat32183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '(any:))
                    (equal? _%tl-pat32185%_ '(any:)))
               _%K30952%_
               (if (equal? _%tl-pat32185%_ '(any:))
                   (cons 'let
                         (cons (cons (cons _%hd3212832149%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##car)
                                                       (cons _%g3095630967%_
                                                             '()))
                                                 '()))
                                     '())
                               (cons (_%generate129689%_
                                      _%hd3212832149%_
                                      _%g3102732106%_
                                      _%K30952%_
                                      _%E30953%_)
                                     '())))
                   (if (equal? _%hd-pat32183%_ '(any:))
                       (cons 'let
                             (cons (cons (cons _%hd3213132159%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _%g3095630967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (_%generate129689%_
                                          _%hd3213132159%_
                                          _%g3102632104%_
                                          _%K30952%_
                                          _%E30953%_)
                                         '())))
                       (cons 'let
                             (cons (cons (cons _%hd3212832149%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _%g3095630967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons _%hd3213132159%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3095630967%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (_%generate129689%_
                                          _%hd3212832149%_
                                          _%g3102732106%_
                                          (_%generate129689%_
                                           _%hd3213132159%_
                                           _%g3102632104%_
                                           _%K30952%_
                                           _%E30953%_)
                                          _%E30953%_)
                                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%E30953%_ '()))))
                               (_%g3212332138%_ _%g3212432142%_))))
                       (_%g3212332138%_ _%g3212432142%_))))
               (_%g3212332138%_ _%g3212432142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g3212232195%_
                                            (list (gx#genident 'hd)
                                                  (gx#genident 'tl))))))
                                      (_%__kont3928639287%_
                                       (lambda ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'null?)
                                                           (cons _%g3095630967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%K30952%_
                                                           (cons _%E30953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__kont3928839289%_
                                       (lambda (_%g3104232020%_
                                                _%g3104332022%_)
                                         (_%generate-splice29691%_
                                          _%tgt30949%_
                                          _%g3104332022%_
                                          _%g3104232020%_
                                          _%K30952%_
                                          _%E30953%_)))
                                      (_%__kont3929039291%_
                                       (lambda (_%g3105431934%_)
                                         (let* ((_%g3194831956%_
                                                 (lambda (_%g3194931952%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3194931952%_)))
                                                (_%g3194731975%_
                                                 (lambda (_%g3194931960%_)
                                                   (cons 'if
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'box?)
                             (cons _%g3095630967%_ '()))
                       (cons (cons 'let
                                   (cons (cons (cons _%g3194931960%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _%g3095630967%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129689%_
                                                _%g3194931960%_
                                                _%g3105431934%_
                                                _%K30952%_
                                                _%E30953%_)
                                               '())))
                             (cons _%E30953%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g3194731975%_
                                            (gx#genident 'e)))))
                                      (_%__kont3929239293%_
                                       (lambda (_%g3106231739%_)
                                         (let* ((_%__stx3910939110%_
                                                 _%g3106231739%_)
                                                (_%g3175431777%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3910939110%_))))
                                           (let ((_%__kont3911239113%_
                                                  (lambda (_%g3175631854%_)
                                                    (let* ((_%g3186831876%_
                                                            (lambda (_%g3186931872%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g3186931872%_)))
                                                           (_%g3186731895%_
                                                            (lambda (_%g3186931880%_)
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx=)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'values-count)
                                                    (cons _%g3095630967%_ '()))
                                              (cons _%g3186931880%_ '())))
                                  (cons (_%generate-simple-vector29692%_
                                         _%tgt30949%_
                                         _%g3175631854%_
                                         '0
                                         '##values-ref
                                         _%K30952%_
                                         _%E30953%_)
                                        (cons _%E30953%_ '())))))))
              (_%g3186731895%_ (gx#stx-length _%g3175631854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3911439115%_
                                                  (lambda (_%g3176431808%_)
                                                    (_%generate-list-vector29693%_
                                                     _%tgt30949%_
                                                     _%g3176431808%_
                                                     'values->list
                                                     _%K30952%_
                                                     _%E30953%_))))
                                             (if (gx#stx-pair?
                                                  _%__stx3910939110%_)
                                                 (let ((_%e3175731830%_
                                                        (gx#syntax-e
                                                         _%__stx3910939110%_)))
                                                   (let ((_%tl3175931837%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3175731830%_)))
                                                         (_%hd3175831834%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3175731830%_))))
                                                     (if (gx#stx-datum?
                                                          _%hd3175831834%_)
                                                         (let ((_%e3176031840%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd3175831834%_)))
                   (if (equal? _%e3176031840%_ 'simple:)
                       (if (gx#stx-pair? _%tl3175931837%_)
                           (let ((_%e3176131844%_
                                  (gx#syntax-e _%tl3175931837%_)))
                             (let ((_%tl3176331851%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3176131844%_)))
                                   (_%hd3176231848%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3176131844%_))))
                               (if (gx#stx-null? _%tl3176331851%_)
                                   (_%__kont3911239113%_ _%hd3176231848%_)
                                   (_%g3175431777%_))))
                           (_%g3175431777%_))
                       (if (equal? _%e3176031840%_ 'list:)
                           (if (gx#stx-pair? _%tl3175931837%_)
                               (let ((_%e3176931798%_
                                      (gx#syntax-e _%tl3175931837%_)))
                                 (let ((_%tl3177131805%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3176931798%_)))
                                       (_%hd3177031802%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3176931798%_))))
                                   (if (gx#stx-null? _%tl3177131805%_)
                                       (_%__kont3911439115%_ _%hd3177031802%_)
                                       (_%g3175431777%_))))
                               (_%g3175431777%_))
                           (_%g3175431777%_))))
                 (_%g3175431777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3175431777%_))))))
                                      (_%__kont3929439295%_
                                       (lambda (_%g3107031544%_)
                                         (let* ((_%__stx3905939060%_
                                                 _%g3107031544%_)
                                                (_%g3155931582%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%__stx3905939060%_))))
                                           (let ((_%__kont3906239063%_
                                                  (lambda (_%g3156131659%_)
                                                    (let* ((_%g3167331681%_
                                                            (lambda (_%g3167431677%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g3167431677%_)))
                                                           (_%g3167231700%_
                                                            (lambda (_%g3167431685%_)
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'vector?)
                                        (cons _%g3095630967%_ '()))
                                  (cons (cons 'if
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx=)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector-length)
                              (cons _%g3095630967%_ '()))
                        (cons _%g3167431685%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_%generate-simple-vector29692%_
                                                           _%tgt30949%_
                                                           _%g3156131659%_
                                                           '0
                                                           '##vector-ref
                                                           _%K30952%_
                                                           _%E30953%_)
                                                          (cons _%E30953%_
                                                                '()))))
                                        (cons _%E30953%_ '())))))))
              (_%g3167231700%_ (gx#stx-length _%g3156131659%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont3906439065%_
                                                  (lambda (_%g3156931613%_)
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector?)
                              (cons _%g3095630967%_ '()))
                        (cons (_%generate-list-vector29693%_
                               _%tgt30949%_
                               _%g3156931613%_
                               'vector->list
                               _%K30952%_
                               _%E30953%_)
                              (cons _%E30953%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair?
                                                  _%__stx3905939060%_)
                                                 (let ((_%e3156231635%_
                                                        (gx#syntax-e
                                                         _%__stx3905939060%_)))
                                                   (let ((_%tl3156431642%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3156231635%_)))
                                                         (_%hd3156331639%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3156231635%_))))
                                                     (if (gx#stx-datum?
                                                          _%hd3156331639%_)
                                                         (let ((_%e3156531645%_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd3156331639%_)))
                   (if (equal? _%e3156531645%_ 'simple:)
                       (if (gx#stx-pair? _%tl3156431642%_)
                           (let ((_%e3156631649%_
                                  (gx#syntax-e _%tl3156431642%_)))
                             (let ((_%tl3156831656%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3156631649%_)))
                                   (_%hd3156731653%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3156631649%_))))
                               (if (gx#stx-null? _%tl3156831656%_)
                                   (_%__kont3906239063%_ _%hd3156731653%_)
                                   (_%g3155931582%_))))
                           (_%g3155931582%_))
                       (if (equal? _%e3156531645%_ 'list:)
                           (if (gx#stx-pair? _%tl3156431642%_)
                               (let ((_%e3157431603%_
                                      (gx#syntax-e _%tl3156431642%_)))
                                 (let ((_%tl3157631610%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3157431603%_)))
                                       (_%hd3157531607%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3157431603%_))))
                                   (if (gx#stx-null? _%tl3157631610%_)
                                       (_%__kont3906439065%_ _%hd3157531607%_)
                                       (_%g3155931582%_))))
                               (_%g3155931582%_))
                           (_%g3155931582%_))))
                 (_%g3155931582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3155931582%_))))))
                                      (_%__kont3929639297%_
                                       (lambda (_%g3107831495%_
                                                _%g3107931497%_)
                                         (_%generate-struct29694%_
                                          (gx#stx-e _%g3107931497%_)
                                          _%tgt30949%_
                                          _%g3107831495%_
                                          _%K30952%_
                                          _%E30953%_)))
                                      (_%__kont3929839299%_
                                       (lambda (_%g3109031436%_
                                                _%g3109131438%_)
                                         (_%generate-class29697%_
                                          (gx#stx-e _%g3109131438%_)
                                          _%tgt30949%_
                                          _%g3109031436%_
                                          _%K30952%_
                                          _%E30953%_)))
                                      (_%__kont3930039301%_
                                       (lambda (_%g3110231333%_)
                                         (let* ((_%g3134731355%_
                                                 (lambda (_%g3134831351%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3134831351%_)))
                                                (_%g3134631374%_
                                                 (lambda (_%g3134831359%_)
                                                   (cons 'if
                                                         (cons (cons _%g3134831359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3095630967%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g3110231333%_ '()))
                                         '())))
                       (cons _%K30952%_ (cons _%E30953%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g3134631374%_
                                            (let ((_%e31378%_
                                                   (gx#stx-e _%g3110231333%_)))
                                              (if (or (symbol? _%e31378%_)
                                                      (keyword? _%e31378%_)
                                                      (immediate? _%e31378%_))
                                                  '##eq?
                                                  (if (number? _%e31378%_)
                                                      'eqv?
                                                      'equal?)))))))
                                      (_%__kont3930239303%_
                                       (lambda (_%g3111031253%_
                                                _%g3111131255%_)
                                         (let* ((_%g3127131279%_
                                                 (lambda (_%g3127231275%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3127231275%_)))
                                                (_%g3127031298%_
                                                 (lambda (_%g3127231283%_)
                                                   (cons 'let
                                                         (cons (cons (cons _%g3127231283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons _%g3111131255%_
                                               (cons _%g3095630967%_ '()))
                                         '()))
                             '())
                       (cons (_%generate129689%_
                              _%g3127231283%_
                              _%g3111031253%_
                              _%K30952%_
                              _%E30953%_)
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g3127031298%_
                                            (gx#genident 'e)))))
                                      (_%__kont3930439305%_
                                       (lambda (_%g3112231195%_)
                                         (cons 'let
                                               (cons (cons (cons _%g3112231195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g3095630967%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%K30952%_ '())))))
                                      (_%__kont3930639307%_
                                       (lambda () _%K30952%_)))
                                  (if (gx#stx-pair? _%__stx3927339274%_)
                                      (let ((_%e3100132437%_
                                             (gx#syntax-e
                                              _%__stx3927339274%_)))
                                        (let ((_%tl3100332444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3100132437%_)))
                                              (_%hd3100232441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3100132437%_))))
                                          (if (gx#stx-datum? _%hd3100232441%_)
                                              (let ((_%e3100432447%_
                                                     (gx#stx-e
                                                      _%hd3100232441%_)))
                                                (if (equal? _%e3100432447%_
                                                            '?:)
                                                    (if (gx#stx-pair?
                                                         _%tl3100332444%_)
                                                        (let ((_%e3100532451%_
                                                               (gx#syntax-e
                                                                _%tl3100332444%_)))
                                                          (let ((_%tl3100732458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3100532451%_)))
                        (_%hd3100632455%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3100532451%_))))
                    (_%__kont3927639277%_ _%tl3100732458%_ _%hd3100632455%_)))
                (_%g3099731139%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e3100432447%_
                                                                'and:)
                                                        (_%__kont3927839279%_
                                                         _%tl3100332444%_)
                                                        (if (equal? _%e3100432447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'or:)
                    (_%__kont3928039281%_ _%tl3100332444%_)
                    (if (equal? _%e3100432447%_ 'not:)
                        (if (gx#stx-pair? _%tl3100332444%_)
                            (let ((_%e3102332220%_
                                   (gx#syntax-e _%tl3100332444%_)))
                              (let ((_%tl3102532227%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3102332220%_)))
                                    (_%hd3102432224%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3102332220%_))))
                                (if (gx#stx-null? _%tl3102532227%_)
                                    (_%__kont3928239283%_ _%hd3102432224%_)
                                    (_%g3099731139%_))))
                            (_%g3099731139%_))
                        (if (equal? _%e3100432447%_ 'cons:)
                            (if (gx#stx-pair? _%tl3100332444%_)
                                (let ((_%e3103232084%_
                                       (gx#syntax-e _%tl3100332444%_)))
                                  (let ((_%tl3103432091%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3103232084%_)))
                                        (_%hd3103332088%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3103232084%_))))
                                    (if (gx#stx-pair? _%tl3103432091%_)
                                        (let ((_%e3103532094%_
                                               (gx#syntax-e _%tl3103432091%_)))
                                          (let ((_%tl3103732101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3103532094%_)))
                                                (_%hd3103632098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3103532094%_))))
                                            (if (gx#stx-null? _%tl3103732101%_)
                                                (_%__kont3928439285%_
                                                 _%hd3103632098%_
                                                 _%hd3103332088%_)
                                                (_%g3099731139%_))))
                                        (_%g3099731139%_))))
                                (_%g3099731139%_))
                            (if (equal? _%e3100432447%_ 'null:)
                                (if (gx#stx-null? _%tl3100332444%_)
                                    (_%__kont3928639287%_)
                                    (_%g3099731139%_))
                                (if (equal? _%e3100432447%_ 'splice:)
                                    (if (gx#stx-pair? _%tl3100332444%_)
                                        (let ((_%e3104832000%_
                                               (gx#syntax-e _%tl3100332444%_)))
                                          (let ((_%tl3105032007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3104832000%_)))
                                                (_%hd3104932004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3104832000%_))))
                                            (if (gx#stx-pair? _%tl3105032007%_)
                                                (let ((_%e3105132010%_
                                                       (gx#syntax-e
                                                        _%tl3105032007%_)))
                                                  (let ((_%tl3105332017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3105132010%_)))
                                                        (_%hd3105232014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3105132010%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3105332017%_)
                                                        (_%__kont3928839289%_
                                                         _%hd3105232014%_
                                                         _%hd3104932004%_)
                                                        (_%g3099731139%_))))
                                                (_%g3099731139%_))))
                                        (_%g3099731139%_))
                                    (if (equal? _%e3100432447%_ 'box:)
                                        (if (gx#stx-pair? _%tl3100332444%_)
                                            (let ((_%e3105931924%_
                                                   (gx#syntax-e
                                                    _%tl3100332444%_)))
                                              (let ((_%tl3106131931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3105931924%_)))
                                                    (_%hd3106031928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3105931924%_))))
                                                (if (gx#stx-null?
                                                     _%tl3106131931%_)
                                                    (_%__kont3929039291%_
                                                     _%hd3106031928%_)
                                                    (_%g3099731139%_))))
                                            (_%g3099731139%_))
                                        (if (equal? _%e3100432447%_ 'values:)
                                            (if (gx#stx-pair? _%tl3100332444%_)
                                                (let ((_%e3106731729%_
                                                       (gx#syntax-e
                                                        _%tl3100332444%_)))
                                                  (let ((_%tl3106931736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3106731729%_)))
                                                        (_%hd3106831733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3106731729%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3106931736%_)
                                                        (_%__kont3929239293%_
                                                         _%hd3106831733%_)
                                                        (_%g3099731139%_))))
                                                (_%g3099731139%_))
                                            (if (equal? _%e3100432447%_
                                                        'vector:)
                                                (if (gx#stx-pair?
                                                     _%tl3100332444%_)
                                                    (let ((_%e3107531534%_
                                                           (gx#syntax-e
                                                            _%tl3100332444%_)))
                                                      (let ((_%tl3107731541%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3107531534%_)))
                    (_%hd3107631538%_
                     (let () (declare (not safe)) (##car _%e3107531534%_))))
                (if (gx#stx-null? _%tl3107731541%_)
                    (_%__kont3929439295%_ _%hd3107631538%_)
                    (_%g3099731139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3099731139%_))
                                                (if (equal? _%e3100432447%_
                                                            'struct:)
                                                    (if (gx#stx-pair?
                                                         _%tl3100332444%_)
                                                        (let ((_%e3108431475%_
                                                               (gx#syntax-e
                                                                _%tl3100332444%_)))
                                                          (let ((_%tl3108631482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3108431475%_)))
                        (_%hd3108531479%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3108431475%_))))
                    (if (gx#stx-pair? _%tl3108631482%_)
                        (let ((_%e3108731485%_ (gx#syntax-e _%tl3108631482%_)))
                          (let ((_%tl3108931492%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3108731485%_)))
                                (_%hd3108831489%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3108731485%_))))
                            (if (gx#stx-null? _%tl3108931492%_)
                                (_%__kont3929639297%_
                                 _%hd3108831489%_
                                 _%hd3108531479%_)
                                (_%g3099731139%_))))
                        (_%g3099731139%_))))
                (_%g3099731139%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e3100432447%_
                                                                'class:)
                                                        (if (gx#stx-pair?
                                                             _%tl3100332444%_)
                                                            (let ((_%e3109631416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3100332444%_)))
                      (let ((_%tl3109831423%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3109631416%_)))
                            (_%hd3109731420%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3109631416%_))))
                        (if (gx#stx-pair? _%tl3109831423%_)
                            (let ((_%e3109931426%_
                                   (gx#syntax-e _%tl3109831423%_)))
                              (let ((_%tl3110131433%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3109931426%_)))
                                    (_%hd3110031430%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3109931426%_))))
                                (if (gx#stx-null? _%tl3110131433%_)
                                    (_%__kont3929839299%_
                                     _%hd3110031430%_
                                     _%hd3109731420%_)
                                    (_%g3099731139%_))))
                            (_%g3099731139%_))))
                    (_%g3099731139%_))
                (if (equal? _%e3100432447%_ 'datum:)
                    (if (gx#stx-pair? _%tl3100332444%_)
                        (let ((_%e3110731323%_ (gx#syntax-e _%tl3100332444%_)))
                          (let ((_%tl3110931330%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3110731323%_)))
                                (_%hd3110831327%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3110731323%_))))
                            (if (gx#stx-null? _%tl3110931330%_)
                                (_%__kont3930039301%_ _%hd3110831327%_)
                                (_%g3099731139%_))))
                        (_%g3099731139%_))
                    (if (equal? _%e3100432447%_ 'apply:)
                        (if (gx#stx-pair? _%tl3100332444%_)
                            (let ((_%e3111631233%_
                                   (gx#syntax-e _%tl3100332444%_)))
                              (let ((_%tl3111831240%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3111631233%_)))
                                    (_%hd3111731237%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3111631233%_))))
                                (if (gx#stx-pair? _%tl3111831240%_)
                                    (let ((_%e3111931243%_
                                           (gx#syntax-e _%tl3111831240%_)))
                                      (let ((_%tl3112131250%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3111931243%_)))
                                            (_%hd3112031247%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3111931243%_))))
                                        (if (gx#stx-null? _%tl3112131250%_)
                                            (_%__kont3930239303%_
                                             _%hd3112031247%_
                                             _%hd3111731237%_)
                                            (_%g3099731139%_))))
                                    (_%g3099731139%_))))
                            (_%g3099731139%_))
                        (if (equal? _%e3100432447%_ 'var:)
                            (if (gx#stx-pair? _%tl3100332444%_)
                                (let ((_%e3112731185%_
                                       (gx#syntax-e _%tl3100332444%_)))
                                  (let ((_%tl3112931192%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3112731185%_)))
                                        (_%hd3112831189%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3112731185%_))))
                                    (if (gx#stx-null? _%tl3112931192%_)
                                        (_%__kont3930439305%_ _%hd3112831189%_)
                                        (_%g3099731139%_))))
                                (_%g3099731139%_))
                            (if (equal? _%e3100432447%_ 'any:)
                                (if (gx#stx-null? _%tl3100332444%_)
                                    (_%__kont3930639307%_)
                                    (_%g3099731139%_))
                                (_%g3099731139%_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3099731139%_))))
                                      (_%g3099731139%_)))))))
                      (_%g3095432746%_ _%tgt30949%_))))
                 (_%generate-splice29691%_
                  (lambda (_%tgt30327%_
                           _%hd30329%_
                           _%rest30330%_
                           _%K30331%_
                           _%E30332%_)
                    (let* ((_%g3033430351%_
                            (lambda (_%g3033530347%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3033530347%_)))
                           (_%g3033330945%_
                            (lambda (_%g3033530355%_)
                              (if (gx#stx-pair/null? _%g3033530355%_)
                                  (let ((_g40428_
                                         (gx#syntax-split-splice
                                          _%g3033530355%_
                                          '0)))
                                    (begin
                                      (let ((_g40429_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40428_)
                                                   (##values-length _g40428_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40429_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40429_)))
                                      (let ((_%target3033730358%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40428_ 0)))
                                            (_%tl3033930361%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40428_ 1))))
                                        (if (gx#stx-null? _%tl3033930361%_)
                                            (letrec ((_%loop3034030364%_
                                                      (lambda (_%hd3033830368%_
                                                               _%var3034430371%_)
                                                        (if (gx#stx-pair?
                                                             _%hd3033830368%_)
                                                            (let ((_%e3034130373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd3033830368%_)))
                      (let ((_%lp-hd3034230377%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3034130373%_)))
                            (_%lp-tl3034330380%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3034130373%_))))
                        (_%loop3034030364%_
                         _%lp-tl3034330380%_
                         (cons _%lp-hd3034230377%_ _%var3034430371%_))))
                    (let* ((_%var3034530383%_ (reverse _%var3034430371%_))
                           (_%g3040230419%_
                            (lambda (_%g3040330415%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3040330415%_)))
                           (_%g3040130933%_
                            (lambda (_%g3040330423%_)
                              (if (gx#stx-pair/null? _%g3040330423%_)
                                  (let ((_g40430_
                                         (gx#syntax-split-splice
                                          _%g3040330423%_
                                          '0)))
                                    (begin
                                      (let ((_g40431_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40430_)
                                                   (##values-length _g40430_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40431_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40431_)))
                                      (let ((_%target3040530426%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40430_ 0)))
                                            (_%tl3040730429%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40430_ 1))))
                                        (if (gx#stx-null? _%tl3040730429%_)
                                            (letrec ((_%loop3040830432%_
                                                      (lambda (_%hd3040630436%_
                                                               _%var-r3041230439%_)
                                                        (if (gx#stx-pair?
                                                             _%hd3040630436%_)
                                                            (let ((_%e3040930441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd3040630436%_)))
                      (let ((_%lp-hd3041030445%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3040930441%_)))
                            (_%lp-tl3041130448%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3040930441%_))))
                        (_%loop3040830432%_
                         _%lp-tl3041130448%_
                         (cons _%lp-hd3041030445%_ _%var-r3041230439%_))))
                    (let* ((_%var-r3041330451%_ (reverse _%var-r3041230439%_))
                           (_%g3047130488%_
                            (lambda (_%g3047230484%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3047230484%_)))
                           (_%g3047030921%_
                            (lambda (_%g3047230492%_)
                              (if (gx#stx-pair/null? _%g3047230492%_)
                                  (let ((_g40432_
                                         (gx#syntax-split-splice
                                          _%g3047230492%_
                                          '0)))
                                    (begin
                                      (let ((_g40433_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40432_)
                                                   (##values-length _g40432_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40433_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40433_)))
                                      (let ((_%target3047430495%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40432_ 0)))
                                            (_%tl3047630498%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40432_ 1))))
                                        (if (gx#stx-null? _%tl3047630498%_)
                                            (letrec ((_%loop3047730501%_
                                                      (lambda (_%hd3047530505%_
                                                               _%init3048130508%_)
                                                        (if (gx#stx-pair?
                                                             _%hd3047530505%_)
                                                            (let ((_%e3047830510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd3047530505%_)))
                      (let ((_%lp-hd3047930514%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3047830510%_)))
                            (_%lp-tl3048030517%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3047830510%_))))
                        (_%loop3047730501%_
                         _%lp-tl3048030517%_
                         (cons _%lp-hd3047930514%_ _%init3048130508%_))))
                    (let* ((_%init3048230520%_ (reverse _%init3048130508%_))
                           (_%g3054030548%_
                            (lambda (_%g3054130544%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3054130544%_)))
                           (_%g3053930917%_
                            (lambda (_%g3054130552%_)
                              (let* ((_%g3056830576%_
                                      (lambda (_%g3056930572%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3056930572%_)))
                                     (_%g3056730913%_
                                      (lambda (_%g3056930580%_)
                                        (let* ((_%g3059630604%_
                                                (lambda (_%g3059730600%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g3059730600%_)))
                                               (_%g3059530909%_
                                                (lambda (_%g3059730608%_)
                                                  (let* ((_%g3062430632%_
                                                          (lambda (_%g3062530628%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g3062530628%_)))
                                                         (_%g3062330905%_
                                                          (lambda (_%g3062530636%_)
                                                            (let* ((_%g3065230660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3065330656%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3065330656%_)))
                           (_%g3065130901%_
                            (lambda (_%g3065330664%_)
                              (let* ((_%g3068030688%_
                                      (lambda (_%g3068130684%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3068130684%_)))
                                     (_%g3067930897%_
                                      (lambda (_%g3068130692%_)
                                        (let* ((_%g3070830716%_
                                                (lambda (_%g3070930712%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g3070930712%_)))
                                               (_%g3070730893%_
                                                (lambda (_%g3070930720%_)
                                                  (let* ((_%g3073630744%_
                                                          (lambda (_%g3073730740%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g3073730740%_)))
                                                         (_%g3073530878%_
                                                          (lambda (_%g3073730748%_)
                                                            (let* ((_%g3076430772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3076530768%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3076530768%_)))
                           (_%g3076330866%_
                            (lambda (_%g3076530776%_)
                              (let* ((_%g3079230800%_
                                      (lambda (_%g3079330796%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3079330796%_)))
                                     (_%g3079130862%_
                                      (lambda (_%g3079330804%_)
                                        (cons (gx#datum->syntax '#f 'letrec)
                                              (cons (cons (cons _%g3056930580%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'lambda)
                                    (cons (cons _%g3068130692%_
                                                (foldr (lambda (_%g3082130832%_
                                                                _%g3082230835%_)
                                                         (cons _%g3082130832%_
                                                               _%g3082230835%_))
                                                       '()
                                                       _%var3034530383%_))
                                          (cons _%g3070930720%_ '())))
                              '()))
                  (cons (cons _%g3062530636%_
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _%g3065330664%_
                                                      (cons _%g3068130692%_
                                                            (foldr (lambda (_%g3082330838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g3082430841%_)
                             (cons _%g3082330838%_ _%g3082430841%_))
                           '()
                           _%var-r3041330451%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g3079330804%_ '())))
                                    '()))
                        (cons (cons _%g3059730608%_
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g3068130692%_
                                                            (foldr (lambda (_%g3082530844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g3082630847%_)
                             (cons _%g3082530844%_ _%g3082630847%_))
                           '()
                           _%var-r3041330451%_))
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'pair?)
                                      (cons _%g3068130692%_ '()))
                                (cons (cons _%g3062530636%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##car)
                                                        (cons _%g3068130692%_
                                                              '()))
                                                  (cons _%g3068130692%_
                                                        (foldr (lambda (_%g3082730850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g3082830853%_)
                         (cons _%g3082730850%_ _%g3082830853%_))
                       '()
                       _%var-r3041330451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%g3076530776%_ '()))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g3059730608%_
                                                                (cons _%g3054130552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%g3082930856%_ _%g3083030859%_)
                                       (cons _%g3082930856%_ _%g3083030859%_))
                                     '()
                                     _%init3048230520%_)))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%g3079130862%_
                                 (_%generate129689%_
                                  _%g3065330664%_
                                  _%hd30329%_
                                  _%g3073730748%_
                                  _%g3076530776%_))))))
                      (_%g3076330866%_
                       (cons _%g3056930580%_
                             (cons _%g3068130692%_
                                   (foldr (lambda (_%g3086930872%_
                                                   _%g3087030875%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'reverse)
                                                        (cons _%g3086930872%_
                                                              '()))
                                                  _%g3087030875%_))
                                          '()
                                          _%var-r3041330451%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3073530878%_
                                                     (cons _%g3059730608%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3068130692%_ '()))
                         (begin
                           (gx#syntax-check-splice-targets
                            _%var-r3041330451%_
                            _%var3034530383%_)
                           (foldr (lambda (_%g3088130885%_
                                           _%g3088230888%_
                                           _%g3088330890%_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _%g3088230888%_
                                                      (cons _%g3088130885%_
                                                            '())))
                                          _%g3088330890%_))
                                  '()
                                  _%var-r3041330451%_
                                  _%var3034530383%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g3070730893%_
                                           (_%generate129689%_
                                            _%g3068130692%_
                                            _%rest30330%_
                                            _%K30331%_
                                            _%E30332%_))))))
                                (_%g3067930897%_ (gx#genident 'rest))))))
                      (_%g3065130901%_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3062330905%_
                                                     (gx#genident
                                                      'splice-try))))))
                                          (_%g3059530909%_
                                           (gx#genident 'splice-loop))))))
                                (_%g3056730913%_
                                 (gx#genident 'splice-rest))))))
                      (_%g3053930917%_ _%tgt30327%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop3047730501%_
                                               _%target3047430495%_
                                               '()))
                                            (_%g3047130488%_
                                             _%g3047230492%_)))))
                                  (_%g3047130488%_ _%g3047230492%_)))))
                      (_%g3047030921%_
                       (make-list
                        (gx#stx-length
                         (foldr (lambda (_%g3092430927%_ _%g3092530930%_)
                                  (cons _%g3092430927%_ _%g3092530930%_))
                                '()
                                _%var3034530383%_))
                        (cons (gx#datum->syntax '#f '@list) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop3040830432%_
                                               _%target3040530426%_
                                               '()))
                                            (_%g3040230419%_
                                             _%g3040330423%_)))))
                                  (_%g3040230419%_ _%g3040330423%_)))))
                      (_%g3040130933%_
                       (gx#gentemps
                        (foldr (lambda (_%g3093630939%_ _%g3093730942%_)
                                 (cons _%g3093630939%_ _%g3093730942%_))
                               '()
                               _%var3034530383%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop3034030364%_
                                               _%target3033730358%_
                                               '()))
                                            (_%g3033430351%_
                                             _%g3033530355%_)))))
                                  (_%g3033430351%_ _%g3033530355%_)))))
                      (_%g3033330945%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd30329%_)))))
                 (_%generate-simple-vector29692%_
                  (lambda (_%tgt30150%_
                           _%body30152%_
                           _%start30153%_
                           _%ref30154%_
                           _%K30155%_
                           _%E30156%_)
                    (let _%recur30158%_ ((_%rest30161%_ _%body30152%_)
                                         (_%off30163%_ _%start30153%_))
                      (let* ((_%__stx3963139632%_ _%rest30161%_)
                             (_%g3016630178%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3963139632%_))))
                        (let ((_%__kont3963439635%_
                               (lambda (_%g3016830206%_ _%g3016930208%_)
                                 (let* ((_%g3022330246%_
                                         (lambda (_%g3022430242%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3022430242%_)))
                                        (_%g3022230319%_
                                         (lambda (_%g3022430250%_)
                                           (if (gx#stx-pair? _%g3022430250%_)
                                               (let ((_%e3022930253%_
                                                      (gx#syntax-e
                                                       _%g3022430250%_)))
                                                 (let ((_%hd3023030257%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3022930253%_)))
                                                       (_%tl3023130260%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3022930253%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3023130260%_)
                                                       (let ((_%e3023230263%_
                                                              (gx#syntax-e
                                                               _%tl3023130260%_)))
                                                         (let ((_%hd3023330267%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e3023230263%_)))
                       (_%tl3023430270%_
                        (let () (declare (not safe)) (##cdr _%e3023230263%_))))
                   (if (gx#stx-pair? _%tl3023430270%_)
                       (let ((_%e3023530273%_ (gx#syntax-e _%tl3023430270%_)))
                         (let ((_%hd3023630277%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3023530273%_)))
                               (_%tl3023730280%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3023530273%_))))
                           (if (gx#stx-pair? _%tl3023730280%_)
                               (let ((_%e3023830283%_
                                      (gx#syntax-e _%tl3023730280%_)))
                                 (let ((_%hd3023930287%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3023830283%_)))
                                       (_%tl3024030290%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3023830283%_))))
                                   (if (gx#stx-null? _%tl3024030290%_)
                                       (cons 'let
                                             (cons (cons (cons _%hd3023030257%_
                                                               (cons (cons _%hd3023930287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%hd3023330267%_
                                         (cons _%hd3023630277%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129689%_
                                                          _%hd3023030257%_
                                                          _%g3016930208%_
                                                          (_%recur30158%_
                                                           _%g3016830206%_
                                                           (fx1+ _%off30163%_))
                                                          _%E30156%_)
                                                         '())))
                                       (_%g3022330246%_ _%g3022430250%_))))
                               (_%g3022330246%_ _%g3022430250%_))))
                       (_%g3022330246%_ _%g3022430250%_))))
               (_%g3022330246%_ _%g3022430250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3022330246%_
                                                _%g3022430250%_)))))
                                   (_%g3022230319%_
                                    (list (gx#genident 'e)
                                          _%tgt30150%_
                                          _%off30163%_
                                          _%ref30154%_)))))
                              (_%__kont3963639637%_ (lambda () _%K30155%_)))
                          (if (gx#stx-pair? _%__stx3963139632%_)
                              (let ((_%e3017030196%_
                                     (gx#syntax-e _%__stx3963139632%_)))
                                (let ((_%tl3017230203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3017030196%_)))
                                      (_%hd3017130200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3017030196%_))))
                                  (_%__kont3963439635%_
                                   _%tl3017230203%_
                                   _%hd3017130200%_)))
                              (_%__kont3963639637%_)))))))
                 (_%generate-list-vector29693%_
                  (lambda (_%tgt30042%_
                           _%body30044%_
                           _%->list30045%_
                           _%K30046%_
                           _%E30047%_)
                    (let* ((_%g3004930057%_
                            (lambda (_%g3005030053%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3005030053%_)))
                           (_%g3004830146%_
                            (lambda (_%g3005030061%_)
                              (let* ((_%g3007630084%_
                                      (lambda (_%g3007730080%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3007730080%_)))
                                     (_%g3007530142%_
                                      (lambda (_%g3007730088%_)
                                        (let* ((_%g3010430112%_
                                                (lambda (_%g3010530108%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g3010530108%_)))
                                               (_%g3010330134%_
                                                (lambda (_%g3010530116%_)
                                                  (cons 'let
                                                        (cons (cons (cons _%g3005030061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%g3010530116%_ '()))
                            '())
                      (cons (_%generate129689%_
                             _%g3005030061%_
                             _%body30044%_
                             _%K30046%_
                             _%E30047%_)
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g3010330134%_
                                           (let ((_%$e30138%_ _%->list30045%_))
                                             (if (eq? 'values->list
                                                      _%$e30138%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'values->list)
                                                       (cons _%g3007730088%_
                                                             '()))
                                                 (if (eq? 'vector->list
                                                          _%$e30138%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '##vector->list)
                                                           (cons _%g3007730088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (eq? 'struct->list
                                                              _%$e30138%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'struct->list)
                                   (cons _%g3007730088%_ '()))
                             '()))
                 (gx#raise-syntax-error
                  '#f
                  '"Unexpected list conversion"
                  _%stx29682%_
                  _%->list30045%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%g3007530142%_ _%tgt30042%_)))))
                      (_%g3004830146%_ (gx#genident 'e)))))
                 (_%generate-struct29694%_
                  (lambda (_%info29913%_
                           _%tgt29915%_
                           _%body29916%_
                           _%K29917%_
                           _%E29918%_)
                    (let* ((_%__stx3964739648%_ _%body29916%_)
                           (_%g2992129944%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3964739648%_))))
                      (let ((_%__kont3965039651%_
                             (lambda (_%g2992330021%_)
                               (let ((_%fields30035%_
                                      (_%struct-field-accessors29696%_
                                       _%info29913%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj40401
                                                          _%info29913%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40401
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40401
                                                            '15
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40401
                                                          'predicate)))
                                                   (cons _%tgt29915%_ '()))
                                             (cons (_%generate-simple-struct-body29695%_
                                                    _%info29913%_
                                                    _%tgt29915%_
                                                    _%g2992330021%_
                                                    _%K29917%_
                                                    _%E29918%_)
                                                   (cons _%E29918%_ '())))))))
                            (_%__kont3965239653%_
                             (lambda (_%g2993129975%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40402
                                                        _%info29913%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40402
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40402
                                                          '15
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40402
                                                        'predicate)))
                                                 (cons _%tgt29915%_ '()))
                                           (cons (_%generate-list-vector29693%_
                                                  _%tgt29915%_
                                                  _%g2993129975%_
                                                  'struct->list
                                                  _%K29917%_
                                                  _%E29918%_)
                                                 (cons _%E29918%_ '())))))))
                        (if (gx#stx-pair? _%__stx3964739648%_)
                            (let ((_%e2992429997%_
                                   (gx#syntax-e _%__stx3964739648%_)))
                              (let ((_%tl2992630004%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2992429997%_)))
                                    (_%hd2992530001%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2992429997%_))))
                                (if (gx#stx-datum? _%hd2992530001%_)
                                    (let ((_%e2992730007%_
                                           (gx#stx-e _%hd2992530001%_)))
                                      (if (equal? _%e2992730007%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2992630004%_)
                                              (let ((_%e2992830011%_
                                                     (gx#syntax-e
                                                      _%tl2992630004%_)))
                                                (let ((_%tl2993030018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2992830011%_)))
                                                      (_%hd2992930015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2992830011%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2993030018%_)
                                                      (_%__kont3965039651%_
                                                       _%hd2992930015%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2992129944%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2992129944%_)))
                                          (if (equal? _%e2992730007%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2992630004%_)
                                                  (let ((_%e2993629965%_
                                                         (gx#syntax-e
                                                          _%tl2992630004%_)))
                                                    (let ((_%tl2993829972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2993629965%_)))
                                                          (_%hd2993729969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2993629965%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2993829972%_)
                                                          (_%__kont3965239653%_
                                                           _%hd2993729969%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2992129944%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2992129944%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2992129944%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2992129944%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2992129944%_)))))))
                 (_%generate-simple-struct-body29695%_
                  (lambda (_%info29833%_
                           _%tgt29835%_
                           _%body29836%_
                           _%K29837%_
                           _%E29838%_)
                    (let _%recur29840%_ ((_%rest29843%_ _%body29836%_)
                                         (_%fields29845%_
                                          (_%struct-field-accessors29696%_
                                           _%info29833%_)))
                      (let* ((_%__stx3969739698%_ _%rest29843%_)
                             (_%g2984829860%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3969739698%_))))
                        (let ((_%__kont3970039701%_
                               (lambda (_%g2985029888%_ _%g2985129890%_)
                                 (if (null? _%fields29845%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29682%_
                                      _%info29833%_
                                      (let ((__obj40403 _%info29833%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40403
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40403
                                               '3
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40403
                                             'name))))
                                     (let ((_%$tgt29905%_ (gx#genident 'e))
                                           (_%getf29907%_
                                            (car _%fields29845%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29905%_
                                                               (cons (cons _%getf29907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29835%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129689%_
                                                          _%$tgt29905%_
                                                          _%g2985129890%_
                                                          (_%recur29840%_
                                                           _%g2985029888%_
                                                           (cdr _%fields29845%_))
                                                          _%E29838%_)
                                                         '())))))))
                              (_%__kont3970239703%_ (lambda () _%K29837%_)))
                          (if (gx#stx-pair? _%__stx3969739698%_)
                              (let ((_%e2985229878%_
                                     (gx#syntax-e _%__stx3969739698%_)))
                                (let ((_%tl2985429885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2985229878%_)))
                                      (_%hd2985329882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2985229878%_))))
                                  (_%__kont3970039701%_
                                   _%tl2985429885%_
                                   _%hd2985329882%_)))
                              (_%__kont3970239703%_)))))))
                 (_%struct-field-accessors29696%_
                  (lambda (_%info29814%_)
                    (let _%recur29817%_ ((_%next29820%_
                                          (cons _%info29814%_ '())))
                      (if (null? _%next29820%_)
                          '()
                          (let ((_%ti29823%_ (car _%next29820%_)))
                            (let ((__tmp40435
                                   (_%recur29817%_
                                    (map gx#syntax-local-value
                                         (let ((__obj40404 _%ti29823%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj40404
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj40404
                                                  '5
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj40404
                                                'super))))))
                                  (__tmp40434
                                   (map (lambda (_%slot29826%_)
                                          (let ((_%$e29829%_
                                                 (agetq _%slot29826%_
                                                        (let ((__obj40405
                                                               _%ti29823%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj40405
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj40405 '18 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj40405
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29829%_
                                                _%$e29829%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29682%_
                                                 _%info29814%_
                                                 _%slot29826%_))))
                                        (let ((__obj40406 _%ti29823%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40406
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40406
                                                 '6
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40406
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40435 __tmp40434)))))))
                 (_%generate-class29697%_
                  (lambda (_%info29807%_
                           _%tgt29809%_
                           _%body29810%_
                           _%K29811%_
                           _%E29812%_)
                    (cons 'if
                          (cons (cons (let ((__obj40407 _%info29807%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40407
                                               'gerbil.core#class-type-info::t))
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
                                      (cons _%tgt29809%_ '()))
                                (cons (_%generate-class-body29698%_
                                       _%info29807%_
                                       _%tgt29809%_
                                       _%body29810%_
                                       _%K29811%_
                                       _%E29812%_)
                                      (cons _%E29812%_ '()))))))
                 (_%generate-class-body29698%_
                  (lambda (_%info29700%_
                           _%tgt29702%_
                           _%body29703%_
                           _%K29704%_
                           _%E29705%_)
                    (let _%recur29707%_ ((_%rest29710%_ _%body29703%_))
                      (let* ((_%__stx3971339714%_ _%rest29710%_)
                             (_%g2971429730%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3971339714%_))))
                        (let ((_%__kont3971639717%_
                               (lambda (_%g2971629768%_
                                        _%g2971729770%_
                                        _%g2971829771%_)
                                 (let ((_%$e29791%_
                                        (agetq (let ((__tmp40436
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2971829771%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp40436))
                                               (let ((__obj40408
                                                      _%info29700%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40408
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40408
                                                        '18
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40408
                                                      'unchecked-accessors))))))
                                   (if _%$e29791%_
                                       (let ((_%$tgt29798%_ (gx#genident 'e)))
                                         (cons 'let
                                               (cons (cons (cons _%$tgt29798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _%$e29791%_ (cons _%tgt29702%_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (_%generate129689%_
                                                            _%$tgt29798%_
                                                            _%g2971729770%_
                                                            (_%recur29707%_
                                                             _%g2971629768%_)
                                                            _%E29705%_)
                                                           '()))))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29682%_
                                        _%info29700%_
                                        _%g2971829771%_)))))
                              (_%__kont3971839719%_ (lambda () _%K29704%_)))
                          (if (gx#stx-pair? _%__stx3971339714%_)
                              (let ((_%e2971929748%_
                                     (gx#syntax-e _%__stx3971339714%_)))
                                (let ((_%tl2972129755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2971929748%_)))
                                      (_%hd2972029752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2971929748%_))))
                                  (if (gx#stx-pair? _%tl2972129755%_)
                                      (let ((_%e2972229758%_
                                             (gx#syntax-e _%tl2972129755%_)))
                                        (let ((_%tl2972429765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2972229758%_)))
                                              (_%hd2972329762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2972229758%_))))
                                          (_%__kont3971639717%_
                                           _%tl2972429765%_
                                           _%hd2972329762%_
                                           _%hd2972029752%_)))
                                      (_%__kont3971839719%_))))
                              (_%__kont3971839719%_))))))))
          (_%generate129689%_
           _%tgt29684%_
           _%ptree29685%_
           _%K29686%_
           _%E29687%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28501%_ _%tgt-lst28503%_ _%clauses28504%_)
        (letrec ((_%parse-body28506%_
                  (lambda (_%hd-len29504%_)
                    (let _%lp29507%_ ((_%rest29510%_ _%clauses28504%_)
                                      (_%r29512%_ '()))
                      (let* ((_%__stx3976339764%_ _%rest29510%_)
                             (_%g2951529527%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3976339764%_))))
                        (let ((_%__kont3976639767%_
                               (lambda (_%g2951729555%_ _%g2951829557%_)
                                 (let* ((_%__stx3973539736%_ _%g2951829557%_)
                                        (_%g2957429590%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3973539736%_))))
                                   (let ((_%__kont3973839739%_
                                          (lambda (_%g2957629659%_)
                                            (if (gx#stx-null? _%g2951729555%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2957629659%_)
                                 (let ((_%$e29670%_
                                        (gx#stx-source _%g2951829557%_)))
                                   (if _%$e29670%_
                                       _%$e29670%_
                                       (gx#stx-source _%stx28501%_))))
                                '())))
              _%r29512%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28501%_
                                                 _%g2951829557%_))))
                                         (_%__kont3974039741%_
                                          (lambda (_%g2958029618%_
                                                   _%g2958129620%_)
                                            (_%lp29507%_
                                             _%g2951729555%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2963229634%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2963229634%_
                           _%stx28501%_))
                        _%g2958129620%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2958029618%_)
                              (let ((_%$e29638%_
                                     (gx#stx-source _%g2951829557%_)))
                                (if _%$e29638%_
                                    _%$e29638%_
                                    (gx#stx-source _%stx28501%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29512%_))))
                                         (_%__kont3974239743%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28501%_
                                             _%g2951829557%_))))
                                     (let* ((_%__match3976039761%_
                                             (lambda (_%e2958229608%_
                                                      _%hd2958329612%_
                                                      _%tl2958429615%_)
                                               (let ((_%g2958029618%_
                                                      _%tl2958429615%_)
                                                     (_%g2958129620%_
                                                      _%hd2958329612%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2958129620%_)
                                                          (fx= (gx#stx-length
                                                                _%g2958129620%_)
                                                               _%hd-len29504%_)
                                                          (gx#stx-list?
                                                           _%g2958029618%_)
                                                          (not (gx#stx-null?
                                                                _%g2958029618%_)))
                                                     (_%__kont3974039741%_
                                                      _%g2958029618%_
                                                      _%g2958129620%_)
                                                     (_%__kont3974239743%_)))))
                                            (_%__match3975439755%_
                                             (lambda (_%e2957729649%_
                                                      _%hd2957829653%_
                                                      _%tl2957929656%_)
                                               (let ((_%g2957629659%_
                                                      _%tl2957929656%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2957629659%_)
                                                          (not (gx#stx-null?
                                                                _%g2957629659%_)))
                                                     (_%__kont3973839739%_
                                                      _%g2957629659%_)
                                                     (_%__match3976039761%_
                                                      _%e2957729649%_
                                                      _%hd2957829653%_
                                                      _%tl2957929656%_))))))
                                       (if (gx#stx-pair? _%__stx3973539736%_)
                                           (let ((_%e2957729649%_
                                                  (gx#syntax-e
                                                   _%__stx3973539736%_)))
                                             (let ((_%tl2957929656%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2957729649%_)))
                                                   (_%hd2957829653%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2957729649%_))))
                                               (if (gx#identifier?
                                                    _%hd2957829653%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40437_|
                                                        _%hd2957829653%_)
                                                       (_%__match3975439755%_
                                                        _%e2957729649%_
                                                        _%hd2957829653%_
                                                        _%tl2957929656%_)
                                                       (_%__match3976039761%_
                                                        _%e2957729649%_
                                                        _%hd2957829653%_
                                                        _%tl2957929656%_))
                                                   (_%__match3976039761%_
                                                    _%e2957729649%_
                                                    _%hd2957829653%_
                                                    _%tl2957929656%_))))
                                           (_%__kont3974239743%_)))))))
                              (_%__kont3976839769%_ (lambda () _%r29512%_)))
                          (if (gx#stx-pair? _%__stx3976339764%_)
                              (let ((_%e2951929545%_
                                     (gx#syntax-e _%__stx3976339764%_)))
                                (let ((_%tl2952129552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2951929545%_)))
                                      (_%hd2952029549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2951929545%_))))
                                  (_%__kont3976639767%_
                                   _%tl2952129552%_
                                   _%hd2952029549%_)))
                              (_%__kont3976839769%_)))))))
                 (_%generate-body28508%_
                  (lambda (_%body29210%_)
                    (let* ((_%g2921329221%_
                            (lambda (_%g2921429217%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2921429217%_)))
                           (_%g2921229500%_
                            (lambda (_%g2921429225%_)
                              (let* ((_%g2924029257%_
                                      (lambda (_%g2924129253%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2924129253%_)))
                                     (_%g2923929496%_
                                      (lambda (_%g2924129261%_)
                                        (if (gx#stx-pair/null? _%g2924129261%_)
                                            (let ((_g40438_
                                                   (gx#syntax-split-splice
                                                    _%g2924129261%_
                                                    '0)))
                                              (begin
                                                (let ((_g40439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40438_)
                                                             (##values-length
                                                              _g40438_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40439_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2924329264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40438_
                                                          0)))
                                                      (_%tl2924529267%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40438_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2924529267%_)
                                                      (letrec ((_%loop2924629270%_
                                                                (lambda (_%hd2924429274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%target2925029277%_)
                          (if (gx#stx-pair? _%hd2924429274%_)
                              (let ((_%e2924729279%_
                                     (gx#syntax-e _%hd2924429274%_)))
                                (let ((_%lp-hd2924829283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2924729279%_)))
                                      (_%lp-tl2924929286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2924729279%_))))
                                  (_%loop2924629270%_
                                   _%lp-tl2924929286%_
                                   (cons _%lp-hd2924829283%_
                                         _%target2925029277%_))))
                              (let* ((_%target2925129289%_
                                      (reverse _%target2925029277%_))
                                     (_%g2930929326%_
                                      (lambda (_%g2931029322%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2931029322%_)))
                                     (_%g2930829492%_
                                      (lambda (_%g2931029330%_)
                                        (if (gx#stx-pair/null? _%g2931029330%_)
                                            (let ((_g40440_
                                                   (gx#syntax-split-splice
                                                    _%g2931029330%_
                                                    '0)))
                                              (begin
                                                (let ((_g40441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40440_)
                                                             (##values-length
                                                              _g40440_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40441_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2931229333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40440_
                                                          0)))
                                                      (_%tl2931429336%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40440_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2931429336%_)
                                                      (letrec ((_%loop2931529339%_
                                                                (lambda (_%hd2931329343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%fail-diagnostic2931929346%_)
                          (if (gx#stx-pair? _%hd2931329343%_)
                              (let ((_%e2931629348%_
                                     (gx#syntax-e _%hd2931329343%_)))
                                (let ((_%lp-hd2931729352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2931629348%_)))
                                      (_%lp-tl2931829355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2931629348%_))))
                                  (_%loop2931529339%_
                                   _%lp-tl2931829355%_
                                   (cons _%lp-hd2931729352%_
                                         _%fail-diagnostic2931929346%_))))
                              (let* ((_%fail-diagnostic2932029358%_
                                      (reverse _%fail-diagnostic2931929346%_))
                                     (_%g2937829386%_
                                      (lambda (_%g2937929382%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2937929382%_)))
                                     (_%g2937729472%_
                                      (lambda (_%g2937929390%_)
                                        (let* ((_%g2940629414%_
                                                (lambda (_%g2940729410%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2940729410%_)))
                                               (_%g2940529468%_
                                                (lambda (_%g2940729418%_)
                                                  (let* ((_%g2943429442%_
                                                          (lambda (_%g2943529438%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2943529438%_)))
                                                         (_%g2943329464%_
                                                          (lambda (_%g2943529446%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (gx#datum->syntax '#f '@match)
                                (cons _%g2943529446%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2943329464%_
                                                     (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (cons (cons _%g2921429225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (cons _%g2937929390%_ '()))
                                '())
                          (cons _%g2940729418%_ '())))
              (gx#stx-source _%stx28501%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2940529468%_
                                           (_%generate-clauses28509%_
                                            _%body29210%_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@abort)
                                                              '())
                                                        (cons (cons _%g2921429225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%g2937729472%_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'error)
                                                          (cons '"No clause matching"
                                                                (foldr (lambda (_%g2947529480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%g2947629483%_)
                                 (cons _%g2947529480%_ _%g2947629483%_))
                               (foldr (lambda (_%g2947729486%_ _%g2947829489%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g2947729486%_ '()))
                                              _%g2947829489%_))
                                      '()
                                      _%fail-diagnostic2932029358%_)
                               _%target2925129289%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)
                        '())
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (gx#stx-source _%stx28501%_))))))))
                (_%loop2931529339%_ _%target2931229333%_ '()))
              (_%g2930929326%_ _%g2931029330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2930929326%_
                                             _%g2931029330%_)))))
                                (_%g2930829492%_
                                 (gx#stx-map gx#stx-car _%clauses28504%_)))))))
                (_%loop2924629270%_ _%target2924329264%_ '()))
              (_%g2924029257%_ _%g2924129261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2924029257%_
                                             _%g2924129261%_)))))
                                (_%g2923929496%_ _%tgt-lst28503%_)))))
                      (_%g2921229500%_ (gx#genident 'E)))))
                 (_%generate-clauses28509%_
                  (lambda (_%rest28862%_ _%E28864%_)
                    (let* ((_%__stx3977939780%_ _%rest28862%_)
                           (_%g2886828884%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3977939780%_))))
                      (let ((_%__kont3978239783%_
                             (lambda (_%g2887029118%_)
                               (let* ((_%g2912929147%_
                                       (lambda (_%g2913029143%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2913029143%_)))
                                      (_%g2912829202%_
                                       (lambda (_%g2913029151%_)
                                         (if (gx#stx-pair? _%g2913029151%_)
                                             (let ((_%e2913329154%_
                                                    (gx#syntax-e
                                                     _%g2913029151%_)))
                                               (let ((_%hd2913429158%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2913329154%_)))
                                                     (_%tl2913529161%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2913329154%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2913529161%_)
                                                     (let ((_%e2913629164%_
                                                            (gx#syntax-e
                                                             _%tl2913529161%_)))
                                                       (let ((_%hd2913729168%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2913629164%_)))
                     (_%tl2913829171%_
                      (let () (declare (not safe)) (##cdr _%e2913629164%_))))
                 (if (gx#stx-pair? _%tl2913829171%_)
                     (let ((_%e2913929174%_ (gx#syntax-e _%tl2913829171%_)))
                       (let ((_%hd2914029178%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2913929174%_)))
                             (_%tl2914129181%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2913929174%_))))
                         (if (gx#stx-null? _%tl2914129181%_)
                             (cons 'begin-annotation
                                   (cons '@match-body
                                         (cons (if (gx#stx-e _%hd2913729168%_)
                                                   (_%generate128510%_
                                                    _%hd2913729168%_
                                                    _%hd2914029178%_
                                                    _%E28864%_)
                                                   _%hd2914029178%_)
                                               '())))
                             (_%g2912929147%_ _%g2913029151%_))))
                     (_%g2912929147%_ _%g2913029151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2912929147%_
                                                      _%g2913029151%_))))
                                             (_%g2912929147%_
                                              _%g2913029151%_)))))
                                 (_%g2912829202%_ _%g2887029118%_))))
                            (_%__kont3978439785%_
                             (lambda (_%g2887428912%_ _%g2887528914%_)
                               (let* ((_%g2892728946%_
                                       (lambda (_%g2892828942%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2892828942%_)))
                                      (_%g2892629097%_
                                       (lambda (_%g2892828950%_)
                                         (if (gx#stx-pair? _%g2892828950%_)
                                             (let ((_%e2893228953%_
                                                    (gx#syntax-e
                                                     _%g2892828950%_)))
                                               (let ((_%hd2893328957%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2893228953%_)))
                                                     (_%tl2893428960%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2893228953%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2893428960%_)
                                                     (let ((_%e2893528963%_
                                                            (gx#syntax-e
                                                             _%tl2893428960%_)))
                                                       (let ((_%hd2893628967%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2893528963%_)))
                     (_%tl2893728970%_
                      (let () (declare (not safe)) (##cdr _%e2893528963%_))))
                 (if (gx#stx-pair? _%tl2893728970%_)
                     (let ((_%e2893828973%_ (gx#syntax-e _%tl2893728970%_)))
                       (let ((_%hd2893928977%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2893828973%_)))
                             (_%tl2894028980%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2893828973%_))))
                         (if (gx#stx-null? _%tl2894028980%_)
                             (if (gx#stx-e _%hd2893628967%_)
                                 (let* ((_%g2900329018%_
                                         (lambda (_%g2900429014%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2900429014%_)))
                                        (_%g2900229063%_
                                         (lambda (_%g2900429022%_)
                                           (if (gx#stx-pair? _%g2900429022%_)
                                               (let ((_%e2900729025%_
                                                      (gx#syntax-e
                                                       _%g2900429022%_)))
                                                 (let ((_%hd2900829029%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2900729025%_)))
                                                       (_%tl2900929032%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2900729025%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2900929032%_)
                                                       (let ((_%e2901029035%_
                                                              (gx#syntax-e
                                                               _%tl2900929032%_)))
                                                         (let ((_%hd2901129039%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2901029035%_)))
                       (_%tl2901229042%_
                        (let () (declare (not safe)) (##cdr _%e2901029035%_))))
                   (if (gx#stx-null? _%tl2901229042%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _%hd2893328957%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%hd2900829029%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons _%hd2901129039%_ '())))
                       (_%g2900329018%_ _%g2900429022%_))))
               (_%g2900329018%_ _%g2900429022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2900329018%_
                                                _%g2900429022%_)))))
                                   (_%g2900229063%_
                                    (list (_%generate128510%_
                                           _%hd2893628967%_
                                           _%hd2893928977%_
                                           _%E28864%_)
                                          (_%generate-clauses28509%_
                                           _%g2887428912%_
                                           (cons _%hd2893328957%_ '())))))
                                 (let* ((_%g2906729075%_
                                         (lambda (_%g2906829071%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2906829071%_)))
                                        (_%g2906629093%_
                                         (lambda (_%g2906829079%_)
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%hd2893328957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (gx#datum->syntax
                                              '#f
                                              '@match-else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _%hd2893928977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))
                     '())
               (cons _%g2906829079%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%g2906629093%_
                                    (_%generate-clauses28509%_
                                     _%g2887428912%_
                                     (cons _%hd2893328957%_ '())))))
                             (_%g2892728946%_ _%g2892828950%_))))
                     (_%g2892728946%_ _%g2892828950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2892728946%_
                                                      _%g2892828950%_))))
                                             (_%g2892728946%_
                                              _%g2892828950%_)))))
                                 (_%g2892629097%_ _%g2887528914%_))))
                            (_%__kont3978639787%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28864%_ '()))))))
                        (if (gx#stx-pair? _%__stx3977939780%_)
                            (let ((_%e2887129108%_
                                   (gx#syntax-e _%__stx3977939780%_)))
                              (let ((_%tl2887329115%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2887129108%_)))
                                    (_%hd2887229112%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2887129108%_))))
                                (if (gx#stx-null? _%tl2887329115%_)
                                    (_%__kont3978239783%_ _%hd2887229112%_)
                                    (_%__kont3978439785%_
                                     _%tl2887329115%_
                                     _%hd2887229112%_))))
                            (_%__kont3978639787%_))))))
                 (_%generate128510%_
                  (lambda (_%clause28512%_ _%body28514%_ _%E28515%_)
                    (let* ((_%g2851728541%_
                            (lambda (_%g2851828537%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2851828537%_)))
                           (_%g2851628858%_
                            (lambda (_%g2851828545%_)
                              (if (gx#stx-pair? _%g2851828545%_)
                                  (let ((_%e2852128548%_
                                         (gx#syntax-e _%g2851828545%_)))
                                    (let ((_%hd2852228552%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2852128548%_)))
                                          (_%tl2852328555%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2852128548%_))))
                                      (if (gx#stx-pair? _%tl2852328555%_)
                                          (let ((_%e2852428558%_
                                                 (gx#syntax-e
                                                  _%tl2852328555%_)))
                                            (let ((_%hd2852528562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2852428558%_)))
                                                  (_%tl2852628565%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2852428558%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2852528562%_)
                                                  (let ((_g40442_
                                                         (gx#syntax-split-splice
                                                          _%hd2852528562%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40443_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40442_)
                           (##values-length _g40442_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40443_ 2)))
                    (error "Context expects 2 values" _g40443_)))
              (let ((_%target2852728568%_
                     (let () (declare (not safe)) (##values-ref _g40442_ 0)))
                    (_%tl2852928571%_
                     (let () (declare (not safe)) (##values-ref _g40442_ 1))))
                (if (gx#stx-null? _%tl2852928571%_)
                    (letrec ((_%loop2853028574%_
                              (lambda (_%hd2852828578%_ _%var2853428581%_)
                                (if (gx#stx-pair? _%hd2852828578%_)
                                    (let ((_%e2853128583%_
                                           (gx#syntax-e _%hd2852828578%_)))
                                      (let ((_%lp-hd2853228587%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2853128583%_)))
                                            (_%lp-tl2853328590%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2853128583%_))))
                                        (_%loop2853028574%_
                                         _%lp-tl2853328590%_
                                         (cons _%lp-hd2853228587%_
                                               _%var2853428581%_))))
                                    (let ((_%var2853528593%_
                                           (reverse _%var2853428581%_)))
                                      (if (gx#stx-null? _%tl2852628565%_)
                                          (let ()
                                            (gx#check-duplicate-identifiers
                                             (foldr (lambda (_%g2861928622%_
                                                             _%g2862028625%_)
                                                      (cons _%g2861928622%_
                                                            _%g2862028625%_))
                                                    '()
                                                    _%var2853528593%_)
                                             _%stx28501%_)
                                            (let* ((_%g2862828636%_
                                                    (lambda (_%g2862928632%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g2862928632%_)))
                                                   (_%g2862728730%_
                                                    (lambda (_%g2862928640%_)
                                                      (let* ((_%g2865628664%_
                                                              (lambda (_%g2865728660%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2865728660%_)))
                     (_%g2865528726%_
                      (lambda (_%g2865728668%_)
                        (let* ((_%g2868428692%_
                                (lambda (_%g2868528688%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g2868528688%_)))
                               (_%g2868328714%_
                                (lambda (_%g2868528696%_)
                                  (gx#stx-wrap-source
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons _%hd2852228552%_
                                                     (cons _%g2868528696%_
                                                           '()))
                                               (cons _%g2862928640%_ '())))
                                   (gx#stx-source _%stx28501%_)))))
                          (_%g2868328714%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (foldr (lambda (_%g2871728720%_
                                                        _%g2871828723%_)
                                                 (cons _%g2871728720%_
                                                       _%g2871828723%_))
                                               '()
                                               _%var2853528593%_)
                                        (cons _%g2865728668%_ '())))
                            (gx#stx-source _%stx28501%_)))))))
                (_%g2865528726%_ _%body28514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2862728730%_
                                               (let _%recur28734%_ ((_%rest28737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause28512%_)
                            (_%rest-targets28739%_ _%tgt-lst28503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx3980539806%_
                                                         _%rest28737%_)
                                                        (_%g2874228754%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx3980539806%_))))
                                                   (let ((_%__kont3980839809%_
                                                          (lambda (_%g2874428790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2874528792%_)
                    (let* ((_%g2880728819%_
                            (lambda (_%g2880828815%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2880828815%_)))
                           (_%g2880628850%_
                            (lambda (_%g2880828823%_)
                              (if (gx#stx-pair? _%g2880828823%_)
                                  (let ((_%e2881128826%_
                                         (gx#syntax-e _%g2880828823%_)))
                                    (let ((_%hd2881228830%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2881128826%_)))
                                          (_%tl2881328833%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2881128826%_))))
                                      (|gerbil/core/match[1]#generate-match1|
                                       _%stx28501%_
                                       _%hd2881228830%_
                                       _%g2874528792%_
                                       (_%recur28734%_
                                        _%g2874428790%_
                                        _%tl2881328833%_)
                                       _%E28515%_)))
                                  (_%g2880728819%_ _%g2880828823%_)))))
                      (_%g2880628850%_ _%rest-targets28739%_))))
                 (_%__kont3981039811%_
                  (lambda ()
                    (cons _%hd2852228552%_
                          (foldr (lambda (_%g2876428767%_ _%g2876528770%_)
                                   (cons _%g2876428767%_ _%g2876528770%_))
                                 '()
                                 _%var2853528593%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair?
                                                          _%__stx3980539806%_)
                                                         (let ((_%e2874628780%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%__stx3980539806%_)))
                   (let ((_%tl2874828787%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e2874628780%_)))
                         (_%hd2874728784%_
                          (let ()
                            (declare (not safe))
                            (##car _%e2874628780%_))))
                     (_%__kont3980839809%_ _%tl2874828787%_ _%hd2874728784%_)))
                 (_%__kont3981039811%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2851728541%_
                                           _%g2851828545%_)))))))
                      (_%loop2853028574%_ _%target2852728568%_ '()))
                    (_%g2851728541%_ _%g2851828545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2851728541%_
                                                   _%g2851828545%_))))
                                          (_%g2851728541%_ _%g2851828545%_))))
                                  (_%g2851728541%_ _%g2851828545%_)))))
                      (_%g2851628858%_
                       (list (gx#genident 'K)
                             (let ((__tmp40444
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28512%_)))
                               (declare (not safe))
                               (##apply append __tmp40444))))))))
          (_%generate-body28508%_
           (_%parse-body28506%_ (gx#stx-length _%tgt-lst28503%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx28403%_ _%tgt28405%_ _%clauses28406%_)
        (letrec ((_%reclause28408%_
                  (lambda (_%clause28411%_)
                    (let* ((_%__stx3982139822%_ _%clause28411%_)
                           (_%g2841628431%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3982139822%_))))
                      (let ((_%__kont3982439825%_ (lambda () _%clause28411%_))
                            (_%__kont3982639827%_
                             (lambda (_%g2842128459%_ _%g2842228461%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2842228461%_ '())
                                      _%g2842128459%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3982839829%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx28403%_
                                _%clause28411%_))))
                        (if (gx#stx-pair? _%__stx3982139822%_)
                            (let ((_%e2841828483%_
                                   (gx#syntax-e _%__stx3982139822%_)))
                              (let ((_%tl2842028490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2841828483%_)))
                                    (_%hd2841928487%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2841828483%_))))
                                (if (gx#identifier? _%hd2841928487%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40445_|
                                         _%hd2841928487%_)
                                        (_%__kont3982439825%_)
                                        (_%__kont3982639827%_
                                         _%tl2842028490%_
                                         _%hd2841928487%_))
                                    (_%__kont3982639827%_
                                     _%tl2842028490%_
                                     _%hd2841928487%_))))
                            (_%__kont3982839829%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx28403%_
           (cons _%tgt28405%_ '())
           (gx#stx-map _%reclause28408%_ _%clauses28406%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35744%_)
        (let* ((_%__stx3984939850%_ _%stx35744%_)
               (_%g3574935778%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3984939850%_))))
          (let ((_%__kont3985239853%_
                 (lambda (_%g3575136018%_)
                   (let* ((_%g3603136039%_
                           (lambda (_%g3603236035%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3603236035%_)))
                          (_%g3603036092%_
                           (lambda (_%g3603236043%_)
                             (let* ((_%g3605836066%_
                                     (lambda (_%g3605936062%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g3605936062%_)))
                                    (_%g3605736088%_
                                     (lambda (_%g3605936070%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons _%g3603236043%_ '())
                                                   (cons _%g3605936070%_
                                                         '()))))))
                               (_%g3605736088%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'match)
                                       (cons _%g3603236043%_ _%g3575136018%_))
                                 (gx#stx-source _%stx35744%_)))))))
                     (_%g3603036092%_ (gx#genident 'e)))))
                (_%__kont3985439855%_
                 (lambda (_%g3575835913%_)
                   (let* ((_%g3592635934%_
                           (lambda (_%g3592735930%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3592735930%_)))
                          (_%g3592535987%_
                           (lambda (_%g3592735938%_)
                             (let* ((_%g3595335961%_
                                     (lambda (_%g3595435957%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g3595435957%_)))
                                    (_%g3595235983%_
                                     (lambda (_%g3595435965%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons _%g3592735938%_
                                                   (cons _%g3595435965%_
                                                         '()))))))
                               (_%g3595235983%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'match)
                                       (cons _%g3592735938%_ _%g3575835913%_))
                                 (gx#stx-source _%stx35744%_)))))))
                     (_%g3592535987%_ (gx#genident 'args)))))
                (_%__kont3985639857%_
                 (lambda (_%g3576535805%_ _%g3576635807%_)
                   (let* ((_%g3582135829%_
                           (lambda (_%g3582235825%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3582235825%_)))
                          (_%g3582035882%_
                           (lambda (_%g3582235833%_)
                             (let* ((_%g3584835856%_
                                     (lambda (_%g3584935852%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g3584935852%_)))
                                    (_%g3584735878%_
                                     (lambda (_%g3584935860%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (cons _%g3582235833%_
                                                               (cons _%g3576635807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%g3584935860%_
                                                         '()))))))
                               (_%g3584735878%_
                                (|gerbil/core/match[1]#generate-match|
                                 _%stx35744%_
                                 _%g3582235833%_
                                 _%g3576535805%_))))))
                     (_%g3582035882%_ (gx#genident _%g3576635807%_))))))
            (let* ((_%__match3990239903%_
                    (lambda (_%e3576735785%_
                             _%hd3576835789%_
                             _%tl3576935792%_
                             _%e3577035795%_
                             _%hd3577135799%_
                             _%tl3577235802%_)
                      (let ((_%g3576535805%_ _%tl3577235802%_)
                            (_%g3576635807%_ _%hd3577135799%_))
                        (if (gx#stx-list? _%g3576535805%_)
                            (_%__kont3985639857%_
                             _%g3576535805%_
                             _%g3576635807%_)
                            (let () (declare (not safe)) (_%g3574935778%_))))))
                   (_%__match3989039891%_
                    (lambda (_%e3575935893%_
                             _%hd3576035897%_
                             _%tl3576135900%_
                             _%e3576235903%_
                             _%hd3576335907%_
                             _%tl3576435910%_)
                      (let ((_%g3575835913%_ _%tl3576435910%_))
                        (if (gx#stx-list? _%g3575835913%_)
                            (_%__kont3985439855%_ _%g3575835913%_)
                            (_%__match3990239903%_
                             _%e3575935893%_
                             _%hd3576035897%_
                             _%tl3576135900%_
                             _%e3576235903%_
                             _%hd3576335907%_
                             _%tl3576435910%_)))))
                   (_%__match3987439875%_
                    (lambda (_%e3575235998%_
                             _%hd3575336002%_
                             _%tl3575436005%_
                             _%e3575536008%_
                             _%hd3575636012%_
                             _%tl3575736015%_)
                      (let ((_%g3575136018%_ _%tl3575736015%_))
                        (if (gx#stx-list? _%g3575136018%_)
                            (_%__kont3985239853%_ _%g3575136018%_)
                            (_%__match3990239903%_
                             _%e3575235998%_
                             _%hd3575336002%_
                             _%tl3575436005%_
                             _%e3575536008%_
                             _%hd3575636012%_
                             _%tl3575736015%_))))))
              (if (gx#stx-pair? _%__stx3984939850%_)
                  (let ((_%e3575235998%_ (gx#syntax-e _%__stx3984939850%_)))
                    (let ((_%tl3575436005%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3575235998%_)))
                          (_%hd3575336002%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3575235998%_))))
                      (if (gx#stx-pair? _%tl3575436005%_)
                          (let ((_%e3575536008%_
                                 (gx#syntax-e _%tl3575436005%_)))
                            (let ((_%tl3575736015%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3575536008%_)))
                                  (_%hd3575636012%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3575536008%_))))
                              (if (gx#identifier? _%hd3575636012%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40446_|
                                       _%hd3575636012%_)
                                      (_%__match3987439875%_
                                       _%e3575235998%_
                                       _%hd3575336002%_
                                       _%tl3575436005%_
                                       _%e3575536008%_
                                       _%hd3575636012%_
                                       _%tl3575736015%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40447_|
                                           _%hd3575636012%_)
                                          (_%__match3989039891%_
                                           _%e3575235998%_
                                           _%hd3575336002%_
                                           _%tl3575436005%_
                                           _%e3575536008%_
                                           _%hd3575636012%_
                                           _%tl3575736015%_)
                                          (_%__match3990239903%_
                                           _%e3575235998%_
                                           _%hd3575336002%_
                                           _%tl3575436005%_
                                           _%e3575536008%_
                                           _%hd3575636012%_
                                           _%tl3575736015%_)))
                                  (_%__match3990239903%_
                                   _%e3575235998%_
                                   _%hd3575336002%_
                                   _%tl3575436005%_
                                   _%e3575536008%_
                                   _%hd3575636012%_
                                   _%tl3575736015%_))))
                          (let () (declare (not safe)) (_%g3574935778%_)))))
                  (let () (declare (not safe)) (_%g3574935778%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx36100%_)
        (let* ((_%g3610336127%_
                (lambda (_%g3610436123%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3610436123%_)))
               (_%g3610236335%_
                (lambda (_%g3610436131%_)
                  (if (gx#stx-pair? _%g3610436131%_)
                      (let ((_%e3610736134%_ (gx#syntax-e _%g3610436131%_)))
                        (let ((_%hd3610836138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3610736134%_)))
                              (_%tl3610936141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3610736134%_))))
                          (if (gx#stx-pair? _%tl3610936141%_)
                              (let ((_%e3611036144%_
                                     (gx#syntax-e _%tl3610936141%_)))
                                (let ((_%hd3611136148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3611036144%_)))
                                      (_%tl3611236151%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3611036144%_))))
                                  (if (gx#stx-pair/null? _%hd3611136148%_)
                                      (let ((_g40448_
                                             (gx#syntax-split-splice
                                              _%hd3611136148%_
                                              '0)))
                                        (begin
                                          (let ((_g40449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40448_)
                                                       (##values-length
                                                        _g40448_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40449_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40449_)))
                                          (let ((_%target3611336154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40448_ 0)))
                                                (_%tl3611536157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40448_ 1))))
                                            (if (gx#stx-null? _%tl3611536157%_)
                                                (letrec ((_%loop3611636160%_
                                                          (lambda (_%hd3611436164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3612036167%_)
                    (if (gx#stx-pair? _%hd3611436164%_)
                        (let ((_%e3611736169%_ (gx#syntax-e _%hd3611436164%_)))
                          (let ((_%lp-hd3611836173%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3611736169%_)))
                                (_%lp-tl3611936176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3611736169%_))))
                            (_%loop3611636160%_
                             _%lp-tl3611936176%_
                             (cons _%lp-hd3611836173%_ _%e3612036167%_))))
                        (let ((_%e3612136179%_ (reverse _%e3612036167%_)))
                          (if (gx#stx-list? _%tl3611236151%_)
                              (let* ((_%g3620236219%_
                                      (lambda (_%g3620336215%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3620336215%_)))
                                     (_%g3620136323%_
                                      (lambda (_%g3620336223%_)
                                        (if (gx#stx-pair/null? _%g3620336223%_)
                                            (let ((_g40450_
                                                   (gx#syntax-split-splice
                                                    _%g3620336223%_
                                                    '0)))
                                              (begin
                                                (let ((_g40451_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40450_)
                                                             (##values-length
                                                              _g40450_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40451_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3620536226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40450_
                                                          0)))
                                                      (_%tl3620736229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40450_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3620736229%_)
                                                      (letrec ((_%loop3620836232%_
                                                                (lambda (_%hd3620636236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$e3621236239%_)
                          (if (gx#stx-pair? _%hd3620636236%_)
                              (let ((_%e3620936241%_
                                     (gx#syntax-e _%hd3620636236%_)))
                                (let ((_%lp-hd3621036245%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3620936241%_)))
                                      (_%lp-tl3621136248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3620936241%_))))
                                  (_%loop3620836232%_
                                   _%lp-tl3621136248%_
                                   (cons _%lp-hd3621036245%_
                                         _%$e3621236239%_))))
                              (let* ((_%$e3621336251%_
                                      (reverse _%$e3621236239%_))
                                     (_%g3627036278%_
                                      (lambda (_%g3627136274%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3627136274%_)))
                                     (_%g3626936311%_
                                      (lambda (_%g3627136282%_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _%e3612136179%_
                                                       _%$e3621336251%_)
                                                      (foldr (lambda (_%g3629936303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g3630036306%_
                              _%g3630136308%_)
                       (cons (cons _%g3630036306%_ (cons _%g3629936303%_ '()))
                             _%g3630136308%_))
                     '()
                     _%e3612136179%_
                     _%$e3621336251%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g3627136282%_
                                                          '()))))))
                                (_%g3626936311%_
                                 (|gerbil/core/match[1]#generate-match*|
                                  _%stx36100%_
                                  (foldr (lambda (_%g3631436317%_
                                                  _%g3631536320%_)
                                           (cons _%g3631436317%_
                                                 _%g3631536320%_))
                                         '()
                                         _%$e3621336251%_)
                                  _%tl3611236151%_)))))))
                (_%loop3620836232%_ _%target3620536226%_ '()))
              (_%g3620236219%_ _%g3620336223%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3620236219%_
                                             _%g3620336223%_)))))
                                (_%g3620136323%_
                                 (gx#gentemps
                                  (foldr (lambda (_%g3632636329%_
                                                  _%g3632736332%_)
                                           (cons _%g3632636329%_
                                                 _%g3632736332%_))
                                         '()
                                         _%e3612136179%_))))
                              (_%g3610336127%_ _%g3610436131%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3611636160%_
                                                   _%target3611336154%_
                                                   '()))
                                                (_%g3610336127%_
                                                 _%g3610436131%_)))))
                                      (_%g3610336127%_ _%g3610436131%_))))
                              (_%g3610336127%_ _%g3610436131%_))))
                      (_%g3610336127%_ _%g3610436131%_)))))
          (_%g3610236335%_ _%stx36100%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx36341%_)
        (let* ((_%__stx3990539906%_ _%$stx36341%_)
               (_%g3634736430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3990539906%_))))
          (let ((_%__kont3990839909%_
                 (lambda (_%g3634936750%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3676636769%_ _%g3676736772%_)
                                        (cons _%g3676636769%_ _%g3676736772%_))
                                      '()
                                      _%g3634936750%_)))))
                (_%__kont3991239913%_
                 (lambda (_%g3636536660%_
                          _%g3636636662%_
                          _%g3636736663%_
                          _%g3636836664%_)
                   (cons _%g3636836664%_
                         (cons (cons (cons _%g3636736663%_
                                           (cons _%g3636636662%_ '()))
                                     '())
                               (foldr (lambda (_%g3668636689%_ _%g3668736692%_)
                                        (cons _%g3668636689%_ _%g3668736692%_))
                                      '()
                                      _%g3636536660%_)))))
                (_%__kont3991639917%_
                 (lambda (_%g3639036535%_ _%g3639136537%_ _%g3639236538%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3656036567%_ _%g3656136570%_)
                                        (cons _%g3656036567%_ _%g3656136570%_))
                                      '()
                                      _%g3639136537%_)
                               (cons (cons (foldr (lambda (_%g3656236573%_
                                                           _%g3656336576%_)
                                                    (cons _%g3656236573%_
                                                          _%g3656336576%_))
                                                  '()
                                                  _%g3639236538%_)
                                           (foldr (lambda (_%g3656436579%_
                                                           _%g3656536582%_)
                                                    (cons _%g3656436579%_
                                                          _%g3656536582%_))
                                                  '()
                                                  _%g3639036535%_))
                                     '()))))))
            (let* ((_%__match3999839999%_
                    (lambda (_%e3639336437%_
                             _%hd3639436441%_
                             _%tl3639536444%_
                             _%e3639636447%_
                             _%hd3639736451%_
                             _%tl3639836454%_
                             _%__splice3991839919%_
                             _%target3639936457%_
                             _%tl3640136460%_)
                      (letrec ((_%loop3640236463%_
                                (lambda (_%hd3640036467%_
                                         _%expr3640636470%_
                                         _%hd3640736471%_)
                                  (if (gx#stx-pair? _%hd3640036467%_)
                                      (let ((_%e3640336473%_
                                             (gx#syntax-e _%hd3640036467%_)))
                                        (let ((_%lp-tl3640536480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3640336473%_)))
                                              (_%lp-hd3640436477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3640336473%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3640436477%_)
                                              (let ((_%e3641036483%_
                                                     (gx#syntax-e
                                                      _%lp-hd3640436477%_)))
                                                (let ((_%tl3641236490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3641036483%_)))
                                                      (_%hd3641136487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3641036483%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3641236490%_)
                                                      (let ((_%e3641336493%_
                                                             (gx#syntax-e
                                                              _%tl3641236490%_)))
                                                        (let ((_%tl3641536500%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3641336493%_)))
                      (_%hd3641436497%_
                       (let () (declare (not safe)) (##car _%e3641336493%_))))
                  (if (gx#stx-null? _%tl3641536500%_)
                      (_%loop3640236463%_
                       _%lp-tl3640536480%_
                       (cons _%hd3641436497%_ _%expr3640636470%_)
                       (cons _%hd3641136487%_ _%hd3640736471%_))
                      (let () (declare (not safe)) (_%g3634736430%_)))))
              (let () (declare (not safe)) (_%g3634736430%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3634736430%_)))))
                                      (let ((_%hd3640936505%_
                                             (reverse _%hd3640736471%_))
                                            (_%expr3640836503%_
                                             (reverse _%expr3640636470%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3639836454%_)
                                            (let ((_%__splice3992039921%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3639836454%_
                                                    '0)))
                                              (let ((_%tl3641836510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3992039921%_
                                                        '1)))
                                                    (_%target3641636507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3992039921%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3641836510%_)
                                                    (letrec ((_%loop3641936513%_
                                                              (lambda (_%hd3641736517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3642336520%_)
                        (if (gx#stx-pair? _%hd3641736517%_)
                            (let ((_%e3642036522%_
                                   (gx#syntax-e _%hd3641736517%_)))
                              (let ((_%lp-tl3642236529%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3642036522%_)))
                                    (_%lp-hd3642136526%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3642036522%_))))
                                (_%loop3641936513%_
                                 _%lp-tl3642236529%_
                                 (cons _%lp-hd3642136526%_
                                       _%body3642336520%_))))
                            (let ((_%body3642436532%_
                                   (reverse _%body3642336520%_)))
                              (_%__kont3991639917%_
                               _%body3642436532%_
                               _%expr3640836503%_
                               _%hd3640936505%_))))))
              (_%loop3641936513%_ _%target3641636507%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634736430%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634736430%_))))))))
                        (_%loop3640236463%_ _%target3639936457%_ '() '()))))
                   (_%__match3999039991%_
                    (lambda (_%e3639336437%_
                             _%hd3639436441%_
                             _%tl3639536444%_
                             _%e3639636447%_
                             _%hd3639736451%_
                             _%tl3639836454%_)
                      (if (gx#stx-pair/null? _%hd3639736451%_)
                          (let ((_%__splice3991839919%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3639736451%_
                                  '0)))
                            (let ((_%tl3640136460%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3991839919%_ '1)))
                                  (_%target3639936457%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3991839919%_
                                      '0))))
                              (if (gx#stx-null? _%tl3640136460%_)
                                  (_%__match3999839999%_
                                   _%e3639336437%_
                                   _%hd3639436441%_
                                   _%tl3639536444%_
                                   _%e3639636447%_
                                   _%hd3639736451%_
                                   _%tl3639836454%_
                                   _%__splice3991839919%_
                                   _%target3639936457%_
                                   _%tl3640136460%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634736430%_)))))
                          (let () (declare (not safe)) (_%g3634736430%_)))))
                   (_%__match3997839979%_
                    (lambda (_%e3636936592%_
                             _%hd3637036596%_
                             _%tl3637136599%_
                             _%e3637236602%_
                             _%hd3637336606%_
                             _%tl3637436609%_
                             _%e3637536612%_
                             _%hd3637636616%_
                             _%tl3637736619%_
                             _%e3637836622%_
                             _%hd3637936626%_
                             _%tl3638036629%_
                             _%__splice3991439915%_
                             _%target3638136632%_
                             _%tl3638336635%_)
                      (letrec ((_%loop3638436638%_
                                (lambda (_%hd3638236642%_ _%body3638836645%_)
                                  (if (gx#stx-pair? _%hd3638236642%_)
                                      (let ((_%e3638536647%_
                                             (gx#syntax-e _%hd3638236642%_)))
                                        (let ((_%lp-tl3638736654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3638536647%_)))
                                              (_%lp-hd3638636651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3638536647%_))))
                                          (_%loop3638436638%_
                                           _%lp-tl3638736654%_
                                           (cons _%lp-hd3638636651%_
                                                 _%body3638836645%_))))
                                      (let ((_%body3638936657%_
                                             (reverse _%body3638836645%_)))
                                        (let ((_%g3636536660%_
                                               _%body3638936657%_)
                                              (_%g3636636662%_
                                               _%hd3637936626%_)
                                              (_%g3636736663%_
                                               _%hd3637636616%_)
                                              (_%g3636836664%_
                                               _%hd3637036596%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3636736663%_)
                                              (_%__kont3991239913%_
                                               _%g3636536660%_
                                               _%g3636636662%_
                                               _%g3636736663%_
                                               _%g3636836664%_)
                                              (_%__match3999039991%_
                                               _%e3636936592%_
                                               _%hd3637036596%_
                                               _%tl3637136599%_
                                               _%e3637236602%_
                                               _%hd3637336606%_
                                               _%tl3637436609%_))))))))
                        (_%loop3638436638%_ _%target3638136632%_ '()))))
                   (_%__match3994439945%_
                    (lambda (_%e3635036702%_
                             _%hd3635136706%_
                             _%tl3635236709%_
                             _%e3635336712%_
                             _%hd3635436716%_
                             _%tl3635536719%_
                             _%__splice3991039911%_
                             _%target3635636722%_
                             _%tl3635836725%_)
                      (letrec ((_%loop3635936728%_
                                (lambda (_%hd3635736732%_ _%body3636336735%_)
                                  (if (gx#stx-pair? _%hd3635736732%_)
                                      (let ((_%e3636036737%_
                                             (gx#syntax-e _%hd3635736732%_)))
                                        (let ((_%lp-tl3636236744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3636036737%_)))
                                              (_%lp-hd3636136741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3636036737%_))))
                                          (_%loop3635936728%_
                                           _%lp-tl3636236744%_
                                           (cons _%lp-hd3636136741%_
                                                 _%body3636336735%_))))
                                      (let ((_%body3636436747%_
                                             (reverse _%body3636336735%_)))
                                        (_%__kont3990839909%_
                                         _%body3636436747%_))))))
                        (_%loop3635936728%_ _%target3635636722%_ '())))))
              (if (gx#stx-pair? _%__stx3990539906%_)
                  (let ((_%e3635036702%_ (gx#syntax-e _%__stx3990539906%_)))
                    (let ((_%tl3635236709%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3635036702%_)))
                          (_%hd3635136706%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3635036702%_))))
                      (if (gx#stx-pair? _%tl3635236709%_)
                          (let ((_%e3635336712%_
                                 (gx#syntax-e _%tl3635236709%_)))
                            (let ((_%tl3635536719%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3635336712%_)))
                                  (_%hd3635436716%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3635336712%_))))
                              (if (gx#stx-null? _%hd3635436716%_)
                                  (if (gx#stx-pair/null? _%tl3635536719%_)
                                      (let ((_%__splice3991039911%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3635536719%_
                                              '0)))
                                        (let ((_%tl3635836725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3991039911%_
                                                  '1)))
                                              (_%target3635636722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3991039911%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3635836725%_)
                                              (_%__match3994439945%_
                                               _%e3635036702%_
                                               _%hd3635136706%_
                                               _%tl3635236709%_
                                               _%e3635336712%_
                                               _%hd3635436716%_
                                               _%tl3635536719%_
                                               _%__splice3991039911%_
                                               _%target3635636722%_
                                               _%tl3635836725%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3635436716%_)
                                                  (let ((_%__splice3991839919%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3635436716%_
                                                          '0)))
                                                    (let ((_%tl3640136460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3991839919%_
                                                              '1)))
                                                          (_%target3639936457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3991839919%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3640136460%_)
                                                          (_%__match3999839999%_
                                                           _%e3635036702%_
                                                           _%hd3635136706%_
                                                           _%tl3635236709%_
                                                           _%e3635336712%_
                                                           _%hd3635436716%_
                                                           _%tl3635536719%_
                                                           _%__splice3991839919%_
                                                           _%target3639936457%_
                                                           _%tl3640136460%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3634736430%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3634736430%_))))))
                                      (if (gx#stx-pair/null? _%hd3635436716%_)
                                          (let ((_%__splice3991839919%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3635436716%_
                                                  '0)))
                                            (let ((_%tl3640136460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3991839919%_
                                                      '1)))
                                                  (_%target3639936457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3991839919%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3640136460%_)
                                                  (_%__match3999839999%_
                                                   _%e3635036702%_
                                                   _%hd3635136706%_
                                                   _%tl3635236709%_
                                                   _%e3635336712%_
                                                   _%hd3635436716%_
                                                   _%tl3635536719%_
                                                   _%__splice3991839919%_
                                                   _%target3639936457%_
                                                   _%tl3640136460%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3634736430%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634736430%_))))
                                  (if (gx#stx-pair? _%hd3635436716%_)
                                      (let ((_%e3637536612%_
                                             (gx#syntax-e _%hd3635436716%_)))
                                        (let ((_%tl3637736619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3637536612%_)))
                                              (_%hd3637636616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3637536612%_))))
                                          (if (gx#stx-pair? _%tl3637736619%_)
                                              (let ((_%e3637836622%_
                                                     (gx#syntax-e
                                                      _%tl3637736619%_)))
                                                (let ((_%tl3638036629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3637836622%_)))
                                                      (_%hd3637936626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3637836622%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3638036629%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3635536719%_)
                                                          (let ((_%__splice3991439915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3635536719%_ '0)))
                    (let ((_%tl3638336635%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3991439915%_ '1)))
                          (_%target3638136632%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3991439915%_ '0))))
                      (if (gx#stx-null? _%tl3638336635%_)
                          (_%__match3997839979%_
                           _%e3635036702%_
                           _%hd3635136706%_
                           _%tl3635236709%_
                           _%e3635336712%_
                           _%hd3635436716%_
                           _%tl3635536719%_
                           _%e3637536612%_
                           _%hd3637636616%_
                           _%tl3637736619%_
                           _%e3637836622%_
                           _%hd3637936626%_
                           _%tl3638036629%_
                           _%__splice3991439915%_
                           _%target3638136632%_
                           _%tl3638336635%_)
                          (if (gx#stx-pair/null? _%hd3635436716%_)
                              (let ((_%__splice3991839919%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3635436716%_
                                      '0)))
                                (let ((_%tl3640136460%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3991839919%_
                                          '1)))
                                      (_%target3639936457%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3991839919%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3640136460%_)
                                      (_%__match3999839999%_
                                       _%e3635036702%_
                                       _%hd3635136706%_
                                       _%tl3635236709%_
                                       _%e3635336712%_
                                       _%hd3635436716%_
                                       _%tl3635536719%_
                                       _%__splice3991839919%_
                                       _%target3639936457%_
                                       _%tl3640136460%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3634736430%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3634736430%_))))))
                  (if (gx#stx-pair/null? _%hd3635436716%_)
                      (let ((_%__splice3991839919%_
                             (gx#syntax-split-splice->vector
                              _%hd3635436716%_
                              '0)))
                        (let ((_%tl3640136460%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3991839919%_ '1)))
                              (_%target3639936457%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3991839919%_ '0))))
                          (if (gx#stx-null? _%tl3640136460%_)
                              (_%__match3999839999%_
                               _%e3635036702%_
                               _%hd3635136706%_
                               _%tl3635236709%_
                               _%e3635336712%_
                               _%hd3635436716%_
                               _%tl3635536719%_
                               _%__splice3991839919%_
                               _%target3639936457%_
                               _%tl3640136460%_)
                              (let ()
                                (declare (not safe))
                                (_%g3634736430%_)))))
                      (let () (declare (not safe)) (_%g3634736430%_))))
              (if (gx#stx-pair/null? _%hd3635436716%_)
                  (let ((_%__splice3991839919%_
                         (gx#syntax-split-splice->vector _%hd3635436716%_ '0)))
                    (let ((_%tl3640136460%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3991839919%_ '1)))
                          (_%target3639936457%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3991839919%_ '0))))
                      (if (gx#stx-null? _%tl3640136460%_)
                          (_%__match3999839999%_
                           _%e3635036702%_
                           _%hd3635136706%_
                           _%tl3635236709%_
                           _%e3635336712%_
                           _%hd3635436716%_
                           _%tl3635536719%_
                           _%__splice3991839919%_
                           _%target3639936457%_
                           _%tl3640136460%_)
                          (let () (declare (not safe)) (_%g3634736430%_)))))
                  (let () (declare (not safe)) (_%g3634736430%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3635436716%_)
                                                  (let ((_%__splice3991839919%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3635436716%_
                                                          '0)))
                                                    (let ((_%tl3640136460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3991839919%_
                                                              '1)))
                                                          (_%target3639936457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3991839919%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3640136460%_)
                                                          (_%__match3999839999%_
                                                           _%e3635036702%_
                                                           _%hd3635136706%_
                                                           _%tl3635236709%_
                                                           _%e3635336712%_
                                                           _%hd3635436716%_
                                                           _%tl3635536719%_
                                                           _%__splice3991839919%_
                                                           _%target3639936457%_
                                                           _%tl3640136460%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3634736430%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3634736430%_))))))
                                      (if (gx#stx-pair/null? _%hd3635436716%_)
                                          (let ((_%__splice3991839919%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3635436716%_
                                                  '0)))
                                            (let ((_%tl3640136460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3991839919%_
                                                      '1)))
                                                  (_%target3639936457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3991839919%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3640136460%_)
                                                  (_%__match3999839999%_
                                                   _%e3635036702%_
                                                   _%hd3635136706%_
                                                   _%tl3635236709%_
                                                   _%e3635336712%_
                                                   _%hd3635436716%_
                                                   _%tl3635536719%_
                                                   _%__splice3991839919%_
                                                   _%target3639936457%_
                                                   _%tl3640136460%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3634736430%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634736430%_)))))))
                          (let () (declare (not safe)) (_%g3634736430%_)))))
                  (let () (declare (not safe)) (_%g3634736430%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36783%_)
        (let* ((_%__stx4000140002%_ _%$stx36783%_)
               (_%g3678836840%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4000140002%_))))
          (let ((_%__kont4000440005%_
                 (lambda (_%g3679037006%_
                          _%g3679137008%_
                          _%g3679237009%_
                          _%g3679337010%_
                          _%g3679437011%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3679337010%_
                                           (cons _%g3679237009%_ '()))
                                     '())
                               (cons (cons _%g3679437011%_
                                           (cons _%g3679137008%_
                                                 (foldr (lambda (_%g3703637039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3703737042%_)
                  (cons _%g3703637039%_ _%g3703737042%_))
                '()
                _%g3679037006%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4000840009%_
                 (lambda (_%g3681936895%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3691236915%_ _%g3691336918%_)
                                        (cons _%g3691236915%_ _%g3691336918%_))
                                      '()
                                      _%g3681936895%_))))))
            (let* ((_%__match4007440075%_
                    (lambda (_%e3682036847%_
                             _%hd3682136851%_
                             _%tl3682236854%_
                             _%e3682336857%_
                             _%hd3682436861%_
                             _%tl3682536864%_
                             _%__splice4001040011%_
                             _%target3682636867%_
                             _%tl3682836870%_)
                      (letrec ((_%loop3682936873%_
                                (lambda (_%hd3682736877%_ _%body3683336880%_)
                                  (if (gx#stx-pair? _%hd3682736877%_)
                                      (let ((_%e3683036882%_
                                             (gx#syntax-e _%hd3682736877%_)))
                                        (let ((_%lp-tl3683236889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3683036882%_)))
                                              (_%lp-hd3683136886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3683036882%_))))
                                          (_%loop3682936873%_
                                           _%lp-tl3683236889%_
                                           (cons _%lp-hd3683136886%_
                                                 _%body3683336880%_))))
                                      (let ((_%body3683436892%_
                                             (reverse _%body3683336880%_)))
                                        (_%__kont4000840009%_
                                         _%body3683436892%_))))))
                        (_%loop3682936873%_ _%target3682636867%_ '()))))
                   (_%__match4005240053%_
                    (lambda (_%e3679536928%_
                             _%hd3679636932%_
                             _%tl3679736935%_
                             _%e3679836938%_
                             _%hd3679936942%_
                             _%tl3680036945%_
                             _%e3680136948%_
                             _%hd3680236952%_
                             _%tl3680336955%_
                             _%e3680436958%_
                             _%hd3680536962%_
                             _%tl3680636965%_
                             _%e3680736968%_
                             _%hd3680836972%_
                             _%tl3680936975%_
                             _%__splice4000640007%_
                             _%target3681036978%_
                             _%tl3681236981%_)
                      (letrec ((_%loop3681336984%_
                                (lambda (_%hd3681136988%_ _%body3681736991%_)
                                  (if (gx#stx-pair? _%hd3681136988%_)
                                      (let ((_%e3681436993%_
                                             (gx#syntax-e _%hd3681136988%_)))
                                        (let ((_%lp-tl3681637000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3681436993%_)))
                                              (_%lp-hd3681536997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3681436993%_))))
                                          (_%loop3681336984%_
                                           _%lp-tl3681637000%_
                                           (cons _%lp-hd3681536997%_
                                                 _%body3681736991%_))))
                                      (let ((_%body3681837003%_
                                             (reverse _%body3681736991%_)))
                                        (_%__kont4000440005%_
                                         _%body3681837003%_
                                         _%tl3680336955%_
                                         _%hd3680836972%_
                                         _%hd3680536962%_
                                         _%hd3679636932%_))))))
                        (_%loop3681336984%_ _%target3681036978%_ '())))))
              (if (gx#stx-pair? _%__stx4000140002%_)
                  (let ((_%e3679536928%_ (gx#syntax-e _%__stx4000140002%_)))
                    (let ((_%tl3679736935%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3679536928%_)))
                          (_%hd3679636932%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3679536928%_))))
                      (if (gx#stx-pair? _%tl3679736935%_)
                          (let ((_%e3679836938%_
                                 (gx#syntax-e _%tl3679736935%_)))
                            (let ((_%tl3680036945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3679836938%_)))
                                  (_%hd3679936942%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3679836938%_))))
                              (if (gx#stx-pair? _%hd3679936942%_)
                                  (let ((_%e3680136948%_
                                         (gx#syntax-e _%hd3679936942%_)))
                                    (let ((_%tl3680336955%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3680136948%_)))
                                          (_%hd3680236952%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3680136948%_))))
                                      (if (gx#stx-pair? _%hd3680236952%_)
                                          (let ((_%e3680436958%_
                                                 (gx#syntax-e
                                                  _%hd3680236952%_)))
                                            (let ((_%tl3680636965%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3680436958%_)))
                                                  (_%hd3680536962%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3680436958%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3680636965%_)
                                                  (let ((_%e3680736968%_
                                                         (gx#syntax-e
                                                          _%tl3680636965%_)))
                                                    (let ((_%tl3680936975%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3680736968%_)))
                                                          (_%hd3680836972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3680736968%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3680936975%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3680036945%_)
                                                              (let ((_%__splice4000640007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3680036945%_
                              '0)))
                        (let ((_%tl3681236981%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4000640007%_ '1)))
                              (_%target3681036978%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4000640007%_ '0))))
                          (if (gx#stx-null? _%tl3681236981%_)
                              (_%__match4005240053%_
                               _%e3679536928%_
                               _%hd3679636932%_
                               _%tl3679736935%_
                               _%e3679836938%_
                               _%hd3679936942%_
                               _%tl3680036945%_
                               _%e3680136948%_
                               _%hd3680236952%_
                               _%tl3680336955%_
                               _%e3680436958%_
                               _%hd3680536962%_
                               _%tl3680636965%_
                               _%e3680736968%_
                               _%hd3680836972%_
                               _%tl3680936975%_
                               _%__splice4000640007%_
                               _%target3681036978%_
                               _%tl3681236981%_)
                              (let ()
                                (declare (not safe))
                                (_%g3678836840%_)))))
                      (let () (declare (not safe)) (_%g3678836840%_)))
                  (let () (declare (not safe)) (_%g3678836840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3678836840%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3678836840%_)))))
                                  (if (gx#stx-null? _%hd3679936942%_)
                                      (if (gx#stx-pair/null? _%tl3680036945%_)
                                          (let ((_%__splice4001040011%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3680036945%_
                                                  '0)))
                                            (let ((_%tl3682836870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4001040011%_
                                                      '1)))
                                                  (_%target3682636867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4001040011%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3682836870%_)
                                                  (_%__match4007440075%_
                                                   _%e3679536928%_
                                                   _%hd3679636932%_
                                                   _%tl3679736935%_
                                                   _%e3679836938%_
                                                   _%hd3679936942%_
                                                   _%tl3680036945%_
                                                   _%__splice4001040011%_
                                                   _%target3682636867%_
                                                   _%tl3682836870%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3678836840%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3678836840%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3678836840%_))))))
                          (let () (declare (not safe)) (_%g3678836840%_)))))
                  (let () (declare (not safe)) (_%g3678836840%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx37051%_)
        (let* ((_%__stx4007740078%_ _%$stx37051%_)
               (_%g3706237208%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4007740078%_))))
          (let ((_%__kont4008040081%_
                 (lambda (_%g3706437808%_ _%g3706537810%_ _%g3706637811%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3783237835%_ _%g3783337838%_)
                                  (cons (cons _%g3706637811%_
                                              (cons _%g3783237835%_
                                                    (cons _%g3706437808%_
                                                          '())))
                                        _%g3783337838%_))
                                '()
                                _%g3706537810%_))))
                (_%__kont4008440085%_
                 (lambda (_%g3708837700%_ _%g3708937702%_ _%g3709037703%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3772437727%_ _%g3772537730%_)
                                  (cons (cons _%g3709037703%_
                                              (cons _%g3772437727%_
                                                    (cons _%g3708837700%_
                                                          '())))
                                        _%g3772537730%_))
                                '()
                                _%g3708937702%_))))
                (_%__kont4008840089%_
                 (lambda (_%g3711237602%_ _%g3711337604%_ _%g3711437605%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3711437605%_
                                     (cons _%g3711337604%_
                                           (cons _%g3711237602%_ '())))
                               '()))))
                (_%__kont4009040091%_
                 (lambda (_%g3713037528%_ _%g3713137530%_)
                   (cons _%g3713137530%_ (cons _%g3713037528%_ '()))))
                (_%__kont4009240093%_
                 (lambda (_%g3714137476%_ _%g3714237478%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3714237478%_
                                           (cons _%g3714137476%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont4009440095%_
                 (lambda (_%g3714937428%_ _%g3715037430%_ _%g3715137431%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3715137431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3715037430%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3714937428%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4009640097%_
                 (lambda (_%g3716437359%_ _%g3716537361%_ _%g3716637362%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3716637362%_
                                                       (cons _%g3716537361%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3716437359%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4009840099%_
                 (lambda (_%g3718037279%_
                          _%g3718137281%_
                          _%g3718237282%_
                          _%g3718337283%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3718337283%_
                                                       (cons _%g3718237282%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3718037279%_
                                                             (cons (cons _%g3718137281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match4025040251%_
                    (lambda (_%e3715237388%_
                             _%hd3715337392%_
                             _%tl3715437395%_
                             _%e3715537398%_
                             _%hd3715637402%_
                             _%tl3715737405%_
                             _%e3715837408%_
                             _%hd3715937412%_
                             _%tl3716037415%_)
                      (if (gx#identifier? _%hd3715937412%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40452_|
                               _%hd3715937412%_)
                              (if (gx#stx-pair? _%tl3716037415%_)
                                  (let ((_%e3716137418%_
                                         (gx#syntax-e _%tl3716037415%_)))
                                    (let ((_%tl3716337425%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3716137418%_)))
                                          (_%hd3716237422%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3716137418%_))))
                                      (if (gx#stx-null? _%tl3716337425%_)
                                          (_%__kont4009440095%_
                                           _%hd3716237422%_
                                           _%hd3715637402%_
                                           _%hd3715337392%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706237208%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706237208%_)))
                              (let () (declare (not safe)) (_%g3706237208%_)))
                          (if (gx#stx-datum? _%hd3715937412%_)
                              (let ((_%e3717637345%_
                                     (gx#stx-e _%hd3715937412%_)))
                                (if (equal? _%e3717637345%_ '::)
                                    (if (gx#stx-pair? _%tl3716037415%_)
                                        (let ((_%e3717737349%_
                                               (gx#syntax-e _%tl3716037415%_)))
                                          (let ((_%tl3717937356%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3717737349%_)))
                                                (_%hd3717837353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3717737349%_))))
                                            (if (gx#stx-null? _%tl3717937356%_)
                                                (_%__kont4009640097%_
                                                 _%hd3717837353%_
                                                 _%hd3715637402%_
                                                 _%hd3715337392%_)
                                                (if (gx#stx-pair?
                                                     _%tl3717937356%_)
                                                    (let ((_%e3719737259%_
                                                           (gx#syntax-e
                                                            _%tl3717937356%_)))
                                                      (let ((_%tl3719937266%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3719737259%_)))
                    (_%hd3719837263%_
                     (let () (declare (not safe)) (##car _%e3719737259%_))))
                (if (gx#identifier? _%hd3719837263%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40453_|
                         _%hd3719837263%_)
                        (if (gx#stx-pair? _%tl3719937266%_)
                            (let ((_%e3720037269%_
                                   (gx#syntax-e _%tl3719937266%_)))
                              (let ((_%tl3720237276%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3720037269%_)))
                                    (_%hd3720137273%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3720037269%_))))
                                (if (gx#stx-null? _%tl3720237276%_)
                                    (_%__kont4009840099%_
                                     _%hd3720137273%_
                                     _%hd3717837353%_
                                     _%hd3715637402%_
                                     _%hd3715337392%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_)))))
                            (let () (declare (not safe)) (_%g3706237208%_)))
                        (let () (declare (not safe)) (_%g3706237208%_)))
                    (let () (declare (not safe)) (_%g3706237208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3706237208%_))))))
                   (_%__match4023040231%_
                    (lambda (_%e3714337456%_
                             _%hd3714437460%_
                             _%tl3714537463%_
                             _%e3714637466%_
                             _%hd3714737470%_
                             _%tl3714837473%_)
                      (if (gx#stx-null? _%tl3714837473%_)
                          (_%__kont4009240093%_
                           _%hd3714737470%_
                           _%hd3714437460%_)
                          (if (gx#stx-pair? _%tl3714837473%_)
                              (let ((_%e3715837408%_
                                     (gx#syntax-e _%tl3714837473%_)))
                                (let ((_%tl3716037415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3715837408%_)))
                                      (_%hd3715937412%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3715837408%_))))
                                  (if (gx#identifier? _%hd3715937412%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40452_|
                                           _%hd3715937412%_)
                                          (if (gx#stx-pair? _%tl3716037415%_)
                                              (let ((_%e3716137418%_
                                                     (gx#syntax-e
                                                      _%tl3716037415%_)))
                                                (let ((_%tl3716337425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3716137418%_)))
                                                      (_%hd3716237422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3716137418%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3716337425%_)
                                                      (_%__kont4009440095%_
                                                       _%hd3716237422%_
                                                       _%hd3714737470%_
                                                       _%hd3714437460%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3706237208%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706237208%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706237208%_)))
                                      (if (gx#stx-datum? _%hd3715937412%_)
                                          (let ((_%e3717637345%_
                                                 (gx#stx-e _%hd3715937412%_)))
                                            (if (equal? _%e3717637345%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3716037415%_)
                                                    (let ((_%e3717737349%_
                                                           (gx#syntax-e
                                                            _%tl3716037415%_)))
                                                      (let ((_%tl3717937356%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3717737349%_)))
                    (_%hd3717837353%_
                     (let () (declare (not safe)) (##car _%e3717737349%_))))
                (if (gx#stx-null? _%tl3717937356%_)
                    (_%__kont4009640097%_
                     _%hd3717837353%_
                     _%hd3714737470%_
                     _%hd3714437460%_)
                    (if (gx#stx-pair? _%tl3717937356%_)
                        (let ((_%e3719737259%_ (gx#syntax-e _%tl3717937356%_)))
                          (let ((_%tl3719937266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3719737259%_)))
                                (_%hd3719837263%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3719737259%_))))
                            (if (gx#identifier? _%hd3719837263%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40453_|
                                     _%hd3719837263%_)
                                    (if (gx#stx-pair? _%tl3719937266%_)
                                        (let ((_%e3720037269%_
                                               (gx#syntax-e _%tl3719937266%_)))
                                          (let ((_%tl3720237276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3720037269%_)))
                                                (_%hd3720137273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3720037269%_))))
                                            (if (gx#stx-null? _%tl3720237276%_)
                                                (_%__kont4009840099%_
                                                 _%hd3720137273%_
                                                 _%hd3717837353%_
                                                 _%hd3714737470%_
                                                 _%hd3714437460%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706237208%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706237208%_)))))
                        (let () (declare (not safe)) (_%g3706237208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706237208%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706237208%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3706237208%_))))))
                   (_%__match4016040161%_
                    (lambda (_%e3709137632%_
                             _%hd3709237636%_
                             _%tl3709337639%_
                             _%e3709437642%_
                             _%hd3709537646%_
                             _%tl3709637649%_
                             _%e3709737652%_
                             _%hd3709837656%_
                             _%tl3709937659%_
                             _%__splice4008640087%_
                             _%target3710037662%_
                             _%tl3710237665%_)
                      (letrec ((_%loop3710337668%_
                                (lambda (_%hd3710137672%_ _%pred3710737675%_)
                                  (if (gx#stx-pair? _%hd3710137672%_)
                                      (let ((_%e3710437677%_
                                             (gx#syntax-e _%hd3710137672%_)))
                                        (let ((_%lp-tl3710637684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3710437677%_)))
                                              (_%lp-hd3710537681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3710437677%_))))
                                          (_%loop3710337668%_
                                           _%lp-tl3710637684%_
                                           (cons _%lp-hd3710537681%_
                                                 _%pred3710737675%_))))
                                      (let ((_%pred3710837687%_
                                             (reverse _%pred3710737675%_)))
                                        (if (gx#stx-pair? _%tl3709637649%_)
                                            (let ((_%e3710937690%_
                                                   (gx#syntax-e
                                                    _%tl3709637649%_)))
                                              (let ((_%tl3711137697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3710937690%_)))
                                                    (_%hd3711037694%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3710937690%_))))
                                                (if (gx#stx-null?
                                                     _%tl3711137697%_)
                                                    (_%__kont4008440085%_
                                                     _%hd3711037694%_
                                                     _%pred3710837687%_
                                                     _%hd3709237636%_)
                                                    (_%__match4025040251%_
                                                     _%e3709137632%_
                                                     _%hd3709237636%_
                                                     _%tl3709337639%_
                                                     _%e3709437642%_
                                                     _%hd3709537646%_
                                                     _%tl3709637649%_
                                                     _%e3710937690%_
                                                     _%hd3711037694%_
                                                     _%tl3711137697%_))))
                                            (_%__match4023040231%_
                                             _%e3709137632%_
                                             _%hd3709237636%_
                                             _%tl3709337639%_
                                             _%e3709437642%_
                                             _%hd3709537646%_
                                             _%tl3709637649%_)))))))
                        (_%loop3710337668%_ _%target3710037662%_ '()))))
                   (_%__match4013040131%_
                    (lambda (_%e3706737740%_
                             _%hd3706837744%_
                             _%tl3706937747%_
                             _%e3707037750%_
                             _%hd3707137754%_
                             _%tl3707237757%_
                             _%e3707337760%_
                             _%hd3707437764%_
                             _%tl3707537767%_
                             _%__splice4008240083%_
                             _%target3707637770%_
                             _%tl3707837773%_)
                      (letrec ((_%loop3707937776%_
                                (lambda (_%hd3707737780%_ _%pred3708337783%_)
                                  (if (gx#stx-pair? _%hd3707737780%_)
                                      (let ((_%e3708037785%_
                                             (gx#syntax-e _%hd3707737780%_)))
                                        (let ((_%lp-tl3708237792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3708037785%_)))
                                              (_%lp-hd3708137789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3708037785%_))))
                                          (_%loop3707937776%_
                                           _%lp-tl3708237792%_
                                           (cons _%lp-hd3708137789%_
                                                 _%pred3708337783%_))))
                                      (let ((_%pred3708437795%_
                                             (reverse _%pred3708337783%_)))
                                        (if (gx#stx-pair? _%tl3707237757%_)
                                            (let ((_%e3708537798%_
                                                   (gx#syntax-e
                                                    _%tl3707237757%_)))
                                              (let ((_%tl3708737805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3708537798%_)))
                                                    (_%hd3708637802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3708537798%_))))
                                                (if (gx#stx-null?
                                                     _%tl3708737805%_)
                                                    (_%__kont4008040081%_
                                                     _%hd3708637802%_
                                                     _%pred3708437795%_
                                                     _%hd3706837744%_)
                                                    (_%__match4025040251%_
                                                     _%e3706737740%_
                                                     _%hd3706837744%_
                                                     _%tl3706937747%_
                                                     _%e3707037750%_
                                                     _%hd3707137754%_
                                                     _%tl3707237757%_
                                                     _%e3708537798%_
                                                     _%hd3708637802%_
                                                     _%tl3708737805%_))))
                                            (_%__match4023040231%_
                                             _%e3706737740%_
                                             _%hd3706837744%_
                                             _%tl3706937747%_
                                             _%e3707037750%_
                                             _%hd3707137754%_
                                             _%tl3707237757%_)))))))
                        (_%loop3707937776%_ _%target3707637770%_ '())))))
              (if (gx#stx-pair? _%__stx4007740078%_)
                  (let ((_%e3706737740%_ (gx#syntax-e _%__stx4007740078%_)))
                    (let ((_%tl3706937747%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3706737740%_)))
                          (_%hd3706837744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3706737740%_))))
                      (if (gx#stx-pair? _%tl3706937747%_)
                          (let ((_%e3707037750%_
                                 (gx#syntax-e _%tl3706937747%_)))
                            (let ((_%tl3707237757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3707037750%_)))
                                  (_%hd3707137754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3707037750%_))))
                              (if (gx#stx-pair? _%hd3707137754%_)
                                  (let ((_%e3707337760%_
                                         (gx#syntax-e _%hd3707137754%_)))
                                    (let ((_%tl3707537767%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3707337760%_)))
                                          (_%hd3707437764%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3707337760%_))))
                                      (if (gx#identifier? _%hd3707437764%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40454_|
                                               _%hd3707437764%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3707537767%_)
                                                  (let ((_%__splice4008240083%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3707537767%_
                                                          '0)))
                                                    (let ((_%tl3707837773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4008240083%_
                                                              '1)))
                                                          (_%target3707637770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4008240083%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3707837773%_)
                                                          (_%__match4013040131%_
                                                           _%e3706737740%_
                                                           _%hd3706837744%_
                                                           _%tl3706937747%_
                                                           _%e3707037750%_
                                                           _%hd3707137754%_
                                                           _%tl3707237757%_
                                                           _%e3707337760%_
                                                           _%hd3707437764%_
                                                           _%tl3707537767%_
                                                           _%__splice4008240083%_
                                                           _%target3707637770%_
                                                           _%tl3707837773%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3707237757%_)
                                                              (let ((_%e3713837518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3707237757%_)))
                        (let ((_%tl3714037525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3713837518%_)))
                              (_%hd3713937522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3713837518%_))))
                          (if (gx#stx-null? _%tl3714037525%_)
                              (_%__kont4009040091%_
                               _%hd3713937522%_
                               _%hd3707137754%_)
                              (if (gx#identifier? _%hd3713937522%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40452_|
                                       _%hd3713937522%_)
                                      (if (gx#stx-pair? _%tl3714037525%_)
                                          (let ((_%e3716137418%_
                                                 (gx#syntax-e
                                                  _%tl3714037525%_)))
                                            (let ((_%tl3716337425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3716137418%_)))
                                                  (_%hd3716237422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3716137418%_))))
                                              (if (gx#stx-null?
                                                   _%tl3716337425%_)
                                                  (_%__kont4009440095%_
                                                   _%hd3716237422%_
                                                   _%hd3707137754%_
                                                   _%hd3706837744%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706237208%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706237208%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706237208%_)))
                                  (if (gx#stx-datum? _%hd3713937522%_)
                                      (let ((_%e3717637345%_
                                             (gx#stx-e _%hd3713937522%_)))
                                        (if (equal? _%e3717637345%_ '::)
                                            (if (gx#stx-pair? _%tl3714037525%_)
                                                (let ((_%e3717737349%_
                                                       (gx#syntax-e
                                                        _%tl3714037525%_)))
                                                  (let ((_%tl3717937356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3717737349%_)))
                                                        (_%hd3717837353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3717737349%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3717937356%_)
                                                        (_%__kont4009640097%_
                                                         _%hd3717837353%_
                                                         _%hd3707137754%_
                                                         _%hd3706837744%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3717937356%_)
                                                            (let ((_%e3719737259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3717937356%_)))
                      (let ((_%tl3719937266%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3719737259%_)))
                            (_%hd3719837263%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3719737259%_))))
                        (if (gx#identifier? _%hd3719837263%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40453_|
                                 _%hd3719837263%_)
                                (if (gx#stx-pair? _%tl3719937266%_)
                                    (let ((_%e3720037269%_
                                           (gx#syntax-e _%tl3719937266%_)))
                                      (let ((_%tl3720237276%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3720037269%_)))
                                            (_%hd3720137273%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3720037269%_))))
                                        (if (gx#stx-null? _%tl3720237276%_)
                                            (_%__kont4009840099%_
                                             _%hd3720137273%_
                                             _%hd3717837353%_
                                             _%hd3707137754%_
                                             _%hd3706837744%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706237208%_)))
                            (let () (declare (not safe)) (_%g3706237208%_)))))
                    (let () (declare (not safe)) (_%g3706237208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706237208%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706237208%_)))))))
                      (if (gx#stx-null? _%tl3707237757%_)
                          (_%__kont4009240093%_
                           _%hd3707137754%_
                           _%hd3706837744%_)
                          (let () (declare (not safe)) (_%g3706237208%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3707237757%_)
                                                      (let ((_%e3713837518%_
                                                             (gx#syntax-e
                                                              _%tl3707237757%_)))
                                                        (let ((_%tl3714037525%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3713837518%_)))
                      (_%hd3713937522%_
                       (let () (declare (not safe)) (##car _%e3713837518%_))))
                  (if (gx#stx-null? _%tl3714037525%_)
                      (_%__kont4009040091%_ _%hd3713937522%_ _%hd3707137754%_)
                      (if (gx#identifier? _%hd3713937522%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40452_|
                               _%hd3713937522%_)
                              (if (gx#stx-pair? _%tl3714037525%_)
                                  (let ((_%e3716137418%_
                                         (gx#syntax-e _%tl3714037525%_)))
                                    (let ((_%tl3716337425%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3716137418%_)))
                                          (_%hd3716237422%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3716137418%_))))
                                      (if (gx#stx-null? _%tl3716337425%_)
                                          (_%__kont4009440095%_
                                           _%hd3716237422%_
                                           _%hd3707137754%_
                                           _%hd3706837744%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706237208%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706237208%_)))
                              (let () (declare (not safe)) (_%g3706237208%_)))
                          (if (gx#stx-datum? _%hd3713937522%_)
                              (let ((_%e3717637345%_
                                     (gx#stx-e _%hd3713937522%_)))
                                (if (equal? _%e3717637345%_ '::)
                                    (if (gx#stx-pair? _%tl3714037525%_)
                                        (let ((_%e3717737349%_
                                               (gx#syntax-e _%tl3714037525%_)))
                                          (let ((_%tl3717937356%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3717737349%_)))
                                                (_%hd3717837353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3717737349%_))))
                                            (if (gx#stx-null? _%tl3717937356%_)
                                                (_%__kont4009640097%_
                                                 _%hd3717837353%_
                                                 _%hd3707137754%_
                                                 _%hd3706837744%_)
                                                (if (gx#stx-pair?
                                                     _%tl3717937356%_)
                                                    (let ((_%e3719737259%_
                                                           (gx#syntax-e
                                                            _%tl3717937356%_)))
                                                      (let ((_%tl3719937266%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3719737259%_)))
                    (_%hd3719837263%_
                     (let () (declare (not safe)) (##car _%e3719737259%_))))
                (if (gx#identifier? _%hd3719837263%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40453_|
                         _%hd3719837263%_)
                        (if (gx#stx-pair? _%tl3719937266%_)
                            (let ((_%e3720037269%_
                                   (gx#syntax-e _%tl3719937266%_)))
                              (let ((_%tl3720237276%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3720037269%_)))
                                    (_%hd3720137273%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3720037269%_))))
                                (if (gx#stx-null? _%tl3720237276%_)
                                    (_%__kont4009840099%_
                                     _%hd3720137273%_
                                     _%hd3717837353%_
                                     _%hd3707137754%_
                                     _%hd3706837744%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_)))))
                            (let () (declare (not safe)) (_%g3706237208%_)))
                        (let () (declare (not safe)) (_%g3706237208%_)))
                    (let () (declare (not safe)) (_%g3706237208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3706237208%_)))))))
              (if (gx#stx-null? _%tl3707237757%_)
                  (_%__kont4009240093%_ _%hd3707137754%_ _%hd3706837744%_)
                  (let () (declare (not safe)) (_%g3706237208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40455_|
                                                   _%hd3707437764%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3707537767%_)
                                                      (let ((_%__splice4008640087%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3707537767%_
                                                              '0)))
                                                        (let ((_%tl3710237665%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4008640087%_ '1)))
                      (_%target3710037662%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4008640087%_ '0))))
                  (if (gx#stx-null? _%tl3710237665%_)
                      (_%__match4016040161%_
                       _%e3706737740%_
                       _%hd3706837744%_
                       _%tl3706937747%_
                       _%e3707037750%_
                       _%hd3707137754%_
                       _%tl3707237757%_
                       _%e3707337760%_
                       _%hd3707437764%_
                       _%tl3707537767%_
                       _%__splice4008640087%_
                       _%target3710037662%_
                       _%tl3710237665%_)
                      (if (gx#stx-pair? _%tl3707237757%_)
                          (let ((_%e3713837518%_
                                 (gx#syntax-e _%tl3707237757%_)))
                            (let ((_%tl3714037525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3713837518%_)))
                                  (_%hd3713937522%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3713837518%_))))
                              (if (gx#stx-null? _%tl3714037525%_)
                                  (_%__kont4009040091%_
                                   _%hd3713937522%_
                                   _%hd3707137754%_)
                                  (if (gx#identifier? _%hd3713937522%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40452_|
                                           _%hd3713937522%_)
                                          (if (gx#stx-pair? _%tl3714037525%_)
                                              (let ((_%e3716137418%_
                                                     (gx#syntax-e
                                                      _%tl3714037525%_)))
                                                (let ((_%tl3716337425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3716137418%_)))
                                                      (_%hd3716237422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3716137418%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3716337425%_)
                                                      (_%__kont4009440095%_
                                                       _%hd3716237422%_
                                                       _%hd3707137754%_
                                                       _%hd3706837744%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3706237208%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706237208%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706237208%_)))
                                      (if (gx#stx-datum? _%hd3713937522%_)
                                          (let ((_%e3717637345%_
                                                 (gx#stx-e _%hd3713937522%_)))
                                            (if (equal? _%e3717637345%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3714037525%_)
                                                    (let ((_%e3717737349%_
                                                           (gx#syntax-e
                                                            _%tl3714037525%_)))
                                                      (let ((_%tl3717937356%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3717737349%_)))
                    (_%hd3717837353%_
                     (let () (declare (not safe)) (##car _%e3717737349%_))))
                (if (gx#stx-null? _%tl3717937356%_)
                    (_%__kont4009640097%_
                     _%hd3717837353%_
                     _%hd3707137754%_
                     _%hd3706837744%_)
                    (if (gx#stx-pair? _%tl3717937356%_)
                        (let ((_%e3719737259%_ (gx#syntax-e _%tl3717937356%_)))
                          (let ((_%tl3719937266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3719737259%_)))
                                (_%hd3719837263%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3719737259%_))))
                            (if (gx#identifier? _%hd3719837263%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40453_|
                                     _%hd3719837263%_)
                                    (if (gx#stx-pair? _%tl3719937266%_)
                                        (let ((_%e3720037269%_
                                               (gx#syntax-e _%tl3719937266%_)))
                                          (let ((_%tl3720237276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3720037269%_)))
                                                (_%hd3720137273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3720037269%_))))
                                            (if (gx#stx-null? _%tl3720237276%_)
                                                (_%__kont4009840099%_
                                                 _%hd3720137273%_
                                                 _%hd3717837353%_
                                                 _%hd3707137754%_
                                                 _%hd3706837744%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706237208%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706237208%_)))))
                        (let () (declare (not safe)) (_%g3706237208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706237208%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706237208%_)))))))
                          (if (gx#stx-null? _%tl3707237757%_)
                              (_%__kont4009240093%_
                               _%hd3707137754%_
                               _%hd3706837744%_)
                              (let ()
                                (declare (not safe))
                                (_%g3706237208%_)))))))
              (if (gx#stx-pair? _%tl3707237757%_)
                  (let ((_%e3713837518%_ (gx#syntax-e _%tl3707237757%_)))
                    (let ((_%tl3714037525%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3713837518%_)))
                          (_%hd3713937522%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3713837518%_))))
                      (if (gx#stx-null? _%tl3714037525%_)
                          (_%__kont4009040091%_
                           _%hd3713937522%_
                           _%hd3707137754%_)
                          (if (gx#identifier? _%hd3713937522%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40452_|
                                   _%hd3713937522%_)
                                  (if (gx#stx-pair? _%tl3714037525%_)
                                      (let ((_%e3716137418%_
                                             (gx#syntax-e _%tl3714037525%_)))
                                        (let ((_%tl3716337425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3716137418%_)))
                                              (_%hd3716237422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3716137418%_))))
                                          (if (gx#stx-null? _%tl3716337425%_)
                                              (_%__kont4009440095%_
                                               _%hd3716237422%_
                                               _%hd3707137754%_
                                               _%hd3706837744%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706237208%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706237208%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706237208%_)))
                              (if (gx#stx-datum? _%hd3713937522%_)
                                  (let ((_%e3717637345%_
                                         (gx#stx-e _%hd3713937522%_)))
                                    (if (equal? _%e3717637345%_ '::)
                                        (if (gx#stx-pair? _%tl3714037525%_)
                                            (let ((_%e3717737349%_
                                                   (gx#syntax-e
                                                    _%tl3714037525%_)))
                                              (let ((_%tl3717937356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3717737349%_)))
                                                    (_%hd3717837353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3717737349%_))))
                                                (if (gx#stx-null?
                                                     _%tl3717937356%_)
                                                    (_%__kont4009640097%_
                                                     _%hd3717837353%_
                                                     _%hd3707137754%_
                                                     _%hd3706837744%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3717937356%_)
                                                        (let ((_%e3719737259%_
                                                               (gx#syntax-e
                                                                _%tl3717937356%_)))
                                                          (let ((_%tl3719937266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3719737259%_)))
                        (_%hd3719837263%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3719737259%_))))
                    (if (gx#identifier? _%hd3719837263%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40453_|
                             _%hd3719837263%_)
                            (if (gx#stx-pair? _%tl3719937266%_)
                                (let ((_%e3720037269%_
                                       (gx#syntax-e _%tl3719937266%_)))
                                  (let ((_%tl3720237276%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3720037269%_)))
                                        (_%hd3720137273%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3720037269%_))))
                                    (if (gx#stx-null? _%tl3720237276%_)
                                        (_%__kont4009840099%_
                                         _%hd3720137273%_
                                         _%hd3717837353%_
                                         _%hd3707137754%_
                                         _%hd3706837744%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706237208%_)))
                            (let () (declare (not safe)) (_%g3706237208%_)))
                        (let () (declare (not safe)) (_%g3706237208%_)))))
                (let () (declare (not safe)) (_%g3706237208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706237208%_)))))))
                  (if (gx#stx-null? _%tl3707237757%_)
                      (_%__kont4009240093%_ _%hd3707137754%_ _%hd3706837744%_)
                      (let () (declare (not safe)) (_%g3706237208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40456_|
                                                       _%hd3707437764%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3707537767%_)
                                                          (let ((_%e3712437582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3707537767%_)))
                    (let ((_%tl3712637589%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3712437582%_)))
                          (_%hd3712537586%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3712437582%_))))
                      (if (gx#stx-null? _%tl3712637589%_)
                          (if (gx#stx-pair? _%tl3707237757%_)
                              (let ((_%e3712737592%_
                                     (gx#syntax-e _%tl3707237757%_)))
                                (let ((_%tl3712937599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3712737592%_)))
                                      (_%hd3712837596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3712737592%_))))
                                  (if (gx#stx-null? _%tl3712937599%_)
                                      (_%__kont4008840089%_
                                       _%hd3712837596%_
                                       _%hd3712537586%_
                                       _%hd3706837744%_)
                                      (if (gx#identifier? _%hd3712837596%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40452_|
                                               _%hd3712837596%_)
                                              (if (gx#stx-pair?
                                                   _%tl3712937599%_)
                                                  (let ((_%e3716137418%_
                                                         (gx#syntax-e
                                                          _%tl3712937599%_)))
                                                    (let ((_%tl3716337425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3716137418%_)))
                                                          (_%hd3716237422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3716137418%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3716337425%_)
                                                          (_%__kont4009440095%_
                                                           _%hd3716237422%_
                                                           _%hd3707137754%_
                                                           _%hd3706837744%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3706237208%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706237208%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706237208%_)))
                                          (if (gx#stx-datum? _%hd3712837596%_)
                                              (let ((_%e3717637345%_
                                                     (gx#stx-e
                                                      _%hd3712837596%_)))
                                                (if (equal? _%e3717637345%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3712937599%_)
                                                        (let ((_%e3717737349%_
                                                               (gx#syntax-e
                                                                _%tl3712937599%_)))
                                                          (let ((_%tl3717937356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3717737349%_)))
                        (_%hd3717837353%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3717737349%_))))
                    (if (gx#stx-null? _%tl3717937356%_)
                        (_%__kont4009640097%_
                         _%hd3717837353%_
                         _%hd3707137754%_
                         _%hd3706837744%_)
                        (if (gx#stx-pair? _%tl3717937356%_)
                            (let ((_%e3719737259%_
                                   (gx#syntax-e _%tl3717937356%_)))
                              (let ((_%tl3719937266%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3719737259%_)))
                                    (_%hd3719837263%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3719737259%_))))
                                (if (gx#identifier? _%hd3719837263%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40453_|
                                         _%hd3719837263%_)
                                        (if (gx#stx-pair? _%tl3719937266%_)
                                            (let ((_%e3720037269%_
                                                   (gx#syntax-e
                                                    _%tl3719937266%_)))
                                              (let ((_%tl3720237276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3720037269%_)))
                                                    (_%hd3720137273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3720037269%_))))
                                                (if (gx#stx-null?
                                                     _%tl3720237276%_)
                                                    (_%__kont4009840099%_
                                                     _%hd3720137273%_
                                                     _%hd3717837353%_
                                                     _%hd3707137754%_
                                                     _%hd3706837744%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_)))))
                            (let () (declare (not safe)) (_%g3706237208%_))))))
                (let () (declare (not safe)) (_%g3706237208%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706237208%_)))))))
                              (if (gx#stx-null? _%tl3707237757%_)
                                  (_%__kont4009240093%_
                                   _%hd3707137754%_
                                   _%hd3706837744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706237208%_))))
                          (if (gx#stx-pair? _%tl3707237757%_)
                              (let ((_%e3713837518%_
                                     (gx#syntax-e _%tl3707237757%_)))
                                (let ((_%tl3714037525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3713837518%_)))
                                      (_%hd3713937522%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3713837518%_))))
                                  (if (gx#stx-null? _%tl3714037525%_)
                                      (_%__kont4009040091%_
                                       _%hd3713937522%_
                                       _%hd3707137754%_)
                                      (if (gx#identifier? _%hd3713937522%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40452_|
                                               _%hd3713937522%_)
                                              (if (gx#stx-pair?
                                                   _%tl3714037525%_)
                                                  (let ((_%e3716137418%_
                                                         (gx#syntax-e
                                                          _%tl3714037525%_)))
                                                    (let ((_%tl3716337425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3716137418%_)))
                                                          (_%hd3716237422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3716137418%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3716337425%_)
                                                          (_%__kont4009440095%_
                                                           _%hd3716237422%_
                                                           _%hd3707137754%_
                                                           _%hd3706837744%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3706237208%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706237208%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706237208%_)))
                                          (if (gx#stx-datum? _%hd3713937522%_)
                                              (let ((_%e3717637345%_
                                                     (gx#stx-e
                                                      _%hd3713937522%_)))
                                                (if (equal? _%e3717637345%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3714037525%_)
                                                        (let ((_%e3717737349%_
                                                               (gx#syntax-e
                                                                _%tl3714037525%_)))
                                                          (let ((_%tl3717937356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3717737349%_)))
                        (_%hd3717837353%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3717737349%_))))
                    (if (gx#stx-null? _%tl3717937356%_)
                        (_%__kont4009640097%_
                         _%hd3717837353%_
                         _%hd3707137754%_
                         _%hd3706837744%_)
                        (if (gx#stx-pair? _%tl3717937356%_)
                            (let ((_%e3719737259%_
                                   (gx#syntax-e _%tl3717937356%_)))
                              (let ((_%tl3719937266%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3719737259%_)))
                                    (_%hd3719837263%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3719737259%_))))
                                (if (gx#identifier? _%hd3719837263%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40453_|
                                         _%hd3719837263%_)
                                        (if (gx#stx-pair? _%tl3719937266%_)
                                            (let ((_%e3720037269%_
                                                   (gx#syntax-e
                                                    _%tl3719937266%_)))
                                              (let ((_%tl3720237276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3720037269%_)))
                                                    (_%hd3720137273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3720037269%_))))
                                                (if (gx#stx-null?
                                                     _%tl3720237276%_)
                                                    (_%__kont4009840099%_
                                                     _%hd3720137273%_
                                                     _%hd3717837353%_
                                                     _%hd3707137754%_
                                                     _%hd3706837744%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_)))))
                            (let () (declare (not safe)) (_%g3706237208%_))))))
                (let () (declare (not safe)) (_%g3706237208%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706237208%_)))))))
                              (if (gx#stx-null? _%tl3707237757%_)
                                  (_%__kont4009240093%_
                                   _%hd3707137754%_
                                   _%hd3706837744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706237208%_)))))))
                  (if (gx#stx-pair? _%tl3707237757%_)
                      (let ((_%e3713837518%_ (gx#syntax-e _%tl3707237757%_)))
                        (let ((_%tl3714037525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3713837518%_)))
                              (_%hd3713937522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3713837518%_))))
                          (if (gx#stx-null? _%tl3714037525%_)
                              (_%__kont4009040091%_
                               _%hd3713937522%_
                               _%hd3707137754%_)
                              (if (gx#identifier? _%hd3713937522%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40452_|
                                       _%hd3713937522%_)
                                      (if (gx#stx-pair? _%tl3714037525%_)
                                          (let ((_%e3716137418%_
                                                 (gx#syntax-e
                                                  _%tl3714037525%_)))
                                            (let ((_%tl3716337425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3716137418%_)))
                                                  (_%hd3716237422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3716137418%_))))
                                              (if (gx#stx-null?
                                                   _%tl3716337425%_)
                                                  (_%__kont4009440095%_
                                                   _%hd3716237422%_
                                                   _%hd3707137754%_
                                                   _%hd3706837744%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706237208%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706237208%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706237208%_)))
                                  (if (gx#stx-datum? _%hd3713937522%_)
                                      (let ((_%e3717637345%_
                                             (gx#stx-e _%hd3713937522%_)))
                                        (if (equal? _%e3717637345%_ '::)
                                            (if (gx#stx-pair? _%tl3714037525%_)
                                                (let ((_%e3717737349%_
                                                       (gx#syntax-e
                                                        _%tl3714037525%_)))
                                                  (let ((_%tl3717937356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3717737349%_)))
                                                        (_%hd3717837353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3717737349%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3717937356%_)
                                                        (_%__kont4009640097%_
                                                         _%hd3717837353%_
                                                         _%hd3707137754%_
                                                         _%hd3706837744%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3717937356%_)
                                                            (let ((_%e3719737259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3717937356%_)))
                      (let ((_%tl3719937266%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3719737259%_)))
                            (_%hd3719837263%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3719737259%_))))
                        (if (gx#identifier? _%hd3719837263%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40453_|
                                 _%hd3719837263%_)
                                (if (gx#stx-pair? _%tl3719937266%_)
                                    (let ((_%e3720037269%_
                                           (gx#syntax-e _%tl3719937266%_)))
                                      (let ((_%tl3720237276%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3720037269%_)))
                                            (_%hd3720137273%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3720037269%_))))
                                        (if (gx#stx-null? _%tl3720237276%_)
                                            (_%__kont4009840099%_
                                             _%hd3720137273%_
                                             _%hd3717837353%_
                                             _%hd3707137754%_
                                             _%hd3706837744%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706237208%_)))
                            (let () (declare (not safe)) (_%g3706237208%_)))))
                    (let () (declare (not safe)) (_%g3706237208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706237208%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706237208%_)))))))
                      (if (gx#stx-null? _%tl3707237757%_)
                          (_%__kont4009240093%_
                           _%hd3707137754%_
                           _%hd3706837744%_)
                          (let () (declare (not safe)) (_%g3706237208%_)))))
              (if (gx#stx-pair? _%tl3707237757%_)
                  (let ((_%e3713837518%_ (gx#syntax-e _%tl3707237757%_)))
                    (let ((_%tl3714037525%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3713837518%_)))
                          (_%hd3713937522%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3713837518%_))))
                      (if (gx#stx-null? _%tl3714037525%_)
                          (_%__kont4009040091%_
                           _%hd3713937522%_
                           _%hd3707137754%_)
                          (if (gx#identifier? _%hd3713937522%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40452_|
                                   _%hd3713937522%_)
                                  (if (gx#stx-pair? _%tl3714037525%_)
                                      (let ((_%e3716137418%_
                                             (gx#syntax-e _%tl3714037525%_)))
                                        (let ((_%tl3716337425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3716137418%_)))
                                              (_%hd3716237422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3716137418%_))))
                                          (if (gx#stx-null? _%tl3716337425%_)
                                              (_%__kont4009440095%_
                                               _%hd3716237422%_
                                               _%hd3707137754%_
                                               _%hd3706837744%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3706237208%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3706237208%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706237208%_)))
                              (if (gx#stx-datum? _%hd3713937522%_)
                                  (let ((_%e3717637345%_
                                         (gx#stx-e _%hd3713937522%_)))
                                    (if (equal? _%e3717637345%_ '::)
                                        (if (gx#stx-pair? _%tl3714037525%_)
                                            (let ((_%e3717737349%_
                                                   (gx#syntax-e
                                                    _%tl3714037525%_)))
                                              (let ((_%tl3717937356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3717737349%_)))
                                                    (_%hd3717837353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3717737349%_))))
                                                (if (gx#stx-null?
                                                     _%tl3717937356%_)
                                                    (_%__kont4009640097%_
                                                     _%hd3717837353%_
                                                     _%hd3707137754%_
                                                     _%hd3706837744%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3717937356%_)
                                                        (let ((_%e3719737259%_
                                                               (gx#syntax-e
                                                                _%tl3717937356%_)))
                                                          (let ((_%tl3719937266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3719737259%_)))
                        (_%hd3719837263%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3719737259%_))))
                    (if (gx#identifier? _%hd3719837263%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40453_|
                             _%hd3719837263%_)
                            (if (gx#stx-pair? _%tl3719937266%_)
                                (let ((_%e3720037269%_
                                       (gx#syntax-e _%tl3719937266%_)))
                                  (let ((_%tl3720237276%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3720037269%_)))
                                        (_%hd3720137273%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3720037269%_))))
                                    (if (gx#stx-null? _%tl3720237276%_)
                                        (_%__kont4009840099%_
                                         _%hd3720137273%_
                                         _%hd3717837353%_
                                         _%hd3707137754%_
                                         _%hd3706837744%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706237208%_)))
                            (let () (declare (not safe)) (_%g3706237208%_)))
                        (let () (declare (not safe)) (_%g3706237208%_)))))
                (let () (declare (not safe)) (_%g3706237208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3706237208%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706237208%_)))))))
                  (if (gx#stx-null? _%tl3707237757%_)
                      (_%__kont4009240093%_ _%hd3707137754%_ _%hd3706837744%_)
                      (let () (declare (not safe)) (_%g3706237208%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3707237757%_)
                                              (let ((_%e3713837518%_
                                                     (gx#syntax-e
                                                      _%tl3707237757%_)))
                                                (let ((_%tl3714037525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3713837518%_)))
                                                      (_%hd3713937522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3713837518%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3714037525%_)
                                                      (_%__kont4009040091%_
                                                       _%hd3713937522%_
                                                       _%hd3707137754%_)
                                                      (if (gx#identifier?
                                                           _%hd3713937522%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40452_|
                                                               _%hd3713937522%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3714037525%_)
                          (let ((_%e3716137418%_
                                 (gx#syntax-e _%tl3714037525%_)))
                            (let ((_%tl3716337425%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3716137418%_)))
                                  (_%hd3716237422%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3716137418%_))))
                              (if (gx#stx-null? _%tl3716337425%_)
                                  (_%__kont4009440095%_
                                   _%hd3716237422%_
                                   _%hd3707137754%_
                                   _%hd3706837744%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3706237208%_)))))
                          (let () (declare (not safe)) (_%g3706237208%_)))
                      (let () (declare (not safe)) (_%g3706237208%_)))
                  (if (gx#stx-datum? _%hd3713937522%_)
                      (let ((_%e3717637345%_ (gx#stx-e _%hd3713937522%_)))
                        (if (equal? _%e3717637345%_ '::)
                            (if (gx#stx-pair? _%tl3714037525%_)
                                (let ((_%e3717737349%_
                                       (gx#syntax-e _%tl3714037525%_)))
                                  (let ((_%tl3717937356%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3717737349%_)))
                                        (_%hd3717837353%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3717737349%_))))
                                    (if (gx#stx-null? _%tl3717937356%_)
                                        (_%__kont4009640097%_
                                         _%hd3717837353%_
                                         _%hd3707137754%_
                                         _%hd3706837744%_)
                                        (if (gx#stx-pair? _%tl3717937356%_)
                                            (let ((_%e3719737259%_
                                                   (gx#syntax-e
                                                    _%tl3717937356%_)))
                                              (let ((_%tl3719937266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3719737259%_)))
                                                    (_%hd3719837263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3719737259%_))))
                                                (if (gx#identifier?
                                                     _%hd3719837263%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40453_|
                                                         _%hd3719837263%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3719937266%_)
                                                            (let ((_%e3720037269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3719937266%_)))
                      (let ((_%tl3720237276%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3720037269%_)))
                            (_%hd3720137273%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3720037269%_))))
                        (if (gx#stx-null? _%tl3720237276%_)
                            (_%__kont4009840099%_
                             _%hd3720137273%_
                             _%hd3717837353%_
                             _%hd3707137754%_
                             _%hd3706837744%_)
                            (let () (declare (not safe)) (_%g3706237208%_)))))
                    (let () (declare (not safe)) (_%g3706237208%_)))
                (let () (declare (not safe)) (_%g3706237208%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3706237208%_)))
                            (let () (declare (not safe)) (_%g3706237208%_))))
                      (let () (declare (not safe)) (_%g3706237208%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3707237757%_)
                                                  (_%__kont4009240093%_
                                                   _%hd3707137754%_
                                                   _%hd3706837744%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3706237208%_)))))))
                                  (if (gx#stx-pair? _%tl3707237757%_)
                                      (let ((_%e3713837518%_
                                             (gx#syntax-e _%tl3707237757%_)))
                                        (let ((_%tl3714037525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3713837518%_)))
                                              (_%hd3713937522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3713837518%_))))
                                          (if (gx#stx-null? _%tl3714037525%_)
                                              (_%__kont4009040091%_
                                               _%hd3713937522%_
                                               _%hd3707137754%_)
                                              (if (gx#identifier?
                                                   _%hd3713937522%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40452_|
                                                       _%hd3713937522%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3714037525%_)
                                                          (let ((_%e3716137418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3714037525%_)))
                    (let ((_%tl3716337425%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3716137418%_)))
                          (_%hd3716237422%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3716137418%_))))
                      (if (gx#stx-null? _%tl3716337425%_)
                          (_%__kont4009440095%_
                           _%hd3716237422%_
                           _%hd3707137754%_
                           _%hd3706837744%_)
                          (let () (declare (not safe)) (_%g3706237208%_)))))
                  (let () (declare (not safe)) (_%g3706237208%_)))
              (let () (declare (not safe)) (_%g3706237208%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3713937522%_)
                                                      (let ((_%e3717637345%_
                                                             (gx#stx-e
                                                              _%hd3713937522%_)))
                                                        (if (equal? _%e3717637345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3714037525%_)
                        (let ((_%e3717737349%_ (gx#syntax-e _%tl3714037525%_)))
                          (let ((_%tl3717937356%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3717737349%_)))
                                (_%hd3717837353%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3717737349%_))))
                            (if (gx#stx-null? _%tl3717937356%_)
                                (_%__kont4009640097%_
                                 _%hd3717837353%_
                                 _%hd3707137754%_
                                 _%hd3706837744%_)
                                (if (gx#stx-pair? _%tl3717937356%_)
                                    (let ((_%e3719737259%_
                                           (gx#syntax-e _%tl3717937356%_)))
                                      (let ((_%tl3719937266%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3719737259%_)))
                                            (_%hd3719837263%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3719737259%_))))
                                        (if (gx#identifier? _%hd3719837263%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40453_|
                                                 _%hd3719837263%_)
                                                (if (gx#stx-pair?
                                                     _%tl3719937266%_)
                                                    (let ((_%e3720037269%_
                                                           (gx#syntax-e
                                                            _%tl3719937266%_)))
                                                      (let ((_%tl3720237276%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3720037269%_)))
                    (_%hd3720137273%_
                     (let () (declare (not safe)) (##car _%e3720037269%_))))
                (if (gx#stx-null? _%tl3720237276%_)
                    (_%__kont4009840099%_
                     _%hd3720137273%_
                     _%hd3717837353%_
                     _%hd3707137754%_
                     _%hd3706837744%_)
                    (let () (declare (not safe)) (_%g3706237208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3706237208%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3706237208%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3706237208%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3706237208%_))))))
                        (let () (declare (not safe)) (_%g3706237208%_)))
                    (let () (declare (not safe)) (_%g3706237208%_))))
              (let () (declare (not safe)) (_%g3706237208%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3707237757%_)
                                          (_%__kont4009240093%_
                                           _%hd3707137754%_
                                           _%hd3706837744%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3706237208%_)))))))
                          (let () (declare (not safe)) (_%g3706237208%_)))))
                  (let () (declare (not safe)) (_%g3706237208%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37847%_)
        (let* ((_%__stx4034540346%_ _%$stx37847%_)
               (_%g3785237886%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4034540346%_))))
          (let ((_%__kont4034840349%_
                 (lambda (_%g3785437990%_ _%g3785537992%_ _%g3785637993%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3785637993%_
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
                                       (cons _%g3785537992%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3785437990%_ '()))
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
                (_%__kont4035040351%_
                 (lambda (_%g3786937923%_ _%g3787037925%_ _%g3787137926%_)
                   (cons _%g3787137926%_
                         (cons _%g3787037925%_
                               (cons _%g3786937923%_
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
            (let ((_%__match4037840379%_
                   (lambda (_%e3785737950%_
                            _%hd3785837954%_
                            _%tl3785937957%_
                            _%e3786037960%_
                            _%hd3786137964%_
                            _%tl3786237967%_
                            _%e3786337970%_
                            _%hd3786437974%_
                            _%tl3786537977%_
                            _%e3786637980%_
                            _%hd3786737984%_
                            _%tl3786837987%_)
                     (let ((_%g3785437990%_ _%hd3786737984%_)
                           (_%g3785537992%_ _%hd3786437974%_)
                           (_%g3785637993%_ _%hd3786137964%_))
                       (if (gx#identifier? _%g3785637993%_)
                           (_%__kont4034840349%_
                            _%g3785437990%_
                            _%g3785537992%_
                            _%g3785637993%_)
                           (let () (declare (not safe)) (_%g3785237886%_)))))))
              (if (gx#stx-pair? _%__stx4034540346%_)
                  (let ((_%e3785737950%_ (gx#syntax-e _%__stx4034540346%_)))
                    (let ((_%tl3785937957%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3785737950%_)))
                          (_%hd3785837954%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3785737950%_))))
                      (if (gx#stx-pair? _%tl3785937957%_)
                          (let ((_%e3786037960%_
                                 (gx#syntax-e _%tl3785937957%_)))
                            (let ((_%tl3786237967%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3786037960%_)))
                                  (_%hd3786137964%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3786037960%_))))
                              (if (gx#stx-pair? _%tl3786237967%_)
                                  (let ((_%e3786337970%_
                                         (gx#syntax-e _%tl3786237967%_)))
                                    (let ((_%tl3786537977%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3786337970%_)))
                                          (_%hd3786437974%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3786337970%_))))
                                      (if (gx#stx-pair? _%tl3786537977%_)
                                          (let ((_%e3786637980%_
                                                 (gx#syntax-e
                                                  _%tl3786537977%_)))
                                            (let ((_%tl3786837987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3786637980%_)))
                                                  (_%hd3786737984%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3786637980%_))))
                                              (if (gx#stx-null?
                                                   _%tl3786837987%_)
                                                  (_%__match4037840379%_
                                                   _%e3785737950%_
                                                   _%hd3785837954%_
                                                   _%tl3785937957%_
                                                   _%e3786037960%_
                                                   _%hd3786137964%_
                                                   _%tl3786237967%_
                                                   _%e3786337970%_
                                                   _%hd3786437974%_
                                                   _%tl3786537977%_
                                                   _%e3786637980%_
                                                   _%hd3786737984%_
                                                   _%tl3786837987%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3785237886%_)))))
                                          (if (gx#stx-null? _%tl3786537977%_)
                                              (_%__kont4035040351%_
                                               _%hd3786437974%_
                                               _%hd3786137964%_
                                               _%hd3785837954%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3785237886%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3785237886%_)))))
                          (let () (declare (not safe)) (_%g3785237886%_)))))
                  (let () (declare (not safe)) (_%g3785237886%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx38015%_)
        (let* ((_%g3801938034%_
                (lambda (_%g3802038030%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3802038030%_)))
               (_%g3801838077%_
                (lambda (_%g3802038038%_)
                  (if (gx#stx-pair? _%g3802038038%_)
                      (let ((_%e3802338041%_ (gx#syntax-e _%g3802038038%_)))
                        (let ((_%hd3802438045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3802338041%_)))
                              (_%tl3802538048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3802338041%_))))
                          (if (gx#stx-pair? _%tl3802538048%_)
                              (let ((_%e3802638051%_
                                     (gx#syntax-e _%tl3802538048%_)))
                                (let ((_%hd3802738055%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3802638051%_)))
                                      (_%tl3802838058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3802638051%_))))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'defsyntax-for-match)
                                        (cons _%hd3802738055%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'syntax-rules)
                                                          _%tl3802838058%_)
                                                    '())))))
                              (_%g3801938034%_ _%g3802038038%_))))
                      (_%g3801938034%_ _%g3802038038%_)))))
          (_%g3801838077%_ _%$stx38015%_))))))
