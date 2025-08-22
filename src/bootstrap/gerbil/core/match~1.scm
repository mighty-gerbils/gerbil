(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39474_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39475_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39476_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39477_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39478_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39479_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39480_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39481_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39482_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39483_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39484_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39485_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39486_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39487_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39488_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39501_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39509_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39510_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39511_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39516_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39517_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39518_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39519_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39520_|
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
      (lambda _%$args34773%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args34773%_)))
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
      (lambda (_%stx34770%_)
        (if (gx#identifier? _%stx34770%_)
            (let ((__tmp39473 (gx#syntax-local-value _%stx34770%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39473))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33070%_ _%match-stx33072%_)
        (letrec ((_%parse133074%_
                  (lambda (_%hd33433%_)
                    (let* ((_%__stx3726137262%_ _%hd33433%_)
                           (_%g3345933601%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3726137262%_))))
                      (let ((_%__kont3726437265%_
                             (lambda (_%L34533%_ _%L34535%_)
                               (let* ((_%__stx3718137182%_ _%L34533%_)
                                      (_%g3455234585%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3718137182%_))))
                                 (let ((_%__kont3718437185%_
                                        (lambda ()
                                          (cons '?: (cons _%L34535%_ '()))))
                                       (_%__kont3718637187%_
                                        (lambda (_%L34726%_)
                                          (cons '?:
                                                (cons _%L34535%_
                                                      (cons (_%parse133074%_
                                                             _%L34726%_)
                                                            '())))))
                                       (_%__kont3718837189%_
                                        (lambda (_%L34696%_)
                                          (cons '?:
                                                (cons _%L34535%_
                                                      (cons '=>:
                                                            (cons (_%parse133074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L34696%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3719037191%_
                                        (lambda (_%L34647%_ _%L34649%_)
                                          (cons '?:
                                                (cons _%L34535%_
                                                      (cons '::
                                                            (cons _%L34649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133074%_ _%L34647%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3719237193%_
                                        (lambda ()
                                          (_%parse-error33081%_ _%hd33433%_))))
                                   (let ((_%g3454834737%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3718137182%_)
                                                (let ((_%e3455534716%_
                                                       (gx#syntax-e
                                                        _%__stx3718137182%_)))
                                                  (let ((_%tl3455734723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3455534716%_)))
                                                        (_%hd3455634720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3455534716%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3455734723%_)
                                                        (_%__kont3718637187%_
                                                         _%hd3455634720%_)
                                                        (if (gx#identifier?
                                                             _%hd3455634720%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39474_|
                         _%hd3455634720%_)
                        (if (gx#stx-pair? _%tl3455734723%_)
                            (let ((_%e3456234686%_
                                   (gx#syntax-e _%tl3455734723%_)))
                              (let ((_%tl3456434693%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3456234686%_)))
                                    (_%hd3456334690%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3456234686%_))))
                                (if (gx#stx-null? _%tl3456434693%_)
                                    (_%__kont3718837189%_ _%hd3456334690%_)
                                    (_%__kont3719237193%_))))
                            (_%__kont3719237193%_))
                        (_%__kont3719237193%_))
                    (if (gx#stx-datum? _%hd3455634720%_)
                        (let ((_%e3457034613%_ (gx#stx-e _%hd3455634720%_)))
                          (if (equal? _%e3457034613%_ '::)
                              (if (gx#stx-pair? _%tl3455734723%_)
                                  (let ((_%e3457134617%_
                                         (gx#syntax-e _%tl3455734723%_)))
                                    (let ((_%tl3457334624%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3457134617%_)))
                                          (_%hd3457234621%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3457134617%_))))
                                      (if (gx#stx-pair? _%tl3457334624%_)
                                          (let ((_%e3457434627%_
                                                 (gx#syntax-e
                                                  _%tl3457334624%_)))
                                            (let ((_%tl3457634634%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3457434627%_)))
                                                  (_%hd3457534631%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3457434627%_))))
                                              (if (gx#identifier?
                                                   _%hd3457534631%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39475_|
                                                       _%hd3457534631%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3457634634%_)
                                                          (let ((_%e3457734637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3457634634%_)))
                    (let ((_%tl3457934644%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3457734637%_)))
                          (_%hd3457834641%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3457734637%_))))
                      (if (gx#stx-null? _%tl3457934644%_)
                          (_%__kont3719037191%_
                           _%hd3457834641%_
                           _%hd3457234621%_)
                          (_%__kont3719237193%_))))
                  (_%__kont3719237193%_))
              (_%__kont3719237193%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3719237193%_))))
                                          (_%__kont3719237193%_))))
                                  (_%__kont3719237193%_))
                              (_%__kont3719237193%_)))
                        (_%__kont3719237193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3719237193%_)))))
                                     (if (gx#stx-null? _%__stx3718137182%_)
                                         (_%__kont3718437185%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3454834737%_))))))))
                            (_%__kont3726637267%_
                             (lambda (_%L34438%_)
                               (let* ((_%__stx3716337164%_ _%L34438%_)
                                      (_%g3445034461%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3716337164%_))))
                                 (let ((_%__kont3716637167%_
                                        (lambda (_%L34489%_)
                                          (_%parse133074%_ _%L34489%_)))
                                       (_%__kont3716837169%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133074%_
                                                 _%L34438%_)))))
                                   (if (gx#stx-pair? _%__stx3716337164%_)
                                       (let ((_%e3445334479%_
                                              (gx#syntax-e
                                               _%__stx3716337164%_)))
                                         (let ((_%tl3445534486%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3445334479%_)))
                                               (_%hd3445434483%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3445334479%_))))
                                           (if (gx#stx-null? _%tl3445534486%_)
                                               (_%__kont3716637167%_
                                                _%hd3445434483%_)
                                               (_%__kont3716837169%_))))
                                       (_%__kont3716837169%_))))))
                            (_%__kont3726837269%_
                             (lambda (_%L34353%_)
                               (let* ((_%__stx3714537146%_ _%L34353%_)
                                      (_%g3436534376%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3714537146%_))))
                                 (let ((_%__kont3714837149%_
                                        (lambda (_%L34404%_)
                                          (_%parse133074%_ _%L34404%_)))
                                       (_%__kont3715037151%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133074%_
                                                 _%L34353%_)))))
                                   (if (gx#stx-pair? _%__stx3714537146%_)
                                       (let ((_%e3436834394%_
                                              (gx#syntax-e
                                               _%__stx3714537146%_)))
                                         (let ((_%tl3437034401%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3436834394%_)))
                                               (_%hd3436934398%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3436834394%_))))
                                           (if (gx#stx-null? _%tl3437034401%_)
                                               (_%__kont3714837149%_
                                                _%hd3436934398%_)
                                               (_%__kont3715037151%_))))
                                       (_%__kont3715037151%_))))))
                            (_%__kont3727037271%_
                             (lambda (_%L34323%_)
                               (cons 'not:
                                     (cons (_%parse133074%_ _%L34323%_) '()))))
                            (_%__kont3727237273%_
                             (lambda (_%L34279%_ _%L34281%_)
                               (cons 'cons:
                                     (cons (_%parse133074%_ _%L34281%_)
                                           (cons (_%parse133074%_ _%L34279%_)
                                                 '())))))
                            (_%__kont3727437275%_
                             (lambda (_%L34223%_ _%L34225%_ _%L34226%_)
                               (if (gx#stx-null? _%L34223%_)
                                   (cons 'cons:
                                         (cons (_%parse133074%_ _%L34226%_)
                                               (cons (_%parse133074%_
                                                      _%L34225%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133074%_ _%L34226%_)
                                               (cons (_%parse133074%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34223%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3727637277%_
                             (lambda (_%L34175%_)
                               (_%parse-list33076%_ _%L34175%_)))
                            (_%__kont3727837279%_
                             (lambda (_%L34145%_)
                               (cons 'box:
                                     (cons (_%parse133074%_ _%L34145%_) '()))))
                            (_%__kont3728037281%_
                             (lambda (_%L34108%_)
                               (cons 'box:
                                     (cons (_%parse133074%_ _%L34108%_) '()))))
                            (_%__kont3728237283%_
                             (lambda (_%L34084%_)
                               (_%parse133074%_ _%L34084%_)))
                            (_%__kont3728437285%_
                             (lambda (_%L34046%_)
                               (cons 'values:
                                     (cons (_%parse-vector33077%_ _%L34046%_)
                                           '()))))
                            (_%__kont3728637287%_
                             (lambda (_%L34018%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33077%_ _%L34018%_)
                                           '()))))
                            (_%__kont3728837289%_
                             (lambda (_%L33979%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33077%_
                                            (foldr (lambda (_%g3399233995%_
                                                            _%g3399333998%_)
                                                     (cons _%g3399233995%_
                                                           _%g3399333998%_))
                                                   '()
                                                   _%L33979%_))
                                           '()))))
                            (_%__kont3729237293%_
                             (lambda (_%L33925%_ _%L33927%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L33927%_)
                                           (cons (_%parse-vector33077%_
                                                  _%L33925%_)
                                                 '())))))
                            (_%__kont3729437295%_
                             (lambda (_%L33895%_ _%L33897%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L33897%_)
                                           (cons (_%parse-class-body33079%_
                                                  _%L33895%_)
                                                 '())))))
                            (_%__kont3729637297%_
                             (lambda (_%L33855%_ _%L33857%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L33857%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L33855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3729837299%_
                             (lambda (_%L33815%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L33815%_) '()))))
                            (_%__kont3730037301%_
                             (lambda (_%L33775%_)
                               (_%parse-qq33080%_ _%L33775%_)))
                            (_%__kont3730237303%_
                             (lambda (_%L33731%_ _%L33733%_)
                               (cons 'apply:
                                     (cons _%L33733%_
                                           (cons (_%parse133074%_ _%L33731%_)
                                                 '())))))
                            (_%__kont3730437305%_
                             (lambda (_%L33679%_)
                               (_%parse133074%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L33679%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33433%_)
                                  (let ((_%$e33690%_
                                         (gx#stx-source _%hd33433%_)))
                                    (if _%$e33690%_
                                        _%$e33690%_
                                        (gx#stx-source _%stx33070%_))))))))
                            (_%__kont3730637307%_
                             (lambda (_%L33653%_) (cons 'any: '())))
                            (_%__kont3730837309%_
                             (lambda (_%L33637%_)
                               (cons 'var: (cons _%L33637%_ '()))))
                            (_%__kont3731037311%_
                             (lambda (_%L33619%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L33619%_) '()))))
                            (_%__kont3731237313%_
                             (lambda () (_%parse-error33081%_ _%hd33433%_))))
                        (let* ((_%g3345733630%_
                                (lambda ()
                                  (let ((_%L33619%_ _%__stx3726137262%_))
                                    (if (gx#stx-datum? _%L33619%_)
                                        (_%__kont3731037311%_ _%L33619%_)
                                        (_%__kont3731237313%_)))))
                               (_%g3345633646%_
                                (lambda ()
                                  (let ((_%L33637%_ _%__stx3726137262%_))
                                    (if (and (gx#identifier? _%L33637%_)
                                             (not (gx#ellipsis? _%L33637%_)))
                                        (_%__kont3730837309%_ _%L33637%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3345733630%_))))))
                               (_%g3345533662%_
                                (lambda ()
                                  (let ((_%L33653%_ _%__stx3726137262%_))
                                    (if (gx#underscore? _%L33653%_)
                                        (_%__kont3730637307%_ _%L33653%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3345633646%_))))))
                               (_%__match3758837589%_
                                (lambda (_%e3359033669%_
                                         _%hd3359133673%_
                                         _%tl3359233676%_)
                                  (let ((_%L33679%_ _%hd3359133673%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L33679%_)
                                        (_%__kont3730437305%_ _%L33679%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3345533662%_))))))
                               (_%__match3752237523%_
                                (lambda (_%e3355833835%_
                                         _%hd3355933839%_
                                         _%tl3356033842%_
                                         _%e3356133845%_
                                         _%hd3356233849%_
                                         _%tl3356333852%_)
                                  (let ((_%L33855%_ _%hd3356233849%_)
                                        (_%L33857%_ _%hd3355933839%_))
                                    (if (and (gx#identifier? _%L33857%_)
                                             (or (gx#free-identifier=?
                                                  _%L33857%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L33857%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L33857%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3729637297%_
                                         _%L33855%_
                                         _%L33857%_)
                                        (if (gx#identifier? _%hd3355933839%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39476_|
                                                 _%hd3355933839%_)
                                                (_%__kont3729837299%_
                                                 _%hd3356233849%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39477_|
                                                     _%hd3355933839%_)
                                                    (_%__kont3730037301%_
                                                     _%hd3356233849%_)
                                                    (_%__match3758837589%_
                                                     _%e3355833835%_
                                                     _%hd3355933839%_
                                                     _%tl3356033842%_)))
                                            (_%__match3758837589%_
                                             _%e3355833835%_
                                             _%hd3355933839%_
                                             _%tl3356033842%_))))))
                               (_%__match3750837509%_
                                (lambda (_%e3355333885%_
                                         _%hd3355433889%_
                                         _%tl3355533892%_)
                                  (let ((_%L33895%_ _%tl3355533892%_)
                                        (_%L33897%_ _%hd3355433889%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L33897%_))
                                        (_%__kont3729437295%_
                                         _%L33895%_
                                         _%L33897%_)
                                        (if (gx#stx-pair? _%tl3355533892%_)
                                            (let ((_%e3356133845%_
                                                   (gx#syntax-e
                                                    _%tl3355533892%_)))
                                              (let ((_%tl3356333852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3356133845%_)))
                                                    (_%hd3356233849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3356133845%_))))
                                                (if (gx#stx-null?
                                                     _%tl3356333852%_)
                                                    (_%__match3752237523%_
                                                     _%e3355333885%_
                                                     _%hd3355433889%_
                                                     _%tl3355533892%_
                                                     _%e3356133845%_
                                                     _%hd3356233849%_
                                                     _%tl3356333852%_)
                                                    (if (gx#identifier?
                                                         _%hd3355433889%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39476_|
                                                             _%hd3355433889%_)
                                                            (_%__match3758837589%_
                                                             _%e3355333885%_
                                                             _%hd3355433889%_
                                                             _%tl3355533892%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39477_|
                         _%hd3355433889%_)
                        (_%__match3758837589%_
                         _%e3355333885%_
                         _%hd3355433889%_
                         _%tl3355533892%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39478_|
                             _%hd3355433889%_)
                            (if (gx#stx-pair? _%tl3356333852%_)
                                (let ((_%e3358633721%_
                                       (gx#syntax-e _%tl3356333852%_)))
                                  (let ((_%tl3358833728%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3358633721%_)))
                                        (_%hd3358733725%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3358633721%_))))
                                    (if (gx#stx-null? _%tl3358833728%_)
                                        (_%__kont3730237303%_
                                         _%hd3358733725%_
                                         _%hd3356233849%_)
                                        (_%__match3758837589%_
                                         _%e3355333885%_
                                         _%hd3355433889%_
                                         _%tl3355533892%_))))
                                (_%__match3758837589%_
                                 _%e3355333885%_
                                 _%hd3355433889%_
                                 _%tl3355533892%_))
                            (_%__match3758837589%_
                             _%e3355333885%_
                             _%hd3355433889%_
                             _%tl3355533892%_))))
                (_%__match3758837589%_
                 _%e3355333885%_
                 _%hd3355433889%_
                 _%tl3355533892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3758837589%_
                                             _%e3355333885%_
                                             _%hd3355433889%_
                                             _%tl3355533892%_))))))
                               (_%__match3750237503%_
                                (lambda (_%e3354833915%_
                                         _%hd3354933919%_
                                         _%tl3355033922%_)
                                  (let ((_%L33925%_ _%tl3355033922%_)
                                        (_%L33927%_ _%hd3354933919%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L33927%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3729237293%_
                                         _%L33925%_
                                         _%L33927%_)
                                        (_%__match3750837509%_
                                         _%e3354833915%_
                                         _%hd3354933919%_
                                         _%tl3355033922%_)))))
                               (_%__match3749637497%_
                                (lambda (_%e3353633945%_
                                         _%__splice3729037291%_
                                         _%target3353733949%_
                                         _%tl3353933952%_)
                                  (letrec ((_%loop3354033955%_
                                            (lambda (_%hd3353833959%_
                                                     _%body3354433962%_)
                                              (if (gx#stx-pair?
                                                   _%hd3353833959%_)
                                                  (let ((_%e3354133965%_
                                                         (gx#syntax-e
                                                          _%hd3353833959%_)))
                                                    (let ((_%lp-tl3354333972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3354133965%_)))
                                                          (_%lp-hd3354233969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3354133965%_))))
                                                      (_%loop3354033955%_
                                                       _%lp-tl3354333972%_
                                                       (cons _%lp-hd3354233969%_
                                                             _%body3354433962%_))))
                                                  (let ((_%body3354533975%_
                                                         (reverse _%body3354433962%_)))
                                                    (_%__kont3728837289%_
                                                     _%body3354533975%_))))))
                                    (_%loop3354033955%_
                                     _%target3353733949%_
                                     '()))))
                               (_%g3344734001%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3726137262%_)
                                      (let ((_%e3353633945%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3726137262%_))))
                                        (if (gx#stx-pair/null? _%e3353633945%_)
                                            (let ((_%__splice3729037291%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3353633945%_
                                                    '0)))
                                              (let ((_%tl3353933952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3729037291%_
                                                        '1)))
                                                    (_%target3353733949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3729037291%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3353933952%_)
                                                    (_%__match3749637497%_
                                                     _%e3353633945%_
                                                     _%__splice3729037291%_
                                                     _%target3353733949%_
                                                     _%tl3353933952%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3345533662%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3345533662%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3345533662%_)))))
                               (_%g3344334118%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3726137262%_)
                                      (let ((_%e3351934104%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3726137262%_))))
                                        (_%__kont3728037281%_ _%e3351934104%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3344734001%_)))))
                               (_%__match3735037351%_
                                (lambda (_%e3347434343%_
                                         _%hd3347534347%_
                                         _%tl3347634350%_)
                                  (let ((_%L34353%_ _%tl3347634350%_))
                                    (if (gx#stx-list? _%L34353%_)
                                        (_%__kont3726837269%_ _%L34353%_)
                                        (_%__match3750237503%_
                                         _%e3347434343%_
                                         _%hd3347534347%_
                                         _%tl3347634350%_)))))
                               (_%__match3734037341%_
                                (lambda (_%e3347034428%_
                                         _%hd3347134432%_
                                         _%tl3347234435%_)
                                  (let ((_%L34438%_ _%tl3347234435%_))
                                    (if (gx#stx-list? _%L34438%_)
                                        (_%__kont3726637267%_ _%L34438%_)
                                        (_%__match3750237503%_
                                         _%e3347034428%_
                                         _%hd3347134432%_
                                         _%tl3347234435%_))))))
                          (if (gx#stx-pair? _%__stx3726137262%_)
                              (let ((_%e3346334513%_
                                     (gx#syntax-e _%__stx3726137262%_)))
                                (let ((_%tl3346534520%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3346334513%_)))
                                      (_%hd3346434517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3346334513%_))))
                                  (if (gx#identifier? _%hd3346434517%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39479_|
                                           _%hd3346434517%_)
                                          (if (gx#stx-pair? _%tl3346534520%_)
                                              (let ((_%e3346634523%_
                                                     (gx#syntax-e
                                                      _%tl3346534520%_)))
                                                (let ((_%tl3346834530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3346634523%_)))
                                                      (_%hd3346734527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3346634523%_))))
                                                  (_%__kont3726437265%_
                                                   _%tl3346834530%_
                                                   _%hd3346734527%_)))
                                              (_%__match3750237503%_
                                               _%e3346334513%_
                                               _%hd3346434517%_
                                               _%tl3346534520%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39480_|
                                               _%hd3346434517%_)
                                              (_%__match3734037341%_
                                               _%e3346334513%_
                                               _%hd3346434517%_
                                               _%tl3346534520%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39481_|
                                                   _%hd3346434517%_)
                                                  (_%__match3735037351%_
                                                   _%e3346334513%_
                                                   _%hd3346434517%_
                                                   _%tl3346534520%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39482_|
                                                       _%hd3346434517%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3346534520%_)
                                                          (let ((_%e3348134313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3346534520%_)))
                    (let ((_%tl3348334320%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3348134313%_)))
                          (_%hd3348234317%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3348134313%_))))
                      (if (gx#stx-null? _%tl3348334320%_)
                          (_%__kont3727037271%_ _%hd3348234317%_)
                          (_%__match3750237503%_
                           _%e3346334513%_
                           _%hd3346434517%_
                           _%tl3346534520%_))))
                  (_%__match3750237503%_
                   _%e3346334513%_
                   _%hd3346434517%_
                   _%tl3346534520%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39483_|
                   _%hd3346434517%_)
                  (if (gx#stx-pair? _%tl3346534520%_)
                      (let ((_%e3348934259%_ (gx#syntax-e _%tl3346534520%_)))
                        (let ((_%tl3349134266%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3348934259%_)))
                              (_%hd3349034263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3348934259%_))))
                          (if (gx#stx-pair? _%tl3349134266%_)
                              (let ((_%e3349234269%_
                                     (gx#syntax-e _%tl3349134266%_)))
                                (let ((_%tl3349434276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3349234269%_)))
                                      (_%hd3349334273%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3349234269%_))))
                                  (if (gx#stx-null? _%tl3349434276%_)
                                      (_%__kont3727237273%_
                                       _%hd3349334273%_
                                       _%hd3349034263%_)
                                      (_%__match3750237503%_
                                       _%e3346334513%_
                                       _%hd3346434517%_
                                       _%tl3346534520%_))))
                              (_%__match3750237503%_
                               _%e3346334513%_
                               _%hd3346434517%_
                               _%tl3346534520%_))))
                      (_%__match3750237503%_
                       _%e3346334513%_
                       _%hd3346434517%_
                       _%tl3346534520%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39484_|
                       _%hd3346434517%_)
                      (if (gx#stx-pair? _%tl3346534520%_)
                          (let ((_%e3350134203%_
                                 (gx#syntax-e _%tl3346534520%_)))
                            (let ((_%tl3350334210%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3350134203%_)))
                                  (_%hd3350234207%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3350134203%_))))
                              (if (gx#stx-pair? _%tl3350334210%_)
                                  (let ((_%e3350434213%_
                                         (gx#syntax-e _%tl3350334210%_)))
                                    (let ((_%tl3350634220%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3350434213%_)))
                                          (_%hd3350534217%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3350434213%_))))
                                      (_%__kont3727437275%_
                                       _%tl3350634220%_
                                       _%hd3350534217%_
                                       _%hd3350234207%_)))
                                  (_%__match3750237503%_
                                   _%e3346334513%_
                                   _%hd3346434517%_
                                   _%tl3346534520%_))))
                          (_%__match3750237503%_
                           _%e3346334513%_
                           _%hd3346434517%_
                           _%tl3346534520%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39485_|
                           _%hd3346434517%_)
                          (_%__kont3727637277%_ _%tl3346534520%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39486_|
                               _%hd3346434517%_)
                              (if (gx#stx-pair? _%tl3346534520%_)
                                  (let ((_%e3351534135%_
                                         (gx#syntax-e _%tl3346534520%_)))
                                    (let ((_%tl3351734142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3351534135%_)))
                                          (_%hd3351634139%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3351534135%_))))
                                      (if (gx#stx-null? _%tl3351734142%_)
                                          (_%__kont3727837279%_
                                           _%hd3351634139%_)
                                          (_%__match3750237503%_
                                           _%e3346334513%_
                                           _%hd3346434517%_
                                           _%tl3346534520%_))))
                                  (_%__match3750237503%_
                                   _%e3346334513%_
                                   _%hd3346434517%_
                                   _%tl3346534520%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39487_|
                                   _%hd3346434517%_)
                                  (if (gx#stx-pair? _%tl3346534520%_)
                                      (let ((_%e3352434074%_
                                             (gx#syntax-e _%tl3346534520%_)))
                                        (let ((_%tl3352634081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3352434074%_)))
                                              (_%hd3352534078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3352434074%_))))
                                          (if (gx#stx-null? _%tl3352634081%_)
                                              (_%__kont3728237283%_
                                               _%hd3352534078%_)
                                              (_%__kont3728437285%_
                                               _%tl3346534520%_))))
                                      (_%__kont3728437285%_ _%tl3346534520%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39488_|
                                       _%hd3346434517%_)
                                      (_%__kont3728637287%_ _%tl3346534520%_)
                                      (_%__match3750237503%_
                                       _%e3346334513%_
                                       _%hd3346434517%_
                                       _%tl3346534520%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3750237503%_
                                       _%e3346334513%_
                                       _%hd3346434517%_
                                       _%tl3346534520%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3344334118%_))))))))
                 (_%parse-list33076%_
                  (lambda (_%body33256%_)
                    (let* ((_%__stx3759137592%_ _%body33256%_)
                           (_%g3326233291%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3759137592%_))))
                      (let ((_%__kont3759437595%_
                             (lambda (_%L33415%_)
                               (_%parse133074%_ _%L33415%_)))
                            (_%__kont3759637597%_
                             (lambda (_%L33367%_ _%L33369%_ _%L33370%_)
                               (cons 'splice:
                                     (cons (_%parse133074%_ _%L33370%_)
                                           (cons (_%parse-list33076%_
                                                  _%L33367%_)
                                                 '())))))
                            (_%__kont3759837599%_
                             (lambda (_%L33325%_ _%L33327%_)
                               (cons 'cons:
                                     (cons (_%parse133074%_ _%L33327%_)
                                           (cons (_%parse-list33076%_
                                                  _%L33325%_)
                                                 '())))))
                            (_%__kont3760037601%_
                             (lambda ()
                               (if (gx#stx-null? _%body33256%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33256%_)
                                       (_%parse-error33081%_ _%body33256%_)
                                       (_%parse133074%_ _%body33256%_))))))
                        (let* ((_%__match3764037641%_
                                (lambda (_%e3328333315%_
                                         _%hd3328433319%_
                                         _%tl3328533322%_)
                                  (let ((_%L33325%_ _%tl3328533322%_)
                                        (_%L33327%_ _%hd3328433319%_))
                                    (if (gx#ellipsis? _%L33327%_)
                                        (_%__kont3760037601%_)
                                        (_%__kont3759837599%_
                                         _%L33325%_
                                         _%L33327%_)))))
                               (_%__match3763437635%_
                                (lambda (_%e3327533347%_
                                         _%hd3327633351%_
                                         _%tl3327733354%_
                                         _%e3327833357%_
                                         _%hd3327933361%_
                                         _%tl3328033364%_)
                                  (let ((_%L33367%_ _%tl3328033364%_)
                                        (_%L33369%_ _%hd3327933361%_)
                                        (_%L33370%_ _%hd3327633351%_))
                                    (if (gx#ellipsis? _%L33369%_)
                                        (_%__kont3759637597%_
                                         _%L33367%_
                                         _%L33369%_
                                         _%L33370%_)
                                        (_%__match3764037641%_
                                         _%e3327533347%_
                                         _%hd3327633351%_
                                         _%tl3327733354%_))))))
                          (if (gx#stx-pair? _%__stx3759137592%_)
                              (let ((_%e3326533391%_
                                     (gx#syntax-e _%__stx3759137592%_)))
                                (let ((_%tl3326733398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3326533391%_)))
                                      (_%hd3326633395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3326533391%_))))
                                  (if (gx#stx-datum? _%hd3326633395%_)
                                      (let ((_%e3326833401%_
                                             (gx#stx-e _%hd3326633395%_)))
                                        (if (equal? _%e3326833401%_ '::)
                                            (if (gx#stx-pair? _%tl3326733398%_)
                                                (let ((_%e3326933405%_
                                                       (gx#syntax-e
                                                        _%tl3326733398%_)))
                                                  (let ((_%tl3327133412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3326933405%_)))
                                                        (_%hd3327033409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3326933405%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3327133412%_)
                                                        (_%__kont3759437595%_
                                                         _%hd3327033409%_)
                                                        (_%__match3763437635%_
                                                         _%e3326533391%_
                                                         _%hd3326633395%_
                                                         _%tl3326733398%_
                                                         _%e3326933405%_
                                                         _%hd3327033409%_
                                                         _%tl3327133412%_))))
                                                (_%__match3764037641%_
                                                 _%e3326533391%_
                                                 _%hd3326633395%_
                                                 _%tl3326733398%_))
                                            (if (gx#stx-pair? _%tl3326733398%_)
                                                (let ((_%e3327833357%_
                                                       (gx#syntax-e
                                                        _%tl3326733398%_)))
                                                  (let ((_%tl3328033364%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3327833357%_)))
                                                        (_%hd3327933361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3327833357%_))))
                                                    (_%__match3763437635%_
                                                     _%e3326533391%_
                                                     _%hd3326633395%_
                                                     _%tl3326733398%_
                                                     _%e3327833357%_
                                                     _%hd3327933361%_
                                                     _%tl3328033364%_)))
                                                (_%__match3764037641%_
                                                 _%e3326533391%_
                                                 _%hd3326633395%_
                                                 _%tl3326733398%_))))
                                      (if (gx#stx-pair? _%tl3326733398%_)
                                          (let ((_%e3327833357%_
                                                 (gx#syntax-e
                                                  _%tl3326733398%_)))
                                            (let ((_%tl3328033364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3327833357%_)))
                                                  (_%hd3327933361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3327833357%_))))
                                              (_%__match3763437635%_
                                               _%e3326533391%_
                                               _%hd3326633395%_
                                               _%tl3326733398%_
                                               _%e3327833357%_
                                               _%hd3327933361%_
                                               _%tl3328033364%_)))
                                          (_%__match3764037641%_
                                           _%e3326533391%_
                                           _%hd3326633395%_
                                           _%tl3326733398%_)))))
                              (_%__kont3760037601%_)))))))
                 (_%parse-vector33077%_
                  (lambda (_%body33253%_)
                    (if (_%simple-vector?33078%_ _%body33253%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133074%_ _%body33253%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33076%_ _%body33253%_)
                                    '())))))
                 (_%simple-vector?33078%_
                  (lambda (_%body33190%_)
                    (let* ((_%__stx3764337644%_ _%body33190%_)
                           (_%g3319433206%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3764337644%_))))
                      (let ((_%__kont3764637647%_
                             (lambda (_%L33234%_ _%L33236%_)
                               (if (gx#ellipsis? _%L33236%_)
                                   '#f
                                   (_%simple-vector?33078%_ _%L33234%_))))
                            (_%__kont3764837649%_
                             (lambda () (gx#stx-null? _%body33190%_))))
                        (if (gx#stx-pair? _%__stx3764337644%_)
                            (let ((_%e3319833224%_
                                   (gx#syntax-e _%__stx3764337644%_)))
                              (let ((_%tl3320033231%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3319833224%_)))
                                    (_%hd3319933228%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3319833224%_))))
                                (_%__kont3764637647%_
                                 _%tl3320033231%_
                                 _%hd3319933228%_)))
                            (_%__kont3764837649%_))))))
                 (_%parse-class-body33079%_
                  (lambda (_%body33099%_)
                    (let _%recur33102%_ ((_%rest33105%_ _%body33099%_))
                      (let* ((_%__stx3765937660%_ _%rest33105%_)
                             (_%g3310933125%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3765937660%_))))
                        (let ((_%__kont3766237663%_
                               (lambda (_%L33163%_ _%L33165%_ _%L33166%_)
                                 (cons _%L33166%_
                                       (cons (_%parse133074%_ _%L33165%_)
                                             (_%recur33102%_ _%L33163%_)))))
                              (_%__kont3766437665%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33105%_)
                                     '()
                                     (_%parse-error33081%_ _%rest33105%_)))))
                          (let ((_%__match3767837679%_
                                 (lambda (_%e3311433143%_
                                          _%hd3311533147%_
                                          _%tl3311633150%_
                                          _%e3311733153%_
                                          _%hd3311833157%_
                                          _%tl3311933160%_)
                                   (let ((_%L33163%_ _%tl3311933160%_)
                                         (_%L33165%_ _%hd3311833157%_)
                                         (_%L33166%_ _%hd3311533147%_))
                                     (if (gx#stx-keyword? _%L33166%_)
                                         (_%__kont3766237663%_
                                          _%L33163%_
                                          _%L33165%_
                                          _%L33166%_)
                                         (_%__kont3766437665%_))))))
                            (if (gx#stx-pair? _%__stx3765937660%_)
                                (let ((_%e3311433143%_
                                       (gx#syntax-e _%__stx3765937660%_)))
                                  (let ((_%tl3311633150%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3311433143%_)))
                                        (_%hd3311533147%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3311433143%_))))
                                    (if (gx#stx-pair? _%tl3311633150%_)
                                        (let ((_%e3311733153%_
                                               (gx#syntax-e _%tl3311633150%_)))
                                          (let ((_%tl3311933160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3311733153%_)))
                                                (_%hd3311833157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3311733153%_))))
                                            (_%__match3767837679%_
                                             _%e3311433143%_
                                             _%hd3311533147%_
                                             _%tl3311633150%_
                                             _%e3311733153%_
                                             _%hd3311833157%_
                                             _%tl3311933160%_)))
                                        (_%__kont3766437665%_))))
                                (_%__kont3766437665%_))))))))
                 (_%parse-qq33080%_
                  (lambda (_%hd33086%_)
                    (let ((_%g3308833095%_
                           (lambda (_%g3308933091%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3308933091%_))))
                      (_%g3308833095%_ _%hd33086%_))))
                 (_%parse-error33081%_
                  (lambda (_%hd33083%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33072%_
                               (cons _%match-stx33072%_
                                     (cons _%stx33070%_
                                           (cons _%hd33083%_ '())))
                               (cons _%stx33070%_ (cons _%hd33083%_ '())))))))
          (_%parse133074%_ _%stx33070%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx34760%_)
        (let ((_%match-stx34763%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx34760%_
           _%match-stx34763%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39489_
        (let ((_g39490_ (let () (declare (not safe)) (##length _g39489_))))
          (cond ((let () (declare (not safe)) (##fx= _g39490_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39489_))
                ((let () (declare (not safe)) (##fx= _g39490_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39489_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33055%_)
        (let ((__tmp39491
               (lambda (_%E33058%_)
                 (with-exception-handler
                  (let ((_%E!33061%_ (current-exception-handler)))
                    (lambda (_%e33064%_)
                      (if (syntax-error? _%e33064%_)
                          (_%E33058%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33061%_ _%e33064%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33055%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39491))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree31790%_)
        (letrec ((_%loop31793%_
                  (lambda (_%ptree32080%_ _%vars32082%_ _%K32083%_)
                    (let* ((_%__stx3777737778%_ _%ptree32080%_)
                           (_%g3209632206%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3777737778%_))))
                      (let ((_%__kont3778037781%_
                             (lambda (_%L32836%_)
                               (let* ((_%__stx3769737698%_ _%L32836%_)
                                      (_%g3285332887%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3769737698%_))))
                                 (let ((_%__kont3770037701%_
                                        (lambda (_%L33036%_)
                                          (_%loop31793%_
                                           _%L33036%_
                                           _%vars32082%_
                                           _%K32083%_)))
                                       (_%__kont3770237703%_
                                        (lambda (_%L33005%_)
                                          (_%loop31793%_
                                           _%L33005%_
                                           _%vars32082%_
                                           _%K32083%_)))
                                       (_%__kont3770437705%_
                                        (lambda (_%L32953%_)
                                          (_%loop31793%_
                                           _%L32953%_
                                           _%vars32082%_
                                           _%K32083%_)))
                                       (_%__kont3770637707%_
                                        (lambda ()
                                          (_%K32083%_ _%vars32082%_))))
                                   (if (gx#stx-pair? _%__stx3769737698%_)
                                       (let ((_%e3285633026%_
                                              (gx#syntax-e
                                               _%__stx3769737698%_)))
                                         (let ((_%tl3285833033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3285633026%_)))
                                               (_%hd3285733030%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3285633026%_))))
                                           (if (gx#stx-null? _%tl3285833033%_)
                                               (_%__kont3770037701%_
                                                _%hd3285733030%_)
                                               (if (gx#stx-datum?
                                                    _%hd3285733030%_)
                                                   (let ((_%e3286332991%_
                                                          (gx#stx-e
                                                           _%hd3285733030%_)))
                                                     (if (equal? _%e3286332991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3285833033%_)
                     (let ((_%e3286432995%_ (gx#syntax-e _%tl3285833033%_)))
                       (let ((_%tl3286633002%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3286432995%_)))
                             (_%hd3286532999%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3286432995%_))))
                         (if (gx#stx-null? _%tl3286633002%_)
                             (_%__kont3770237703%_ _%hd3286532999%_)
                             (_%__kont3770637707%_))))
                     (_%__kont3770637707%_))
                 (if (equal? _%e3286332991%_ '::)
                     (if (gx#stx-pair? _%tl3285833033%_)
                         (let ((_%e3287232919%_
                                (gx#syntax-e _%tl3285833033%_)))
                           (let ((_%tl3287432926%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3287232919%_)))
                                 (_%hd3287332923%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3287232919%_))))
                             (if (gx#stx-pair? _%tl3287432926%_)
                                 (let ((_%e3287532929%_
                                        (gx#syntax-e _%tl3287432926%_)))
                                   (let ((_%tl3287732936%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3287532929%_)))
                                         (_%hd3287632933%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3287532929%_))))
                                     (if (gx#stx-datum? _%hd3287632933%_)
                                         (let ((_%e3287832939%_
                                                (gx#stx-e _%hd3287632933%_)))
                                           (if (equal? _%e3287832939%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3287732936%_)
                                                   (let ((_%e3287932943%_
                                                          (gx#syntax-e
                                                           _%tl3287732936%_)))
                                                     (let ((_%tl3288132950%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3287932943%_)))
                                                           (_%hd3288032947%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3287932943%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3288132950%_)
                                                           (_%__kont3770437705%_
                                                            _%hd3288032947%_)
                                                           (_%__kont3770637707%_))))
                                                   (_%__kont3770637707%_))
                                               (_%__kont3770637707%_)))
                                         (_%__kont3770637707%_))))
                                 (_%__kont3770637707%_))))
                         (_%__kont3770637707%_))
                     (_%__kont3770637707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3770637707%_)))))
                                       (_%__kont3770637707%_))))))
                            (_%__kont3778237783%_
                             (lambda (_%L32723%_ _%L32725%_)
                               (let* ((_%__stx3768137682%_ _%L32723%_)
                                      (_%g3274132753%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3768137682%_))))
                                 (let ((_%__kont3768437685%_
                                        (lambda (_%L32781%_ _%L32783%_)
                                          (_%loop31793%_
                                           _%L32783%_
                                           _%vars32082%_
                                           (lambda (_%g3279532797%_)
                                             (_%loop31793%_
                                              (cons _%L32725%_ _%L32781%_)
                                              _%g3279532797%_
                                              _%K32083%_)))))
                                       (_%__kont3768637687%_
                                        (lambda ()
                                          (_%K32083%_ _%vars32082%_))))
                                   (if (gx#stx-pair? _%__stx3768137682%_)
                                       (let ((_%e3274532771%_
                                              (gx#syntax-e
                                               _%__stx3768137682%_)))
                                         (let ((_%tl3274732778%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3274532771%_)))
                                               (_%hd3274632775%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3274532771%_))))
                                           (_%__kont3768437685%_
                                            _%tl3274732778%_
                                            _%hd3274632775%_)))
                                       (_%__kont3768637687%_))))))
                            (_%__kont3778437785%_
                             (lambda (_%L32692%_)
                               (_%loop31793%_
                                _%L32692%_
                                _%vars32082%_
                                _%K32083%_)))
                            (_%__kont3778637787%_
                             (lambda (_%L32638%_ _%L32640%_)
                               (_%loop31793%_
                                _%L32640%_
                                _%vars32082%_
                                (lambda (_%g3265532657%_)
                                  (_%loop31793%_
                                   _%L32638%_
                                   _%g3265532657%_
                                   _%K32083%_)))))
                            (_%__kont3778837789%_
                             (lambda (_%L32574%_ _%L32576%_)
                               (_%loop31793%_
                                _%L32576%_
                                _%vars32082%_
                                (lambda (_%g3259132593%_)
                                  (_%loop31793%_
                                   _%L32574%_
                                   _%g3259132593%_
                                   _%K32083%_)))))
                            (_%__kont3779037791%_
                             (lambda (_%L32519%_)
                               (_%loop31793%_
                                _%L32519%_
                                _%vars32082%_
                                _%K32083%_)))
                            (_%__kont3779237793%_
                             (lambda (_%L32469%_ _%L32471%_)
                               (_%loop-vector31795%_
                                _%L32469%_
                                _%vars32082%_
                                _%K32083%_)))
                            (_%__kont3779437795%_
                             (lambda (_%L32426%_)
                               (_%loop-vector31795%_
                                _%L32426%_
                                _%vars32082%_
                                _%K32083%_)))
                            (_%__kont3779637797%_
                             (lambda (_%L32369%_)
                               (_%loop-class-list31797%_
                                _%L32369%_
                                _%vars32082%_
                                _%K32083%_)))
                            (_%__kont3779837799%_
                             (lambda (_%L32310%_ _%L32312%_)
                               (_%loop31793%_
                                _%L32310%_
                                _%vars32082%_
                                _%K32083%_)))
                            (_%__kont3780037801%_
                             (lambda (_%L32248%_)
                               (if (find (lambda (_%g3226332265%_)
                                           (gx#bound-identifier=?
                                            _%g3226332265%_
                                            _%L32248%_))
                                         _%vars32082%_)
                                   (_%K32083%_ _%vars32082%_)
                                   (_%K32083%_
                                    (cons _%L32248%_ _%vars32082%_)))))
                            (_%__kont3780237803%_
                             (lambda () (_%K32083%_ _%vars32082%_))))
                        (let* ((_%__match3793437935%_
                                (lambda (_%e3215332449%_
                                         _%hd3215432453%_
                                         _%tl3215532456%_
                                         _%e3215632459%_
                                         _%hd3215732463%_
                                         _%tl3215832466%_)
                                  (let ((_%L32469%_ _%hd3215732463%_)
                                        (_%L32471%_ _%hd3215432453%_))
                                    (if (or (gx#stx-eq? 'values: _%L32471%_)
                                            (gx#stx-eq? 'vector: _%L32471%_))
                                        (_%__kont3779237793%_
                                         _%L32469%_
                                         _%L32471%_)
                                        (if (gx#stx-datum? _%hd3215432453%_)
                                            (let ((_%e3216332402%_
                                                   (gx#stx-e
                                                    _%hd3215432453%_)))
                                              (if (equal? _%e3216332402%_
                                                          'struct:)
                                                  (_%__kont3780237803%_)
                                                  (if (equal? _%e3216332402%_
                                                              'class:)
                                                      (_%__kont3780237803%_)
                                                      (if (equal? _%e3216332402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3780237803%_)
                  (if (equal? _%e3216332402%_ 'var:)
                      (_%__kont3780037801%_ _%hd3215732463%_)
                      (_%__kont3780237803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3780237803%_))))))
                               (_%__match3782837829%_
                                (lambda (_%e3210832713%_
                                         _%hd3210932717%_
                                         _%tl3211032720%_)
                                  (let ((_%L32723%_ _%tl3211032720%_)
                                        (_%L32725%_ _%hd3210932717%_))
                                    (if (or (gx#stx-eq? 'and: _%L32725%_)
                                            (gx#stx-eq? 'or: _%L32725%_))
                                        (_%__kont3778237783%_
                                         _%L32723%_
                                         _%L32725%_)
                                        (if (gx#stx-datum? _%hd3210932717%_)
                                            (let ((_%e3211532678%_
                                                   (gx#stx-e
                                                    _%hd3210932717%_)))
                                              (if (equal? _%e3211532678%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3211032720%_)
                                                      (let ((_%e3211632682%_
                                                             (gx#syntax-e
                                                              _%tl3211032720%_)))
                                                        (let ((_%tl3211832689%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3211632682%_)))
                      (_%hd3211732686%_
                       (let () (declare (not safe)) (##car _%e3211632682%_))))
                  (if (gx#stx-null? _%tl3211832689%_)
                      (_%__kont3778437785%_ _%hd3211732686%_)
                      (_%__kont3780237803%_))))
              (_%__kont3780237803%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3211532678%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3211032720%_)
                                                          (let ((_%e3212532618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3211032720%_)))
                    (let ((_%tl3212732625%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3212532618%_)))
                          (_%hd3212632622%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3212532618%_))))
                      (if (gx#stx-pair? _%tl3212732625%_)
                          (let ((_%e3212832628%_
                                 (gx#syntax-e _%tl3212732625%_)))
                            (let ((_%tl3213032635%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3212832628%_)))
                                  (_%hd3212932632%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3212832628%_))))
                              (if (gx#stx-null? _%tl3213032635%_)
                                  (_%__kont3778637787%_
                                   _%hd3212932632%_
                                   _%hd3212632622%_)
                                  (_%__kont3780237803%_))))
                          (if (gx#stx-null? _%tl3212732625%_)
                              (_%__match3793437935%_
                               _%e3210832713%_
                               _%hd3210932717%_
                               _%tl3211032720%_
                               _%e3212532618%_
                               _%hd3212632622%_
                               _%tl3212732625%_)
                              (_%__kont3780237803%_)))))
                  (_%__kont3780237803%_))
              (if (equal? _%e3211532678%_ 'splice:)
                  (if (gx#stx-pair? _%tl3211032720%_)
                      (let ((_%e3213732554%_ (gx#syntax-e _%tl3211032720%_)))
                        (let ((_%tl3213932561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3213732554%_)))
                              (_%hd3213832558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3213732554%_))))
                          (if (gx#stx-pair? _%tl3213932561%_)
                              (let ((_%e3214032564%_
                                     (gx#syntax-e _%tl3213932561%_)))
                                (let ((_%tl3214232571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3214032564%_)))
                                      (_%hd3214132568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3214032564%_))))
                                  (if (gx#stx-null? _%tl3214232571%_)
                                      (_%__kont3778837789%_
                                       _%hd3214132568%_
                                       _%hd3213832558%_)
                                      (_%__kont3780237803%_))))
                              (if (gx#stx-null? _%tl3213932561%_)
                                  (_%__match3793437935%_
                                   _%e3210832713%_
                                   _%hd3210932717%_
                                   _%tl3211032720%_
                                   _%e3213732554%_
                                   _%hd3213832558%_
                                   _%tl3213932561%_)
                                  (_%__kont3780237803%_)))))
                      (_%__kont3780237803%_))
                  (if (equal? _%e3211532678%_ 'box:)
                      (if (gx#stx-pair? _%tl3211032720%_)
                          (let ((_%e3214832509%_
                                 (gx#syntax-e _%tl3211032720%_)))
                            (let ((_%tl3215032516%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3214832509%_)))
                                  (_%hd3214932513%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3214832509%_))))
                              (if (gx#stx-null? _%tl3215032516%_)
                                  (_%__kont3779037791%_ _%hd3214932513%_)
                                  (_%__kont3780237803%_))))
                          (_%__kont3780237803%_))
                      (if (gx#stx-pair? _%tl3211032720%_)
                          (let ((_%e3215632459%_
                                 (gx#syntax-e _%tl3211032720%_)))
                            (let ((_%tl3215832466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3215632459%_)))
                                  (_%hd3215732463%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3215632459%_))))
                              (if (gx#stx-null? _%tl3215832466%_)
                                  (_%__match3793437935%_
                                   _%e3210832713%_
                                   _%hd3210932717%_
                                   _%tl3211032720%_
                                   _%e3215632459%_
                                   _%hd3215732463%_
                                   _%tl3215832466%_)
                                  (if (equal? _%e3211532678%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3215832466%_)
                                          (let ((_%e3216732416%_
                                                 (gx#syntax-e
                                                  _%tl3215832466%_)))
                                            (let ((_%tl3216932423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3216732416%_)))
                                                  (_%hd3216832420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3216732416%_))))
                                              (if (gx#stx-null?
                                                   _%tl3216932423%_)
                                                  (_%__kont3779437795%_
                                                   _%hd3216832420%_)
                                                  (_%__kont3780237803%_))))
                                          (_%__kont3780237803%_))
                                      (if (equal? _%e3211532678%_ 'class:)
                                          (if (gx#stx-pair? _%tl3215832466%_)
                                              (let ((_%e3217832359%_
                                                     (gx#syntax-e
                                                      _%tl3215832466%_)))
                                                (let ((_%tl3218032366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3217832359%_)))
                                                      (_%hd3217932363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3217832359%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3218032366%_)
                                                      (_%__kont3779637797%_
                                                       _%hd3217932363%_)
                                                      (_%__kont3780237803%_))))
                                              (_%__kont3780237803%_))
                                          (if (equal? _%e3211532678%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3215832466%_)
                                                  (let ((_%e3219032300%_
                                                         (gx#syntax-e
                                                          _%tl3215832466%_)))
                                                    (let ((_%tl3219232307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3219032300%_)))
                                                          (_%hd3219132304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3219032300%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3219232307%_)
                                                          (_%__kont3779837799%_
                                                           _%hd3219132304%_
                                                           _%hd3215732463%_)
                                                          (_%__kont3780237803%_))))
                                                  (_%__kont3780237803%_))
                                              (_%__kont3780237803%_)))))))
                          (_%__kont3780237803%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3211032720%_)
                                                (let ((_%e3215632459%_
                                                       (gx#syntax-e
                                                        _%tl3211032720%_)))
                                                  (let ((_%tl3215832466%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3215632459%_)))
                                                        (_%hd3215732463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3215632459%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3215832466%_)
                                                        (_%__match3793437935%_
                                                         _%e3210832713%_
                                                         _%hd3210932717%_
                                                         _%tl3211032720%_
                                                         _%e3215632459%_
                                                         _%hd3215732463%_
                                                         _%tl3215832466%_)
                                                        (_%__kont3780237803%_))))
                                                (_%__kont3780237803%_))))))))
                          (if (gx#stx-pair? _%__stx3777737778%_)
                              (let ((_%e3209932812%_
                                     (gx#syntax-e _%__stx3777737778%_)))
                                (let ((_%tl3210132819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3209932812%_)))
                                      (_%hd3210032816%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3209932812%_))))
                                  (if (gx#stx-datum? _%hd3210032816%_)
                                      (let ((_%e3210232822%_
                                             (gx#stx-e _%hd3210032816%_)))
                                        (if (equal? _%e3210232822%_ '?:)
                                            (if (gx#stx-pair? _%tl3210132819%_)
                                                (let ((_%e3210332826%_
                                                       (gx#syntax-e
                                                        _%tl3210132819%_)))
                                                  (let ((_%tl3210532833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3210332826%_)))
                                                        (_%hd3210432830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3210332826%_))))
                                                    (_%__kont3778037781%_
                                                     _%tl3210532833%_)))
                                                (_%__match3782837829%_
                                                 _%e3209932812%_
                                                 _%hd3210032816%_
                                                 _%tl3210132819%_))
                                            (_%__match3782837829%_
                                             _%e3209932812%_
                                             _%hd3210032816%_
                                             _%tl3210132819%_)))
                                      (_%__match3782837829%_
                                       _%e3209932812%_
                                       _%hd3210032816%_
                                       _%tl3210132819%_))))
                              (_%__kont3780237803%_)))))))
                 (_%loop-vector31795%_
                  (lambda (_%body31956%_ _%vars31958%_ _%K31959%_)
                    (let* ((_%__stx3803538036%_ _%body31956%_)
                           (_%g3196231985%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3803538036%_))))
                      (let ((_%__kont3803838039%_
                             (lambda (_%L32062%_)
                               (_%loop-list31796%_
                                _%L32062%_
                                _%vars31958%_
                                _%K31959%_)))
                            (_%__kont3804038041%_
                             (lambda (_%L32016%_)
                               (_%loop31793%_
                                _%L32016%_
                                _%vars31958%_
                                _%K31959%_))))
                        (if (gx#stx-pair? _%__stx3803538036%_)
                            (let ((_%e3196532038%_
                                   (gx#syntax-e _%__stx3803538036%_)))
                              (let ((_%tl3196732045%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3196532038%_)))
                                    (_%hd3196632042%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3196532038%_))))
                                (if (gx#stx-datum? _%hd3196632042%_)
                                    (let ((_%e3196832048%_
                                           (gx#stx-e _%hd3196632042%_)))
                                      (if (equal? _%e3196832048%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3196732045%_)
                                              (let ((_%e3196932052%_
                                                     (gx#syntax-e
                                                      _%tl3196732045%_)))
                                                (let ((_%tl3197132059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3196932052%_)))
                                                      (_%hd3197032056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3196932052%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3197132059%_)
                                                      (_%__kont3803838039%_
                                                       _%hd3197032056%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3196231985%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3196231985%_)))
                                          (if (equal? _%e3196832048%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3196732045%_)
                                                  (let ((_%e3197732006%_
                                                         (gx#syntax-e
                                                          _%tl3196732045%_)))
                                                    (let ((_%tl3197932013%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3197732006%_)))
                                                          (_%hd3197832010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3197732006%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3197932013%_)
                                                          (_%__kont3804038041%_
                                                           _%hd3197832010%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3196231985%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3196231985%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3196231985%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3196231985%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3196231985%_)))))))
                 (_%loop-list31796%_
                  (lambda (_%rest31886%_ _%vars31888%_ _%K31889%_)
                    (let* ((_%__stx3808538086%_ _%rest31886%_)
                           (_%g3189231904%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3808538086%_))))
                      (let ((_%__kont3808838089%_
                             (lambda (_%L31932%_ _%L31934%_)
                               (_%loop31793%_
                                _%L31934%_
                                _%vars31888%_
                                (lambda (_%g3194631948%_)
                                  (_%loop-list31796%_
                                   _%L31932%_
                                   _%g3194631948%_
                                   _%K31889%_)))))
                            (_%__kont3809038091%_
                             (lambda () (_%K31889%_ _%vars31888%_))))
                        (if (gx#stx-pair? _%__stx3808538086%_)
                            (let ((_%e3189631922%_
                                   (gx#syntax-e _%__stx3808538086%_)))
                              (let ((_%tl3189831929%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3189631922%_)))
                                    (_%hd3189731926%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3189631922%_))))
                                (_%__kont3808838089%_
                                 _%tl3189831929%_
                                 _%hd3189731926%_)))
                            (_%__kont3809038091%_))))))
                 (_%loop-class-list31797%_
                  (lambda (_%rest31799%_ _%vars31801%_ _%K31802%_)
                    (let* ((_%__stx3810138102%_ _%rest31799%_)
                           (_%g3180531820%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3810138102%_))))
                      (let ((_%__kont3810438105%_
                             (lambda (_%L31858%_ _%L31860%_)
                               (_%loop31793%_
                                _%L31860%_
                                _%vars31801%_
                                (lambda (_%g3187631878%_)
                                  (_%loop-class-list31797%_
                                   _%L31858%_
                                   _%g3187631878%_
                                   _%K31802%_)))))
                            (_%__kont3810638107%_
                             (lambda () (_%K31802%_ _%vars31801%_))))
                        (if (gx#stx-pair? _%__stx3810138102%_)
                            (let ((_%e3180931838%_
                                   (gx#syntax-e _%__stx3810138102%_)))
                              (let ((_%tl3181131845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3180931838%_)))
                                    (_%hd3181031842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3180931838%_))))
                                (if (gx#stx-pair? _%tl3181131845%_)
                                    (let ((_%e3181231848%_
                                           (gx#syntax-e _%tl3181131845%_)))
                                      (let ((_%tl3181431855%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3181231848%_)))
                                            (_%hd3181331852%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3181231848%_))))
                                        (_%__kont3810438105%_
                                         _%tl3181431855%_
                                         _%hd3181331852%_)))
                                    (_%__kont3810638107%_))))
                            (_%__kont3810638107%_)))))))
          (_%loop31793%_ _%ptree31790%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx28716%_ _%tgt28718%_ _%ptree28719%_ _%K28720%_ _%E28721%_)
        (letrec ((_%generate128723%_
                  (lambda (_%tgt29989%_ _%ptree29991%_ _%K29992%_ _%E29993%_)
                    (let* ((_%g2999530003%_
                            (lambda (_%g2999629999%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2999629999%_)))
                           (_%g2999431786%_
                            (lambda (_%g2999630007%_)
                              ((lambda (_%L30010%_)
                                 (let* ((_%__stx3833738338%_ _%ptree29991%_)
                                        (_%g3003730179%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3833738338%_))))
                                   (let ((_%__kont3834038341%_
                                          (lambda (_%L31501%_ _%L31503%_)
                                            (let* ((_%__stx3825538256%_
                                                    _%L31501%_)
                                                   (_%g3152031555%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3825538256%_))))
                                              (let ((_%__kont3825838259%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31503%_ (cons _%L30010%_ '())))
                           (cons _%K29992%_ (cons _%E29993%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3826038261%_
                                                     (lambda (_%L31756%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31503%_ (cons _%L30010%_ '())))
                           (cons (_%generate128723%_
                                  _%tgt29989%_
                                  _%L31756%_
                                  _%K29992%_
                                  _%E29993%_)
                                 (cons _%E29993%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3826238263%_
                                                     (lambda (_%L31694%_)
                                                       (let* ((_%g3170831716%_
                                                               (lambda (_%g3170931712%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3170931712%_)))
                      (_%g3170731735%_
                       (lambda (_%g3170931720%_)
                         ((lambda (_%L31723%_)
                            (cons 'let
                                  (cons (cons (cons _%L31723%_
                                                    (cons (cons _%L31503%_
                                                                (cons _%L30010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L31723%_
                                                          (cons (_%generate128723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L31723%_
                         _%L31694%_
                         _%K29992%_
                         _%E29993%_)
                        (cons _%E29993%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3170931720%_))))
                 (_%g3170731735%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3826438265%_
                                                     (lambda (_%L31610%_
                                                              _%L31612%_)
                                                       (let* ((_%g3163231640%_
                                                               (lambda (_%g3163331636%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3163331636%_)))
                      (_%g3163131659%_
                       (lambda (_%g3163331644%_)
                         ((lambda (_%L31647%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31503%_
                                                    (cons _%L30010%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L31647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L31612%_ (cons _%L30010%_ '()))
                                    '()))
                        '())
                  (cons (_%generate128723%_
                         _%L31647%_
                         _%L31610%_
                         _%K29992%_
                         _%E29993%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E29993%_ '())))))
                          _%g3163331644%_))))
                 (_%g3163131659%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3151731767%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3825538256%_)
                                                             (let ((_%e3152331746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3825538256%_)))
                       (let ((_%tl3152531753%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3152331746%_)))
                             (_%hd3152431750%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3152331746%_))))
                         (if (gx#stx-null? _%tl3152531753%_)
                             (_%__kont3826038261%_ _%hd3152431750%_)
                             (if (gx#stx-datum? _%hd3152431750%_)
                                 (let ((_%e3153031680%_
                                        (gx#stx-e _%hd3152431750%_)))
                                   (if (equal? _%e3153031680%_ '=>:)
                                       (if (gx#stx-pair? _%tl3152531753%_)
                                           (let ((_%e3153131684%_
                                                  (gx#syntax-e
                                                   _%tl3152531753%_)))
                                             (let ((_%tl3153331691%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3153131684%_)))
                                                   (_%hd3153231688%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3153131684%_))))
                                               (if (gx#stx-null?
                                                    _%tl3153331691%_)
                                                   (_%__kont3826238263%_
                                                    _%hd3153231688%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3152031555%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3152031555%_)))
                                       (if (equal? _%e3153031680%_ '::)
                                           (if (gx#stx-pair? _%tl3152531753%_)
                                               (let ((_%e3154031576%_
                                                      (gx#syntax-e
                                                       _%tl3152531753%_)))
                                                 (let ((_%tl3154231583%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3154031576%_)))
                                                       (_%hd3154131580%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3154031576%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3154231583%_)
                                                       (let ((_%e3154331586%_
                                                              (gx#syntax-e
                                                               _%tl3154231583%_)))
                                                         (let ((_%tl3154531593%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3154331586%_)))
                       (_%hd3154431590%_
                        (let () (declare (not safe)) (##car _%e3154331586%_))))
                   (if (gx#stx-datum? _%hd3154431590%_)
                       (let ((_%e3154631596%_ (gx#stx-e _%hd3154431590%_)))
                         (if (equal? _%e3154631596%_ '=>:)
                             (if (gx#stx-pair? _%tl3154531593%_)
                                 (let ((_%e3154731600%_
                                        (gx#syntax-e _%tl3154531593%_)))
                                   (let ((_%tl3154931607%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3154731600%_)))
                                         (_%hd3154831604%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3154731600%_))))
                                     (if (gx#stx-null? _%tl3154931607%_)
                                         (_%__kont3826438265%_
                                          _%hd3154831604%_
                                          _%hd3154131580%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3152031555%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3152031555%_)))
                             (let () (declare (not safe)) (_%g3152031555%_))))
                       (let () (declare (not safe)) (_%g3152031555%_)))))
               (let () (declare (not safe)) (_%g3152031555%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3152031555%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3152031555%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3152031555%_))))))
                     (let () (declare (not safe)) (_%g3152031555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3825538256%_)
                                                      (_%__kont3825838259%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3151731767%_))))))))
                                         (_%__kont3834238343%_
                                          (lambda (_%L31398%_)
                                            (let* ((_%__stx3823938240%_
                                                    _%L31398%_)
                                                   (_%g3141131423%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3823938240%_))))
                                              (let ((_%__kont3824238243%_
                                                     (lambda (_%L31451%_
                                                              _%L31453%_)
                                                       (_%generate128723%_
                                                        _%tgt29989%_
                                                        _%L31453%_
                                                        (_%generate128723%_
                                                         _%tgt29989%_
                                                         (cons 'and:
                                                               _%L31451%_)
                                                         _%K29992%_
                                                         _%E29993%_)
                                                        _%E29993%_)))
                                                    (_%__kont3824438245%_
                                                     (lambda () _%K29992%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3823938240%_)
                                                    (let ((_%e3141531441%_
                                                           (gx#syntax-e
                                                            _%__stx3823938240%_)))
                                                      (let ((_%tl3141731448%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3141531441%_)))
                    (_%hd3141631445%_
                     (let () (declare (not safe)) (##car _%e3141531441%_))))
                (_%__kont3824238243%_ _%tl3141731448%_ _%hd3141631445%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3824438245%_))))))
                                         (_%__kont3834438345%_
                                          (lambda (_%L31305%_)
                                            (let* ((_%__stx3822338224%_
                                                    _%L31305%_)
                                                   (_%g3131831330%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3822338224%_))))
                                              (let ((_%__kont3822638227%_
                                                     (lambda (_%L31358%_
                                                              _%L31360%_)
                                                       (_%generate128723%_
                                                        _%tgt29989%_
                                                        _%L31360%_
                                                        _%K29992%_
                                                        (_%generate128723%_
                                                         _%tgt29989%_
                                                         (cons 'or: _%L31358%_)
                                                         _%K29992%_
                                                         _%E29993%_))))
                                                    (_%__kont3822838229%_
                                                     (lambda () _%E29993%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3822338224%_)
                                                    (let ((_%e3132231348%_
                                                           (gx#syntax-e
                                                            _%__stx3822338224%_)))
                                                      (let ((_%tl3132431355%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3132231348%_)))
                    (_%hd3132331352%_
                     (let () (declare (not safe)) (##car _%e3132231348%_))))
                (_%__kont3822638227%_ _%tl3132431355%_ _%hd3132331352%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3822838229%_))))))
                                         (_%__kont3834638347%_
                                          (lambda (_%L31270%_)
                                            (_%generate128723%_
                                             _%tgt29989%_
                                             _%L31270%_
                                             _%E29993%_
                                             _%K29992%_)))
                                         (_%__kont3834838349%_
                                          (lambda (_%L31144%_ _%L31146%_)
                                            (let* ((_%g3116331178%_
                                                    (lambda (_%g3116431174%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3116431174%_)))
                                                   (_%g3116231235%_
                                                    (lambda (_%g3116431182%_)
                                                      (if (gx#stx-pair?
                                                           _%g3116431182%_)
                                                          (let ((_%e3116731185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3116431182%_)))
                    (let ((_%hd3116831189%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3116731185%_)))
                          (_%tl3116931192%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3116731185%_))))
                      (if (gx#stx-pair? _%tl3116931192%_)
                          (let ((_%e3117031195%_
                                 (gx#syntax-e _%tl3116931192%_)))
                            (let ((_%hd3117131199%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3117031195%_)))
                                  (_%tl3117231202%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3117031195%_))))
                              (if (gx#stx-null? _%tl3117231202%_)
                                  ((lambda (_%L31205%_ _%L31207%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%L30010%_ '()))
                                                 (cons (let ((_%hd-pat31223%_
                                                              (gx#stx-e
                                                               _%L31146%_))
                                                             (_%tl-pat31225%_
                                                              (gx#stx-e
                                                               _%L31144%_)))
                                                         (if (and (equal? _%hd-pat31223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31225%_ '(any:)))
                     _%K29992%_
                     (if (equal? _%tl-pat31225%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31207%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate128723%_
                                            _%L31207%_
                                            _%L31146%_
                                            _%K29992%_
                                            _%E29993%_)
                                           '())))
                         (if (equal? _%hd-pat31223%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31205%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30010%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate128723%_
                                                _%L31205%_
                                                _%L31144%_
                                                _%K29992%_
                                                _%E29993%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31207%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30010%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31205%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30010%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate128723%_
                                                _%L31207%_
                                                _%L31146%_
                                                (_%generate128723%_
                                                 _%L31205%_
                                                 _%L31144%_
                                                 _%K29992%_
                                                 _%E29993%_)
                                                _%E29993%_)
                                               '())))))))
               (cons _%E29993%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3117131199%_
                                   _%hd3116831189%_)
                                  (_%g3116331178%_ _%g3116431182%_))))
                          (_%g3116331178%_ _%g3116431182%_))))
                  (_%g3116331178%_ _%g3116431182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3116231235%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3835038351%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%L30010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K29992%_ (cons _%E29993%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3835238353%_
                                          (lambda (_%L31060%_ _%L31062%_)
                                            (_%generate-splice28725%_
                                             _%tgt29989%_
                                             _%L31062%_
                                             _%L31060%_
                                             _%K29992%_
                                             _%E29993%_)))
                                         (_%__kont3835438355%_
                                          (lambda (_%L30974%_)
                                            (let* ((_%g3098830996%_
                                                    (lambda (_%g3098930992%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3098930992%_)))
                                                   (_%g3098731015%_
                                                    (lambda (_%g3098931000%_)
                                                      ((lambda (_%L31003%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%L30010%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31003%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30010%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate128723%_
                                                      _%L31003%_
                                                      _%L30974%_
                                                      _%K29992%_
                                                      _%E29993%_)
                                                     '())))
                                   (cons _%E29993%_ '())))))
               _%g3098931000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3098731015%_
                                               (gx#genident 'e)))))
                                         (_%__kont3835638357%_
                                          (lambda (_%L30779%_)
                                            (let* ((_%__stx3817338174%_
                                                    _%L30779%_)
                                                   (_%g3079430817%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3817338174%_))))
                                              (let ((_%__kont3817638177%_
                                                     (lambda (_%L30894%_)
                                                       (let* ((_%g3090830916%_
                                                               (lambda (_%g3090930912%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3090930912%_)))
                      (_%g3090730935%_
                       (lambda (_%g3090930920%_)
                         ((lambda (_%L30923%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30010%_
                                                                '()))
                                                    (cons _%L30923%_ '())))
                                        (cons (_%generate-simple-vector28726%_
                                               _%tgt29989%_
                                               _%L30894%_
                                               '0
                                               '##values-ref
                                               _%K29992%_
                                               _%E29993%_)
                                              (cons _%E29993%_ '())))))
                          _%g3090930920%_))))
                 (_%g3090730935%_ (gx#stx-length _%L30894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3817838179%_
                                                     (lambda (_%L30848%_)
                                                       (_%generate-list-vector28727%_
                                                        _%tgt29989%_
                                                        _%L30848%_
                                                        'values->list
                                                        _%K29992%_
                                                        _%E29993%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3817338174%_)
                                                    (let ((_%e3079730870%_
                                                           (gx#syntax-e
                                                            _%__stx3817338174%_)))
                                                      (let ((_%tl3079930877%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3079730870%_)))
                    (_%hd3079830874%_
                     (let () (declare (not safe)) (##car _%e3079730870%_))))
                (if (gx#stx-datum? _%hd3079830874%_)
                    (let ((_%e3080030880%_ (gx#stx-e _%hd3079830874%_)))
                      (if (equal? _%e3080030880%_ 'simple:)
                          (if (gx#stx-pair? _%tl3079930877%_)
                              (let ((_%e3080130884%_
                                     (gx#syntax-e _%tl3079930877%_)))
                                (let ((_%tl3080330891%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3080130884%_)))
                                      (_%hd3080230888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3080130884%_))))
                                  (if (gx#stx-null? _%tl3080330891%_)
                                      (_%__kont3817638177%_ _%hd3080230888%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3079430817%_)))))
                              (let () (declare (not safe)) (_%g3079430817%_)))
                          (if (equal? _%e3080030880%_ 'list:)
                              (if (gx#stx-pair? _%tl3079930877%_)
                                  (let ((_%e3080930838%_
                                         (gx#syntax-e _%tl3079930877%_)))
                                    (let ((_%tl3081130845%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3080930838%_)))
                                          (_%hd3081030842%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3080930838%_))))
                                      (if (gx#stx-null? _%tl3081130845%_)
                                          (_%__kont3817838179%_
                                           _%hd3081030842%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3079430817%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3079430817%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3079430817%_)))))
                    (let () (declare (not safe)) (_%g3079430817%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3079430817%_)))))))
                                         (_%__kont3835838359%_
                                          (lambda (_%L30584%_)
                                            (let* ((_%__stx3812338124%_
                                                    _%L30584%_)
                                                   (_%g3059930622%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3812338124%_))))
                                              (let ((_%__kont3812638127%_
                                                     (lambda (_%L30699%_)
                                                       (let* ((_%g3071330721%_
                                                               (lambda (_%g3071430717%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3071430717%_)))
                      (_%g3071230740%_
                       (lambda (_%g3071430725%_)
                         ((lambda (_%L30728%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%L30010%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30010%_ '()))
                              (cons _%L30728%_ '())))
                  (cons (_%generate-simple-vector28726%_
                         _%tgt29989%_
                         _%L30699%_
                         '0
                         '##vector-ref
                         _%K29992%_
                         _%E29993%_)
                        (cons _%E29993%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E29993%_ '())))))
                          _%g3071430725%_))))
                 (_%g3071230740%_ (gx#stx-length _%L30699%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3812838129%_
                                                     (lambda (_%L30653%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%L30010%_ '()))
                           (cons (_%generate-list-vector28727%_
                                  _%tgt29989%_
                                  _%L30653%_
                                  'vector->list
                                  _%K29992%_
                                  _%E29993%_)
                                 (cons _%E29993%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3812338124%_)
                                                    (let ((_%e3060230675%_
                                                           (gx#syntax-e
                                                            _%__stx3812338124%_)))
                                                      (let ((_%tl3060430682%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3060230675%_)))
                    (_%hd3060330679%_
                     (let () (declare (not safe)) (##car _%e3060230675%_))))
                (if (gx#stx-datum? _%hd3060330679%_)
                    (let ((_%e3060530685%_ (gx#stx-e _%hd3060330679%_)))
                      (if (equal? _%e3060530685%_ 'simple:)
                          (if (gx#stx-pair? _%tl3060430682%_)
                              (let ((_%e3060630689%_
                                     (gx#syntax-e _%tl3060430682%_)))
                                (let ((_%tl3060830696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3060630689%_)))
                                      (_%hd3060730693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3060630689%_))))
                                  (if (gx#stx-null? _%tl3060830696%_)
                                      (_%__kont3812638127%_ _%hd3060730693%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3059930622%_)))))
                              (let () (declare (not safe)) (_%g3059930622%_)))
                          (if (equal? _%e3060530685%_ 'list:)
                              (if (gx#stx-pair? _%tl3060430682%_)
                                  (let ((_%e3061430643%_
                                         (gx#syntax-e _%tl3060430682%_)))
                                    (let ((_%tl3061630650%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3061430643%_)))
                                          (_%hd3061530647%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3061430643%_))))
                                      (if (gx#stx-null? _%tl3061630650%_)
                                          (_%__kont3812838129%_
                                           _%hd3061530647%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3059930622%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3059930622%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3059930622%_)))))
                    (let () (declare (not safe)) (_%g3059930622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3059930622%_)))))))
                                         (_%__kont3836038361%_
                                          (lambda (_%L30535%_ _%L30537%_)
                                            (_%generate-struct28728%_
                                             (gx#stx-e _%L30537%_)
                                             _%tgt29989%_
                                             _%L30535%_
                                             _%K29992%_
                                             _%E29993%_)))
                                         (_%__kont3836238363%_
                                          (lambda (_%L30476%_ _%L30478%_)
                                            (_%generate-class28731%_
                                             (gx#stx-e _%L30478%_)
                                             _%tgt29989%_
                                             _%L30476%_
                                             _%K29992%_
                                             _%E29993%_)))
                                         (_%__kont3836438365%_
                                          (lambda (_%L30373%_)
                                            (let* ((_%g3038730395%_
                                                    (lambda (_%g3038830391%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3038830391%_)))
                                                   (_%g3038630414%_
                                                    (lambda (_%g3038830399%_)
                                                      ((lambda (_%L30402%_)
                                                         (cons 'if
                                                               (cons (cons _%L30402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30010%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30373%_ '()))
                                               '())))
                             (cons _%K29992%_ (cons _%E29993%_ '())))))
               _%g3038830399%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3038630414%_
                                               (let ((_%e30418%_
                                                      (gx#stx-e _%L30373%_)))
                                                 (if (or (symbol? _%e30418%_)
                                                         (keyword? _%e30418%_)
                                                         (immediate?
                                                          _%e30418%_))
                                                     '##eq?
                                                     (if (number? _%e30418%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3836638367%_
                                          (lambda (_%L30293%_ _%L30295%_)
                                            (let* ((_%g3031130319%_
                                                    (lambda (_%g3031230315%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3031230315%_)))
                                                   (_%g3031030338%_
                                                    (lambda (_%g3031230323%_)
                                                      ((lambda (_%L30326%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30295%_
                                                     (cons _%L30010%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate128723%_
                                    _%L30326%_
                                    _%L30293%_
                                    _%K29992%_
                                    _%E29993%_)
                                   '()))))
               _%g3031230323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3031030338%_
                                               (gx#genident 'e)))))
                                         (_%__kont3836838369%_
                                          (lambda (_%L30235%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30010%_ '()))
                      '())
                (cons _%K29992%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3837038371%_
                                          (lambda () _%K29992%_)))
                                     (if (gx#stx-pair? _%__stx3833738338%_)
                                         (let ((_%e3004131477%_
                                                (gx#syntax-e
                                                 _%__stx3833738338%_)))
                                           (let ((_%tl3004331484%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3004131477%_)))
                                                 (_%hd3004231481%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3004131477%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3004231481%_)
                                                 (let ((_%e3004431487%_
                                                        (gx#stx-e
                                                         _%hd3004231481%_)))
                                                   (if (equal? _%e3004431487%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3004331484%_)
                                                           (let ((_%e3004531491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3004331484%_)))
                     (let ((_%tl3004731498%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3004531491%_)))
                           (_%hd3004631495%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3004531491%_))))
                       (_%__kont3834038341%_
                        _%tl3004731498%_
                        _%hd3004631495%_)))
                   (let () (declare (not safe)) (_%g3003730179%_)))
               (if (equal? _%e3004431487%_ 'and:)
                   (_%__kont3834238343%_ _%tl3004331484%_)
                   (if (equal? _%e3004431487%_ 'or:)
                       (_%__kont3834438345%_ _%tl3004331484%_)
                       (if (equal? _%e3004431487%_ 'not:)
                           (if (gx#stx-pair? _%tl3004331484%_)
                               (let ((_%e3006331260%_
                                      (gx#syntax-e _%tl3004331484%_)))
                                 (let ((_%tl3006531267%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3006331260%_)))
                                       (_%hd3006431264%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3006331260%_))))
                                   (if (gx#stx-null? _%tl3006531267%_)
                                       (_%__kont3834638347%_ _%hd3006431264%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3003730179%_)))))
                               (let () (declare (not safe)) (_%g3003730179%_)))
                           (if (equal? _%e3004431487%_ 'cons:)
                               (if (gx#stx-pair? _%tl3004331484%_)
                                   (let ((_%e3007231124%_
                                          (gx#syntax-e _%tl3004331484%_)))
                                     (let ((_%tl3007431131%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3007231124%_)))
                                           (_%hd3007331128%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3007231124%_))))
                                       (if (gx#stx-pair? _%tl3007431131%_)
                                           (let ((_%e3007531134%_
                                                  (gx#syntax-e
                                                   _%tl3007431131%_)))
                                             (let ((_%tl3007731141%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3007531134%_)))
                                                   (_%hd3007631138%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3007531134%_))))
                                               (if (gx#stx-null?
                                                    _%tl3007731141%_)
                                                   (_%__kont3834838349%_
                                                    _%hd3007631138%_
                                                    _%hd3007331128%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3003730179%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3003730179%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3003730179%_)))
                               (if (equal? _%e3004431487%_ 'null:)
                                   (if (gx#stx-null? _%tl3004331484%_)
                                       (_%__kont3835038351%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3003730179%_)))
                                   (if (equal? _%e3004431487%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3004331484%_)
                                           (let ((_%e3008831040%_
                                                  (gx#syntax-e
                                                   _%tl3004331484%_)))
                                             (let ((_%tl3009031047%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3008831040%_)))
                                                   (_%hd3008931044%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3008831040%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3009031047%_)
                                                   (let ((_%e3009131050%_
                                                          (gx#syntax-e
                                                           _%tl3009031047%_)))
                                                     (let ((_%tl3009331057%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3009131050%_)))
                                                           (_%hd3009231054%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3009131050%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3009331057%_)
                                                           (_%__kont3835238353%_
                                                            _%hd3009231054%_
                                                            _%hd3008931044%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3003730179%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3003730179%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3003730179%_)))
                                       (if (equal? _%e3004431487%_ 'box:)
                                           (if (gx#stx-pair? _%tl3004331484%_)
                                               (let ((_%e3009930964%_
                                                      (gx#syntax-e
                                                       _%tl3004331484%_)))
                                                 (let ((_%tl3010130971%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3009930964%_)))
                                                       (_%hd3010030968%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3009930964%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3010130971%_)
                                                       (_%__kont3835438355%_
                                                        _%hd3010030968%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3003730179%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3003730179%_)))
                                           (if (equal? _%e3004431487%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3004331484%_)
                                                   (let ((_%e3010730769%_
                                                          (gx#syntax-e
                                                           _%tl3004331484%_)))
                                                     (let ((_%tl3010930776%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3010730769%_)))
                                                           (_%hd3010830773%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3010730769%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3010930776%_)
                                                           (_%__kont3835638357%_
                                                            _%hd3010830773%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3003730179%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3003730179%_)))
                                               (if (equal? _%e3004431487%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3004331484%_)
                                                       (let ((_%e3011530574%_
                                                              (gx#syntax-e
                                                               _%tl3004331484%_)))
                                                         (let ((_%tl3011730581%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3011530574%_)))
                       (_%hd3011630578%_
                        (let () (declare (not safe)) (##car _%e3011530574%_))))
                   (if (gx#stx-null? _%tl3011730581%_)
                       (_%__kont3835838359%_ _%hd3011630578%_)
                       (let () (declare (not safe)) (_%g3003730179%_)))))
               (let () (declare (not safe)) (_%g3003730179%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3004431487%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3004331484%_)
                                                           (let ((_%e3012430515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3004331484%_)))
                     (let ((_%tl3012630522%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3012430515%_)))
                           (_%hd3012530519%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3012430515%_))))
                       (if (gx#stx-pair? _%tl3012630522%_)
                           (let ((_%e3012730525%_
                                  (gx#syntax-e _%tl3012630522%_)))
                             (let ((_%tl3012930532%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3012730525%_)))
                                   (_%hd3012830529%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3012730525%_))))
                               (if (gx#stx-null? _%tl3012930532%_)
                                   (_%__kont3836038361%_
                                    _%hd3012830529%_
                                    _%hd3012530519%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3003730179%_)))))
                           (let () (declare (not safe)) (_%g3003730179%_)))))
                   (let () (declare (not safe)) (_%g3003730179%_)))
               (if (equal? _%e3004431487%_ 'class:)
                   (if (gx#stx-pair? _%tl3004331484%_)
                       (let ((_%e3013630456%_ (gx#syntax-e _%tl3004331484%_)))
                         (let ((_%tl3013830463%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3013630456%_)))
                               (_%hd3013730460%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3013630456%_))))
                           (if (gx#stx-pair? _%tl3013830463%_)
                               (let ((_%e3013930466%_
                                      (gx#syntax-e _%tl3013830463%_)))
                                 (let ((_%tl3014130473%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3013930466%_)))
                                       (_%hd3014030470%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3013930466%_))))
                                   (if (gx#stx-null? _%tl3014130473%_)
                                       (_%__kont3836238363%_
                                        _%hd3014030470%_
                                        _%hd3013730460%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3003730179%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3003730179%_)))))
                       (let () (declare (not safe)) (_%g3003730179%_)))
                   (if (equal? _%e3004431487%_ 'datum:)
                       (if (gx#stx-pair? _%tl3004331484%_)
                           (let ((_%e3014730363%_
                                  (gx#syntax-e _%tl3004331484%_)))
                             (let ((_%tl3014930370%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3014730363%_)))
                                   (_%hd3014830367%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3014730363%_))))
                               (if (gx#stx-null? _%tl3014930370%_)
                                   (_%__kont3836438365%_ _%hd3014830367%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3003730179%_)))))
                           (let () (declare (not safe)) (_%g3003730179%_)))
                       (if (equal? _%e3004431487%_ 'apply:)
                           (if (gx#stx-pair? _%tl3004331484%_)
                               (let ((_%e3015630273%_
                                      (gx#syntax-e _%tl3004331484%_)))
                                 (let ((_%tl3015830280%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3015630273%_)))
                                       (_%hd3015730277%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3015630273%_))))
                                   (if (gx#stx-pair? _%tl3015830280%_)
                                       (let ((_%e3015930283%_
                                              (gx#syntax-e _%tl3015830280%_)))
                                         (let ((_%tl3016130290%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3015930283%_)))
                                               (_%hd3016030287%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3015930283%_))))
                                           (if (gx#stx-null? _%tl3016130290%_)
                                               (_%__kont3836638367%_
                                                _%hd3016030287%_
                                                _%hd3015730277%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3003730179%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3003730179%_)))))
                               (let () (declare (not safe)) (_%g3003730179%_)))
                           (if (equal? _%e3004431487%_ 'var:)
                               (if (gx#stx-pair? _%tl3004331484%_)
                                   (let ((_%e3016730225%_
                                          (gx#syntax-e _%tl3004331484%_)))
                                     (let ((_%tl3016930232%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3016730225%_)))
                                           (_%hd3016830229%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3016730225%_))))
                                       (if (gx#stx-null? _%tl3016930232%_)
                                           (_%__kont3836838369%_
                                            _%hd3016830229%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3003730179%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3003730179%_)))
                               (if (equal? _%e3004431487%_ 'any:)
                                   (if (gx#stx-null? _%tl3004331484%_)
                                       (_%__kont3837038371%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3003730179%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3003730179%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3003730179%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3003730179%_))))))
                               _%g2999630007%_))))
                      (_%g2999431786%_ _%tgt29989%_))))
                 (_%generate-splice28725%_
                  (lambda (_%tgt29361%_
                           _%hd29363%_
                           _%rest29364%_
                           _%K29365%_
                           _%E29366%_)
                    (let* ((_%g2936829385%_
                            (lambda (_%g2936929381%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2936929381%_)))
                           (_%g2936729985%_
                            (lambda (_%g2936929389%_)
                              (if (gx#stx-pair/null? _%g2936929389%_)
                                  (let ((_g39492_
                                         (gx#syntax-split-splice
                                          _%g2936929389%_
                                          '0)))
                                    (begin
                                      (let ((_g39493_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39492_)
                                                   (##values-length _g39492_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39493_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39493_)))
                                      (let ((_%target2937129392%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39492_ 0)))
                                            (_%tl2937329395%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39492_ 1))))
                                        (if (gx#stx-null? _%tl2937329395%_)
                                            (letrec ((_%loop2937429398%_
                                                      (lambda (_%hd2937229402%_
                                                               _%var2937829405%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2937229402%_)
                                                            (let ((_%e2937529408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2937229402%_)))
                      (let ((_%lp-hd2937629412%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2937529408%_)))
                            (_%lp-tl2937729415%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2937529408%_))))
                        (_%loop2937429398%_
                         _%lp-tl2937729415%_
                         (cons _%lp-hd2937629412%_ _%var2937829405%_))))
                    (let ((_%var2937929418%_ (reverse _%var2937829405%_)))
                      ((lambda (_%L29422%_)
                         (let* ((_%g2943829455%_
                                 (lambda (_%g2943929451%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2943929451%_)))
                                (_%g2943729973%_
                                 (lambda (_%g2943929459%_)
                                   (if (gx#stx-pair/null? _%g2943929459%_)
                                       (let ((_g39494_
                                              (gx#syntax-split-splice
                                               _%g2943929459%_
                                               '0)))
                                         (begin
                                           (let ((_g39495_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39494_)
                                                        (##values-length
                                                         _g39494_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39495_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39495_)))
                                           (let ((_%target2944129462%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39494_ 0)))
                                                 (_%tl2944329465%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39494_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2944329465%_)
                                                 (letrec ((_%loop2944429468%_
                                                           (lambda (_%hd2944229472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2944829475%_)
                     (if (gx#stx-pair? _%hd2944229472%_)
                         (let ((_%e2944529478%_
                                (gx#syntax-e _%hd2944229472%_)))
                           (let ((_%lp-hd2944629482%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2944529478%_)))
                                 (_%lp-tl2944729485%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2944529478%_))))
                             (_%loop2944429468%_
                              _%lp-tl2944729485%_
                              (cons _%lp-hd2944629482%_ _%var-r2944829475%_))))
                         (let ((_%var-r2944929488%_
                                (reverse _%var-r2944829475%_)))
                           ((lambda (_%L29492%_)
                              (let* ((_%g2950929526%_
                                      (lambda (_%g2951029522%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2951029522%_)))
                                     (_%g2950829961%_
                                      (lambda (_%g2951029530%_)
                                        (if (gx#stx-pair/null? _%g2951029530%_)
                                            (let ((_g39496_
                                                   (gx#syntax-split-splice
                                                    _%g2951029530%_
                                                    '0)))
                                              (begin
                                                (let ((_g39497_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39496_)
                                                             (##values-length
                                                              _g39496_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39497_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2951229533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39496_
                                                          0)))
                                                      (_%tl2951429536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39496_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2951429536%_)
                                                      (letrec ((_%loop2951529539%_
                                                                (lambda (_%hd2951329543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2951929546%_)
                          (if (gx#stx-pair? _%hd2951329543%_)
                              (let ((_%e2951629549%_
                                     (gx#syntax-e _%hd2951329543%_)))
                                (let ((_%lp-hd2951729553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2951629549%_)))
                                      (_%lp-tl2951829556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2951629549%_))))
                                  (_%loop2951529539%_
                                   _%lp-tl2951829556%_
                                   (cons _%lp-hd2951729553%_
                                         _%init2951929546%_))))
                              (let ((_%init2952029559%_
                                     (reverse _%init2951929546%_)))
                                ((lambda (_%L29563%_)
                                   (let* ((_%g2958029588%_
                                           (lambda (_%g2958129584%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2958129584%_)))
                                          (_%g2957929957%_
                                           (lambda (_%g2958129592%_)
                                             ((lambda (_%L29595%_)
                                                (let* ((_%g2960829616%_
                                                        (lambda (_%g2960929612%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2960929612%_)))
                                                       (_%g2960729953%_
                                                        (lambda (_%g2960929620%_)
                                                          ((lambda (_%L29623%_)
                                                             (let* ((_%g2963629644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2963729640%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2963729640%_)))
                            (_%g2963529949%_
                             (lambda (_%g2963729648%_)
                               ((lambda (_%L29651%_)
                                  (let* ((_%g2966429672%_
                                          (lambda (_%g2966529668%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2966529668%_)))
                                         (_%g2966329945%_
                                          (lambda (_%g2966529676%_)
                                            ((lambda (_%L29679%_)
                                               (let* ((_%g2969229700%_
                                                       (lambda (_%g2969329696%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2969329696%_)))
                                                      (_%g2969129941%_
                                                       (lambda (_%g2969329704%_)
                                                         ((lambda (_%L29707%_)
                                                            (let* ((_%g2972029728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2972129724%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2972129724%_)))
                           (_%g2971929937%_
                            (lambda (_%g2972129732%_)
                              ((lambda (_%L29735%_)
                                 (let* ((_%g2974829756%_
                                         (lambda (_%g2974929752%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2974929752%_)))
                                        (_%g2974729933%_
                                         (lambda (_%g2974929760%_)
                                           ((lambda (_%L29763%_)
                                              (let* ((_%g2977629784%_
                                                      (lambda (_%g2977729780%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2977729780%_)))
                                                     (_%g2977529918%_
                                                      (lambda (_%g2977729788%_)
                                                        ((lambda (_%L29791%_)
                                                           (let* ((_%g2980429812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2980529808%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2980529808%_)))
                          (_%g2980329906%_
                           (lambda (_%g2980529816%_)
                             ((lambda (_%L29819%_)
                                (let* ((_%g2983229840%_
                                        (lambda (_%g2983329836%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2983329836%_)))
                                       (_%g2983129902%_
                                        (lambda (_%g2983329844%_)
                                          ((lambda (_%L29847%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L29623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L29735%_
                                                     (foldr (lambda (_%g2986129872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2986229875%_)
                      (cons _%g2986129872%_ _%g2986229875%_))
                    '()
                    _%L29422%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L29763%_ '())))
                                   '()))
                       (cons (cons _%L29679%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L29707%_
                                                           (cons _%L29735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g2986329878%_ _%g2986429881%_)
                                  (cons _%g2986329878%_ _%g2986429881%_))
                                '()
                                _%L29492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L29847%_ '())))
                                         '()))
                             (cons (cons _%L29651%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L29735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g2986529884%_ _%g2986629887%_)
                                  (cons _%g2986529884%_ _%g2986629887%_))
                                '()
                                _%L29492%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L29735%_ '()))
                                     (cons (cons _%L29679%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L29735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L29735%_
                     (foldr (lambda (_%g2986729890%_ _%g2986829893%_)
                              (cons _%g2986729890%_ _%g2986829893%_))
                            '()
                            _%L29492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L29819%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L29651%_
                             (cons _%L29595%_
                                   (foldr (lambda (_%g2986929896%_
                                                   _%g2987029899%_)
                                            (cons _%g2986929896%_
                                                  _%g2987029899%_))
                                          '()
                                          _%L29563%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2983329844%_))))
                                  (_%g2983129902%_
                                   (_%generate128723%_
                                    _%L29707%_
                                    _%hd29363%_
                                    _%L29791%_
                                    _%L29819%_))))
                              _%g2980529816%_))))
                     (_%g2980329906%_
                      (cons _%L29623%_
                            (cons _%L29735%_
                                  (foldr (lambda (_%g2990929912%_
                                                  _%g2991029915%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g2990929912%_
                                                             '()))
                                                 _%g2991029915%_))
                                         '()
                                         _%L29492%_))))))
                 _%g2977729788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2977529918%_
                                                 (cons _%L29651%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L29735%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29492%_ _%L29422%_)
                       (foldr (lambda (_%g2992129925%_
                                       _%g2992229928%_
                                       _%g2992329930%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g2992229928%_
                                                  (cons _%g2992129925%_ '())))
                                      _%g2992329930%_))
                              '()
                              _%L29492%_
                              _%L29422%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2974929760%_))))
                                   (_%g2974729933%_
                                    (_%generate128723%_
                                     _%L29735%_
                                     _%rest29364%_
                                     _%K29365%_
                                     _%E29366%_))))
                               _%g2972129732%_))))
                      (_%g2971929937%_ (gx#genident 'rest))))
                  _%g2969329704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2969129941%_
                                                  (gx#genident 'hd))))
                                             _%g2966529676%_))))
                                    (_%g2966329945%_
                                     (gx#genident 'splice-try))))
                                _%g2963729648%_))))
                       (_%g2963529949%_ (gx#genident 'splice-loop))))
                   _%g2960929620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2960729953%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g2958129592%_))))
                                     (_%g2957929957%_ _%tgt29361%_)))
                                 _%init2952029559%_))))))
                (_%loop2951529539%_ _%target2951229533%_ '()))
              (_%g2950929526%_ _%g2951029530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2950929526%_
                                             _%g2951029530%_)))))
                                (_%g2950829961%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g2996429967%_
                                                   _%g2996529970%_)
                                            (cons _%g2996429967%_
                                                  _%g2996529970%_))
                                          '()
                                          _%L29422%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2944929488%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2944429468%_
                                                    _%target2944129462%_
                                                    '()))
                                                 (_%g2943829455%_
                                                  _%g2943929459%_)))))
                                       (_%g2943829455%_ _%g2943929459%_)))))
                           (_%g2943729973%_
                            (gx#gentemps
                             (foldr (lambda (_%g2997629979%_ _%g2997729982%_)
                                      (cons _%g2997629979%_ _%g2997729982%_))
                                    '()
                                    _%L29422%_)))))
                       _%var2937929418%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2937429398%_
                                               _%target2937129392%_
                                               '()))
                                            (_%g2936829385%_
                                             _%g2936929389%_)))))
                                  (_%g2936829385%_ _%g2936929389%_)))))
                      (_%g2936729985%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29363%_)))))
                 (_%generate-simple-vector28726%_
                  (lambda (_%tgt29184%_
                           _%body29186%_
                           _%start29187%_
                           _%ref29188%_
                           _%K29189%_
                           _%E29190%_)
                    (let _%recur29192%_ ((_%rest29195%_ _%body29186%_)
                                         (_%off29197%_ _%start29187%_))
                      (let* ((_%__stx3869538696%_ _%rest29195%_)
                             (_%g2920029212%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3869538696%_))))
                        (let ((_%__kont3869838699%_
                               (lambda (_%L29240%_ _%L29242%_)
                                 (let* ((_%g2925729280%_
                                         (lambda (_%g2925829276%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2925829276%_)))
                                        (_%g2925629353%_
                                         (lambda (_%g2925829284%_)
                                           (if (gx#stx-pair? _%g2925829284%_)
                                               (let ((_%e2926329287%_
                                                      (gx#syntax-e
                                                       _%g2925829284%_)))
                                                 (let ((_%hd2926429291%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2926329287%_)))
                                                       (_%tl2926529294%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2926329287%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2926529294%_)
                                                       (let ((_%e2926629297%_
                                                              (gx#syntax-e
                                                               _%tl2926529294%_)))
                                                         (let ((_%hd2926729301%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2926629297%_)))
                       (_%tl2926829304%_
                        (let () (declare (not safe)) (##cdr _%e2926629297%_))))
                   (if (gx#stx-pair? _%tl2926829304%_)
                       (let ((_%e2926929307%_ (gx#syntax-e _%tl2926829304%_)))
                         (let ((_%hd2927029311%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2926929307%_)))
                               (_%tl2927129314%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2926929307%_))))
                           (if (gx#stx-pair? _%tl2927129314%_)
                               (let ((_%e2927229317%_
                                      (gx#syntax-e _%tl2927129314%_)))
                                 (let ((_%hd2927329321%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2927229317%_)))
                                       (_%tl2927429324%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2927229317%_))))
                                   (if (gx#stx-null? _%tl2927429324%_)
                                       ((lambda (_%L29327%_
                                                 _%L29329%_
                                                 _%L29330%_
                                                 _%L29331%_)
                                          (cons 'let
                                                (cons (cons (cons _%L29331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%L29327%_
                                      (cons _%L29330%_ (cons _%L29329%_ '())))
                                '()))
                    '())
              (cons (_%generate128723%_
                     _%L29331%_
                     _%L29242%_
                     (_%recur29192%_ _%L29240%_ (fx1+ _%off29197%_))
                     _%E29190%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2927329321%_
                                        _%hd2927029311%_
                                        _%hd2926729301%_
                                        _%hd2926429291%_)
                                       (_%g2925729280%_ _%g2925829284%_))))
                               (_%g2925729280%_ _%g2925829284%_))))
                       (_%g2925729280%_ _%g2925829284%_))))
               (_%g2925729280%_ _%g2925829284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2925729280%_
                                                _%g2925829284%_)))))
                                   (_%g2925629353%_
                                    (list (gx#genident 'e)
                                          _%tgt29184%_
                                          _%off29197%_
                                          _%ref29188%_)))))
                              (_%__kont3870038701%_ (lambda () _%K29189%_)))
                          (if (gx#stx-pair? _%__stx3869538696%_)
                              (let ((_%e2920429230%_
                                     (gx#syntax-e _%__stx3869538696%_)))
                                (let ((_%tl2920629237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2920429230%_)))
                                      (_%hd2920529234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2920429230%_))))
                                  (_%__kont3869838699%_
                                   _%tl2920629237%_
                                   _%hd2920529234%_)))
                              (_%__kont3870038701%_)))))))
                 (_%generate-list-vector28727%_
                  (lambda (_%tgt29076%_
                           _%body29078%_
                           _%->list29079%_
                           _%K29080%_
                           _%E29081%_)
                    (let* ((_%g2908329091%_
                            (lambda (_%g2908429087%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2908429087%_)))
                           (_%g2908229180%_
                            (lambda (_%g2908429095%_)
                              ((lambda (_%L29098%_)
                                 (let* ((_%g2911029118%_
                                         (lambda (_%g2911129114%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2911129114%_)))
                                        (_%g2910929176%_
                                         (lambda (_%g2911129122%_)
                                           ((lambda (_%L29125%_)
                                              (let* ((_%g2913829146%_
                                                      (lambda (_%g2913929142%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2913929142%_)))
                                                     (_%g2913729168%_
                                                      (lambda (_%g2913929150%_)
                                                        ((lambda (_%L29153%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29098%_ (cons _%L29153%_ '()))
                                     '())
                               (cons (_%generate128723%_
                                      _%L29098%_
                                      _%body29078%_
                                      _%K29080%_
                                      _%E29081%_)
                                     '()))))
                 _%g2913929150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2913729168%_
                                                 (let ((_%$e29172%_
                                                        _%->list29079%_))
                                                   (if (eq? 'values->list
                                                            _%$e29172%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29172%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29125%_ '()))
                   (if (eq? 'struct->list _%$e29172%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%L29125%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx28716%_
                        _%->list29079%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2911129122%_))))
                                   (_%g2910929176%_ _%tgt29076%_)))
                               _%g2908429095%_))))
                      (_%g2908229180%_ (gx#genident 'e)))))
                 (_%generate-struct28728%_
                  (lambda (_%info28947%_
                           _%tgt28949%_
                           _%body28950%_
                           _%K28951%_
                           _%E28952%_)
                    (let* ((_%__stx3871138712%_ _%body28950%_)
                           (_%g2895528978%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3871138712%_))))
                      (let ((_%__kont3871438715%_
                             (lambda (_%L29055%_)
                               (let ((_%fields29069%_
                                      (_%struct-field-accessors28730%_
                                       _%info28947%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39465
                                                          _%info28947%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39465
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39465
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39465
                                                          'predicate)))
                                                   (cons _%tgt28949%_ '()))
                                             (cons (_%generate-simple-struct-body28729%_
                                                    _%info28947%_
                                                    _%tgt28949%_
                                                    _%L29055%_
                                                    _%K28951%_
                                                    _%E28952%_)
                                                   (cons _%E28952%_ '())))))))
                            (_%__kont3871638717%_
                             (lambda (_%L29009%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39466
                                                        _%info28947%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39466
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39466
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39466
                                                        'predicate)))
                                                 (cons _%tgt28949%_ '()))
                                           (cons (_%generate-list-vector28727%_
                                                  _%tgt28949%_
                                                  _%L29009%_
                                                  'struct->list
                                                  _%K28951%_
                                                  _%E28952%_)
                                                 (cons _%E28952%_ '())))))))
                        (if (gx#stx-pair? _%__stx3871138712%_)
                            (let ((_%e2895829031%_
                                   (gx#syntax-e _%__stx3871138712%_)))
                              (let ((_%tl2896029038%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2895829031%_)))
                                    (_%hd2895929035%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2895829031%_))))
                                (if (gx#stx-datum? _%hd2895929035%_)
                                    (let ((_%e2896129041%_
                                           (gx#stx-e _%hd2895929035%_)))
                                      (if (equal? _%e2896129041%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2896029038%_)
                                              (let ((_%e2896229045%_
                                                     (gx#syntax-e
                                                      _%tl2896029038%_)))
                                                (let ((_%tl2896429052%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2896229045%_)))
                                                      (_%hd2896329049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2896229045%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2896429052%_)
                                                      (_%__kont3871438715%_
                                                       _%hd2896329049%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2895528978%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2895528978%_)))
                                          (if (equal? _%e2896129041%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2896029038%_)
                                                  (let ((_%e2897028999%_
                                                         (gx#syntax-e
                                                          _%tl2896029038%_)))
                                                    (let ((_%tl2897229006%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2897028999%_)))
                                                          (_%hd2897129003%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2897028999%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2897229006%_)
                                                          (_%__kont3871638717%_
                                                           _%hd2897129003%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2895528978%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2895528978%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2895528978%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2895528978%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2895528978%_)))))))
                 (_%generate-simple-struct-body28729%_
                  (lambda (_%info28867%_
                           _%tgt28869%_
                           _%body28870%_
                           _%K28871%_
                           _%E28872%_)
                    (let _%recur28874%_ ((_%rest28877%_ _%body28870%_)
                                         (_%fields28879%_
                                          (_%struct-field-accessors28730%_
                                           _%info28867%_)))
                      (let* ((_%__stx3876138762%_ _%rest28877%_)
                             (_%g2888228894%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3876138762%_))))
                        (let ((_%__kont3876438765%_
                               (lambda (_%L28922%_ _%L28924%_)
                                 (if (null? _%fields28879%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx28716%_
                                      _%info28867%_
                                      (let ((__obj39467 _%info28867%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39467
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39467
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39467
                                             'name))))
                                     (let ((_%$tgt28939%_ (gx#genident 'e))
                                           (_%getf28941%_
                                            (car _%fields28879%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt28939%_
                                                               (cons (cons _%getf28941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt28869%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate128723%_
                                                          _%$tgt28939%_
                                                          _%L28924%_
                                                          (_%recur28874%_
                                                           _%L28922%_
                                                           (cdr _%fields28879%_))
                                                          _%E28872%_)
                                                         '())))))))
                              (_%__kont3876638767%_ (lambda () _%K28871%_)))
                          (if (gx#stx-pair? _%__stx3876138762%_)
                              (let ((_%e2888628912%_
                                     (gx#syntax-e _%__stx3876138762%_)))
                                (let ((_%tl2888828919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2888628912%_)))
                                      (_%hd2888728916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2888628912%_))))
                                  (_%__kont3876438765%_
                                   _%tl2888828919%_
                                   _%hd2888728916%_)))
                              (_%__kont3876638767%_)))))))
                 (_%struct-field-accessors28730%_
                  (lambda (_%info28848%_)
                    (let _%recur28851%_ ((_%next28854%_
                                          (cons _%info28848%_ '())))
                      (if (null? _%next28854%_)
                          '()
                          (let ((_%ti28857%_ (car _%next28854%_)))
                            (let ((__tmp39499
                                   (_%recur28851%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39468 _%ti28857%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39468
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39468
                                                  '3
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39468
                                                'super))))))
                                  (__tmp39498
                                   (map (lambda (_%slot28860%_)
                                          (let ((_%$e28863%_
                                                 (agetq _%slot28860%_
                                                        (let ((__obj39469
                                                               _%ti28857%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39469
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39469 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39469
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e28863%_
                                                _%$e28863%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx28716%_
                                                 _%info28848%_
                                                 _%slot28860%_))))
                                        (let ((__obj39470 _%ti28857%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39470
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39470
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39470
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39499 __tmp39498)))))))
                 (_%generate-class28731%_
                  (lambda (_%info28841%_
                           _%tgt28843%_
                           _%body28844%_
                           _%K28845%_
                           _%E28846%_)
                    (cons 'if
                          (cons (cons (let ((__obj39471 _%info28841%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39471
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39471
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39471
                                             'predicate)))
                                      (cons _%tgt28843%_ '()))
                                (cons (_%generate-class-body28732%_
                                       _%info28841%_
                                       _%tgt28843%_
                                       _%body28844%_
                                       _%K28845%_
                                       _%E28846%_)
                                      (cons _%E28846%_ '()))))))
                 (_%generate-class-body28732%_
                  (lambda (_%info28734%_
                           _%tgt28736%_
                           _%body28737%_
                           _%K28738%_
                           _%E28739%_)
                    (let _%recur28741%_ ((_%rest28744%_ _%body28737%_))
                      (let* ((_%__stx3877738778%_ _%rest28744%_)
                             (_%g2874828764%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3877738778%_))))
                        (let ((_%__kont3878038781%_
                               (lambda (_%L28802%_ _%L28804%_ _%L28805%_)
                                 (let ((_%$e28825%_
                                        (agetq (let ((__tmp39500
                                                      (keyword->string
                                                       (gx#stx-e _%L28805%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39500))
                                               (let ((__obj39472
                                                      _%info28734%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39472
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39472
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39472
                                                      'unchecked-accessors))))))
                                   (if _%$e28825%_
                                       ((lambda (_%getf28829%_)
                                          (let ((_%$tgt28832%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt28832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf28829%_ (cons _%tgt28736%_ '()))
                                  '()))
                      '())
                (cons (_%generate128723%_
                       _%$tgt28832%_
                       _%L28804%_
                       (_%recur28741%_ _%L28802%_)
                       _%E28739%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e28825%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx28716%_
                                        _%info28734%_
                                        _%L28805%_)))))
                              (_%__kont3878238783%_ (lambda () _%K28738%_)))
                          (if (gx#stx-pair? _%__stx3877738778%_)
                              (let ((_%e2875328782%_
                                     (gx#syntax-e _%__stx3877738778%_)))
                                (let ((_%tl2875528789%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2875328782%_)))
                                      (_%hd2875428786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2875328782%_))))
                                  (if (gx#stx-pair? _%tl2875528789%_)
                                      (let ((_%e2875628792%_
                                             (gx#syntax-e _%tl2875528789%_)))
                                        (let ((_%tl2875828799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2875628792%_)))
                                              (_%hd2875728796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2875628792%_))))
                                          (_%__kont3878038781%_
                                           _%tl2875828799%_
                                           _%hd2875728796%_
                                           _%hd2875428786%_)))
                                      (_%__kont3878238783%_))))
                              (_%__kont3878238783%_))))))))
          (_%generate128723%_
           _%tgt28718%_
           _%ptree28719%_
           _%K28720%_
           _%E28721%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27529%_ _%tgt-lst27531%_ _%clauses27532%_)
        (letrec ((_%parse-body27534%_
                  (lambda (_%hd-len28538%_)
                    (let _%lp28541%_ ((_%rest28544%_ _%clauses27532%_)
                                      (_%r28546%_ '()))
                      (let* ((_%__stx3882738828%_ _%rest28544%_)
                             (_%g2854928561%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3882738828%_))))
                        (let ((_%__kont3883038831%_
                               (lambda (_%L28589%_ _%L28591%_)
                                 (let* ((_%__stx3879938800%_ _%L28591%_)
                                        (_%g2860828624%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3879938800%_))))
                                   (let ((_%__kont3880238803%_
                                          (lambda (_%L28693%_)
                                            (if (gx#stx-null? _%L28589%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L28693%_)
                                 (let ((_%$e28704%_
                                        (gx#stx-source _%L28591%_)))
                                   (if _%$e28704%_
                                       _%$e28704%_
                                       (gx#stx-source _%stx27529%_))))
                                '())))
              _%r28546%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27529%_
                                                 _%L28591%_))))
                                         (_%__kont3880438805%_
                                          (lambda (_%L28652%_ _%L28654%_)
                                            (_%lp28541%_
                                             _%L28589%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2866628668%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2866628668%_
                           _%stx27529%_))
                        _%L28654%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L28652%_)
                              (let ((_%$e28672%_ (gx#stx-source _%L28591%_)))
                                (if _%$e28672%_
                                    _%$e28672%_
                                    (gx#stx-source _%stx27529%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r28546%_))))
                                         (_%__kont3880638807%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27529%_
                                             _%L28591%_))))
                                     (let* ((_%__match3882438825%_
                                             (lambda (_%e2861628642%_
                                                      _%hd2861728646%_
                                                      _%tl2861828649%_)
                                               (let ((_%L28652%_
                                                      _%tl2861828649%_)
                                                     (_%L28654%_
                                                      _%hd2861728646%_))
                                                 (if (and (gx#stx-list?
                                                           _%L28654%_)
                                                          (fx= (gx#stx-length
                                                                _%L28654%_)
                                                               _%hd-len28538%_)
                                                          (gx#stx-list?
                                                           _%L28652%_)
                                                          (not (gx#stx-null?
                                                                _%L28652%_)))
                                                     (_%__kont3880438805%_
                                                      _%L28652%_
                                                      _%L28654%_)
                                                     (_%__kont3880638807%_)))))
                                            (_%__match3881838819%_
                                             (lambda (_%e2861128683%_
                                                      _%hd2861228687%_
                                                      _%tl2861328690%_)
                                               (let ((_%L28693%_
                                                      _%tl2861328690%_))
                                                 (if (and (gx#stx-list?
                                                           _%L28693%_)
                                                          (not (gx#stx-null?
                                                                _%L28693%_)))
                                                     (_%__kont3880238803%_
                                                      _%L28693%_)
                                                     (_%__match3882438825%_
                                                      _%e2861128683%_
                                                      _%hd2861228687%_
                                                      _%tl2861328690%_))))))
                                       (if (gx#stx-pair? _%__stx3879938800%_)
                                           (let ((_%e2861128683%_
                                                  (gx#syntax-e
                                                   _%__stx3879938800%_)))
                                             (let ((_%tl2861328690%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2861128683%_)))
                                                   (_%hd2861228687%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2861128683%_))))
                                               (if (gx#identifier?
                                                    _%hd2861228687%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39501_|
                                                        _%hd2861228687%_)
                                                       (_%__match3881838819%_
                                                        _%e2861128683%_
                                                        _%hd2861228687%_
                                                        _%tl2861328690%_)
                                                       (_%__match3882438825%_
                                                        _%e2861128683%_
                                                        _%hd2861228687%_
                                                        _%tl2861328690%_))
                                                   (_%__match3882438825%_
                                                    _%e2861128683%_
                                                    _%hd2861228687%_
                                                    _%tl2861328690%_))))
                                           (_%__kont3880638807%_)))))))
                              (_%__kont3883238833%_ (lambda () _%r28546%_)))
                          (if (gx#stx-pair? _%__stx3882738828%_)
                              (let ((_%e2855328579%_
                                     (gx#syntax-e _%__stx3882738828%_)))
                                (let ((_%tl2855528586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2855328579%_)))
                                      (_%hd2855428583%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2855328579%_))))
                                  (_%__kont3883038831%_
                                   _%tl2855528586%_
                                   _%hd2855428583%_)))
                              (_%__kont3883238833%_)))))))
                 (_%generate-body27536%_
                  (lambda (_%body28240%_)
                    (let* ((_%g2824328251%_
                            (lambda (_%g2824428247%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2824428247%_)))
                           (_%g2824228534%_
                            (lambda (_%g2824428255%_)
                              ((lambda (_%L28258%_)
                                 (let* ((_%g2827028287%_
                                         (lambda (_%g2827128283%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2827128283%_)))
                                        (_%g2826928530%_
                                         (lambda (_%g2827128291%_)
                                           (if (gx#stx-pair/null?
                                                _%g2827128291%_)
                                               (let ((_g39502_
                                                      (gx#syntax-split-splice
                                                       _%g2827128291%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39503_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39502_)
                        (##values-length _g39502_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39503_ 2)))
                 (error "Context expects 2 values" _g39503_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2827328294%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39502_
                                                             0)))
                                                         (_%tl2827528297%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39502_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2827528297%_)
                                                         (letrec ((_%loop2827628300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2827428304%_ _%target2828028307%_)
                             (if (gx#stx-pair? _%hd2827428304%_)
                                 (let ((_%e2827728310%_
                                        (gx#syntax-e _%hd2827428304%_)))
                                   (let ((_%lp-hd2827828314%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2827728310%_)))
                                         (_%lp-tl2827928317%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2827728310%_))))
                                     (_%loop2827628300%_
                                      _%lp-tl2827928317%_
                                      (cons _%lp-hd2827828314%_
                                            _%target2828028307%_))))
                                 (let ((_%target2828128320%_
                                        (reverse _%target2828028307%_)))
                                   ((lambda (_%L28324%_)
                                      (let* ((_%g2834128358%_
                                              (lambda (_%g2834228354%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2834228354%_)))
                                             (_%g2834028526%_
                                              (lambda (_%g2834228362%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2834228362%_)
                                                    (let ((_g39504_
                                                           (gx#syntax-split-splice
                                                            _%g2834228362%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39505_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39504_)
                             (##values-length _g39504_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39505_ 2)))
                      (error "Context expects 2 values" _g39505_)))
                (let ((_%target2834428365%_
                       (let () (declare (not safe)) (##values-ref _g39504_ 0)))
                      (_%tl2834628368%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g39504_ 1))))
                  (if (gx#stx-null? _%tl2834628368%_)
                      (letrec ((_%loop2834728371%_
                                (lambda (_%hd2834528375%_
                                         _%fail-diagnostic2835128378%_)
                                  (if (gx#stx-pair? _%hd2834528375%_)
                                      (let ((_%e2834828381%_
                                             (gx#syntax-e _%hd2834528375%_)))
                                        (let ((_%lp-hd2834928385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2834828381%_)))
                                              (_%lp-tl2835028388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2834828381%_))))
                                          (_%loop2834728371%_
                                           _%lp-tl2835028388%_
                                           (cons _%lp-hd2834928385%_
                                                 _%fail-diagnostic2835128378%_))))
                                      (let ((_%fail-diagnostic2835228391%_
                                             (reverse _%fail-diagnostic2835128378%_)))
                                        ((lambda (_%L28395%_)
                                           (let* ((_%g2841228420%_
                                                   (lambda (_%g2841328416%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2841328416%_)))
                                                  (_%g2841128506%_
                                                   (lambda (_%g2841328424%_)
                                                     ((lambda (_%L28427%_)
                                                        (let* ((_%g2844028448%_
                                                                (lambda (_%g2844128444%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2844128444%_)))
                       (_%g2843928502%_
                        (lambda (_%g2844128452%_)
                          ((lambda (_%L28455%_)
                             (let* ((_%g2846828476%_
                                     (lambda (_%g2846928472%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2846928472%_)))
                                    (_%g2846728498%_
                                     (lambda (_%g2846928480%_)
                                       ((lambda (_%L28483%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28483%_ '()))))
                                        _%g2846928480%_))))
                               (_%g2846728498%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28258%_
                                                         (cons _%L28427%_ '()))
                                                   '())
                                             (cons _%L28455%_ '())))
                                 (gx#stx-source _%stx27529%_)))))
                           _%g2844128452%_))))
                  (_%g2843928502%_
                   (_%generate-clauses27537%_
                    _%body28240%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28258%_ '()) '())))))))
              _%g2841328424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2841128506%_
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
                                     (foldr (lambda (_%g2850928514%_
                                                     _%g2851028517%_)
                                              (cons _%g2850928514%_
                                                    _%g2851028517%_))
                                            (foldr (lambda (_%g2851128520%_
                                                            _%g2851228523%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2851128520%_ '()))
                   _%g2851228523%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28395%_)
                                            _%L28324%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27529%_)))))
                                         _%fail-diagnostic2835228391%_))))))
                        (_%loop2834728371%_ _%target2834428365%_ '()))
                      (_%g2834128358%_ _%g2834228362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2834128358%_
                                                     _%g2834228362%_)))))
                                        (_%g2834028526%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses27532%_))))
                                    _%target2828128320%_))))))
                   (_%loop2827628300%_ _%target2827328294%_ '()))
                 (_%g2827028287%_ _%g2827128291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2827028287%_
                                                _%g2827128291%_)))))
                                   (_%g2826928530%_ _%tgt-lst27531%_)))
                               _%g2824428255%_))))
                      (_%g2824228534%_ (gx#genident 'E)))))
                 (_%generate-clauses27537%_
                  (lambda (_%rest27892%_ _%E27894%_)
                    (let* ((_%__stx3884338844%_ _%rest27892%_)
                           (_%g2789827914%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3884338844%_))))
                      (let ((_%__kont3884638847%_
                             (lambda (_%L28148%_)
                               (let* ((_%g2815928177%_
                                       (lambda (_%g2816028173%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2816028173%_)))
                                      (_%g2815828232%_
                                       (lambda (_%g2816028181%_)
                                         (if (gx#stx-pair? _%g2816028181%_)
                                             (let ((_%e2816328184%_
                                                    (gx#syntax-e
                                                     _%g2816028181%_)))
                                               (let ((_%hd2816428188%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2816328184%_)))
                                                     (_%tl2816528191%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2816328184%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2816528191%_)
                                                     (let ((_%e2816628194%_
                                                            (gx#syntax-e
                                                             _%tl2816528191%_)))
                                                       (let ((_%hd2816728198%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2816628194%_)))
                     (_%tl2816828201%_
                      (let () (declare (not safe)) (##cdr _%e2816628194%_))))
                 (if (gx#stx-pair? _%tl2816828201%_)
                     (let ((_%e2816928204%_ (gx#syntax-e _%tl2816828201%_)))
                       (let ((_%hd2817028208%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2816928204%_)))
                             (_%tl2817128211%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2816928204%_))))
                         (if (gx#stx-null? _%tl2817128211%_)
                             ((lambda (_%L28214%_ _%L28216%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28216%_)
                                                      (_%generate127538%_
                                                       _%L28216%_
                                                       _%L28214%_
                                                       _%E27894%_)
                                                      _%L28214%_)
                                                  '()))))
                              _%hd2817028208%_
                              _%hd2816728198%_)
                             (_%g2815928177%_ _%g2816028181%_))))
                     (_%g2815928177%_ _%g2816028181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2815928177%_
                                                      _%g2816028181%_))))
                                             (_%g2815928177%_
                                              _%g2816028181%_)))))
                                 (_%g2815828232%_ _%L28148%_))))
                            (_%__kont3884838849%_
                             (lambda (_%L27942%_ _%L27944%_)
                               (let* ((_%g2795727976%_
                                       (lambda (_%g2795827972%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2795827972%_)))
                                      (_%g2795628127%_
                                       (lambda (_%g2795827980%_)
                                         (if (gx#stx-pair? _%g2795827980%_)
                                             (let ((_%e2796227983%_
                                                    (gx#syntax-e
                                                     _%g2795827980%_)))
                                               (let ((_%hd2796327987%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2796227983%_)))
                                                     (_%tl2796427990%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2796227983%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2796427990%_)
                                                     (let ((_%e2796527993%_
                                                            (gx#syntax-e
                                                             _%tl2796427990%_)))
                                                       (let ((_%hd2796627997%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2796527993%_)))
                     (_%tl2796728000%_
                      (let () (declare (not safe)) (##cdr _%e2796527993%_))))
                 (if (gx#stx-pair? _%tl2796728000%_)
                     (let ((_%e2796828003%_ (gx#syntax-e _%tl2796728000%_)))
                       (let ((_%hd2796928007%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2796828003%_)))
                             (_%tl2797028010%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2796828003%_))))
                         (if (gx#stx-null? _%tl2797028010%_)
                             ((lambda (_%L28013%_ _%L28015%_ _%L28016%_)
                                (if (gx#stx-e _%L28015%_)
                                    (let* ((_%g2803328048%_
                                            (lambda (_%g2803428044%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2803428044%_)))
                                           (_%g2803228093%_
                                            (lambda (_%g2803428052%_)
                                              (if (gx#stx-pair?
                                                   _%g2803428052%_)
                                                  (let ((_%e2803728055%_
                                                         (gx#syntax-e
                                                          _%g2803428052%_)))
                                                    (let ((_%hd2803828059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2803728055%_)))
                                                          (_%tl2803928062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2803728055%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2803928062%_)
                                                          (let ((_%e2804028065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2803928062%_)))
                    (let ((_%hd2804128069%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2804028065%_)))
                          (_%tl2804228072%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2804028065%_))))
                      (if (gx#stx-null? _%tl2804228072%_)
                          ((lambda (_%L28075%_ _%L28077%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28016%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28077%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28075%_ '()))))
                           _%hd2804128069%_
                           _%hd2803828059%_)
                          (_%g2803328048%_ _%g2803428052%_))))
                  (_%g2803328048%_ _%g2803428052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2803328048%_
                                                   _%g2803428052%_)))))
                                      (_%g2803228093%_
                                       (list (_%generate127538%_
                                              _%L28015%_
                                              _%L28013%_
                                              _%E27894%_)
                                             (_%generate-clauses27537%_
                                              _%L27942%_
                                              (cons _%L28016%_ '())))))
                                    (let* ((_%g2809728105%_
                                            (lambda (_%g2809828101%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2809828101%_)))
                                           (_%g2809628123%_
                                            (lambda (_%g2809828109%_)
                                              ((lambda (_%L28112%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28016%_
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
                             (cons _%L28013%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28112%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2809828109%_))))
                                      (_%g2809628123%_
                                       (_%generate-clauses27537%_
                                        _%L27942%_
                                        (cons _%L28016%_ '()))))))
                              _%hd2796928007%_
                              _%hd2796627997%_
                              _%hd2796327987%_)
                             (_%g2795727976%_ _%g2795827980%_))))
                     (_%g2795727976%_ _%g2795827980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2795727976%_
                                                      _%g2795827980%_))))
                                             (_%g2795727976%_
                                              _%g2795827980%_)))))
                                 (_%g2795628127%_ _%L27944%_))))
                            (_%__kont3885038851%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E27894%_ '()))))))
                        (if (gx#stx-pair? _%__stx3884338844%_)
                            (let ((_%e2790128138%_
                                   (gx#syntax-e _%__stx3884338844%_)))
                              (let ((_%tl2790328145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2790128138%_)))
                                    (_%hd2790228142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2790128138%_))))
                                (if (gx#stx-null? _%tl2790328145%_)
                                    (_%__kont3884638847%_ _%hd2790228142%_)
                                    (_%__kont3884838849%_
                                     _%tl2790328145%_
                                     _%hd2790228142%_))))
                            (_%__kont3885038851%_))))))
                 (_%generate127538%_
                  (lambda (_%clause27540%_ _%body27542%_ _%E27543%_)
                    (let* ((_%g2754527569%_
                            (lambda (_%g2754627565%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2754627565%_)))
                           (_%g2754427888%_
                            (lambda (_%g2754627573%_)
                              (if (gx#stx-pair? _%g2754627573%_)
                                  (let ((_%e2754927576%_
                                         (gx#syntax-e _%g2754627573%_)))
                                    (let ((_%hd2755027580%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2754927576%_)))
                                          (_%tl2755127583%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2754927576%_))))
                                      (if (gx#stx-pair? _%tl2755127583%_)
                                          (let ((_%e2755227586%_
                                                 (gx#syntax-e
                                                  _%tl2755127583%_)))
                                            (let ((_%hd2755327590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2755227586%_)))
                                                  (_%tl2755427593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2755227586%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2755327590%_)
                                                  (let ((_g39506_
                                                         (gx#syntax-split-splice
                                                          _%hd2755327590%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39507_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39506_)
                           (##values-length _g39506_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39507_ 2)))
                    (error "Context expects 2 values" _g39507_)))
              (let ((_%target2755527596%_
                     (let () (declare (not safe)) (##values-ref _g39506_ 0)))
                    (_%tl2755727599%_
                     (let () (declare (not safe)) (##values-ref _g39506_ 1))))
                (if (gx#stx-null? _%tl2755727599%_)
                    (letrec ((_%loop2755827602%_
                              (lambda (_%hd2755627606%_ _%var2756227609%_)
                                (if (gx#stx-pair? _%hd2755627606%_)
                                    (let ((_%e2755927612%_
                                           (gx#syntax-e _%hd2755627606%_)))
                                      (let ((_%lp-hd2756027616%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2755927612%_)))
                                            (_%lp-tl2756127619%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2755927612%_))))
                                        (_%loop2755827602%_
                                         _%lp-tl2756127619%_
                                         (cons _%lp-hd2756027616%_
                                               _%var2756227609%_))))
                                    (let ((_%var2756327622%_
                                           (reverse _%var2756227609%_)))
                                      (if (gx#stx-null? _%tl2755427593%_)
                                          ((lambda (_%L27626%_ _%L27628%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2764927652%_
                                                                _%g2765027655%_)
                                                         (cons _%g2764927652%_
                                                               _%g2765027655%_))
                                                       '()
                                                       _%L27626%_)
                                                _%stx27529%_)
                                               (let* ((_%g2765827666%_
                                                       (lambda (_%g2765927662%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2765927662%_)))
                                                      (_%g2765727760%_
                                                       (lambda (_%g2765927670%_)
                                                         ((lambda (_%L27673%_)
                                                            (let* ((_%g2768627694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2768727690%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2768727690%_)))
                           (_%g2768527756%_
                            (lambda (_%g2768727698%_)
                              ((lambda (_%L27701%_)
                                 (let* ((_%g2771427722%_
                                         (lambda (_%g2771527718%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2771527718%_)))
                                        (_%g2771327744%_
                                         (lambda (_%g2771527726%_)
                                           ((lambda (_%L27729%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L27628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L27729%_ '()))
                   (cons _%L27673%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27529%_)))
                                            _%g2771527726%_))))
                                   (_%g2771327744%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2774727750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2774827753%_)
                  (cons _%g2774727750%_ _%g2774827753%_))
                '()
                _%L27626%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L27701%_ '())))
                                     (gx#stx-source _%stx27529%_)))))
                               _%g2768727698%_))))
                      (_%g2768527756%_ _%body27542%_)))
                  _%g2765927670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2765727760%_
                                                  (let _%recur27764%_ ((_%rest27767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause27540%_)
                               (_%rest-targets27769%_ _%tgt-lst27531%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3886938870%_
                                                            _%rest27767%_)
                                                           (_%g2777227784%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3886938870%_))))
                                                      (let ((_%__kont3887238873%_
                                                             (lambda (_%L27820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L27822%_)
                       (let* ((_%g2783727849%_
                               (lambda (_%g2783827845%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2783827845%_)))
                              (_%g2783627880%_
                               (lambda (_%g2783827853%_)
                                 (if (gx#stx-pair? _%g2783827853%_)
                                     (let ((_%e2784127856%_
                                            (gx#syntax-e _%g2783827853%_)))
                                       (let ((_%hd2784227860%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2784127856%_)))
                                             (_%tl2784327863%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2784127856%_))))
                                         ((lambda (_%L27866%_ _%L27868%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27529%_
                                             _%L27868%_
                                             _%L27822%_
                                             (_%recur27764%_
                                              _%L27820%_
                                              _%L27866%_)
                                             _%E27543%_))
                                          _%tl2784327863%_
                                          _%hd2784227860%_)))
                                     (_%g2783727849%_ _%g2783827853%_)))))
                         (_%g2783627880%_ _%rest-targets27769%_))))
                    (_%__kont3887438875%_
                     (lambda ()
                       (cons _%L27628%_
                             (foldr (lambda (_%g2779427797%_ _%g2779527800%_)
                                      (cons _%g2779427797%_ _%g2779527800%_))
                                    '()
                                    _%L27626%_)))))
                (if (gx#stx-pair? _%__stx3886938870%_)
                    (let ((_%e2777627810%_ (gx#syntax-e _%__stx3886938870%_)))
                      (let ((_%tl2777827817%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2777627810%_)))
                            (_%hd2777727814%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2777627810%_))))
                        (_%__kont3887238873%_
                         _%tl2777827817%_
                         _%hd2777727814%_)))
                    (_%__kont3887438875%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2756327622%_
                                           _%hd2755027580%_)
                                          (_%g2754527569%_
                                           _%g2754627573%_)))))))
                      (_%loop2755827602%_ _%target2755527596%_ '()))
                    (_%g2754527569%_ _%g2754627573%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2754527569%_
                                                   _%g2754627573%_))))
                                          (_%g2754527569%_ _%g2754627573%_))))
                                  (_%g2754527569%_ _%g2754627573%_)))))
                      (_%g2754427888%_
                       (list (gx#genident 'K)
                             (let ((__tmp39508
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause27540%_)))
                               (declare (not safe))
                               (##apply append __tmp39508))))))))
          (_%generate-body27536%_
           (_%parse-body27534%_ (gx#stx-length _%tgt-lst27531%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27431%_ _%tgt27433%_ _%clauses27434%_)
        (letrec ((_%reclause27436%_
                  (lambda (_%clause27439%_)
                    (let* ((_%__stx3888538886%_ _%clause27439%_)
                           (_%g2744427459%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3888538886%_))))
                      (let ((_%__kont3888838889%_ (lambda () _%clause27439%_))
                            (_%__kont3889038891%_
                             (lambda (_%L27487%_ _%L27489%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27489%_ '()) _%L27487%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3889238893%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27431%_
                                _%clause27439%_))))
                        (if (gx#stx-pair? _%__stx3888538886%_)
                            (let ((_%e2744627511%_
                                   (gx#syntax-e _%__stx3888538886%_)))
                              (let ((_%tl2744827518%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2744627511%_)))
                                    (_%hd2744727515%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2744627511%_))))
                                (if (gx#identifier? _%hd2744727515%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39509_|
                                         _%hd2744727515%_)
                                        (_%__kont3888838889%_)
                                        (_%__kont3889038891%_
                                         _%tl2744827518%_
                                         _%hd2744727515%_))
                                    (_%__kont3889038891%_
                                     _%tl2744827518%_
                                     _%hd2744727515%_))))
                            (_%__kont3889238893%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27431%_
           (cons _%tgt27433%_ '())
           (gx#stx-map _%reclause27436%_ _%clauses27434%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx34786%_)
        (let* ((_%__stx3891338914%_ _%stx34786%_)
               (_%g3479134820%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3891338914%_))))
          (let ((_%__kont3891638917%_
                 (lambda (_%L35060%_)
                   (let* ((_%g3507335081%_
                           (lambda (_%g3507435077%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3507435077%_)))
                          (_%g3507235134%_
                           (lambda (_%g3507435085%_)
                             ((lambda (_%L35088%_)
                                (let* ((_%g3510035108%_
                                        (lambda (_%g3510135104%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3510135104%_)))
                                       (_%g3509935130%_
                                        (lambda (_%g3510135112%_)
                                          ((lambda (_%L35115%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35088%_ '())
                                                         (cons _%L35115%_
                                                               '()))))
                                           _%g3510135112%_))))
                                  (_%g3509935130%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35088%_ _%L35060%_))
                                    (gx#stx-source _%stx34786%_)))))
                              _%g3507435085%_))))
                     (_%g3507235134%_ (gx#genident 'e)))))
                (_%__kont3891838919%_
                 (lambda (_%L34955%_)
                   (let* ((_%g3496834976%_
                           (lambda (_%g3496934972%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3496934972%_)))
                          (_%g3496735029%_
                           (lambda (_%g3496934980%_)
                             ((lambda (_%L34983%_)
                                (let* ((_%g3499535003%_
                                        (lambda (_%g3499634999%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3499634999%_)))
                                       (_%g3499435025%_
                                        (lambda (_%g3499635007%_)
                                          ((lambda (_%L35010%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L34983%_
                                                         (cons _%L35010%_
                                                               '()))))
                                           _%g3499635007%_))))
                                  (_%g3499435025%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L34983%_ _%L34955%_))
                                    (gx#stx-source _%stx34786%_)))))
                              _%g3496934980%_))))
                     (_%g3496735029%_ (gx#genident 'args)))))
                (_%__kont3892038921%_
                 (lambda (_%L34847%_ _%L34849%_)
                   (let* ((_%g3486334871%_
                           (lambda (_%g3486434867%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3486434867%_)))
                          (_%g3486234924%_
                           (lambda (_%g3486434875%_)
                             ((lambda (_%L34878%_)
                                (let* ((_%g3489034898%_
                                        (lambda (_%g3489134894%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3489134894%_)))
                                       (_%g3488934920%_
                                        (lambda (_%g3489134902%_)
                                          ((lambda (_%L34905%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L34878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L34849%_ '()))
                       '())
                 (cons _%L34905%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3489134902%_))))
                                  (_%g3488934920%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx34786%_
                                    _%L34878%_
                                    _%L34847%_))))
                              _%g3486434875%_))))
                     (_%g3486234924%_ (gx#genident _%L34849%_))))))
            (let* ((_%__match3896638967%_
                    (lambda (_%e3480934827%_
                             _%hd3481034831%_
                             _%tl3481134834%_
                             _%e3481234837%_
                             _%hd3481334841%_
                             _%tl3481434844%_)
                      (let ((_%L34847%_ _%tl3481434844%_)
                            (_%L34849%_ _%hd3481334841%_))
                        (if (gx#stx-list? _%L34847%_)
                            (_%__kont3892038921%_ _%L34847%_ _%L34849%_)
                            (let () (declare (not safe)) (_%g3479134820%_))))))
                   (_%__match3895438955%_
                    (lambda (_%e3480134935%_
                             _%hd3480234939%_
                             _%tl3480334942%_
                             _%e3480434945%_
                             _%hd3480534949%_
                             _%tl3480634952%_)
                      (let ((_%L34955%_ _%tl3480634952%_))
                        (if (gx#stx-list? _%L34955%_)
                            (_%__kont3891838919%_ _%L34955%_)
                            (_%__match3896638967%_
                             _%e3480134935%_
                             _%hd3480234939%_
                             _%tl3480334942%_
                             _%e3480434945%_
                             _%hd3480534949%_
                             _%tl3480634952%_)))))
                   (_%__match3893838939%_
                    (lambda (_%e3479435040%_
                             _%hd3479535044%_
                             _%tl3479635047%_
                             _%e3479735050%_
                             _%hd3479835054%_
                             _%tl3479935057%_)
                      (let ((_%L35060%_ _%tl3479935057%_))
                        (if (gx#stx-list? _%L35060%_)
                            (_%__kont3891638917%_ _%L35060%_)
                            (_%__match3896638967%_
                             _%e3479435040%_
                             _%hd3479535044%_
                             _%tl3479635047%_
                             _%e3479735050%_
                             _%hd3479835054%_
                             _%tl3479935057%_))))))
              (if (gx#stx-pair? _%__stx3891338914%_)
                  (let ((_%e3479435040%_ (gx#syntax-e _%__stx3891338914%_)))
                    (let ((_%tl3479635047%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3479435040%_)))
                          (_%hd3479535044%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3479435040%_))))
                      (if (gx#stx-pair? _%tl3479635047%_)
                          (let ((_%e3479735050%_
                                 (gx#syntax-e _%tl3479635047%_)))
                            (let ((_%tl3479935057%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3479735050%_)))
                                  (_%hd3479835054%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3479735050%_))))
                              (if (gx#identifier? _%hd3479835054%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39510_|
                                       _%hd3479835054%_)
                                      (_%__match3893838939%_
                                       _%e3479435040%_
                                       _%hd3479535044%_
                                       _%tl3479635047%_
                                       _%e3479735050%_
                                       _%hd3479835054%_
                                       _%tl3479935057%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39511_|
                                           _%hd3479835054%_)
                                          (_%__match3895438955%_
                                           _%e3479435040%_
                                           _%hd3479535044%_
                                           _%tl3479635047%_
                                           _%e3479735050%_
                                           _%hd3479835054%_
                                           _%tl3479935057%_)
                                          (_%__match3896638967%_
                                           _%e3479435040%_
                                           _%hd3479535044%_
                                           _%tl3479635047%_
                                           _%e3479735050%_
                                           _%hd3479835054%_
                                           _%tl3479935057%_)))
                                  (_%__match3896638967%_
                                   _%e3479435040%_
                                   _%hd3479535044%_
                                   _%tl3479635047%_
                                   _%e3479735050%_
                                   _%hd3479835054%_
                                   _%tl3479935057%_))))
                          (let () (declare (not safe)) (_%g3479134820%_)))))
                  (let () (declare (not safe)) (_%g3479134820%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35142%_)
        (let* ((_%g3514535169%_
                (lambda (_%g3514635165%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3514635165%_)))
               (_%g3514435381%_
                (lambda (_%g3514635173%_)
                  (if (gx#stx-pair? _%g3514635173%_)
                      (let ((_%e3514935176%_ (gx#syntax-e _%g3514635173%_)))
                        (let ((_%hd3515035180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3514935176%_)))
                              (_%tl3515135183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3514935176%_))))
                          (if (gx#stx-pair? _%tl3515135183%_)
                              (let ((_%e3515235186%_
                                     (gx#syntax-e _%tl3515135183%_)))
                                (let ((_%hd3515335190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3515235186%_)))
                                      (_%tl3515435193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3515235186%_))))
                                  (if (gx#stx-pair/null? _%hd3515335190%_)
                                      (let ((_g39512_
                                             (gx#syntax-split-splice
                                              _%hd3515335190%_
                                              '0)))
                                        (begin
                                          (let ((_g39513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39512_)
                                                       (##values-length
                                                        _g39512_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39513_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39513_)))
                                          (let ((_%target3515535196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39512_ 0)))
                                                (_%tl3515735199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39512_ 1))))
                                            (if (gx#stx-null? _%tl3515735199%_)
                                                (letrec ((_%loop3515835202%_
                                                          (lambda (_%hd3515635206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3516235209%_)
                    (if (gx#stx-pair? _%hd3515635206%_)
                        (let ((_%e3515935212%_ (gx#syntax-e _%hd3515635206%_)))
                          (let ((_%lp-hd3516035216%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3515935212%_)))
                                (_%lp-tl3516135219%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3515935212%_))))
                            (_%loop3515835202%_
                             _%lp-tl3516135219%_
                             (cons _%lp-hd3516035216%_ _%e3516235209%_))))
                        (let ((_%e3516335222%_ (reverse _%e3516235209%_)))
                          ((lambda (_%L35226%_ _%L35228%_)
                             (if (gx#stx-list? _%L35226%_)
                                 (let* ((_%g3524635263%_
                                         (lambda (_%g3524735259%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3524735259%_)))
                                        (_%g3524535369%_
                                         (lambda (_%g3524735267%_)
                                           (if (gx#stx-pair/null?
                                                _%g3524735267%_)
                                               (let ((_g39514_
                                                      (gx#syntax-split-splice
                                                       _%g3524735267%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39515_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39514_)
                        (##values-length _g39514_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39515_ 2)))
                 (error "Context expects 2 values" _g39515_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3524935270%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39514_
                                                             0)))
                                                         (_%tl3525135273%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39514_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3525135273%_)
                                                         (letrec ((_%loop3525235276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3525035280%_ _%$e3525635283%_)
                             (if (gx#stx-pair? _%hd3525035280%_)
                                 (let ((_%e3525335286%_
                                        (gx#syntax-e _%hd3525035280%_)))
                                   (let ((_%lp-hd3525435290%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3525335286%_)))
                                         (_%lp-tl3525535293%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3525335286%_))))
                                     (_%loop3525235276%_
                                      _%lp-tl3525535293%_
                                      (cons _%lp-hd3525435290%_
                                            _%$e3525635283%_))))
                                 (let ((_%$e3525735296%_
                                        (reverse _%$e3525635283%_)))
                                   ((lambda (_%L35300%_)
                                      (let* ((_%g3531635324%_
                                              (lambda (_%g3531735320%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3531735320%_)))
                                             (_%g3531535357%_
                                              (lambda (_%g3531735328%_)
                                                ((lambda (_%L35331%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35228%_ _%L35300%_)
                         (foldr (lambda (_%g3534535349%_
                                         _%g3534635352%_
                                         _%g3534735354%_)
                                  (cons (cons _%g3534635352%_
                                              (cons _%g3534535349%_ '()))
                                        _%g3534735354%_))
                                '()
                                _%L35228%_
                                _%L35300%_))
                       (cons _%L35331%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3531735328%_))))
                                        (_%g3531535357%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35142%_
                                          (foldr (lambda (_%g3536035363%_
                                                          _%g3536135366%_)
                                                   (cons _%g3536035363%_
                                                         _%g3536135366%_))
                                                 '()
                                                 _%L35300%_)
                                          _%L35226%_))))
                                    _%$e3525735296%_))))))
                   (_%loop3525235276%_ _%target3524935270%_ '()))
                 (_%g3524635263%_ _%g3524735267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3524635263%_
                                                _%g3524735267%_)))))
                                   (_%g3524535369%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3537235375%_
                                                     _%g3537335378%_)
                                              (cons _%g3537235375%_
                                                    _%g3537335378%_))
                                            '()
                                            _%L35228%_))))
                                 (_%g3514535169%_ _%g3514635173%_)))
                           _%tl3515435193%_
                           _%e3516335222%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3515835202%_
                                                   _%target3515535196%_
                                                   '()))
                                                (_%g3514535169%_
                                                 _%g3514635173%_)))))
                                      (_%g3514535169%_ _%g3514635173%_))))
                              (_%g3514535169%_ _%g3514635173%_))))
                      (_%g3514535169%_ _%g3514635173%_)))))
          (_%g3514435381%_ _%stx35142%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35387%_)
        (let* ((_%__stx3896938970%_ _%$stx35387%_)
               (_%g3539335476%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3896938970%_))))
          (let ((_%__kont3897238973%_
                 (lambda (_%L35806%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3582235825%_ _%g3582335828%_)
                                        (cons _%g3582235825%_ _%g3582335828%_))
                                      '()
                                      _%L35806%_)))))
                (_%__kont3897638977%_
                 (lambda (_%L35714%_ _%L35716%_ _%L35717%_ _%L35718%_)
                   (cons _%L35718%_
                         (cons (cons (cons _%L35717%_ (cons _%L35716%_ '()))
                                     '())
                               (foldr (lambda (_%g3574035743%_ _%g3574135746%_)
                                        (cons _%g3574035743%_ _%g3574135746%_))
                                      '()
                                      _%L35714%_)))))
                (_%__kont3898038981%_
                 (lambda (_%L35587%_ _%L35589%_ _%L35590%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3561235619%_ _%g3561335622%_)
                                        (cons _%g3561235619%_ _%g3561335622%_))
                                      '()
                                      _%L35589%_)
                               (cons (cons (foldr (lambda (_%g3561435625%_
                                                           _%g3561535628%_)
                                                    (cons _%g3561435625%_
                                                          _%g3561535628%_))
                                                  '()
                                                  _%L35590%_)
                                           (foldr (lambda (_%g3561635631%_
                                                           _%g3561735634%_)
                                                    (cons _%g3561635631%_
                                                          _%g3561735634%_))
                                                  '()
                                                  _%L35587%_))
                                     '()))))))
            (let* ((_%__match3906239063%_
                    (lambda (_%e3543935483%_
                             _%hd3544035487%_
                             _%tl3544135490%_
                             _%e3544235493%_
                             _%hd3544335497%_
                             _%tl3544435500%_
                             _%__splice3898238983%_
                             _%target3544535503%_
                             _%tl3544735506%_)
                      (letrec ((_%loop3544835509%_
                                (lambda (_%hd3544635513%_
                                         _%expr3545235516%_
                                         _%hd3545335518%_)
                                  (if (gx#stx-pair? _%hd3544635513%_)
                                      (let ((_%e3544935521%_
                                             (gx#syntax-e _%hd3544635513%_)))
                                        (let ((_%lp-tl3545135528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3544935521%_)))
                                              (_%lp-hd3545035525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3544935521%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3545035525%_)
                                              (let ((_%e3545635531%_
                                                     (gx#syntax-e
                                                      _%lp-hd3545035525%_)))
                                                (let ((_%tl3545835538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3545635531%_)))
                                                      (_%hd3545735535%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3545635531%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3545835538%_)
                                                      (let ((_%e3545935541%_
                                                             (gx#syntax-e
                                                              _%tl3545835538%_)))
                                                        (let ((_%tl3546135548%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3545935541%_)))
                      (_%hd3546035545%_
                       (let () (declare (not safe)) (##car _%e3545935541%_))))
                  (if (gx#stx-null? _%tl3546135548%_)
                      (_%loop3544835509%_
                       _%lp-tl3545135528%_
                       (cons _%hd3546035545%_ _%expr3545235516%_)
                       (cons _%hd3545735535%_ _%hd3545335518%_))
                      (let () (declare (not safe)) (_%g3539335476%_)))))
              (let () (declare (not safe)) (_%g3539335476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3539335476%_)))))
                                      (let ((_%hd3545535554%_
                                             (reverse _%hd3545335518%_))
                                            (_%expr3545435551%_
                                             (reverse _%expr3545235516%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3544435500%_)
                                            (let ((_%__splice3898438985%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3544435500%_
                                                    '0)))
                                              (let ((_%tl3546435560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3898438985%_
                                                        '1)))
                                                    (_%target3546235557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3898438985%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3546435560%_)
                                                    (letrec ((_%loop3546535563%_
                                                              (lambda (_%hd3546335567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3546935570%_)
                        (if (gx#stx-pair? _%hd3546335567%_)
                            (let ((_%e3546635573%_
                                   (gx#syntax-e _%hd3546335567%_)))
                              (let ((_%lp-tl3546835580%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3546635573%_)))
                                    (_%lp-hd3546735577%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3546635573%_))))
                                (_%loop3546535563%_
                                 _%lp-tl3546835580%_
                                 (cons _%lp-hd3546735577%_
                                       _%body3546935570%_))))
                            (let ((_%body3547035583%_
                                   (reverse _%body3546935570%_)))
                              (_%__kont3898038981%_
                               _%body3547035583%_
                               _%expr3545435551%_
                               _%hd3545535554%_))))))
              (_%loop3546535563%_ _%target3546235557%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3539335476%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3539335476%_))))))))
                        (_%loop3544835509%_ _%target3544535503%_ '() '()))))
                   (_%__match3905439055%_
                    (lambda (_%e3543935483%_
                             _%hd3544035487%_
                             _%tl3544135490%_
                             _%e3544235493%_
                             _%hd3544335497%_
                             _%tl3544435500%_)
                      (if (gx#stx-pair/null? _%hd3544335497%_)
                          (let ((_%__splice3898238983%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3544335497%_
                                  '0)))
                            (let ((_%tl3544735506%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3898238983%_ '1)))
                                  (_%target3544535503%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3898238983%_
                                      '0))))
                              (if (gx#stx-null? _%tl3544735506%_)
                                  (_%__match3906239063%_
                                   _%e3543935483%_
                                   _%hd3544035487%_
                                   _%tl3544135490%_
                                   _%e3544235493%_
                                   _%hd3544335497%_
                                   _%tl3544435500%_
                                   _%__splice3898238983%_
                                   _%target3544535503%_
                                   _%tl3544735506%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3539335476%_)))))
                          (let () (declare (not safe)) (_%g3539335476%_)))))
                   (_%__match3904239043%_
                    (lambda (_%e3541535644%_
                             _%hd3541635648%_
                             _%tl3541735651%_
                             _%e3541835654%_
                             _%hd3541935658%_
                             _%tl3542035661%_
                             _%e3542135664%_
                             _%hd3542235668%_
                             _%tl3542335671%_
                             _%e3542435674%_
                             _%hd3542535678%_
                             _%tl3542635681%_
                             _%__splice3897838979%_
                             _%target3542735684%_
                             _%tl3542935687%_)
                      (letrec ((_%loop3543035690%_
                                (lambda (_%hd3542835694%_ _%body3543435697%_)
                                  (if (gx#stx-pair? _%hd3542835694%_)
                                      (let ((_%e3543135700%_
                                             (gx#syntax-e _%hd3542835694%_)))
                                        (let ((_%lp-tl3543335707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3543135700%_)))
                                              (_%lp-hd3543235704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3543135700%_))))
                                          (_%loop3543035690%_
                                           _%lp-tl3543335707%_
                                           (cons _%lp-hd3543235704%_
                                                 _%body3543435697%_))))
                                      (let ((_%body3543535710%_
                                             (reverse _%body3543435697%_)))
                                        (let ((_%L35714%_ _%body3543535710%_)
                                              (_%L35716%_ _%hd3542535678%_)
                                              (_%L35717%_ _%hd3542235668%_)
                                              (_%L35718%_ _%hd3541635648%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L35717%_)
                                              (_%__kont3897638977%_
                                               _%L35714%_
                                               _%L35716%_
                                               _%L35717%_
                                               _%L35718%_)
                                              (_%__match3905439055%_
                                               _%e3541535644%_
                                               _%hd3541635648%_
                                               _%tl3541735651%_
                                               _%e3541835654%_
                                               _%hd3541935658%_
                                               _%tl3542035661%_))))))))
                        (_%loop3543035690%_ _%target3542735684%_ '()))))
                   (_%__match3900839009%_
                    (lambda (_%e3539635756%_
                             _%hd3539735760%_
                             _%tl3539835763%_
                             _%e3539935766%_
                             _%hd3540035770%_
                             _%tl3540135773%_
                             _%__splice3897438975%_
                             _%target3540235776%_
                             _%tl3540435779%_)
                      (letrec ((_%loop3540535782%_
                                (lambda (_%hd3540335786%_ _%body3540935789%_)
                                  (if (gx#stx-pair? _%hd3540335786%_)
                                      (let ((_%e3540635792%_
                                             (gx#syntax-e _%hd3540335786%_)))
                                        (let ((_%lp-tl3540835799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3540635792%_)))
                                              (_%lp-hd3540735796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3540635792%_))))
                                          (_%loop3540535782%_
                                           _%lp-tl3540835799%_
                                           (cons _%lp-hd3540735796%_
                                                 _%body3540935789%_))))
                                      (let ((_%body3541035802%_
                                             (reverse _%body3540935789%_)))
                                        (_%__kont3897238973%_
                                         _%body3541035802%_))))))
                        (_%loop3540535782%_ _%target3540235776%_ '())))))
              (if (gx#stx-pair? _%__stx3896938970%_)
                  (let ((_%e3539635756%_ (gx#syntax-e _%__stx3896938970%_)))
                    (let ((_%tl3539835763%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3539635756%_)))
                          (_%hd3539735760%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3539635756%_))))
                      (if (gx#stx-pair? _%tl3539835763%_)
                          (let ((_%e3539935766%_
                                 (gx#syntax-e _%tl3539835763%_)))
                            (let ((_%tl3540135773%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3539935766%_)))
                                  (_%hd3540035770%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3539935766%_))))
                              (if (gx#stx-null? _%hd3540035770%_)
                                  (if (gx#stx-pair/null? _%tl3540135773%_)
                                      (let ((_%__splice3897438975%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3540135773%_
                                              '0)))
                                        (let ((_%tl3540435779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3897438975%_
                                                  '1)))
                                              (_%target3540235776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3897438975%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3540435779%_)
                                              (_%__match3900839009%_
                                               _%e3539635756%_
                                               _%hd3539735760%_
                                               _%tl3539835763%_
                                               _%e3539935766%_
                                               _%hd3540035770%_
                                               _%tl3540135773%_
                                               _%__splice3897438975%_
                                               _%target3540235776%_
                                               _%tl3540435779%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3540035770%_)
                                                  (let ((_%__splice3898238983%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3540035770%_
                                                          '0)))
                                                    (let ((_%tl3544735506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3898238983%_
                                                              '1)))
                                                          (_%target3544535503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3898238983%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3544735506%_)
                                                          (_%__match3906239063%_
                                                           _%e3539635756%_
                                                           _%hd3539735760%_
                                                           _%tl3539835763%_
                                                           _%e3539935766%_
                                                           _%hd3540035770%_
                                                           _%tl3540135773%_
                                                           _%__splice3898238983%_
                                                           _%target3544535503%_
                                                           _%tl3544735506%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3539335476%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3539335476%_))))))
                                      (if (gx#stx-pair/null? _%hd3540035770%_)
                                          (let ((_%__splice3898238983%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3540035770%_
                                                  '0)))
                                            (let ((_%tl3544735506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3898238983%_
                                                      '1)))
                                                  (_%target3544535503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3898238983%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3544735506%_)
                                                  (_%__match3906239063%_
                                                   _%e3539635756%_
                                                   _%hd3539735760%_
                                                   _%tl3539835763%_
                                                   _%e3539935766%_
                                                   _%hd3540035770%_
                                                   _%tl3540135773%_
                                                   _%__splice3898238983%_
                                                   _%target3544535503%_
                                                   _%tl3544735506%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3539335476%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3539335476%_))))
                                  (if (gx#stx-pair? _%hd3540035770%_)
                                      (let ((_%e3542135664%_
                                             (gx#syntax-e _%hd3540035770%_)))
                                        (let ((_%tl3542335671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3542135664%_)))
                                              (_%hd3542235668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3542135664%_))))
                                          (if (gx#stx-pair? _%tl3542335671%_)
                                              (let ((_%e3542435674%_
                                                     (gx#syntax-e
                                                      _%tl3542335671%_)))
                                                (let ((_%tl3542635681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3542435674%_)))
                                                      (_%hd3542535678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3542435674%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3542635681%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3540135773%_)
                                                          (let ((_%__splice3897838979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3540135773%_ '0)))
                    (let ((_%tl3542935687%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3897838979%_ '1)))
                          (_%target3542735684%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3897838979%_ '0))))
                      (if (gx#stx-null? _%tl3542935687%_)
                          (_%__match3904239043%_
                           _%e3539635756%_
                           _%hd3539735760%_
                           _%tl3539835763%_
                           _%e3539935766%_
                           _%hd3540035770%_
                           _%tl3540135773%_
                           _%e3542135664%_
                           _%hd3542235668%_
                           _%tl3542335671%_
                           _%e3542435674%_
                           _%hd3542535678%_
                           _%tl3542635681%_
                           _%__splice3897838979%_
                           _%target3542735684%_
                           _%tl3542935687%_)
                          (if (gx#stx-pair/null? _%hd3540035770%_)
                              (let ((_%__splice3898238983%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3540035770%_
                                      '0)))
                                (let ((_%tl3544735506%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3898238983%_
                                          '1)))
                                      (_%target3544535503%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3898238983%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3544735506%_)
                                      (_%__match3906239063%_
                                       _%e3539635756%_
                                       _%hd3539735760%_
                                       _%tl3539835763%_
                                       _%e3539935766%_
                                       _%hd3540035770%_
                                       _%tl3540135773%_
                                       _%__splice3898238983%_
                                       _%target3544535503%_
                                       _%tl3544735506%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3539335476%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3539335476%_))))))
                  (if (gx#stx-pair/null? _%hd3540035770%_)
                      (let ((_%__splice3898238983%_
                             (gx#syntax-split-splice->vector
                              _%hd3540035770%_
                              '0)))
                        (let ((_%tl3544735506%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3898238983%_ '1)))
                              (_%target3544535503%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3898238983%_ '0))))
                          (if (gx#stx-null? _%tl3544735506%_)
                              (_%__match3906239063%_
                               _%e3539635756%_
                               _%hd3539735760%_
                               _%tl3539835763%_
                               _%e3539935766%_
                               _%hd3540035770%_
                               _%tl3540135773%_
                               _%__splice3898238983%_
                               _%target3544535503%_
                               _%tl3544735506%_)
                              (let ()
                                (declare (not safe))
                                (_%g3539335476%_)))))
                      (let () (declare (not safe)) (_%g3539335476%_))))
              (if (gx#stx-pair/null? _%hd3540035770%_)
                  (let ((_%__splice3898238983%_
                         (gx#syntax-split-splice->vector _%hd3540035770%_ '0)))
                    (let ((_%tl3544735506%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3898238983%_ '1)))
                          (_%target3544535503%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3898238983%_ '0))))
                      (if (gx#stx-null? _%tl3544735506%_)
                          (_%__match3906239063%_
                           _%e3539635756%_
                           _%hd3539735760%_
                           _%tl3539835763%_
                           _%e3539935766%_
                           _%hd3540035770%_
                           _%tl3540135773%_
                           _%__splice3898238983%_
                           _%target3544535503%_
                           _%tl3544735506%_)
                          (let () (declare (not safe)) (_%g3539335476%_)))))
                  (let () (declare (not safe)) (_%g3539335476%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3540035770%_)
                                                  (let ((_%__splice3898238983%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3540035770%_
                                                          '0)))
                                                    (let ((_%tl3544735506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3898238983%_
                                                              '1)))
                                                          (_%target3544535503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3898238983%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3544735506%_)
                                                          (_%__match3906239063%_
                                                           _%e3539635756%_
                                                           _%hd3539735760%_
                                                           _%tl3539835763%_
                                                           _%e3539935766%_
                                                           _%hd3540035770%_
                                                           _%tl3540135773%_
                                                           _%__splice3898238983%_
                                                           _%target3544535503%_
                                                           _%tl3544735506%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3539335476%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3539335476%_))))))
                                      (if (gx#stx-pair/null? _%hd3540035770%_)
                                          (let ((_%__splice3898238983%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3540035770%_
                                                  '0)))
                                            (let ((_%tl3544735506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3898238983%_
                                                      '1)))
                                                  (_%target3544535503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3898238983%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3544735506%_)
                                                  (_%__match3906239063%_
                                                   _%e3539635756%_
                                                   _%hd3539735760%_
                                                   _%tl3539835763%_
                                                   _%e3539935766%_
                                                   _%hd3540035770%_
                                                   _%tl3540135773%_
                                                   _%__splice3898238983%_
                                                   _%target3544535503%_
                                                   _%tl3544735506%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3539335476%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3539335476%_)))))))
                          (let () (declare (not safe)) (_%g3539335476%_)))))
                  (let () (declare (not safe)) (_%g3539335476%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx35839%_)
        (let* ((_%__stx3906539066%_ _%$stx35839%_)
               (_%g3584435896%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3906539066%_))))
          (let ((_%__kont3906839069%_
                 (lambda (_%L36066%_
                          _%L36068%_
                          _%L36069%_
                          _%L36070%_
                          _%L36071%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36070%_ (cons _%L36069%_ '()))
                                     '())
                               (cons (cons _%L36071%_
                                           (cons _%L36068%_
                                                 (foldr (lambda (_%g3609636099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3609736102%_)
                  (cons _%g3609636099%_ _%g3609736102%_))
                '()
                _%L36066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3907239073%_
                 (lambda (_%L35953%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3597035973%_ _%g3597135976%_)
                                        (cons _%g3597035973%_ _%g3597135976%_))
                                      '()
                                      _%L35953%_))))))
            (let* ((_%__match3913839139%_
                    (lambda (_%e3587635903%_
                             _%hd3587735907%_
                             _%tl3587835910%_
                             _%e3587935913%_
                             _%hd3588035917%_
                             _%tl3588135920%_
                             _%__splice3907439075%_
                             _%target3588235923%_
                             _%tl3588435926%_)
                      (letrec ((_%loop3588535929%_
                                (lambda (_%hd3588335933%_ _%body3588935936%_)
                                  (if (gx#stx-pair? _%hd3588335933%_)
                                      (let ((_%e3588635939%_
                                             (gx#syntax-e _%hd3588335933%_)))
                                        (let ((_%lp-tl3588835946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3588635939%_)))
                                              (_%lp-hd3588735943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3588635939%_))))
                                          (_%loop3588535929%_
                                           _%lp-tl3588835946%_
                                           (cons _%lp-hd3588735943%_
                                                 _%body3588935936%_))))
                                      (let ((_%body3589035949%_
                                             (reverse _%body3588935936%_)))
                                        (_%__kont3907239073%_
                                         _%body3589035949%_))))))
                        (_%loop3588535929%_ _%target3588235923%_ '()))))
                   (_%__match3911639117%_
                    (lambda (_%e3585135986%_
                             _%hd3585235990%_
                             _%tl3585335993%_
                             _%e3585435996%_
                             _%hd3585536000%_
                             _%tl3585636003%_
                             _%e3585736006%_
                             _%hd3585836010%_
                             _%tl3585936013%_
                             _%e3586036016%_
                             _%hd3586136020%_
                             _%tl3586236023%_
                             _%e3586336026%_
                             _%hd3586436030%_
                             _%tl3586536033%_
                             _%__splice3907039071%_
                             _%target3586636036%_
                             _%tl3586836039%_)
                      (letrec ((_%loop3586936042%_
                                (lambda (_%hd3586736046%_ _%body3587336049%_)
                                  (if (gx#stx-pair? _%hd3586736046%_)
                                      (let ((_%e3587036052%_
                                             (gx#syntax-e _%hd3586736046%_)))
                                        (let ((_%lp-tl3587236059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3587036052%_)))
                                              (_%lp-hd3587136056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3587036052%_))))
                                          (_%loop3586936042%_
                                           _%lp-tl3587236059%_
                                           (cons _%lp-hd3587136056%_
                                                 _%body3587336049%_))))
                                      (let ((_%body3587436062%_
                                             (reverse _%body3587336049%_)))
                                        (_%__kont3906839069%_
                                         _%body3587436062%_
                                         _%tl3585936013%_
                                         _%hd3586436030%_
                                         _%hd3586136020%_
                                         _%hd3585235990%_))))))
                        (_%loop3586936042%_ _%target3586636036%_ '())))))
              (if (gx#stx-pair? _%__stx3906539066%_)
                  (let ((_%e3585135986%_ (gx#syntax-e _%__stx3906539066%_)))
                    (let ((_%tl3585335993%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3585135986%_)))
                          (_%hd3585235990%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3585135986%_))))
                      (if (gx#stx-pair? _%tl3585335993%_)
                          (let ((_%e3585435996%_
                                 (gx#syntax-e _%tl3585335993%_)))
                            (let ((_%tl3585636003%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3585435996%_)))
                                  (_%hd3585536000%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3585435996%_))))
                              (if (gx#stx-pair? _%hd3585536000%_)
                                  (let ((_%e3585736006%_
                                         (gx#syntax-e _%hd3585536000%_)))
                                    (let ((_%tl3585936013%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3585736006%_)))
                                          (_%hd3585836010%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3585736006%_))))
                                      (if (gx#stx-pair? _%hd3585836010%_)
                                          (let ((_%e3586036016%_
                                                 (gx#syntax-e
                                                  _%hd3585836010%_)))
                                            (let ((_%tl3586236023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3586036016%_)))
                                                  (_%hd3586136020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3586036016%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3586236023%_)
                                                  (let ((_%e3586336026%_
                                                         (gx#syntax-e
                                                          _%tl3586236023%_)))
                                                    (let ((_%tl3586536033%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3586336026%_)))
                                                          (_%hd3586436030%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3586336026%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3586536033%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3585636003%_)
                                                              (let ((_%__splice3907039071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3585636003%_
                              '0)))
                        (let ((_%tl3586836039%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3907039071%_ '1)))
                              (_%target3586636036%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3907039071%_ '0))))
                          (if (gx#stx-null? _%tl3586836039%_)
                              (_%__match3911639117%_
                               _%e3585135986%_
                               _%hd3585235990%_
                               _%tl3585335993%_
                               _%e3585435996%_
                               _%hd3585536000%_
                               _%tl3585636003%_
                               _%e3585736006%_
                               _%hd3585836010%_
                               _%tl3585936013%_
                               _%e3586036016%_
                               _%hd3586136020%_
                               _%tl3586236023%_
                               _%e3586336026%_
                               _%hd3586436030%_
                               _%tl3586536033%_
                               _%__splice3907039071%_
                               _%target3586636036%_
                               _%tl3586836039%_)
                              (let ()
                                (declare (not safe))
                                (_%g3584435896%_)))))
                      (let () (declare (not safe)) (_%g3584435896%_)))
                  (let () (declare (not safe)) (_%g3584435896%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3584435896%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3584435896%_)))))
                                  (if (gx#stx-null? _%hd3585536000%_)
                                      (if (gx#stx-pair/null? _%tl3585636003%_)
                                          (let ((_%__splice3907439075%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3585636003%_
                                                  '0)))
                                            (let ((_%tl3588435926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3907439075%_
                                                      '1)))
                                                  (_%target3588235923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3907439075%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3588435926%_)
                                                  (_%__match3913839139%_
                                                   _%e3585135986%_
                                                   _%hd3585235990%_
                                                   _%tl3585335993%_
                                                   _%e3585435996%_
                                                   _%hd3585536000%_
                                                   _%tl3585636003%_
                                                   _%__splice3907439075%_
                                                   _%target3588235923%_
                                                   _%tl3588435926%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3584435896%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3584435896%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3584435896%_))))))
                          (let () (declare (not safe)) (_%g3584435896%_)))))
                  (let () (declare (not safe)) (_%g3584435896%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36111%_)
        (let* ((_%__stx3914139142%_ _%$stx36111%_)
               (_%g3612236268%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3914139142%_))))
          (let ((_%__kont3914439145%_
                 (lambda (_%L36872%_ _%L36874%_ _%L36875%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3689636899%_ _%g3689736902%_)
                                  (cons (cons _%L36875%_
                                              (cons _%g3689636899%_
                                                    (cons _%L36872%_ '())))
                                        _%g3689736902%_))
                                '()
                                _%L36874%_))))
                (_%__kont3914839149%_
                 (lambda (_%L36762%_ _%L36764%_ _%L36765%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3678636789%_ _%g3678736792%_)
                                  (cons (cons _%L36765%_
                                              (cons _%g3678636789%_
                                                    (cons _%L36762%_ '())))
                                        _%g3678736792%_))
                                '()
                                _%L36764%_))))
                (_%__kont3915239153%_
                 (lambda (_%L36662%_ _%L36664%_ _%L36665%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L36665%_
                                     (cons _%L36664%_ (cons _%L36662%_ '())))
                               '()))))
                (_%__kont3915439155%_
                 (lambda (_%L36588%_ _%L36590%_)
                   (cons _%L36590%_ (cons _%L36588%_ '()))))
                (_%__kont3915639157%_
                 (lambda (_%L36536%_ _%L36538%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L36538%_
                                           (cons _%L36536%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3915839159%_
                 (lambda (_%L36488%_ _%L36490%_ _%L36491%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36490%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36488%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3916039161%_
                 (lambda (_%L36419%_ _%L36421%_ _%L36422%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36422%_
                                                       (cons _%L36421%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36419%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3916239163%_
                 (lambda (_%L36339%_ _%L36341%_ _%L36342%_ _%L36343%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36343%_
                                                       (cons _%L36342%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36339%_
                                                             (cons (cons _%L36341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3931439315%_
                    (lambda (_%e3621236448%_
                             _%hd3621336452%_
                             _%tl3621436455%_
                             _%e3621536458%_
                             _%hd3621636462%_
                             _%tl3621736465%_
                             _%e3621836468%_
                             _%hd3621936472%_
                             _%tl3622036475%_)
                      (if (gx#identifier? _%hd3621936472%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39516_|
                               _%hd3621936472%_)
                              (if (gx#stx-pair? _%tl3622036475%_)
                                  (let ((_%e3622136478%_
                                         (gx#syntax-e _%tl3622036475%_)))
                                    (let ((_%tl3622336485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3622136478%_)))
                                          (_%hd3622236482%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3622136478%_))))
                                      (if (gx#stx-null? _%tl3622336485%_)
                                          (_%__kont3915839159%_
                                           _%hd3622236482%_
                                           _%hd3621636462%_
                                           _%hd3621336452%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3612236268%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3612236268%_)))
                              (let () (declare (not safe)) (_%g3612236268%_)))
                          (if (gx#stx-datum? _%hd3621936472%_)
                              (let ((_%e3623636405%_
                                     (gx#stx-e _%hd3621936472%_)))
                                (if (equal? _%e3623636405%_ '::)
                                    (if (gx#stx-pair? _%tl3622036475%_)
                                        (let ((_%e3623736409%_
                                               (gx#syntax-e _%tl3622036475%_)))
                                          (let ((_%tl3623936416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3623736409%_)))
                                                (_%hd3623836413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3623736409%_))))
                                            (if (gx#stx-null? _%tl3623936416%_)
                                                (_%__kont3916039161%_
                                                 _%hd3623836413%_
                                                 _%hd3621636462%_
                                                 _%hd3621336452%_)
                                                (if (gx#stx-pair?
                                                     _%tl3623936416%_)
                                                    (let ((_%e3625736319%_
                                                           (gx#syntax-e
                                                            _%tl3623936416%_)))
                                                      (let ((_%tl3625936326%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3625736319%_)))
                    (_%hd3625836323%_
                     (let () (declare (not safe)) (##car _%e3625736319%_))))
                (if (gx#identifier? _%hd3625836323%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39517_|
                         _%hd3625836323%_)
                        (if (gx#stx-pair? _%tl3625936326%_)
                            (let ((_%e3626036329%_
                                   (gx#syntax-e _%tl3625936326%_)))
                              (let ((_%tl3626236336%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3626036329%_)))
                                    (_%hd3626136333%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3626036329%_))))
                                (if (gx#stx-null? _%tl3626236336%_)
                                    (_%__kont3916239163%_
                                     _%hd3626136333%_
                                     _%hd3623836413%_
                                     _%hd3621636462%_
                                     _%hd3621336452%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_)))))
                            (let () (declare (not safe)) (_%g3612236268%_)))
                        (let () (declare (not safe)) (_%g3612236268%_)))
                    (let () (declare (not safe)) (_%g3612236268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3612236268%_))))))
                   (_%__match3929439295%_
                    (lambda (_%e3620336516%_
                             _%hd3620436520%_
                             _%tl3620536523%_
                             _%e3620636526%_
                             _%hd3620736530%_
                             _%tl3620836533%_)
                      (if (gx#stx-null? _%tl3620836533%_)
                          (_%__kont3915639157%_
                           _%hd3620736530%_
                           _%hd3620436520%_)
                          (if (gx#stx-pair? _%tl3620836533%_)
                              (let ((_%e3621836468%_
                                     (gx#syntax-e _%tl3620836533%_)))
                                (let ((_%tl3622036475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3621836468%_)))
                                      (_%hd3621936472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3621836468%_))))
                                  (if (gx#identifier? _%hd3621936472%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39516_|
                                           _%hd3621936472%_)
                                          (if (gx#stx-pair? _%tl3622036475%_)
                                              (let ((_%e3622136478%_
                                                     (gx#syntax-e
                                                      _%tl3622036475%_)))
                                                (let ((_%tl3622336485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3622136478%_)))
                                                      (_%hd3622236482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3622136478%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3622336485%_)
                                                      (_%__kont3915839159%_
                                                       _%hd3622236482%_
                                                       _%hd3620736530%_
                                                       _%hd3620436520%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3612236268%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3612236268%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3612236268%_)))
                                      (if (gx#stx-datum? _%hd3621936472%_)
                                          (let ((_%e3623636405%_
                                                 (gx#stx-e _%hd3621936472%_)))
                                            (if (equal? _%e3623636405%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3622036475%_)
                                                    (let ((_%e3623736409%_
                                                           (gx#syntax-e
                                                            _%tl3622036475%_)))
                                                      (let ((_%tl3623936416%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3623736409%_)))
                    (_%hd3623836413%_
                     (let () (declare (not safe)) (##car _%e3623736409%_))))
                (if (gx#stx-null? _%tl3623936416%_)
                    (_%__kont3916039161%_
                     _%hd3623836413%_
                     _%hd3620736530%_
                     _%hd3620436520%_)
                    (if (gx#stx-pair? _%tl3623936416%_)
                        (let ((_%e3625736319%_ (gx#syntax-e _%tl3623936416%_)))
                          (let ((_%tl3625936326%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3625736319%_)))
                                (_%hd3625836323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3625736319%_))))
                            (if (gx#identifier? _%hd3625836323%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39517_|
                                     _%hd3625836323%_)
                                    (if (gx#stx-pair? _%tl3625936326%_)
                                        (let ((_%e3626036329%_
                                               (gx#syntax-e _%tl3625936326%_)))
                                          (let ((_%tl3626236336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3626036329%_)))
                                                (_%hd3626136333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3626036329%_))))
                                            (if (gx#stx-null? _%tl3626236336%_)
                                                (_%__kont3916239163%_
                                                 _%hd3626136333%_
                                                 _%hd3623836413%_
                                                 _%hd3620736530%_
                                                 _%hd3620436520%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3612236268%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3612236268%_)))))
                        (let () (declare (not safe)) (_%g3612236268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3612236268%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3612236268%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3612236268%_))))))
                   (_%__match3922439225%_
                    (lambda (_%e3615136692%_
                             _%hd3615236696%_
                             _%tl3615336699%_
                             _%e3615436702%_
                             _%hd3615536706%_
                             _%tl3615636709%_
                             _%e3615736712%_
                             _%hd3615836716%_
                             _%tl3615936719%_
                             _%__splice3915039151%_
                             _%target3616036722%_
                             _%tl3616236725%_)
                      (letrec ((_%loop3616336728%_
                                (lambda (_%hd3616136732%_ _%pred3616736735%_)
                                  (if (gx#stx-pair? _%hd3616136732%_)
                                      (let ((_%e3616436738%_
                                             (gx#syntax-e _%hd3616136732%_)))
                                        (let ((_%lp-tl3616636745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3616436738%_)))
                                              (_%lp-hd3616536742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3616436738%_))))
                                          (_%loop3616336728%_
                                           _%lp-tl3616636745%_
                                           (cons _%lp-hd3616536742%_
                                                 _%pred3616736735%_))))
                                      (let ((_%pred3616836748%_
                                             (reverse _%pred3616736735%_)))
                                        (if (gx#stx-pair? _%tl3615636709%_)
                                            (let ((_%e3616936752%_
                                                   (gx#syntax-e
                                                    _%tl3615636709%_)))
                                              (let ((_%tl3617136759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3616936752%_)))
                                                    (_%hd3617036756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3616936752%_))))
                                                (if (gx#stx-null?
                                                     _%tl3617136759%_)
                                                    (_%__kont3914839149%_
                                                     _%hd3617036756%_
                                                     _%pred3616836748%_
                                                     _%hd3615236696%_)
                                                    (_%__match3931439315%_
                                                     _%e3615136692%_
                                                     _%hd3615236696%_
                                                     _%tl3615336699%_
                                                     _%e3615436702%_
                                                     _%hd3615536706%_
                                                     _%tl3615636709%_
                                                     _%e3616936752%_
                                                     _%hd3617036756%_
                                                     _%tl3617136759%_))))
                                            (_%__match3929439295%_
                                             _%e3615136692%_
                                             _%hd3615236696%_
                                             _%tl3615336699%_
                                             _%e3615436702%_
                                             _%hd3615536706%_
                                             _%tl3615636709%_)))))))
                        (_%loop3616336728%_ _%target3616036722%_ '()))))
                   (_%__match3919439195%_
                    (lambda (_%e3612736802%_
                             _%hd3612836806%_
                             _%tl3612936809%_
                             _%e3613036812%_
                             _%hd3613136816%_
                             _%tl3613236819%_
                             _%e3613336822%_
                             _%hd3613436826%_
                             _%tl3613536829%_
                             _%__splice3914639147%_
                             _%target3613636832%_
                             _%tl3613836835%_)
                      (letrec ((_%loop3613936838%_
                                (lambda (_%hd3613736842%_ _%pred3614336845%_)
                                  (if (gx#stx-pair? _%hd3613736842%_)
                                      (let ((_%e3614036848%_
                                             (gx#syntax-e _%hd3613736842%_)))
                                        (let ((_%lp-tl3614236855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3614036848%_)))
                                              (_%lp-hd3614136852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3614036848%_))))
                                          (_%loop3613936838%_
                                           _%lp-tl3614236855%_
                                           (cons _%lp-hd3614136852%_
                                                 _%pred3614336845%_))))
                                      (let ((_%pred3614436858%_
                                             (reverse _%pred3614336845%_)))
                                        (if (gx#stx-pair? _%tl3613236819%_)
                                            (let ((_%e3614536862%_
                                                   (gx#syntax-e
                                                    _%tl3613236819%_)))
                                              (let ((_%tl3614736869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3614536862%_)))
                                                    (_%hd3614636866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3614536862%_))))
                                                (if (gx#stx-null?
                                                     _%tl3614736869%_)
                                                    (_%__kont3914439145%_
                                                     _%hd3614636866%_
                                                     _%pred3614436858%_
                                                     _%hd3612836806%_)
                                                    (_%__match3931439315%_
                                                     _%e3612736802%_
                                                     _%hd3612836806%_
                                                     _%tl3612936809%_
                                                     _%e3613036812%_
                                                     _%hd3613136816%_
                                                     _%tl3613236819%_
                                                     _%e3614536862%_
                                                     _%hd3614636866%_
                                                     _%tl3614736869%_))))
                                            (_%__match3929439295%_
                                             _%e3612736802%_
                                             _%hd3612836806%_
                                             _%tl3612936809%_
                                             _%e3613036812%_
                                             _%hd3613136816%_
                                             _%tl3613236819%_)))))))
                        (_%loop3613936838%_ _%target3613636832%_ '())))))
              (if (gx#stx-pair? _%__stx3914139142%_)
                  (let ((_%e3612736802%_ (gx#syntax-e _%__stx3914139142%_)))
                    (let ((_%tl3612936809%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3612736802%_)))
                          (_%hd3612836806%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3612736802%_))))
                      (if (gx#stx-pair? _%tl3612936809%_)
                          (let ((_%e3613036812%_
                                 (gx#syntax-e _%tl3612936809%_)))
                            (let ((_%tl3613236819%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3613036812%_)))
                                  (_%hd3613136816%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3613036812%_))))
                              (if (gx#stx-pair? _%hd3613136816%_)
                                  (let ((_%e3613336822%_
                                         (gx#syntax-e _%hd3613136816%_)))
                                    (let ((_%tl3613536829%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3613336822%_)))
                                          (_%hd3613436826%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3613336822%_))))
                                      (if (gx#identifier? _%hd3613436826%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39518_|
                                               _%hd3613436826%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3613536829%_)
                                                  (let ((_%__splice3914639147%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3613536829%_
                                                          '0)))
                                                    (let ((_%tl3613836835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3914639147%_
                                                              '1)))
                                                          (_%target3613636832%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3914639147%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3613836835%_)
                                                          (_%__match3919439195%_
                                                           _%e3612736802%_
                                                           _%hd3612836806%_
                                                           _%tl3612936809%_
                                                           _%e3613036812%_
                                                           _%hd3613136816%_
                                                           _%tl3613236819%_
                                                           _%e3613336822%_
                                                           _%hd3613436826%_
                                                           _%tl3613536829%_
                                                           _%__splice3914639147%_
                                                           _%target3613636832%_
                                                           _%tl3613836835%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3613236819%_)
                                                              (let ((_%e3619836578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3613236819%_)))
                        (let ((_%tl3620036585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3619836578%_)))
                              (_%hd3619936582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3619836578%_))))
                          (if (gx#stx-null? _%tl3620036585%_)
                              (_%__kont3915439155%_
                               _%hd3619936582%_
                               _%hd3613136816%_)
                              (if (gx#identifier? _%hd3619936582%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39516_|
                                       _%hd3619936582%_)
                                      (if (gx#stx-pair? _%tl3620036585%_)
                                          (let ((_%e3622136478%_
                                                 (gx#syntax-e
                                                  _%tl3620036585%_)))
                                            (let ((_%tl3622336485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3622136478%_)))
                                                  (_%hd3622236482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3622136478%_))))
                                              (if (gx#stx-null?
                                                   _%tl3622336485%_)
                                                  (_%__kont3915839159%_
                                                   _%hd3622236482%_
                                                   _%hd3613136816%_
                                                   _%hd3612836806%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3612236268%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3612236268%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3612236268%_)))
                                  (if (gx#stx-datum? _%hd3619936582%_)
                                      (let ((_%e3623636405%_
                                             (gx#stx-e _%hd3619936582%_)))
                                        (if (equal? _%e3623636405%_ '::)
                                            (if (gx#stx-pair? _%tl3620036585%_)
                                                (let ((_%e3623736409%_
                                                       (gx#syntax-e
                                                        _%tl3620036585%_)))
                                                  (let ((_%tl3623936416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3623736409%_)))
                                                        (_%hd3623836413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3623736409%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3623936416%_)
                                                        (_%__kont3916039161%_
                                                         _%hd3623836413%_
                                                         _%hd3613136816%_
                                                         _%hd3612836806%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3623936416%_)
                                                            (let ((_%e3625736319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3623936416%_)))
                      (let ((_%tl3625936326%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3625736319%_)))
                            (_%hd3625836323%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3625736319%_))))
                        (if (gx#identifier? _%hd3625836323%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39517_|
                                 _%hd3625836323%_)
                                (if (gx#stx-pair? _%tl3625936326%_)
                                    (let ((_%e3626036329%_
                                           (gx#syntax-e _%tl3625936326%_)))
                                      (let ((_%tl3626236336%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3626036329%_)))
                                            (_%hd3626136333%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3626036329%_))))
                                        (if (gx#stx-null? _%tl3626236336%_)
                                            (_%__kont3916239163%_
                                             _%hd3626136333%_
                                             _%hd3623836413%_
                                             _%hd3613136816%_
                                             _%hd3612836806%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3612236268%_)))
                            (let () (declare (not safe)) (_%g3612236268%_)))))
                    (let () (declare (not safe)) (_%g3612236268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3612236268%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3612236268%_)))))))
                      (if (gx#stx-null? _%tl3613236819%_)
                          (_%__kont3915639157%_
                           _%hd3613136816%_
                           _%hd3612836806%_)
                          (let () (declare (not safe)) (_%g3612236268%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3613236819%_)
                                                      (let ((_%e3619836578%_
                                                             (gx#syntax-e
                                                              _%tl3613236819%_)))
                                                        (let ((_%tl3620036585%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3619836578%_)))
                      (_%hd3619936582%_
                       (let () (declare (not safe)) (##car _%e3619836578%_))))
                  (if (gx#stx-null? _%tl3620036585%_)
                      (_%__kont3915439155%_ _%hd3619936582%_ _%hd3613136816%_)
                      (if (gx#identifier? _%hd3619936582%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39516_|
                               _%hd3619936582%_)
                              (if (gx#stx-pair? _%tl3620036585%_)
                                  (let ((_%e3622136478%_
                                         (gx#syntax-e _%tl3620036585%_)))
                                    (let ((_%tl3622336485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3622136478%_)))
                                          (_%hd3622236482%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3622136478%_))))
                                      (if (gx#stx-null? _%tl3622336485%_)
                                          (_%__kont3915839159%_
                                           _%hd3622236482%_
                                           _%hd3613136816%_
                                           _%hd3612836806%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3612236268%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3612236268%_)))
                              (let () (declare (not safe)) (_%g3612236268%_)))
                          (if (gx#stx-datum? _%hd3619936582%_)
                              (let ((_%e3623636405%_
                                     (gx#stx-e _%hd3619936582%_)))
                                (if (equal? _%e3623636405%_ '::)
                                    (if (gx#stx-pair? _%tl3620036585%_)
                                        (let ((_%e3623736409%_
                                               (gx#syntax-e _%tl3620036585%_)))
                                          (let ((_%tl3623936416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3623736409%_)))
                                                (_%hd3623836413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3623736409%_))))
                                            (if (gx#stx-null? _%tl3623936416%_)
                                                (_%__kont3916039161%_
                                                 _%hd3623836413%_
                                                 _%hd3613136816%_
                                                 _%hd3612836806%_)
                                                (if (gx#stx-pair?
                                                     _%tl3623936416%_)
                                                    (let ((_%e3625736319%_
                                                           (gx#syntax-e
                                                            _%tl3623936416%_)))
                                                      (let ((_%tl3625936326%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3625736319%_)))
                    (_%hd3625836323%_
                     (let () (declare (not safe)) (##car _%e3625736319%_))))
                (if (gx#identifier? _%hd3625836323%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39517_|
                         _%hd3625836323%_)
                        (if (gx#stx-pair? _%tl3625936326%_)
                            (let ((_%e3626036329%_
                                   (gx#syntax-e _%tl3625936326%_)))
                              (let ((_%tl3626236336%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3626036329%_)))
                                    (_%hd3626136333%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3626036329%_))))
                                (if (gx#stx-null? _%tl3626236336%_)
                                    (_%__kont3916239163%_
                                     _%hd3626136333%_
                                     _%hd3623836413%_
                                     _%hd3613136816%_
                                     _%hd3612836806%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_)))))
                            (let () (declare (not safe)) (_%g3612236268%_)))
                        (let () (declare (not safe)) (_%g3612236268%_)))
                    (let () (declare (not safe)) (_%g3612236268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3612236268%_)))))))
              (if (gx#stx-null? _%tl3613236819%_)
                  (_%__kont3915639157%_ _%hd3613136816%_ _%hd3612836806%_)
                  (let () (declare (not safe)) (_%g3612236268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39519_|
                                                   _%hd3613436826%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3613536829%_)
                                                      (let ((_%__splice3915039151%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3613536829%_
                                                              '0)))
                                                        (let ((_%tl3616236725%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3915039151%_ '1)))
                      (_%target3616036722%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3915039151%_ '0))))
                  (if (gx#stx-null? _%tl3616236725%_)
                      (_%__match3922439225%_
                       _%e3612736802%_
                       _%hd3612836806%_
                       _%tl3612936809%_
                       _%e3613036812%_
                       _%hd3613136816%_
                       _%tl3613236819%_
                       _%e3613336822%_
                       _%hd3613436826%_
                       _%tl3613536829%_
                       _%__splice3915039151%_
                       _%target3616036722%_
                       _%tl3616236725%_)
                      (if (gx#stx-pair? _%tl3613236819%_)
                          (let ((_%e3619836578%_
                                 (gx#syntax-e _%tl3613236819%_)))
                            (let ((_%tl3620036585%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3619836578%_)))
                                  (_%hd3619936582%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3619836578%_))))
                              (if (gx#stx-null? _%tl3620036585%_)
                                  (_%__kont3915439155%_
                                   _%hd3619936582%_
                                   _%hd3613136816%_)
                                  (if (gx#identifier? _%hd3619936582%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39516_|
                                           _%hd3619936582%_)
                                          (if (gx#stx-pair? _%tl3620036585%_)
                                              (let ((_%e3622136478%_
                                                     (gx#syntax-e
                                                      _%tl3620036585%_)))
                                                (let ((_%tl3622336485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3622136478%_)))
                                                      (_%hd3622236482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3622136478%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3622336485%_)
                                                      (_%__kont3915839159%_
                                                       _%hd3622236482%_
                                                       _%hd3613136816%_
                                                       _%hd3612836806%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3612236268%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3612236268%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3612236268%_)))
                                      (if (gx#stx-datum? _%hd3619936582%_)
                                          (let ((_%e3623636405%_
                                                 (gx#stx-e _%hd3619936582%_)))
                                            (if (equal? _%e3623636405%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3620036585%_)
                                                    (let ((_%e3623736409%_
                                                           (gx#syntax-e
                                                            _%tl3620036585%_)))
                                                      (let ((_%tl3623936416%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3623736409%_)))
                    (_%hd3623836413%_
                     (let () (declare (not safe)) (##car _%e3623736409%_))))
                (if (gx#stx-null? _%tl3623936416%_)
                    (_%__kont3916039161%_
                     _%hd3623836413%_
                     _%hd3613136816%_
                     _%hd3612836806%_)
                    (if (gx#stx-pair? _%tl3623936416%_)
                        (let ((_%e3625736319%_ (gx#syntax-e _%tl3623936416%_)))
                          (let ((_%tl3625936326%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3625736319%_)))
                                (_%hd3625836323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3625736319%_))))
                            (if (gx#identifier? _%hd3625836323%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39517_|
                                     _%hd3625836323%_)
                                    (if (gx#stx-pair? _%tl3625936326%_)
                                        (let ((_%e3626036329%_
                                               (gx#syntax-e _%tl3625936326%_)))
                                          (let ((_%tl3626236336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3626036329%_)))
                                                (_%hd3626136333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3626036329%_))))
                                            (if (gx#stx-null? _%tl3626236336%_)
                                                (_%__kont3916239163%_
                                                 _%hd3626136333%_
                                                 _%hd3623836413%_
                                                 _%hd3613136816%_
                                                 _%hd3612836806%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3612236268%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3612236268%_)))))
                        (let () (declare (not safe)) (_%g3612236268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3612236268%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3612236268%_)))))))
                          (if (gx#stx-null? _%tl3613236819%_)
                              (_%__kont3915639157%_
                               _%hd3613136816%_
                               _%hd3612836806%_)
                              (let ()
                                (declare (not safe))
                                (_%g3612236268%_)))))))
              (if (gx#stx-pair? _%tl3613236819%_)
                  (let ((_%e3619836578%_ (gx#syntax-e _%tl3613236819%_)))
                    (let ((_%tl3620036585%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3619836578%_)))
                          (_%hd3619936582%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3619836578%_))))
                      (if (gx#stx-null? _%tl3620036585%_)
                          (_%__kont3915439155%_
                           _%hd3619936582%_
                           _%hd3613136816%_)
                          (if (gx#identifier? _%hd3619936582%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39516_|
                                   _%hd3619936582%_)
                                  (if (gx#stx-pair? _%tl3620036585%_)
                                      (let ((_%e3622136478%_
                                             (gx#syntax-e _%tl3620036585%_)))
                                        (let ((_%tl3622336485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3622136478%_)))
                                              (_%hd3622236482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3622136478%_))))
                                          (if (gx#stx-null? _%tl3622336485%_)
                                              (_%__kont3915839159%_
                                               _%hd3622236482%_
                                               _%hd3613136816%_
                                               _%hd3612836806%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3612236268%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3612236268%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3612236268%_)))
                              (if (gx#stx-datum? _%hd3619936582%_)
                                  (let ((_%e3623636405%_
                                         (gx#stx-e _%hd3619936582%_)))
                                    (if (equal? _%e3623636405%_ '::)
                                        (if (gx#stx-pair? _%tl3620036585%_)
                                            (let ((_%e3623736409%_
                                                   (gx#syntax-e
                                                    _%tl3620036585%_)))
                                              (let ((_%tl3623936416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3623736409%_)))
                                                    (_%hd3623836413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3623736409%_))))
                                                (if (gx#stx-null?
                                                     _%tl3623936416%_)
                                                    (_%__kont3916039161%_
                                                     _%hd3623836413%_
                                                     _%hd3613136816%_
                                                     _%hd3612836806%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3623936416%_)
                                                        (let ((_%e3625736319%_
                                                               (gx#syntax-e
                                                                _%tl3623936416%_)))
                                                          (let ((_%tl3625936326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3625736319%_)))
                        (_%hd3625836323%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3625736319%_))))
                    (if (gx#identifier? _%hd3625836323%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39517_|
                             _%hd3625836323%_)
                            (if (gx#stx-pair? _%tl3625936326%_)
                                (let ((_%e3626036329%_
                                       (gx#syntax-e _%tl3625936326%_)))
                                  (let ((_%tl3626236336%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3626036329%_)))
                                        (_%hd3626136333%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3626036329%_))))
                                    (if (gx#stx-null? _%tl3626236336%_)
                                        (_%__kont3916239163%_
                                         _%hd3626136333%_
                                         _%hd3623836413%_
                                         _%hd3613136816%_
                                         _%hd3612836806%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3612236268%_)))
                            (let () (declare (not safe)) (_%g3612236268%_)))
                        (let () (declare (not safe)) (_%g3612236268%_)))))
                (let () (declare (not safe)) (_%g3612236268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3612236268%_)))))))
                  (if (gx#stx-null? _%tl3613236819%_)
                      (_%__kont3915639157%_ _%hd3613136816%_ _%hd3612836806%_)
                      (let () (declare (not safe)) (_%g3612236268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39520_|
                                                       _%hd3613436826%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3613536829%_)
                                                          (let ((_%e3618436642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3613536829%_)))
                    (let ((_%tl3618636649%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3618436642%_)))
                          (_%hd3618536646%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3618436642%_))))
                      (if (gx#stx-null? _%tl3618636649%_)
                          (if (gx#stx-pair? _%tl3613236819%_)
                              (let ((_%e3618736652%_
                                     (gx#syntax-e _%tl3613236819%_)))
                                (let ((_%tl3618936659%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3618736652%_)))
                                      (_%hd3618836656%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3618736652%_))))
                                  (if (gx#stx-null? _%tl3618936659%_)
                                      (_%__kont3915239153%_
                                       _%hd3618836656%_
                                       _%hd3618536646%_
                                       _%hd3612836806%_)
                                      (if (gx#identifier? _%hd3618836656%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39516_|
                                               _%hd3618836656%_)
                                              (if (gx#stx-pair?
                                                   _%tl3618936659%_)
                                                  (let ((_%e3622136478%_
                                                         (gx#syntax-e
                                                          _%tl3618936659%_)))
                                                    (let ((_%tl3622336485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3622136478%_)))
                                                          (_%hd3622236482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3622136478%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3622336485%_)
                                                          (_%__kont3915839159%_
                                                           _%hd3622236482%_
                                                           _%hd3613136816%_
                                                           _%hd3612836806%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3612236268%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3612236268%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3612236268%_)))
                                          (if (gx#stx-datum? _%hd3618836656%_)
                                              (let ((_%e3623636405%_
                                                     (gx#stx-e
                                                      _%hd3618836656%_)))
                                                (if (equal? _%e3623636405%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3618936659%_)
                                                        (let ((_%e3623736409%_
                                                               (gx#syntax-e
                                                                _%tl3618936659%_)))
                                                          (let ((_%tl3623936416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3623736409%_)))
                        (_%hd3623836413%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3623736409%_))))
                    (if (gx#stx-null? _%tl3623936416%_)
                        (_%__kont3916039161%_
                         _%hd3623836413%_
                         _%hd3613136816%_
                         _%hd3612836806%_)
                        (if (gx#stx-pair? _%tl3623936416%_)
                            (let ((_%e3625736319%_
                                   (gx#syntax-e _%tl3623936416%_)))
                              (let ((_%tl3625936326%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3625736319%_)))
                                    (_%hd3625836323%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3625736319%_))))
                                (if (gx#identifier? _%hd3625836323%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39517_|
                                         _%hd3625836323%_)
                                        (if (gx#stx-pair? _%tl3625936326%_)
                                            (let ((_%e3626036329%_
                                                   (gx#syntax-e
                                                    _%tl3625936326%_)))
                                              (let ((_%tl3626236336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3626036329%_)))
                                                    (_%hd3626136333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3626036329%_))))
                                                (if (gx#stx-null?
                                                     _%tl3626236336%_)
                                                    (_%__kont3916239163%_
                                                     _%hd3626136333%_
                                                     _%hd3623836413%_
                                                     _%hd3613136816%_
                                                     _%hd3612836806%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_)))))
                            (let () (declare (not safe)) (_%g3612236268%_))))))
                (let () (declare (not safe)) (_%g3612236268%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3612236268%_)))))))
                              (if (gx#stx-null? _%tl3613236819%_)
                                  (_%__kont3915639157%_
                                   _%hd3613136816%_
                                   _%hd3612836806%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3612236268%_))))
                          (if (gx#stx-pair? _%tl3613236819%_)
                              (let ((_%e3619836578%_
                                     (gx#syntax-e _%tl3613236819%_)))
                                (let ((_%tl3620036585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3619836578%_)))
                                      (_%hd3619936582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3619836578%_))))
                                  (if (gx#stx-null? _%tl3620036585%_)
                                      (_%__kont3915439155%_
                                       _%hd3619936582%_
                                       _%hd3613136816%_)
                                      (if (gx#identifier? _%hd3619936582%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39516_|
                                               _%hd3619936582%_)
                                              (if (gx#stx-pair?
                                                   _%tl3620036585%_)
                                                  (let ((_%e3622136478%_
                                                         (gx#syntax-e
                                                          _%tl3620036585%_)))
                                                    (let ((_%tl3622336485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3622136478%_)))
                                                          (_%hd3622236482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3622136478%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3622336485%_)
                                                          (_%__kont3915839159%_
                                                           _%hd3622236482%_
                                                           _%hd3613136816%_
                                                           _%hd3612836806%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3612236268%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3612236268%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3612236268%_)))
                                          (if (gx#stx-datum? _%hd3619936582%_)
                                              (let ((_%e3623636405%_
                                                     (gx#stx-e
                                                      _%hd3619936582%_)))
                                                (if (equal? _%e3623636405%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3620036585%_)
                                                        (let ((_%e3623736409%_
                                                               (gx#syntax-e
                                                                _%tl3620036585%_)))
                                                          (let ((_%tl3623936416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3623736409%_)))
                        (_%hd3623836413%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3623736409%_))))
                    (if (gx#stx-null? _%tl3623936416%_)
                        (_%__kont3916039161%_
                         _%hd3623836413%_
                         _%hd3613136816%_
                         _%hd3612836806%_)
                        (if (gx#stx-pair? _%tl3623936416%_)
                            (let ((_%e3625736319%_
                                   (gx#syntax-e _%tl3623936416%_)))
                              (let ((_%tl3625936326%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3625736319%_)))
                                    (_%hd3625836323%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3625736319%_))))
                                (if (gx#identifier? _%hd3625836323%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39517_|
                                         _%hd3625836323%_)
                                        (if (gx#stx-pair? _%tl3625936326%_)
                                            (let ((_%e3626036329%_
                                                   (gx#syntax-e
                                                    _%tl3625936326%_)))
                                              (let ((_%tl3626236336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3626036329%_)))
                                                    (_%hd3626136333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3626036329%_))))
                                                (if (gx#stx-null?
                                                     _%tl3626236336%_)
                                                    (_%__kont3916239163%_
                                                     _%hd3626136333%_
                                                     _%hd3623836413%_
                                                     _%hd3613136816%_
                                                     _%hd3612836806%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_)))))
                            (let () (declare (not safe)) (_%g3612236268%_))))))
                (let () (declare (not safe)) (_%g3612236268%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3612236268%_)))))))
                              (if (gx#stx-null? _%tl3613236819%_)
                                  (_%__kont3915639157%_
                                   _%hd3613136816%_
                                   _%hd3612836806%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3612236268%_)))))))
                  (if (gx#stx-pair? _%tl3613236819%_)
                      (let ((_%e3619836578%_ (gx#syntax-e _%tl3613236819%_)))
                        (let ((_%tl3620036585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3619836578%_)))
                              (_%hd3619936582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3619836578%_))))
                          (if (gx#stx-null? _%tl3620036585%_)
                              (_%__kont3915439155%_
                               _%hd3619936582%_
                               _%hd3613136816%_)
                              (if (gx#identifier? _%hd3619936582%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39516_|
                                       _%hd3619936582%_)
                                      (if (gx#stx-pair? _%tl3620036585%_)
                                          (let ((_%e3622136478%_
                                                 (gx#syntax-e
                                                  _%tl3620036585%_)))
                                            (let ((_%tl3622336485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3622136478%_)))
                                                  (_%hd3622236482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3622136478%_))))
                                              (if (gx#stx-null?
                                                   _%tl3622336485%_)
                                                  (_%__kont3915839159%_
                                                   _%hd3622236482%_
                                                   _%hd3613136816%_
                                                   _%hd3612836806%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3612236268%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3612236268%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3612236268%_)))
                                  (if (gx#stx-datum? _%hd3619936582%_)
                                      (let ((_%e3623636405%_
                                             (gx#stx-e _%hd3619936582%_)))
                                        (if (equal? _%e3623636405%_ '::)
                                            (if (gx#stx-pair? _%tl3620036585%_)
                                                (let ((_%e3623736409%_
                                                       (gx#syntax-e
                                                        _%tl3620036585%_)))
                                                  (let ((_%tl3623936416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3623736409%_)))
                                                        (_%hd3623836413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3623736409%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3623936416%_)
                                                        (_%__kont3916039161%_
                                                         _%hd3623836413%_
                                                         _%hd3613136816%_
                                                         _%hd3612836806%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3623936416%_)
                                                            (let ((_%e3625736319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3623936416%_)))
                      (let ((_%tl3625936326%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3625736319%_)))
                            (_%hd3625836323%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3625736319%_))))
                        (if (gx#identifier? _%hd3625836323%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39517_|
                                 _%hd3625836323%_)
                                (if (gx#stx-pair? _%tl3625936326%_)
                                    (let ((_%e3626036329%_
                                           (gx#syntax-e _%tl3625936326%_)))
                                      (let ((_%tl3626236336%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3626036329%_)))
                                            (_%hd3626136333%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3626036329%_))))
                                        (if (gx#stx-null? _%tl3626236336%_)
                                            (_%__kont3916239163%_
                                             _%hd3626136333%_
                                             _%hd3623836413%_
                                             _%hd3613136816%_
                                             _%hd3612836806%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3612236268%_)))
                            (let () (declare (not safe)) (_%g3612236268%_)))))
                    (let () (declare (not safe)) (_%g3612236268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3612236268%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3612236268%_)))))))
                      (if (gx#stx-null? _%tl3613236819%_)
                          (_%__kont3915639157%_
                           _%hd3613136816%_
                           _%hd3612836806%_)
                          (let () (declare (not safe)) (_%g3612236268%_)))))
              (if (gx#stx-pair? _%tl3613236819%_)
                  (let ((_%e3619836578%_ (gx#syntax-e _%tl3613236819%_)))
                    (let ((_%tl3620036585%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3619836578%_)))
                          (_%hd3619936582%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3619836578%_))))
                      (if (gx#stx-null? _%tl3620036585%_)
                          (_%__kont3915439155%_
                           _%hd3619936582%_
                           _%hd3613136816%_)
                          (if (gx#identifier? _%hd3619936582%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39516_|
                                   _%hd3619936582%_)
                                  (if (gx#stx-pair? _%tl3620036585%_)
                                      (let ((_%e3622136478%_
                                             (gx#syntax-e _%tl3620036585%_)))
                                        (let ((_%tl3622336485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3622136478%_)))
                                              (_%hd3622236482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3622136478%_))))
                                          (if (gx#stx-null? _%tl3622336485%_)
                                              (_%__kont3915839159%_
                                               _%hd3622236482%_
                                               _%hd3613136816%_
                                               _%hd3612836806%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3612236268%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3612236268%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3612236268%_)))
                              (if (gx#stx-datum? _%hd3619936582%_)
                                  (let ((_%e3623636405%_
                                         (gx#stx-e _%hd3619936582%_)))
                                    (if (equal? _%e3623636405%_ '::)
                                        (if (gx#stx-pair? _%tl3620036585%_)
                                            (let ((_%e3623736409%_
                                                   (gx#syntax-e
                                                    _%tl3620036585%_)))
                                              (let ((_%tl3623936416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3623736409%_)))
                                                    (_%hd3623836413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3623736409%_))))
                                                (if (gx#stx-null?
                                                     _%tl3623936416%_)
                                                    (_%__kont3916039161%_
                                                     _%hd3623836413%_
                                                     _%hd3613136816%_
                                                     _%hd3612836806%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3623936416%_)
                                                        (let ((_%e3625736319%_
                                                               (gx#syntax-e
                                                                _%tl3623936416%_)))
                                                          (let ((_%tl3625936326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3625736319%_)))
                        (_%hd3625836323%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3625736319%_))))
                    (if (gx#identifier? _%hd3625836323%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39517_|
                             _%hd3625836323%_)
                            (if (gx#stx-pair? _%tl3625936326%_)
                                (let ((_%e3626036329%_
                                       (gx#syntax-e _%tl3625936326%_)))
                                  (let ((_%tl3626236336%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3626036329%_)))
                                        (_%hd3626136333%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3626036329%_))))
                                    (if (gx#stx-null? _%tl3626236336%_)
                                        (_%__kont3916239163%_
                                         _%hd3626136333%_
                                         _%hd3623836413%_
                                         _%hd3613136816%_
                                         _%hd3612836806%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3612236268%_)))
                            (let () (declare (not safe)) (_%g3612236268%_)))
                        (let () (declare (not safe)) (_%g3612236268%_)))))
                (let () (declare (not safe)) (_%g3612236268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3612236268%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3612236268%_)))))))
                  (if (gx#stx-null? _%tl3613236819%_)
                      (_%__kont3915639157%_ _%hd3613136816%_ _%hd3612836806%_)
                      (let () (declare (not safe)) (_%g3612236268%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3613236819%_)
                                              (let ((_%e3619836578%_
                                                     (gx#syntax-e
                                                      _%tl3613236819%_)))
                                                (let ((_%tl3620036585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3619836578%_)))
                                                      (_%hd3619936582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3619836578%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3620036585%_)
                                                      (_%__kont3915439155%_
                                                       _%hd3619936582%_
                                                       _%hd3613136816%_)
                                                      (if (gx#identifier?
                                                           _%hd3619936582%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39516_|
                                                               _%hd3619936582%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3620036585%_)
                          (let ((_%e3622136478%_
                                 (gx#syntax-e _%tl3620036585%_)))
                            (let ((_%tl3622336485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3622136478%_)))
                                  (_%hd3622236482%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3622136478%_))))
                              (if (gx#stx-null? _%tl3622336485%_)
                                  (_%__kont3915839159%_
                                   _%hd3622236482%_
                                   _%hd3613136816%_
                                   _%hd3612836806%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3612236268%_)))))
                          (let () (declare (not safe)) (_%g3612236268%_)))
                      (let () (declare (not safe)) (_%g3612236268%_)))
                  (if (gx#stx-datum? _%hd3619936582%_)
                      (let ((_%e3623636405%_ (gx#stx-e _%hd3619936582%_)))
                        (if (equal? _%e3623636405%_ '::)
                            (if (gx#stx-pair? _%tl3620036585%_)
                                (let ((_%e3623736409%_
                                       (gx#syntax-e _%tl3620036585%_)))
                                  (let ((_%tl3623936416%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3623736409%_)))
                                        (_%hd3623836413%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3623736409%_))))
                                    (if (gx#stx-null? _%tl3623936416%_)
                                        (_%__kont3916039161%_
                                         _%hd3623836413%_
                                         _%hd3613136816%_
                                         _%hd3612836806%_)
                                        (if (gx#stx-pair? _%tl3623936416%_)
                                            (let ((_%e3625736319%_
                                                   (gx#syntax-e
                                                    _%tl3623936416%_)))
                                              (let ((_%tl3625936326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3625736319%_)))
                                                    (_%hd3625836323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3625736319%_))))
                                                (if (gx#identifier?
                                                     _%hd3625836323%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39517_|
                                                         _%hd3625836323%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3625936326%_)
                                                            (let ((_%e3626036329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3625936326%_)))
                      (let ((_%tl3626236336%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3626036329%_)))
                            (_%hd3626136333%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3626036329%_))))
                        (if (gx#stx-null? _%tl3626236336%_)
                            (_%__kont3916239163%_
                             _%hd3626136333%_
                             _%hd3623836413%_
                             _%hd3613136816%_
                             _%hd3612836806%_)
                            (let () (declare (not safe)) (_%g3612236268%_)))))
                    (let () (declare (not safe)) (_%g3612236268%_)))
                (let () (declare (not safe)) (_%g3612236268%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3612236268%_)))
                            (let () (declare (not safe)) (_%g3612236268%_))))
                      (let () (declare (not safe)) (_%g3612236268%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3613236819%_)
                                                  (_%__kont3915639157%_
                                                   _%hd3613136816%_
                                                   _%hd3612836806%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3612236268%_)))))))
                                  (if (gx#stx-pair? _%tl3613236819%_)
                                      (let ((_%e3619836578%_
                                             (gx#syntax-e _%tl3613236819%_)))
                                        (let ((_%tl3620036585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3619836578%_)))
                                              (_%hd3619936582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3619836578%_))))
                                          (if (gx#stx-null? _%tl3620036585%_)
                                              (_%__kont3915439155%_
                                               _%hd3619936582%_
                                               _%hd3613136816%_)
                                              (if (gx#identifier?
                                                   _%hd3619936582%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39516_|
                                                       _%hd3619936582%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3620036585%_)
                                                          (let ((_%e3622136478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3620036585%_)))
                    (let ((_%tl3622336485%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3622136478%_)))
                          (_%hd3622236482%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3622136478%_))))
                      (if (gx#stx-null? _%tl3622336485%_)
                          (_%__kont3915839159%_
                           _%hd3622236482%_
                           _%hd3613136816%_
                           _%hd3612836806%_)
                          (let () (declare (not safe)) (_%g3612236268%_)))))
                  (let () (declare (not safe)) (_%g3612236268%_)))
              (let () (declare (not safe)) (_%g3612236268%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3619936582%_)
                                                      (let ((_%e3623636405%_
                                                             (gx#stx-e
                                                              _%hd3619936582%_)))
                                                        (if (equal? _%e3623636405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3620036585%_)
                        (let ((_%e3623736409%_ (gx#syntax-e _%tl3620036585%_)))
                          (let ((_%tl3623936416%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3623736409%_)))
                                (_%hd3623836413%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3623736409%_))))
                            (if (gx#stx-null? _%tl3623936416%_)
                                (_%__kont3916039161%_
                                 _%hd3623836413%_
                                 _%hd3613136816%_
                                 _%hd3612836806%_)
                                (if (gx#stx-pair? _%tl3623936416%_)
                                    (let ((_%e3625736319%_
                                           (gx#syntax-e _%tl3623936416%_)))
                                      (let ((_%tl3625936326%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3625736319%_)))
                                            (_%hd3625836323%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3625736319%_))))
                                        (if (gx#identifier? _%hd3625836323%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39517_|
                                                 _%hd3625836323%_)
                                                (if (gx#stx-pair?
                                                     _%tl3625936326%_)
                                                    (let ((_%e3626036329%_
                                                           (gx#syntax-e
                                                            _%tl3625936326%_)))
                                                      (let ((_%tl3626236336%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3626036329%_)))
                    (_%hd3626136333%_
                     (let () (declare (not safe)) (##car _%e3626036329%_))))
                (if (gx#stx-null? _%tl3626236336%_)
                    (_%__kont3916239163%_
                     _%hd3626136333%_
                     _%hd3623836413%_
                     _%hd3613136816%_
                     _%hd3612836806%_)
                    (let () (declare (not safe)) (_%g3612236268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3612236268%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3612236268%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3612236268%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3612236268%_))))))
                        (let () (declare (not safe)) (_%g3612236268%_)))
                    (let () (declare (not safe)) (_%g3612236268%_))))
              (let () (declare (not safe)) (_%g3612236268%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3613236819%_)
                                          (_%__kont3915639157%_
                                           _%hd3613136816%_
                                           _%hd3612836806%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3612236268%_)))))))
                          (let () (declare (not safe)) (_%g3612236268%_)))))
                  (let () (declare (not safe)) (_%g3612236268%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx36911%_)
        (let* ((_%__stx3940939410%_ _%$stx36911%_)
               (_%g3691636950%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3940939410%_))))
          (let ((_%__kont3941239413%_
                 (lambda (_%L37054%_ _%L37056%_ _%L37057%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37057%_
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
                                       (cons _%L37056%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37054%_ '()))
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
                (_%__kont3941439415%_
                 (lambda (_%L36987%_ _%L36989%_ _%L36990%_)
                   (cons _%L36990%_
                         (cons _%L36989%_
                               (cons _%L36987%_
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
            (let ((_%__match3944239443%_
                   (lambda (_%e3692137014%_
                            _%hd3692237018%_
                            _%tl3692337021%_
                            _%e3692437024%_
                            _%hd3692537028%_
                            _%tl3692637031%_
                            _%e3692737034%_
                            _%hd3692837038%_
                            _%tl3692937041%_
                            _%e3693037044%_
                            _%hd3693137048%_
                            _%tl3693237051%_)
                     (let ((_%L37054%_ _%hd3693137048%_)
                           (_%L37056%_ _%hd3692837038%_)
                           (_%L37057%_ _%hd3692537028%_))
                       (if (gx#identifier? _%L37057%_)
                           (_%__kont3941239413%_
                            _%L37054%_
                            _%L37056%_
                            _%L37057%_)
                           (let () (declare (not safe)) (_%g3691636950%_)))))))
              (if (gx#stx-pair? _%__stx3940939410%_)
                  (let ((_%e3692137014%_ (gx#syntax-e _%__stx3940939410%_)))
                    (let ((_%tl3692337021%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3692137014%_)))
                          (_%hd3692237018%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3692137014%_))))
                      (if (gx#stx-pair? _%tl3692337021%_)
                          (let ((_%e3692437024%_
                                 (gx#syntax-e _%tl3692337021%_)))
                            (let ((_%tl3692637031%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3692437024%_)))
                                  (_%hd3692537028%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3692437024%_))))
                              (if (gx#stx-pair? _%tl3692637031%_)
                                  (let ((_%e3692737034%_
                                         (gx#syntax-e _%tl3692637031%_)))
                                    (let ((_%tl3692937041%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3692737034%_)))
                                          (_%hd3692837038%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3692737034%_))))
                                      (if (gx#stx-pair? _%tl3692937041%_)
                                          (let ((_%e3693037044%_
                                                 (gx#syntax-e
                                                  _%tl3692937041%_)))
                                            (let ((_%tl3693237051%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3693037044%_)))
                                                  (_%hd3693137048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3693037044%_))))
                                              (if (gx#stx-null?
                                                   _%tl3693237051%_)
                                                  (_%__match3944239443%_
                                                   _%e3692137014%_
                                                   _%hd3692237018%_
                                                   _%tl3692337021%_
                                                   _%e3692437024%_
                                                   _%hd3692537028%_
                                                   _%tl3692637031%_
                                                   _%e3692737034%_
                                                   _%hd3692837038%_
                                                   _%tl3692937041%_
                                                   _%e3693037044%_
                                                   _%hd3693137048%_
                                                   _%tl3693237051%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3691636950%_)))))
                                          (if (gx#stx-null? _%tl3692937041%_)
                                              (_%__kont3941439415%_
                                               _%hd3692837038%_
                                               _%hd3692537028%_
                                               _%hd3692237018%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3691636950%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3691636950%_)))))
                          (let () (declare (not safe)) (_%g3691636950%_)))))
                  (let () (declare (not safe)) (_%g3691636950%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37079%_)
        (let* ((_%g3708337098%_
                (lambda (_%g3708437094%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3708437094%_)))
               (_%g3708237141%_
                (lambda (_%g3708437102%_)
                  (if (gx#stx-pair? _%g3708437102%_)
                      (let ((_%e3708737105%_ (gx#syntax-e _%g3708437102%_)))
                        (let ((_%hd3708837109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3708737105%_)))
                              (_%tl3708937112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3708737105%_))))
                          (if (gx#stx-pair? _%tl3708937112%_)
                              (let ((_%e3709037115%_
                                     (gx#syntax-e _%tl3708937112%_)))
                                (let ((_%hd3709137119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3709037115%_)))
                                      (_%tl3709237122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3709037115%_))))
                                  ((lambda (_%L37125%_ _%L37127%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37127%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37125%_)
                                                       '()))))
                                   _%tl3709237122%_
                                   _%hd3709137119%_)))
                              (_%g3708337098%_ _%g3708437102%_))))
                      (_%g3708337098%_ _%g3708437102%_)))))
          (_%g3708237141%_ _%$stx37079%_))))))
