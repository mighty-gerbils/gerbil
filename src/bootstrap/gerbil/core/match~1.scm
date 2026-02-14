(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g49574_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49575_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49576_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49577_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49578_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49579_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49580_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49581_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49582_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49583_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49584_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49585_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49586_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49587_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49588_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49601_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49609_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49610_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49611_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g49616_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49617_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49618_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49619_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g49620_|
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
      (lambda _%$args44895%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args44895%_)))
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
      (lambda (_%stx44892%_)
        (if (gx#identifier? _%stx44892%_)
            (let ((__tmp49573 (gx#syntax-local-value _%stx44892%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp49573))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx43194%_ _%match-stx43196%_)
        (letrec ((_%parse143198%_
                  (lambda (_%hd43557%_)
                    (let* ((_%__stx4736147362%_ _%hd43557%_)
                           (_%g4358343725%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4736147362%_))))
                      (let ((_%__kont4736447365%_
                             (lambda (_%g4358544655%_ _%g4358644657%_)
                               (let* ((_%__stx4728147282%_ _%g4358544655%_)
                                      (_%g4467444707%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4728147282%_))))
                                 (let ((_%__kont4728447285%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g4358644657%_ '()))))
                                       (_%__kont4728647287%_
                                        (lambda (_%g4467644848%_)
                                          (cons '?:
                                                (cons _%g4358644657%_
                                                      (cons (_%parse143198%_
                                                             _%g4467644848%_)
                                                            '())))))
                                       (_%__kont4728847289%_
                                        (lambda (_%g4468044818%_)
                                          (cons '?:
                                                (cons _%g4358644657%_
                                                      (cons '=>:
                                                            (cons (_%parse143198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4468044818%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4729047291%_
                                        (lambda (_%g4468744769%_
                                                 _%g4468844771%_)
                                          (cons '?:
                                                (cons _%g4358644657%_
                                                      (cons '::
                                                            (cons _%g4468844771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse143198%_ _%g4468744769%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4729247293%_
                                        (lambda ()
                                          (_%parse-error43205%_ _%hd43557%_))))
                                   (let ((_%g4467044859%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx4728147282%_)
                                                (let ((_%e4467744838%_
                                                       (gx#syntax-e
                                                        _%__stx4728147282%_)))
                                                  (let ((_%tl4467944845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4467744838%_)))
                                                        (_%hd4467844842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4467744838%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4467944845%_)
                                                        (_%__kont4728647287%_
                                                         _%hd4467844842%_)
                                                        (if (gx#identifier?
                                                             _%hd4467844842%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g49574_|
                         _%hd4467844842%_)
                        (if (gx#stx-pair? _%tl4467944845%_)
                            (let ((_%e4468444808%_
                                   (gx#syntax-e _%tl4467944845%_)))
                              (let ((_%tl4468644815%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4468444808%_)))
                                    (_%hd4468544812%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4468444808%_))))
                                (if (gx#stx-null? _%tl4468644815%_)
                                    (_%__kont4728847289%_ _%hd4468544812%_)
                                    (_%__kont4729247293%_))))
                            (_%__kont4729247293%_))
                        (_%__kont4729247293%_))
                    (if (gx#stx-datum? _%hd4467844842%_)
                        (let ((_%e4469244735%_ (gx#stx-e _%hd4467844842%_)))
                          (if (equal? _%e4469244735%_ '::)
                              (if (gx#stx-pair? _%tl4467944845%_)
                                  (let ((_%e4469344739%_
                                         (gx#syntax-e _%tl4467944845%_)))
                                    (let ((_%tl4469544746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4469344739%_)))
                                          (_%hd4469444743%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4469344739%_))))
                                      (if (gx#stx-pair? _%tl4469544746%_)
                                          (let ((_%e4469644749%_
                                                 (gx#syntax-e
                                                  _%tl4469544746%_)))
                                            (let ((_%tl4469844756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4469644749%_)))
                                                  (_%hd4469744753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4469644749%_))))
                                              (if (gx#identifier?
                                                   _%hd4469744753%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g49575_|
                                                       _%hd4469744753%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4469844756%_)
                                                          (let ((_%e4469944759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4469844756%_)))
                    (let ((_%tl4470144766%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4469944759%_)))
                          (_%hd4470044763%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4469944759%_))))
                      (if (gx#stx-null? _%tl4470144766%_)
                          (_%__kont4729047291%_
                           _%hd4470044763%_
                           _%hd4469444743%_)
                          (_%__kont4729247293%_))))
                  (_%__kont4729247293%_))
              (_%__kont4729247293%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4729247293%_))))
                                          (_%__kont4729247293%_))))
                                  (_%__kont4729247293%_))
                              (_%__kont4729247293%_)))
                        (_%__kont4729247293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont4729247293%_)))))
                                     (if (gx#stx-null? _%__stx4728147282%_)
                                         (_%__kont4728447285%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4467044859%_))))))))
                            (_%__kont4736647367%_
                             (lambda (_%g4359344560%_)
                               (let* ((_%__stx4726347264%_ _%g4359344560%_)
                                      (_%g4457244583%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4726347264%_))))
                                 (let ((_%__kont4726647267%_
                                        (lambda (_%g4457444611%_)
                                          (_%parse143198%_ _%g4457444611%_)))
                                       (_%__kont4726847269%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse143198%_
                                                 _%g4359344560%_)))))
                                   (if (gx#stx-pair? _%__stx4726347264%_)
                                       (let ((_%e4457544601%_
                                              (gx#syntax-e
                                               _%__stx4726347264%_)))
                                         (let ((_%tl4457744608%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4457544601%_)))
                                               (_%hd4457644605%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4457544601%_))))
                                           (if (gx#stx-null? _%tl4457744608%_)
                                               (_%__kont4726647267%_
                                                _%hd4457644605%_)
                                               (_%__kont4726847269%_))))
                                       (_%__kont4726847269%_))))))
                            (_%__kont4736847369%_
                             (lambda (_%g4359744475%_)
                               (let* ((_%__stx4724547246%_ _%g4359744475%_)
                                      (_%g4448744498%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4724547246%_))))
                                 (let ((_%__kont4724847249%_
                                        (lambda (_%g4448944526%_)
                                          (_%parse143198%_ _%g4448944526%_)))
                                       (_%__kont4725047251%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse143198%_
                                                 _%g4359744475%_)))))
                                   (if (gx#stx-pair? _%__stx4724547246%_)
                                       (let ((_%e4449044516%_
                                              (gx#syntax-e
                                               _%__stx4724547246%_)))
                                         (let ((_%tl4449244523%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4449044516%_)))
                                               (_%hd4449144520%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4449044516%_))))
                                           (if (gx#stx-null? _%tl4449244523%_)
                                               (_%__kont4724847249%_
                                                _%hd4449144520%_)
                                               (_%__kont4725047251%_))))
                                       (_%__kont4725047251%_))))))
                            (_%__kont4737047371%_
                             (lambda (_%g4360144445%_)
                               (cons 'not:
                                     (cons (_%parse143198%_ _%g4360144445%_)
                                           '()))))
                            (_%__kont4737247373%_
                             (lambda (_%g4360844401%_ _%g4360944403%_)
                               (cons 'cons:
                                     (cons (_%parse143198%_ _%g4360944403%_)
                                           (cons (_%parse143198%_
                                                  _%g4360844401%_)
                                                 '())))))
                            (_%__kont4737447375%_
                             (lambda (_%g4361944345%_
                                      _%g4362044347%_
                                      _%g4362144348%_)
                               (if (gx#stx-null? _%g4361944345%_)
                                   (cons 'cons:
                                         (cons (_%parse143198%_
                                                _%g4362144348%_)
                                               (cons (_%parse143198%_
                                                      _%g4362044347%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse143198%_
                                                _%g4362144348%_)
                                               (cons (_%parse143198%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g4362044347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4361944345%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont4737647377%_
                             (lambda (_%g4363144297%_)
                               (_%parse-list43200%_ _%g4363144297%_)))
                            (_%__kont4737847379%_
                             (lambda (_%g4363544267%_)
                               (cons 'box:
                                     (cons (_%parse143198%_ _%g4363544267%_)
                                           '()))))
                            (_%__kont4738047381%_
                             (lambda (_%g4364244230%_)
                               (cons 'box:
                                     (cons (_%parse143198%_ _%g4364244230%_)
                                           '()))))
                            (_%__kont4738247383%_
                             (lambda (_%g4364444206%_)
                               (_%parse143198%_ _%g4364444206%_)))
                            (_%__kont4738447385%_
                             (lambda (_%g4365144168%_)
                               (cons 'values:
                                     (cons (_%parse-vector43201%_
                                            _%g4365144168%_)
                                           '()))))
                            (_%__kont4738647387%_
                             (lambda (_%g4365544140%_)
                               (cons 'vector:
                                     (cons (_%parse-vector43201%_
                                            _%g4365544140%_)
                                           '()))))
                            (_%__kont4738847389%_
                             (lambda (_%g4365944101%_)
                               (cons 'vector:
                                     (cons (_%parse-vector43201%_
                                            (foldr (lambda (_%g4411444117%_
                                                            _%g4411544120%_)
                                                     (cons _%g4411444117%_
                                                           _%g4411544120%_))
                                                   '()
                                                   _%g4365944101%_))
                                           '()))))
                            (_%__kont4739247393%_
                             (lambda (_%g4367044049%_ _%g4367144051%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g4367144051%_)
                                           (cons (_%parse-vector43201%_
                                                  _%g4367044049%_)
                                                 '())))))
                            (_%__kont4739447395%_
                             (lambda (_%g4367544019%_ _%g4367644021%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g4367644021%_)
                                           (cons (_%parse-class-body43203%_
                                                  _%g4367544019%_)
                                                 '())))))
                            (_%__kont4739647397%_
                             (lambda (_%g4368043979%_ _%g4368143981%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g4368143981%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g4368043979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont4739847399%_
                             (lambda (_%g4368843939%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g4368843939%_) '()))))
                            (_%__kont4740047401%_
                             (lambda (_%g4369543899%_)
                               (_%parse-qq43204%_ _%g4369543899%_)))
                            (_%__kont4740247403%_
                             (lambda (_%g4370243855%_ _%g4370343857%_)
                               (cons 'apply:
                                     (cons _%g4370343857%_
                                           (cons (_%parse143198%_
                                                  _%g4370243855%_)
                                                 '())))))
                            (_%__kont4740447405%_
                             (lambda (_%g4371343803%_)
                               (_%parse143198%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g4371343803%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd43557%_)
                                  (let ((_%$e43814%_
                                         (gx#stx-source _%hd43557%_)))
                                    (if _%$e43814%_
                                        _%$e43814%_
                                        (gx#stx-source _%stx43194%_))))))))
                            (_%__kont4740647407%_
                             (lambda (_%g4371743777%_) (cons 'any: '())))
                            (_%__kont4740847409%_
                             (lambda (_%g4371843761%_)
                               (cons 'var: (cons _%g4371843761%_ '()))))
                            (_%__kont4741047411%_
                             (lambda (_%g4371943743%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g4371943743%_) '()))))
                            (_%__kont4741247413%_
                             (lambda () (_%parse-error43205%_ _%hd43557%_))))
                        (let* ((_%g4358143754%_
                                (lambda ()
                                  (let ((_%g4371943743%_ _%__stx4736147362%_))
                                    (if (gx#stx-datum? _%g4371943743%_)
                                        (_%__kont4741047411%_ _%g4371943743%_)
                                        (_%__kont4741247413%_)))))
                               (_%g4358043770%_
                                (lambda ()
                                  (let ((_%g4371843761%_ _%__stx4736147362%_))
                                    (if (and (gx#identifier? _%g4371843761%_)
                                             (not (gx#ellipsis?
                                                   _%g4371843761%_)))
                                        (_%__kont4740847409%_ _%g4371843761%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4358143754%_))))))
                               (_%g4357943786%_
                                (lambda ()
                                  (let ((_%g4371743777%_ _%__stx4736147362%_))
                                    (if (gx#underscore? _%g4371743777%_)
                                        (_%__kont4740647407%_ _%g4371743777%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4358043770%_))))))
                               (_%__match4768847689%_
                                (lambda (_%e4371443793%_
                                         _%hd4371543797%_
                                         _%tl4371643800%_)
                                  (let ((_%g4371343803%_ _%hd4371543797%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g4371343803%_)
                                        (_%__kont4740447405%_ _%g4371343803%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4357943786%_))))))
                               (_%__match4762247623%_
                                (lambda (_%e4368243959%_
                                         _%hd4368343963%_
                                         _%tl4368443966%_
                                         _%e4368543969%_
                                         _%hd4368643973%_
                                         _%tl4368743976%_)
                                  (let ((_%g4368043979%_ _%hd4368643973%_)
                                        (_%g4368143981%_ _%hd4368343963%_))
                                    (if (and (gx#identifier? _%g4368143981%_)
                                             (or (gx#free-identifier=?
                                                  _%g4368143981%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g4368143981%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g4368143981%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont4739647397%_
                                         _%g4368043979%_
                                         _%g4368143981%_)
                                        (if (gx#identifier? _%hd4368343963%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g49576_|
                                                 _%hd4368343963%_)
                                                (_%__kont4739847399%_
                                                 _%hd4368643973%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g49577_|
                                                     _%hd4368343963%_)
                                                    (_%__kont4740047401%_
                                                     _%hd4368643973%_)
                                                    (_%__match4768847689%_
                                                     _%e4368243959%_
                                                     _%hd4368343963%_
                                                     _%tl4368443966%_)))
                                            (_%__match4768847689%_
                                             _%e4368243959%_
                                             _%hd4368343963%_
                                             _%tl4368443966%_))))))
                               (_%__match4760847609%_
                                (lambda (_%e4367744009%_
                                         _%hd4367844013%_
                                         _%tl4367944016%_)
                                  (let ((_%g4367544019%_ _%tl4367944016%_)
                                        (_%g4367644021%_ _%hd4367844013%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g4367644021%_))
                                        (_%__kont4739447395%_
                                         _%g4367544019%_
                                         _%g4367644021%_)
                                        (if (gx#stx-pair? _%tl4367944016%_)
                                            (let ((_%e4368543969%_
                                                   (gx#syntax-e
                                                    _%tl4367944016%_)))
                                              (let ((_%tl4368743976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4368543969%_)))
                                                    (_%hd4368643973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4368543969%_))))
                                                (if (gx#stx-null?
                                                     _%tl4368743976%_)
                                                    (_%__match4762247623%_
                                                     _%e4367744009%_
                                                     _%hd4367844013%_
                                                     _%tl4367944016%_
                                                     _%e4368543969%_
                                                     _%hd4368643973%_
                                                     _%tl4368743976%_)
                                                    (if (gx#identifier?
                                                         _%hd4367844013%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g49576_|
                                                             _%hd4367844013%_)
                                                            (_%__match4768847689%_
                                                             _%e4367744009%_
                                                             _%hd4367844013%_
                                                             _%tl4367944016%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g49577_|
                         _%hd4367844013%_)
                        (_%__match4768847689%_
                         _%e4367744009%_
                         _%hd4367844013%_
                         _%tl4367944016%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g49578_|
                             _%hd4367844013%_)
                            (if (gx#stx-pair? _%tl4368743976%_)
                                (let ((_%e4371043845%_
                                       (gx#syntax-e _%tl4368743976%_)))
                                  (let ((_%tl4371243852%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4371043845%_)))
                                        (_%hd4371143849%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4371043845%_))))
                                    (if (gx#stx-null? _%tl4371243852%_)
                                        (_%__kont4740247403%_
                                         _%hd4371143849%_
                                         _%hd4368643973%_)
                                        (_%__match4768847689%_
                                         _%e4367744009%_
                                         _%hd4367844013%_
                                         _%tl4367944016%_))))
                                (_%__match4768847689%_
                                 _%e4367744009%_
                                 _%hd4367844013%_
                                 _%tl4367944016%_))
                            (_%__match4768847689%_
                             _%e4367744009%_
                             _%hd4367844013%_
                             _%tl4367944016%_))))
                (_%__match4768847689%_
                 _%e4367744009%_
                 _%hd4367844013%_
                 _%tl4367944016%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match4768847689%_
                                             _%e4367744009%_
                                             _%hd4367844013%_
                                             _%tl4367944016%_))))))
                               (_%__match4760247603%_
                                (lambda (_%e4367244039%_
                                         _%hd4367344043%_
                                         _%tl4367444046%_)
                                  (let ((_%g4367044049%_ _%tl4367444046%_)
                                        (_%g4367144051%_ _%hd4367344043%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g4367144051%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont4739247393%_
                                         _%g4367044049%_
                                         _%g4367144051%_)
                                        (_%__match4760847609%_
                                         _%e4367244039%_
                                         _%hd4367344043%_
                                         _%tl4367444046%_)))))
                               (_%__match4759647597%_
                                (lambda (_%e4366044069%_
                                         _%__splice4739047391%_
                                         _%target4366144073%_
                                         _%tl4366344076%_)
                                  (letrec ((_%loop4366444079%_
                                            (lambda (_%hd4366244083%_
                                                     _%body4366844086%_)
                                              (if (gx#stx-pair?
                                                   _%hd4366244083%_)
                                                  (let ((_%e4366544088%_
                                                         (gx#syntax-e
                                                          _%hd4366244083%_)))
                                                    (let ((_%lp-tl4366744095%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4366544088%_)))
                                                          (_%lp-hd4366644092%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4366544088%_))))
                                                      (_%loop4366444079%_
                                                       _%lp-tl4366744095%_
                                                       (cons _%lp-hd4366644092%_
                                                             _%body4366844086%_))))
                                                  (let ((_%body4366944098%_
                                                         (reverse _%body4366844086%_)))
                                                    (_%__kont4738847389%_
                                                     _%body4366944098%_))))))
                                    (_%loop4366444079%_
                                     _%target4366144073%_
                                     '()))))
                               (_%g4357144123%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx4736147362%_)
                                      (let ((_%e4366044069%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx4736147362%_))))
                                        (if (gx#stx-pair/null? _%e4366044069%_)
                                            (let ((_%__splice4739047391%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e4366044069%_
                                                    '0)))
                                              (let ((_%tl4366344076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4739047391%_
                                                        '1)))
                                                    (_%target4366144073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4739047391%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4366344076%_)
                                                    (_%__match4759647597%_
                                                     _%e4366044069%_
                                                     _%__splice4739047391%_
                                                     _%target4366144073%_
                                                     _%tl4366344076%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4357943786%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4357943786%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4357943786%_)))))
                               (_%g4356744240%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx4736147362%_)
                                      (let ((_%e4364344226%_
                                             (unbox (gx#syntax-e
                                                     _%__stx4736147362%_))))
                                        (_%__kont4738047381%_ _%e4364344226%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4357144123%_)))))
                               (_%__match4745047451%_
                                (lambda (_%e4359844465%_
                                         _%hd4359944469%_
                                         _%tl4360044472%_)
                                  (let ((_%g4359744475%_ _%tl4360044472%_))
                                    (if (gx#stx-list? _%g4359744475%_)
                                        (_%__kont4736847369%_ _%g4359744475%_)
                                        (_%__match4760247603%_
                                         _%e4359844465%_
                                         _%hd4359944469%_
                                         _%tl4360044472%_)))))
                               (_%__match4744047441%_
                                (lambda (_%e4359444550%_
                                         _%hd4359544554%_
                                         _%tl4359644557%_)
                                  (let ((_%g4359344560%_ _%tl4359644557%_))
                                    (if (gx#stx-list? _%g4359344560%_)
                                        (_%__kont4736647367%_ _%g4359344560%_)
                                        (_%__match4760247603%_
                                         _%e4359444550%_
                                         _%hd4359544554%_
                                         _%tl4359644557%_))))))
                          (if (gx#stx-pair? _%__stx4736147362%_)
                              (let ((_%e4358744635%_
                                     (gx#syntax-e _%__stx4736147362%_)))
                                (let ((_%tl4358944642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4358744635%_)))
                                      (_%hd4358844639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4358744635%_))))
                                  (if (gx#identifier? _%hd4358844639%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g49579_|
                                           _%hd4358844639%_)
                                          (if (gx#stx-pair? _%tl4358944642%_)
                                              (let ((_%e4359044645%_
                                                     (gx#syntax-e
                                                      _%tl4358944642%_)))
                                                (let ((_%tl4359244652%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4359044645%_)))
                                                      (_%hd4359144649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4359044645%_))))
                                                  (_%__kont4736447365%_
                                                   _%tl4359244652%_
                                                   _%hd4359144649%_)))
                                              (_%__match4760247603%_
                                               _%e4358744635%_
                                               _%hd4358844639%_
                                               _%tl4358944642%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g49580_|
                                               _%hd4358844639%_)
                                              (_%__match4744047441%_
                                               _%e4358744635%_
                                               _%hd4358844639%_
                                               _%tl4358944642%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g49581_|
                                                   _%hd4358844639%_)
                                                  (_%__match4745047451%_
                                                   _%e4358744635%_
                                                   _%hd4358844639%_
                                                   _%tl4358944642%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g49582_|
                                                       _%hd4358844639%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4358944642%_)
                                                          (let ((_%e4360544435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4358944642%_)))
                    (let ((_%tl4360744442%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4360544435%_)))
                          (_%hd4360644439%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4360544435%_))))
                      (if (gx#stx-null? _%tl4360744442%_)
                          (_%__kont4737047371%_ _%hd4360644439%_)
                          (_%__match4760247603%_
                           _%e4358744635%_
                           _%hd4358844639%_
                           _%tl4358944642%_))))
                  (_%__match4760247603%_
                   _%e4358744635%_
                   _%hd4358844639%_
                   _%tl4358944642%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g49583_|
                   _%hd4358844639%_)
                  (if (gx#stx-pair? _%tl4358944642%_)
                      (let ((_%e4361344381%_ (gx#syntax-e _%tl4358944642%_)))
                        (let ((_%tl4361544388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4361344381%_)))
                              (_%hd4361444385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4361344381%_))))
                          (if (gx#stx-pair? _%tl4361544388%_)
                              (let ((_%e4361644391%_
                                     (gx#syntax-e _%tl4361544388%_)))
                                (let ((_%tl4361844398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4361644391%_)))
                                      (_%hd4361744395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4361644391%_))))
                                  (if (gx#stx-null? _%tl4361844398%_)
                                      (_%__kont4737247373%_
                                       _%hd4361744395%_
                                       _%hd4361444385%_)
                                      (_%__match4760247603%_
                                       _%e4358744635%_
                                       _%hd4358844639%_
                                       _%tl4358944642%_))))
                              (_%__match4760247603%_
                               _%e4358744635%_
                               _%hd4358844639%_
                               _%tl4358944642%_))))
                      (_%__match4760247603%_
                       _%e4358744635%_
                       _%hd4358844639%_
                       _%tl4358944642%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g49584_|
                       _%hd4358844639%_)
                      (if (gx#stx-pair? _%tl4358944642%_)
                          (let ((_%e4362544325%_
                                 (gx#syntax-e _%tl4358944642%_)))
                            (let ((_%tl4362744332%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4362544325%_)))
                                  (_%hd4362644329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4362544325%_))))
                              (if (gx#stx-pair? _%tl4362744332%_)
                                  (let ((_%e4362844335%_
                                         (gx#syntax-e _%tl4362744332%_)))
                                    (let ((_%tl4363044342%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4362844335%_)))
                                          (_%hd4362944339%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4362844335%_))))
                                      (_%__kont4737447375%_
                                       _%tl4363044342%_
                                       _%hd4362944339%_
                                       _%hd4362644329%_)))
                                  (_%__match4760247603%_
                                   _%e4358744635%_
                                   _%hd4358844639%_
                                   _%tl4358944642%_))))
                          (_%__match4760247603%_
                           _%e4358744635%_
                           _%hd4358844639%_
                           _%tl4358944642%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g49585_|
                           _%hd4358844639%_)
                          (_%__kont4737647377%_ _%tl4358944642%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g49586_|
                               _%hd4358844639%_)
                              (if (gx#stx-pair? _%tl4358944642%_)
                                  (let ((_%e4363944257%_
                                         (gx#syntax-e _%tl4358944642%_)))
                                    (let ((_%tl4364144264%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4363944257%_)))
                                          (_%hd4364044261%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4363944257%_))))
                                      (if (gx#stx-null? _%tl4364144264%_)
                                          (_%__kont4737847379%_
                                           _%hd4364044261%_)
                                          (_%__match4760247603%_
                                           _%e4358744635%_
                                           _%hd4358844639%_
                                           _%tl4358944642%_))))
                                  (_%__match4760247603%_
                                   _%e4358744635%_
                                   _%hd4358844639%_
                                   _%tl4358944642%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g49587_|
                                   _%hd4358844639%_)
                                  (if (gx#stx-pair? _%tl4358944642%_)
                                      (let ((_%e4364844196%_
                                             (gx#syntax-e _%tl4358944642%_)))
                                        (let ((_%tl4365044203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4364844196%_)))
                                              (_%hd4364944200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4364844196%_))))
                                          (if (gx#stx-null? _%tl4365044203%_)
                                              (_%__kont4738247383%_
                                               _%hd4364944200%_)
                                              (_%__kont4738447385%_
                                               _%tl4358944642%_))))
                                      (_%__kont4738447385%_ _%tl4358944642%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g49588_|
                                       _%hd4358844639%_)
                                      (_%__kont4738647387%_ _%tl4358944642%_)
                                      (_%__match4760247603%_
                                       _%e4358744635%_
                                       _%hd4358844639%_
                                       _%tl4358944642%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match4760247603%_
                                       _%e4358744635%_
                                       _%hd4358844639%_
                                       _%tl4358944642%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4356744240%_))))))))
                 (_%parse-list43200%_
                  (lambda (_%body43380%_)
                    (let* ((_%__stx4769147692%_ _%body43380%_)
                           (_%g4338643415%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4769147692%_))))
                      (let ((_%__kont4769447695%_
                             (lambda (_%g4338843539%_)
                               (_%parse143198%_ _%g4338843539%_)))
                            (_%__kont4769647697%_
                             (lambda (_%g4339643491%_
                                      _%g4339743493%_
                                      _%g4339843494%_)
                               (cons 'splice:
                                     (cons (_%parse143198%_ _%g4339843494%_)
                                           (cons (_%parse-list43200%_
                                                  _%g4339643491%_)
                                                 '())))))
                            (_%__kont4769847699%_
                             (lambda (_%g4340543449%_ _%g4340643451%_)
                               (cons 'cons:
                                     (cons (_%parse143198%_ _%g4340643451%_)
                                           (cons (_%parse-list43200%_
                                                  _%g4340543449%_)
                                                 '())))))
                            (_%__kont4770047701%_
                             (lambda ()
                               (if (gx#stx-null? _%body43380%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body43380%_)
                                       (_%parse-error43205%_ _%body43380%_)
                                       (_%parse143198%_ _%body43380%_))))))
                        (let* ((_%__match4774047741%_
                                (lambda (_%e4340743439%_
                                         _%hd4340843443%_
                                         _%tl4340943446%_)
                                  (let ((_%g4340543449%_ _%tl4340943446%_)
                                        (_%g4340643451%_ _%hd4340843443%_))
                                    (if (gx#ellipsis? _%g4340643451%_)
                                        (_%__kont4770047701%_)
                                        (_%__kont4769847699%_
                                         _%g4340543449%_
                                         _%g4340643451%_)))))
                               (_%__match4773447735%_
                                (lambda (_%e4339943471%_
                                         _%hd4340043475%_
                                         _%tl4340143478%_
                                         _%e4340243481%_
                                         _%hd4340343485%_
                                         _%tl4340443488%_)
                                  (let ((_%g4339643491%_ _%tl4340443488%_)
                                        (_%g4339743493%_ _%hd4340343485%_)
                                        (_%g4339843494%_ _%hd4340043475%_))
                                    (if (gx#ellipsis? _%g4339743493%_)
                                        (_%__kont4769647697%_
                                         _%g4339643491%_
                                         _%g4339743493%_
                                         _%g4339843494%_)
                                        (_%__match4774047741%_
                                         _%e4339943471%_
                                         _%hd4340043475%_
                                         _%tl4340143478%_))))))
                          (if (gx#stx-pair? _%__stx4769147692%_)
                              (let ((_%e4338943515%_
                                     (gx#syntax-e _%__stx4769147692%_)))
                                (let ((_%tl4339143522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4338943515%_)))
                                      (_%hd4339043519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4338943515%_))))
                                  (if (gx#stx-datum? _%hd4339043519%_)
                                      (let ((_%e4339243525%_
                                             (gx#stx-e _%hd4339043519%_)))
                                        (if (equal? _%e4339243525%_ '::)
                                            (if (gx#stx-pair? _%tl4339143522%_)
                                                (let ((_%e4339343529%_
                                                       (gx#syntax-e
                                                        _%tl4339143522%_)))
                                                  (let ((_%tl4339543536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4339343529%_)))
                                                        (_%hd4339443533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4339343529%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4339543536%_)
                                                        (_%__kont4769447695%_
                                                         _%hd4339443533%_)
                                                        (_%__match4773447735%_
                                                         _%e4338943515%_
                                                         _%hd4339043519%_
                                                         _%tl4339143522%_
                                                         _%e4339343529%_
                                                         _%hd4339443533%_
                                                         _%tl4339543536%_))))
                                                (_%__match4774047741%_
                                                 _%e4338943515%_
                                                 _%hd4339043519%_
                                                 _%tl4339143522%_))
                                            (if (gx#stx-pair? _%tl4339143522%_)
                                                (let ((_%e4340243481%_
                                                       (gx#syntax-e
                                                        _%tl4339143522%_)))
                                                  (let ((_%tl4340443488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4340243481%_)))
                                                        (_%hd4340343485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4340243481%_))))
                                                    (_%__match4773447735%_
                                                     _%e4338943515%_
                                                     _%hd4339043519%_
                                                     _%tl4339143522%_
                                                     _%e4340243481%_
                                                     _%hd4340343485%_
                                                     _%tl4340443488%_)))
                                                (_%__match4774047741%_
                                                 _%e4338943515%_
                                                 _%hd4339043519%_
                                                 _%tl4339143522%_))))
                                      (if (gx#stx-pair? _%tl4339143522%_)
                                          (let ((_%e4340243481%_
                                                 (gx#syntax-e
                                                  _%tl4339143522%_)))
                                            (let ((_%tl4340443488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4340243481%_)))
                                                  (_%hd4340343485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4340243481%_))))
                                              (_%__match4773447735%_
                                               _%e4338943515%_
                                               _%hd4339043519%_
                                               _%tl4339143522%_
                                               _%e4340243481%_
                                               _%hd4340343485%_
                                               _%tl4340443488%_)))
                                          (_%__match4774047741%_
                                           _%e4338943515%_
                                           _%hd4339043519%_
                                           _%tl4339143522%_)))))
                              (_%__kont4770047701%_)))))))
                 (_%parse-vector43201%_
                  (lambda (_%body43377%_)
                    (if (_%simple-vector?43202%_ _%body43377%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse143198%_ _%body43377%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list43200%_ _%body43377%_)
                                    '())))))
                 (_%simple-vector?43202%_
                  (lambda (_%body43314%_)
                    (let* ((_%__stx4774347744%_ _%body43314%_)
                           (_%g4331843330%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4774347744%_))))
                      (let ((_%__kont4774647747%_
                             (lambda (_%g4332043358%_ _%g4332143360%_)
                               (if (gx#ellipsis? _%g4332143360%_)
                                   '#f
                                   (_%simple-vector?43202%_ _%g4332043358%_))))
                            (_%__kont4774847749%_
                             (lambda () (gx#stx-null? _%body43314%_))))
                        (if (gx#stx-pair? _%__stx4774347744%_)
                            (let ((_%e4332243348%_
                                   (gx#syntax-e _%__stx4774347744%_)))
                              (let ((_%tl4332443355%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4332243348%_)))
                                    (_%hd4332343352%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4332243348%_))))
                                (_%__kont4774647747%_
                                 _%tl4332443355%_
                                 _%hd4332343352%_)))
                            (_%__kont4774847749%_))))))
                 (_%parse-class-body43203%_
                  (lambda (_%body43223%_)
                    (let _%recur43226%_ ((_%rest43229%_ _%body43223%_))
                      (let* ((_%__stx4775947760%_ _%rest43229%_)
                             (_%g4323343249%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4775947760%_))))
                        (let ((_%__kont4776247763%_
                               (lambda (_%g4323543287%_
                                        _%g4323643289%_
                                        _%g4323743290%_)
                                 (cons _%g4323743290%_
                                       (cons (_%parse143198%_ _%g4323643289%_)
                                             (_%recur43226%_
                                              _%g4323543287%_)))))
                              (_%__kont4776447765%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest43229%_)
                                     '()
                                     (_%parse-error43205%_ _%rest43229%_)))))
                          (let ((_%__match4777847779%_
                                 (lambda (_%e4323843267%_
                                          _%hd4323943271%_
                                          _%tl4324043274%_
                                          _%e4324143277%_
                                          _%hd4324243281%_
                                          _%tl4324343284%_)
                                   (let ((_%g4323543287%_ _%tl4324343284%_)
                                         (_%g4323643289%_ _%hd4324243281%_)
                                         (_%g4323743290%_ _%hd4323943271%_))
                                     (if (gx#stx-keyword? _%g4323743290%_)
                                         (_%__kont4776247763%_
                                          _%g4323543287%_
                                          _%g4323643289%_
                                          _%g4323743290%_)
                                         (_%__kont4776447765%_))))))
                            (if (gx#stx-pair? _%__stx4775947760%_)
                                (let ((_%e4323843267%_
                                       (gx#syntax-e _%__stx4775947760%_)))
                                  (let ((_%tl4324043274%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4323843267%_)))
                                        (_%hd4323943271%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4323843267%_))))
                                    (if (gx#stx-pair? _%tl4324043274%_)
                                        (let ((_%e4324143277%_
                                               (gx#syntax-e _%tl4324043274%_)))
                                          (let ((_%tl4324343284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4324143277%_)))
                                                (_%hd4324243281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4324143277%_))))
                                            (_%__match4777847779%_
                                             _%e4323843267%_
                                             _%hd4323943271%_
                                             _%tl4324043274%_
                                             _%e4324143277%_
                                             _%hd4324243281%_
                                             _%tl4324343284%_)))
                                        (_%__kont4776447765%_))))
                                (_%__kont4776447765%_))))))))
                 (_%parse-qq43204%_
                  (lambda (_%hd43210%_)
                    (let ((_%g4321243219%_
                           (lambda (_%g4321343215%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4321343215%_))))
                      (_%g4321243219%_ _%hd43210%_))))
                 (_%parse-error43205%_
                  (lambda (_%hd43207%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx43196%_
                               (cons _%match-stx43196%_
                                     (cons _%stx43194%_
                                           (cons _%hd43207%_ '())))
                               (cons _%stx43194%_ (cons _%hd43207%_ '())))))))
          (_%parse143198%_ _%stx43194%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx44882%_)
        (let ((_%match-stx44885%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx44882%_
           _%match-stx44885%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g49589_
        (let ((_g49590_ (let () (declare (not safe)) (##length _g49589_))))
          (cond ((let () (declare (not safe)) (##fx= _g49590_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g49589_))
                ((let () (declare (not safe)) (##fx= _g49590_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g49589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g49589_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx43179%_)
        (let ((__tmp49591
               (lambda (_%E43182%_)
                 (with-exception-handler
                  (let ((_%E!43185%_ (current-exception-handler)))
                    (lambda (_%e43188%_)
                      (if (syntax-error? _%e43188%_)
                          (_%E43182%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!43185%_ _%e43188%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx43179%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp49591))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree41914%_)
        (letrec ((_%loop41917%_
                  (lambda (_%ptree42204%_ _%vars42206%_ _%K42207%_)
                    (let* ((_%__stx4787747878%_ _%ptree42204%_)
                           (_%g4222042330%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4787747878%_))))
                      (let ((_%__kont4788047881%_
                             (lambda (_%g4222242960%_)
                               (let* ((_%__stx4779747798%_ _%g4222242960%_)
                                      (_%g4297743011%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4779747798%_))))
                                 (let ((_%__kont4780047801%_
                                        (lambda (_%g4297943160%_)
                                          (_%loop41917%_
                                           _%g4297943160%_
                                           _%vars42206%_
                                           _%K42207%_)))
                                       (_%__kont4780247803%_
                                        (lambda (_%g4298343129%_)
                                          (_%loop41917%_
                                           _%g4298343129%_
                                           _%vars42206%_
                                           _%K42207%_)))
                                       (_%__kont4780447805%_
                                        (lambda (_%g4299143077%_)
                                          (_%loop41917%_
                                           _%g4299143077%_
                                           _%vars42206%_
                                           _%K42207%_)))
                                       (_%__kont4780647807%_
                                        (lambda ()
                                          (_%K42207%_ _%vars42206%_))))
                                   (if (gx#stx-pair? _%__stx4779747798%_)
                                       (let ((_%e4298043150%_
                                              (gx#syntax-e
                                               _%__stx4779747798%_)))
                                         (let ((_%tl4298243157%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4298043150%_)))
                                               (_%hd4298143154%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4298043150%_))))
                                           (if (gx#stx-null? _%tl4298243157%_)
                                               (_%__kont4780047801%_
                                                _%hd4298143154%_)
                                               (if (gx#stx-datum?
                                                    _%hd4298143154%_)
                                                   (let ((_%e4298743115%_
                                                          (gx#stx-e
                                                           _%hd4298143154%_)))
                                                     (if (equal? _%e4298743115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl4298243157%_)
                     (let ((_%e4298843119%_ (gx#syntax-e _%tl4298243157%_)))
                       (let ((_%tl4299043126%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4298843119%_)))
                             (_%hd4298943123%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4298843119%_))))
                         (if (gx#stx-null? _%tl4299043126%_)
                             (_%__kont4780247803%_ _%hd4298943123%_)
                             (_%__kont4780647807%_))))
                     (_%__kont4780647807%_))
                 (if (equal? _%e4298743115%_ '::)
                     (if (gx#stx-pair? _%tl4298243157%_)
                         (let ((_%e4299643043%_
                                (gx#syntax-e _%tl4298243157%_)))
                           (let ((_%tl4299843050%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4299643043%_)))
                                 (_%hd4299743047%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4299643043%_))))
                             (if (gx#stx-pair? _%tl4299843050%_)
                                 (let ((_%e4299943053%_
                                        (gx#syntax-e _%tl4299843050%_)))
                                   (let ((_%tl4300143060%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4299943053%_)))
                                         (_%hd4300043057%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4299943053%_))))
                                     (if (gx#stx-datum? _%hd4300043057%_)
                                         (let ((_%e4300243063%_
                                                (gx#stx-e _%hd4300043057%_)))
                                           (if (equal? _%e4300243063%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl4300143060%_)
                                                   (let ((_%e4300343067%_
                                                          (gx#syntax-e
                                                           _%tl4300143060%_)))
                                                     (let ((_%tl4300543074%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4300343067%_)))
                                                           (_%hd4300443071%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4300343067%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4300543074%_)
                                                           (_%__kont4780447805%_
                                                            _%hd4300443071%_)
                                                           (_%__kont4780647807%_))))
                                                   (_%__kont4780647807%_))
                                               (_%__kont4780647807%_)))
                                         (_%__kont4780647807%_))))
                                 (_%__kont4780647807%_))))
                         (_%__kont4780647807%_))
                     (_%__kont4780647807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont4780647807%_)))))
                                       (_%__kont4780647807%_))))))
                            (_%__kont4788247883%_
                             (lambda (_%g4223042847%_ _%g4223142849%_)
                               (let* ((_%__stx4778147782%_ _%g4223042847%_)
                                      (_%g4286542877%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4778147782%_))))
                                 (let ((_%__kont4778447785%_
                                        (lambda (_%g4286742905%_
                                                 _%g4286842907%_)
                                          (_%loop41917%_
                                           _%g4286842907%_
                                           _%vars42206%_
                                           (lambda (_%g4291942921%_)
                                             (_%loop41917%_
                                              (cons _%g4223142849%_
                                                    _%g4286742905%_)
                                              _%g4291942921%_
                                              _%K42207%_)))))
                                       (_%__kont4778647787%_
                                        (lambda ()
                                          (_%K42207%_ _%vars42206%_))))
                                   (if (gx#stx-pair? _%__stx4778147782%_)
                                       (let ((_%e4286942895%_
                                              (gx#syntax-e
                                               _%__stx4778147782%_)))
                                         (let ((_%tl4287142902%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4286942895%_)))
                                               (_%hd4287042899%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4286942895%_))))
                                           (_%__kont4778447785%_
                                            _%tl4287142902%_
                                            _%hd4287042899%_)))
                                       (_%__kont4778647787%_))))))
                            (_%__kont4788447885%_
                             (lambda (_%g4223542816%_)
                               (_%loop41917%_
                                _%g4223542816%_
                                _%vars42206%_
                                _%K42207%_)))
                            (_%__kont4788647887%_
                             (lambda (_%g4224342762%_ _%g4224442764%_)
                               (_%loop41917%_
                                _%g4224442764%_
                                _%vars42206%_
                                (lambda (_%g4277942781%_)
                                  (_%loop41917%_
                                   _%g4224342762%_
                                   _%g4277942781%_
                                   _%K42207%_)))))
                            (_%__kont4788847889%_
                             (lambda (_%g4225542698%_ _%g4225642700%_)
                               (_%loop41917%_
                                _%g4225642700%_
                                _%vars42206%_
                                (lambda (_%g4271542717%_)
                                  (_%loop41917%_
                                   _%g4225542698%_
                                   _%g4271542717%_
                                   _%K42207%_)))))
                            (_%__kont4789047891%_
                             (lambda (_%g4226742643%_)
                               (_%loop41917%_
                                _%g4226742643%_
                                _%vars42206%_
                                _%K42207%_)))
                            (_%__kont4789247893%_
                             (lambda (_%g4227542593%_ _%g4227642595%_)
                               (_%loop-vector41919%_
                                _%g4227542593%_
                                _%vars42206%_
                                _%K42207%_)))
                            (_%__kont4789447895%_
                             (lambda (_%g4228342550%_)
                               (_%loop-vector41919%_
                                _%g4228342550%_
                                _%vars42206%_
                                _%K42207%_)))
                            (_%__kont4789647897%_
                             (lambda (_%g4229442493%_)
                               (_%loop-class-list41921%_
                                _%g4229442493%_
                                _%vars42206%_
                                _%K42207%_)))
                            (_%__kont4789847899%_
                             (lambda (_%g4230542434%_ _%g4230642436%_)
                               (_%loop41917%_
                                _%g4230542434%_
                                _%vars42206%_
                                _%K42207%_)))
                            (_%__kont4790047901%_
                             (lambda (_%g4231742372%_)
                               (if (find (lambda (_%g4238742389%_)
                                           (gx#bound-identifier=?
                                            _%g4238742389%_
                                            _%g4231742372%_))
                                         _%vars42206%_)
                                   (_%K42207%_ _%vars42206%_)
                                   (_%K42207%_
                                    (cons _%g4231742372%_ _%vars42206%_)))))
                            (_%__kont4790247903%_
                             (lambda () (_%K42207%_ _%vars42206%_))))
                        (let* ((_%__match4803448035%_
                                (lambda (_%e4227742573%_
                                         _%hd4227842577%_
                                         _%tl4227942580%_
                                         _%e4228042583%_
                                         _%hd4228142587%_
                                         _%tl4228242590%_)
                                  (let ((_%g4227542593%_ _%hd4228142587%_)
                                        (_%g4227642595%_ _%hd4227842577%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g4227642595%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g4227642595%_))
                                        (_%__kont4789247893%_
                                         _%g4227542593%_
                                         _%g4227642595%_)
                                        (if (gx#stx-datum? _%hd4227842577%_)
                                            (let ((_%e4228742526%_
                                                   (gx#stx-e
                                                    _%hd4227842577%_)))
                                              (if (equal? _%e4228742526%_
                                                          'struct:)
                                                  (_%__kont4790247903%_)
                                                  (if (equal? _%e4228742526%_
                                                              'class:)
                                                      (_%__kont4790247903%_)
                                                      (if (equal? _%e4228742526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont4790247903%_)
                  (if (equal? _%e4228742526%_ 'var:)
                      (_%__kont4790047901%_ _%hd4228142587%_)
                      (_%__kont4790247903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4790247903%_))))))
                               (_%__match4792847929%_
                                (lambda (_%e4223242837%_
                                         _%hd4223342841%_
                                         _%tl4223442844%_)
                                  (let ((_%g4223042847%_ _%tl4223442844%_)
                                        (_%g4223142849%_ _%hd4223342841%_))
                                    (if (or (gx#stx-eq? 'and: _%g4223142849%_)
                                            (gx#stx-eq? 'or: _%g4223142849%_))
                                        (_%__kont4788247883%_
                                         _%g4223042847%_
                                         _%g4223142849%_)
                                        (if (gx#stx-datum? _%hd4223342841%_)
                                            (let ((_%e4223942802%_
                                                   (gx#stx-e
                                                    _%hd4223342841%_)))
                                              (if (equal? _%e4223942802%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl4223442844%_)
                                                      (let ((_%e4224042806%_
                                                             (gx#syntax-e
                                                              _%tl4223442844%_)))
                                                        (let ((_%tl4224242813%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4224042806%_)))
                      (_%hd4224142810%_
                       (let () (declare (not safe)) (##car _%e4224042806%_))))
                  (if (gx#stx-null? _%tl4224242813%_)
                      (_%__kont4788447885%_ _%hd4224142810%_)
                      (_%__kont4790247903%_))))
              (_%__kont4790247903%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e4223942802%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl4223442844%_)
                                                          (let ((_%e4224942742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4223442844%_)))
                    (let ((_%tl4225142749%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4224942742%_)))
                          (_%hd4225042746%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4224942742%_))))
                      (if (gx#stx-pair? _%tl4225142749%_)
                          (let ((_%e4225242752%_
                                 (gx#syntax-e _%tl4225142749%_)))
                            (let ((_%tl4225442759%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4225242752%_)))
                                  (_%hd4225342756%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4225242752%_))))
                              (if (gx#stx-null? _%tl4225442759%_)
                                  (_%__kont4788647887%_
                                   _%hd4225342756%_
                                   _%hd4225042746%_)
                                  (_%__kont4790247903%_))))
                          (if (gx#stx-null? _%tl4225142749%_)
                              (_%__match4803448035%_
                               _%e4223242837%_
                               _%hd4223342841%_
                               _%tl4223442844%_
                               _%e4224942742%_
                               _%hd4225042746%_
                               _%tl4225142749%_)
                              (_%__kont4790247903%_)))))
                  (_%__kont4790247903%_))
              (if (equal? _%e4223942802%_ 'splice:)
                  (if (gx#stx-pair? _%tl4223442844%_)
                      (let ((_%e4226142678%_ (gx#syntax-e _%tl4223442844%_)))
                        (let ((_%tl4226342685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4226142678%_)))
                              (_%hd4226242682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4226142678%_))))
                          (if (gx#stx-pair? _%tl4226342685%_)
                              (let ((_%e4226442688%_
                                     (gx#syntax-e _%tl4226342685%_)))
                                (let ((_%tl4226642695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4226442688%_)))
                                      (_%hd4226542692%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4226442688%_))))
                                  (if (gx#stx-null? _%tl4226642695%_)
                                      (_%__kont4788847889%_
                                       _%hd4226542692%_
                                       _%hd4226242682%_)
                                      (_%__kont4790247903%_))))
                              (if (gx#stx-null? _%tl4226342685%_)
                                  (_%__match4803448035%_
                                   _%e4223242837%_
                                   _%hd4223342841%_
                                   _%tl4223442844%_
                                   _%e4226142678%_
                                   _%hd4226242682%_
                                   _%tl4226342685%_)
                                  (_%__kont4790247903%_)))))
                      (_%__kont4790247903%_))
                  (if (equal? _%e4223942802%_ 'box:)
                      (if (gx#stx-pair? _%tl4223442844%_)
                          (let ((_%e4227242633%_
                                 (gx#syntax-e _%tl4223442844%_)))
                            (let ((_%tl4227442640%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4227242633%_)))
                                  (_%hd4227342637%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4227242633%_))))
                              (if (gx#stx-null? _%tl4227442640%_)
                                  (_%__kont4789047891%_ _%hd4227342637%_)
                                  (_%__kont4790247903%_))))
                          (_%__kont4790247903%_))
                      (if (gx#stx-pair? _%tl4223442844%_)
                          (let ((_%e4228042583%_
                                 (gx#syntax-e _%tl4223442844%_)))
                            (let ((_%tl4228242590%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4228042583%_)))
                                  (_%hd4228142587%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4228042583%_))))
                              (if (gx#stx-null? _%tl4228242590%_)
                                  (_%__match4803448035%_
                                   _%e4223242837%_
                                   _%hd4223342841%_
                                   _%tl4223442844%_
                                   _%e4228042583%_
                                   _%hd4228142587%_
                                   _%tl4228242590%_)
                                  (if (equal? _%e4223942802%_ 'struct:)
                                      (if (gx#stx-pair? _%tl4228242590%_)
                                          (let ((_%e4229142540%_
                                                 (gx#syntax-e
                                                  _%tl4228242590%_)))
                                            (let ((_%tl4229342547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4229142540%_)))
                                                  (_%hd4229242544%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4229142540%_))))
                                              (if (gx#stx-null?
                                                   _%tl4229342547%_)
                                                  (_%__kont4789447895%_
                                                   _%hd4229242544%_)
                                                  (_%__kont4790247903%_))))
                                          (_%__kont4790247903%_))
                                      (if (equal? _%e4223942802%_ 'class:)
                                          (if (gx#stx-pair? _%tl4228242590%_)
                                              (let ((_%e4230242483%_
                                                     (gx#syntax-e
                                                      _%tl4228242590%_)))
                                                (let ((_%tl4230442490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4230242483%_)))
                                                      (_%hd4230342487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4230242483%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4230442490%_)
                                                      (_%__kont4789647897%_
                                                       _%hd4230342487%_)
                                                      (_%__kont4790247903%_))))
                                              (_%__kont4790247903%_))
                                          (if (equal? _%e4223942802%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl4228242590%_)
                                                  (let ((_%e4231442424%_
                                                         (gx#syntax-e
                                                          _%tl4228242590%_)))
                                                    (let ((_%tl4231642431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4231442424%_)))
                                                          (_%hd4231542428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4231442424%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4231642431%_)
                                                          (_%__kont4789847899%_
                                                           _%hd4231542428%_
                                                           _%hd4228142587%_)
                                                          (_%__kont4790247903%_))))
                                                  (_%__kont4790247903%_))
                                              (_%__kont4790247903%_)))))))
                          (_%__kont4790247903%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl4223442844%_)
                                                (let ((_%e4228042583%_
                                                       (gx#syntax-e
                                                        _%tl4223442844%_)))
                                                  (let ((_%tl4228242590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4228042583%_)))
                                                        (_%hd4228142587%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4228042583%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4228242590%_)
                                                        (_%__match4803448035%_
                                                         _%e4223242837%_
                                                         _%hd4223342841%_
                                                         _%tl4223442844%_
                                                         _%e4228042583%_
                                                         _%hd4228142587%_
                                                         _%tl4228242590%_)
                                                        (_%__kont4790247903%_))))
                                                (_%__kont4790247903%_))))))))
                          (if (gx#stx-pair? _%__stx4787747878%_)
                              (let ((_%e4222342936%_
                                     (gx#syntax-e _%__stx4787747878%_)))
                                (let ((_%tl4222542943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4222342936%_)))
                                      (_%hd4222442940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4222342936%_))))
                                  (if (gx#stx-datum? _%hd4222442940%_)
                                      (let ((_%e4222642946%_
                                             (gx#stx-e _%hd4222442940%_)))
                                        (if (equal? _%e4222642946%_ '?:)
                                            (if (gx#stx-pair? _%tl4222542943%_)
                                                (let ((_%e4222742950%_
                                                       (gx#syntax-e
                                                        _%tl4222542943%_)))
                                                  (let ((_%tl4222942957%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4222742950%_)))
                                                        (_%hd4222842954%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4222742950%_))))
                                                    (_%__kont4788047881%_
                                                     _%tl4222942957%_)))
                                                (_%__match4792847929%_
                                                 _%e4222342936%_
                                                 _%hd4222442940%_
                                                 _%tl4222542943%_))
                                            (_%__match4792847929%_
                                             _%e4222342936%_
                                             _%hd4222442940%_
                                             _%tl4222542943%_)))
                                      (_%__match4792847929%_
                                       _%e4222342936%_
                                       _%hd4222442940%_
                                       _%tl4222542943%_))))
                              (_%__kont4790247903%_)))))))
                 (_%loop-vector41919%_
                  (lambda (_%body42080%_ _%vars42082%_ _%K42083%_)
                    (let* ((_%__stx4813548136%_ _%body42080%_)
                           (_%g4208642109%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4813548136%_))))
                      (let ((_%__kont4813848139%_
                             (lambda (_%g4208842186%_)
                               (_%loop-list41920%_
                                _%g4208842186%_
                                _%vars42082%_
                                _%K42083%_)))
                            (_%__kont4814048141%_
                             (lambda (_%g4209642140%_)
                               (_%loop41917%_
                                _%g4209642140%_
                                _%vars42082%_
                                _%K42083%_))))
                        (if (gx#stx-pair? _%__stx4813548136%_)
                            (let ((_%e4208942162%_
                                   (gx#syntax-e _%__stx4813548136%_)))
                              (let ((_%tl4209142169%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4208942162%_)))
                                    (_%hd4209042166%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4208942162%_))))
                                (if (gx#stx-datum? _%hd4209042166%_)
                                    (let ((_%e4209242172%_
                                           (gx#stx-e _%hd4209042166%_)))
                                      (if (equal? _%e4209242172%_ 'simple:)
                                          (if (gx#stx-pair? _%tl4209142169%_)
                                              (let ((_%e4209342176%_
                                                     (gx#syntax-e
                                                      _%tl4209142169%_)))
                                                (let ((_%tl4209542183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4209342176%_)))
                                                      (_%hd4209442180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4209342176%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4209542183%_)
                                                      (_%__kont4813848139%_
                                                       _%hd4209442180%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4208642109%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4208642109%_)))
                                          (if (equal? _%e4209242172%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl4209142169%_)
                                                  (let ((_%e4210142130%_
                                                         (gx#syntax-e
                                                          _%tl4209142169%_)))
                                                    (let ((_%tl4210342137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4210142130%_)))
                                                          (_%hd4210242134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4210142130%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4210342137%_)
                                                          (_%__kont4814048141%_
                                                           _%hd4210242134%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4208642109%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4208642109%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4208642109%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4208642109%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g4208642109%_)))))))
                 (_%loop-list41920%_
                  (lambda (_%rest42010%_ _%vars42012%_ _%K42013%_)
                    (let* ((_%__stx4818548186%_ _%rest42010%_)
                           (_%g4201642028%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4818548186%_))))
                      (let ((_%__kont4818848189%_
                             (lambda (_%g4201842056%_ _%g4201942058%_)
                               (_%loop41917%_
                                _%g4201942058%_
                                _%vars42012%_
                                (lambda (_%g4207042072%_)
                                  (_%loop-list41920%_
                                   _%g4201842056%_
                                   _%g4207042072%_
                                   _%K42013%_)))))
                            (_%__kont4819048191%_
                             (lambda () (_%K42013%_ _%vars42012%_))))
                        (if (gx#stx-pair? _%__stx4818548186%_)
                            (let ((_%e4202042046%_
                                   (gx#syntax-e _%__stx4818548186%_)))
                              (let ((_%tl4202242053%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4202042046%_)))
                                    (_%hd4202142050%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4202042046%_))))
                                (_%__kont4818848189%_
                                 _%tl4202242053%_
                                 _%hd4202142050%_)))
                            (_%__kont4819048191%_))))))
                 (_%loop-class-list41921%_
                  (lambda (_%rest41923%_ _%vars41925%_ _%K41926%_)
                    (let* ((_%__stx4820148202%_ _%rest41923%_)
                           (_%g4192941944%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4820148202%_))))
                      (let ((_%__kont4820448205%_
                             (lambda (_%g4193141982%_ _%g4193241984%_)
                               (_%loop41917%_
                                _%g4193241984%_
                                _%vars41925%_
                                (lambda (_%g4200042002%_)
                                  (_%loop-class-list41921%_
                                   _%g4193141982%_
                                   _%g4200042002%_
                                   _%K41926%_)))))
                            (_%__kont4820648207%_
                             (lambda () (_%K41926%_ _%vars41925%_))))
                        (if (gx#stx-pair? _%__stx4820148202%_)
                            (let ((_%e4193341962%_
                                   (gx#syntax-e _%__stx4820148202%_)))
                              (let ((_%tl4193541969%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4193341962%_)))
                                    (_%hd4193441966%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4193341962%_))))
                                (if (gx#stx-pair? _%tl4193541969%_)
                                    (let ((_%e4193641972%_
                                           (gx#syntax-e _%tl4193541969%_)))
                                      (let ((_%tl4193841979%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4193641972%_)))
                                            (_%hd4193741976%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4193641972%_))))
                                        (_%__kont4820448205%_
                                         _%tl4193841979%_
                                         _%hd4193741976%_)))
                                    (_%__kont4820648207%_))))
                            (_%__kont4820648207%_)))))))
          (_%loop41917%_ _%ptree41914%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx38846%_ _%tgt38848%_ _%ptree38849%_ _%K38850%_ _%E38851%_)
        (letrec ((_%generate138853%_
                  (lambda (_%tgt40113%_ _%ptree40115%_ _%K40116%_ _%E40117%_)
                    (let* ((_%g4011940127%_
                            (lambda (_%g4012040123%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4012040123%_)))
                           (_%g4011841910%_
                            (lambda (_%g4012040131%_)
                              ((lambda (_%g4012140134%_)
                                 (let* ((_%__stx4843748438%_ _%ptree40115%_)
                                        (_%g4016140303%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx4843748438%_))))
                                   (let ((_%__kont4844048441%_
                                          (lambda (_%g4016341625%_
                                                   _%g4016441627%_)
                                            (let* ((_%__stx4835548356%_
                                                    _%g4016341625%_)
                                                   (_%g4164441679%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx4835548356%_))))
                                              (let ((_%__kont4835848359%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g4016441627%_
                                       (cons _%g4012140134%_ '())))
                           (cons _%K40116%_ (cons _%E40117%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont4836048361%_
                                                     (lambda (_%g4164641880%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g4016441627%_
                                       (cons _%g4012140134%_ '())))
                           (cons (_%generate138853%_
                                  _%tgt40113%_
                                  _%g4164641880%_
                                  _%K40116%_
                                  _%E40117%_)
                                 (cons _%E40117%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont4836248363%_
                                                     (lambda (_%g4165041818%_)
                                                       (let* ((_%g4183241840%_
                                                               (lambda (_%g4183341836%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g4183341836%_)))
                      (_%g4183141859%_
                       (lambda (_%g4183341844%_)
                         ((lambda (_%g4183441847%_)
                            (cons 'let
                                  (cons (cons (cons _%g4183441847%_
                                                    (cons (cons _%g4016441627%_
                                                                (cons _%g4012140134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g4183441847%_
                                                          (cons (_%generate138853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4183441847%_
                         _%g4165041818%_
                         _%K40116%_
                         _%E40117%_)
                        (cons _%E40117%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g4183341844%_))))
                 (_%g4183141859%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont4836448365%_
                                                     (lambda (_%g4165841734%_
                                                              _%g4165941736%_)
                                                       (let* ((_%g4175641764%_
                                                               (lambda (_%g4175741760%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g4175741760%_)))
                      (_%g4175541783%_
                       (lambda (_%g4175741768%_)
                         ((lambda (_%g4175841771%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g4016441627%_
                                                    (cons _%g4012140134%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g4175841771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g4165941736%_
                                          (cons _%g4012140134%_ '()))
                                    '()))
                        '())
                  (cons (_%generate138853%_
                         _%g4175841771%_
                         _%g4165841734%_
                         _%K40116%_
                         _%E40117%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E40117%_ '())))))
                          _%g4175741768%_))))
                 (_%g4175541783%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g4164141891%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx4835548356%_)
                                                             (let ((_%e4164741870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx4835548356%_)))
                       (let ((_%tl4164941877%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4164741870%_)))
                             (_%hd4164841874%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4164741870%_))))
                         (if (gx#stx-null? _%tl4164941877%_)
                             (_%__kont4836048361%_ _%hd4164841874%_)
                             (if (gx#stx-datum? _%hd4164841874%_)
                                 (let ((_%e4165441804%_
                                        (gx#stx-e _%hd4164841874%_)))
                                   (if (equal? _%e4165441804%_ '=>:)
                                       (if (gx#stx-pair? _%tl4164941877%_)
                                           (let ((_%e4165541808%_
                                                  (gx#syntax-e
                                                   _%tl4164941877%_)))
                                             (let ((_%tl4165741815%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4165541808%_)))
                                                   (_%hd4165641812%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4165541808%_))))
                                               (if (gx#stx-null?
                                                    _%tl4165741815%_)
                                                   (_%__kont4836248363%_
                                                    _%hd4165641812%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4164441679%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4164441679%_)))
                                       (if (equal? _%e4165441804%_ '::)
                                           (if (gx#stx-pair? _%tl4164941877%_)
                                               (let ((_%e4166441700%_
                                                      (gx#syntax-e
                                                       _%tl4164941877%_)))
                                                 (let ((_%tl4166641707%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4166441700%_)))
                                                       (_%hd4166541704%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4166441700%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl4166641707%_)
                                                       (let ((_%e4166741710%_
                                                              (gx#syntax-e
                                                               _%tl4166641707%_)))
                                                         (let ((_%tl4166941717%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4166741710%_)))
                       (_%hd4166841714%_
                        (let () (declare (not safe)) (##car _%e4166741710%_))))
                   (if (gx#stx-datum? _%hd4166841714%_)
                       (let ((_%e4167041720%_ (gx#stx-e _%hd4166841714%_)))
                         (if (equal? _%e4167041720%_ '=>:)
                             (if (gx#stx-pair? _%tl4166941717%_)
                                 (let ((_%e4167141724%_
                                        (gx#syntax-e _%tl4166941717%_)))
                                   (let ((_%tl4167341731%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4167141724%_)))
                                         (_%hd4167241728%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4167141724%_))))
                                     (if (gx#stx-null? _%tl4167341731%_)
                                         (_%__kont4836448365%_
                                          _%hd4167241728%_
                                          _%hd4166541704%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4164441679%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4164441679%_)))
                             (let () (declare (not safe)) (_%g4164441679%_))))
                       (let () (declare (not safe)) (_%g4164441679%_)))))
               (let () (declare (not safe)) (_%g4164441679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4164441679%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4164441679%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4164441679%_))))))
                     (let () (declare (not safe)) (_%g4164441679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx4835548356%_)
                                                      (_%__kont4835848359%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4164141891%_))))))))
                                         (_%__kont4844248443%_
                                          (lambda (_%g4017241522%_)
                                            (let* ((_%__stx4833948340%_
                                                    _%g4017241522%_)
                                                   (_%g4153541547%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx4833948340%_))))
                                              (let ((_%__kont4834248343%_
                                                     (lambda (_%g4153741575%_
                                                              _%g4153841577%_)
                                                       (_%generate138853%_
                                                        _%tgt40113%_
                                                        _%g4153841577%_
                                                        (_%generate138853%_
                                                         _%tgt40113%_
                                                         (cons 'and:
                                                               _%g4153741575%_)
                                                         _%K40116%_
                                                         _%E40117%_)
                                                        _%E40117%_)))
                                                    (_%__kont4834448345%_
                                                     (lambda () _%K40116%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx4833948340%_)
                                                    (let ((_%e4153941565%_
                                                           (gx#syntax-e
                                                            _%__stx4833948340%_)))
                                                      (let ((_%tl4154141572%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4153941565%_)))
                    (_%hd4154041569%_
                     (let () (declare (not safe)) (##car _%e4153941565%_))))
                (_%__kont4834248343%_ _%tl4154141572%_ _%hd4154041569%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont4834448345%_))))))
                                         (_%__kont4844448445%_
                                          (lambda (_%g4017741429%_)
                                            (let* ((_%__stx4832348324%_
                                                    _%g4017741429%_)
                                                   (_%g4144241454%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx4832348324%_))))
                                              (let ((_%__kont4832648327%_
                                                     (lambda (_%g4144441482%_
                                                              _%g4144541484%_)
                                                       (_%generate138853%_
                                                        _%tgt40113%_
                                                        _%g4144541484%_
                                                        _%K40116%_
                                                        (_%generate138853%_
                                                         _%tgt40113%_
                                                         (cons 'or:
                                                               _%g4144441482%_)
                                                         _%K40116%_
                                                         _%E40117%_))))
                                                    (_%__kont4832848329%_
                                                     (lambda () _%E40117%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx4832348324%_)
                                                    (let ((_%e4144641472%_
                                                           (gx#syntax-e
                                                            _%__stx4832348324%_)))
                                                      (let ((_%tl4144841479%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4144641472%_)))
                    (_%hd4144741476%_
                     (let () (declare (not safe)) (##car _%e4144641472%_))))
                (_%__kont4832648327%_ _%tl4144841479%_ _%hd4144741476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont4832848329%_))))))
                                         (_%__kont4844648447%_
                                          (lambda (_%g4018241394%_)
                                            (_%generate138853%_
                                             _%tgt40113%_
                                             _%g4018241394%_
                                             _%E40117%_
                                             _%K40116%_)))
                                         (_%__kont4844848449%_
                                          (lambda (_%g4019041268%_
                                                   _%g4019141270%_)
                                            (let* ((_%g4128741302%_
                                                    (lambda (_%g4128841298%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g4128841298%_)))
                                                   (_%g4128641359%_
                                                    (lambda (_%g4128841306%_)
                                                      (if (gx#stx-pair?
                                                           _%g4128841306%_)
                                                          (let ((_%e4129141309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g4128841306%_)))
                    (let ((_%hd4129241313%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4129141309%_)))
                          (_%tl4129341316%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4129141309%_))))
                      (if (gx#stx-pair? _%tl4129341316%_)
                          (let ((_%e4129441319%_
                                 (gx#syntax-e _%tl4129341316%_)))
                            (let ((_%hd4129541323%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4129441319%_)))
                                  (_%tl4129641326%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4129441319%_))))
                              (if (gx#stx-null? _%tl4129641326%_)
                                  ((lambda (_%g4128941329%_ _%g4129041331%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g4012140134%_
                                                             '()))
                                                 (cons (let ((_%hd-pat41347%_
                                                              (gx#stx-e
                                                               _%g4019141270%_))
                                                             (_%tl-pat41349%_
                                                              (gx#stx-e
                                                               _%g4019041268%_)))
                                                         (if (and (equal? _%hd-pat41347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat41349%_ '(any:)))
                     _%K40116%_
                     (if (equal? _%tl-pat41349%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g4129041331%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g4012140134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate138853%_
                                            _%g4129041331%_
                                            _%g4019141270%_
                                            _%K40116%_
                                            _%E40117%_)
                                           '())))
                         (if (equal? _%hd-pat41347%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g4128941329%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g4012140134%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate138853%_
                                                _%g4128941329%_
                                                _%g4019041268%_
                                                _%K40116%_
                                                _%E40117%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g4129041331%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g4012140134%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g4128941329%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g4012140134%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate138853%_
                                                _%g4129041331%_
                                                _%g4019141270%_
                                                (_%generate138853%_
                                                 _%g4128941329%_
                                                 _%g4019041268%_
                                                 _%K40116%_
                                                 _%E40117%_)
                                                _%E40117%_)
                                               '())))))))
               (cons _%E40117%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd4129541323%_
                                   _%hd4129241313%_)
                                  (_%g4128741302%_ _%g4128841306%_))))
                          (_%g4128741302%_ _%g4128841306%_))))
                  (_%g4128741302%_ _%g4128841306%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4128641359%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont4845048451%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g4012140134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K40116%_ (cons _%E40117%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont4845248453%_
                                          (lambda (_%g4020641184%_
                                                   _%g4020741186%_)
                                            (_%generate-splice38855%_
                                             _%tgt40113%_
                                             _%g4020741186%_
                                             _%g4020641184%_
                                             _%K40116%_
                                             _%E40117%_)))
                                         (_%__kont4845448455%_
                                          (lambda (_%g4021841098%_)
                                            (let* ((_%g4111241120%_
                                                    (lambda (_%g4111341116%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g4111341116%_)))
                                                   (_%g4111141139%_
                                                    (lambda (_%g4111341124%_)
                                                      ((lambda (_%g4111441127%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g4012140134%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g4111441127%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g4012140134%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate138853%_
                                                      _%g4111441127%_
                                                      _%g4021841098%_
                                                      _%K40116%_
                                                      _%E40117%_)
                                                     '())))
                                   (cons _%E40117%_ '())))))
               _%g4111341124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4111141139%_
                                               (gx#genident 'e)))))
                                         (_%__kont4845648457%_
                                          (lambda (_%g4022640903%_)
                                            (let* ((_%__stx4827348274%_
                                                    _%g4022640903%_)
                                                   (_%g4091840941%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx4827348274%_))))
                                              (let ((_%__kont4827648277%_
                                                     (lambda (_%g4092041018%_)
                                                       (let* ((_%g4103241040%_
                                                               (lambda (_%g4103341036%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g4103341036%_)))
                      (_%g4103141059%_
                       (lambda (_%g4103341044%_)
                         ((lambda (_%g4103441047%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g4012140134%_
                                                                '()))
                                                    (cons _%g4103441047%_
                                                          '())))
                                        (cons (_%generate-simple-vector38856%_
                                               _%tgt40113%_
                                               _%g4092041018%_
                                               '0
                                               '##values-ref
                                               _%K40116%_
                                               _%E40117%_)
                                              (cons _%E40117%_ '())))))
                          _%g4103341044%_))))
                 (_%g4103141059%_ (gx#stx-length _%g4092041018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont4827848279%_
                                                     (lambda (_%g4092840972%_)
                                                       (_%generate-list-vector38857%_
                                                        _%tgt40113%_
                                                        _%g4092840972%_
                                                        'values->list
                                                        _%K40116%_
                                                        _%E40117%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx4827348274%_)
                                                    (let ((_%e4092140994%_
                                                           (gx#syntax-e
                                                            _%__stx4827348274%_)))
                                                      (let ((_%tl4092341001%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4092140994%_)))
                    (_%hd4092240998%_
                     (let () (declare (not safe)) (##car _%e4092140994%_))))
                (if (gx#stx-datum? _%hd4092240998%_)
                    (let ((_%e4092441004%_ (gx#stx-e _%hd4092240998%_)))
                      (if (equal? _%e4092441004%_ 'simple:)
                          (if (gx#stx-pair? _%tl4092341001%_)
                              (let ((_%e4092541008%_
                                     (gx#syntax-e _%tl4092341001%_)))
                                (let ((_%tl4092741015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4092541008%_)))
                                      (_%hd4092641012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4092541008%_))))
                                  (if (gx#stx-null? _%tl4092741015%_)
                                      (_%__kont4827648277%_ _%hd4092641012%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4091840941%_)))))
                              (let () (declare (not safe)) (_%g4091840941%_)))
                          (if (equal? _%e4092441004%_ 'list:)
                              (if (gx#stx-pair? _%tl4092341001%_)
                                  (let ((_%e4093340962%_
                                         (gx#syntax-e _%tl4092341001%_)))
                                    (let ((_%tl4093540969%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4093340962%_)))
                                          (_%hd4093440966%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4093340962%_))))
                                      (if (gx#stx-null? _%tl4093540969%_)
                                          (_%__kont4827848279%_
                                           _%hd4093440966%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4091840941%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4091840941%_)))
                              (let ()
                                (declare (not safe))
                                (_%g4091840941%_)))))
                    (let () (declare (not safe)) (_%g4091840941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4091840941%_)))))))
                                         (_%__kont4845848459%_
                                          (lambda (_%g4023440708%_)
                                            (let* ((_%__stx4822348224%_
                                                    _%g4023440708%_)
                                                   (_%g4072340746%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx4822348224%_))))
                                              (let ((_%__kont4822648227%_
                                                     (lambda (_%g4072540823%_)
                                                       (let* ((_%g4083740845%_
                                                               (lambda (_%g4083840841%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g4083840841%_)))
                      (_%g4083640864%_
                       (lambda (_%g4083840849%_)
                         ((lambda (_%g4083940852%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g4012140134%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g4012140134%_ '()))
                              (cons _%g4083940852%_ '())))
                  (cons (_%generate-simple-vector38856%_
                         _%tgt40113%_
                         _%g4072540823%_
                         '0
                         '##vector-ref
                         _%K40116%_
                         _%E40117%_)
                        (cons _%E40117%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E40117%_ '())))))
                          _%g4083840849%_))))
                 (_%g4083640864%_ (gx#stx-length _%g4072540823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont4822848229%_
                                                     (lambda (_%g4073340777%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g4012140134%_ '()))
                           (cons (_%generate-list-vector38857%_
                                  _%tgt40113%_
                                  _%g4073340777%_
                                  'vector->list
                                  _%K40116%_
                                  _%E40117%_)
                                 (cons _%E40117%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx4822348224%_)
                                                    (let ((_%e4072640799%_
                                                           (gx#syntax-e
                                                            _%__stx4822348224%_)))
                                                      (let ((_%tl4072840806%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4072640799%_)))
                    (_%hd4072740803%_
                     (let () (declare (not safe)) (##car _%e4072640799%_))))
                (if (gx#stx-datum? _%hd4072740803%_)
                    (let ((_%e4072940809%_ (gx#stx-e _%hd4072740803%_)))
                      (if (equal? _%e4072940809%_ 'simple:)
                          (if (gx#stx-pair? _%tl4072840806%_)
                              (let ((_%e4073040813%_
                                     (gx#syntax-e _%tl4072840806%_)))
                                (let ((_%tl4073240820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4073040813%_)))
                                      (_%hd4073140817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4073040813%_))))
                                  (if (gx#stx-null? _%tl4073240820%_)
                                      (_%__kont4822648227%_ _%hd4073140817%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4072340746%_)))))
                              (let () (declare (not safe)) (_%g4072340746%_)))
                          (if (equal? _%e4072940809%_ 'list:)
                              (if (gx#stx-pair? _%tl4072840806%_)
                                  (let ((_%e4073840767%_
                                         (gx#syntax-e _%tl4072840806%_)))
                                    (let ((_%tl4074040774%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4073840767%_)))
                                          (_%hd4073940771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4073840767%_))))
                                      (if (gx#stx-null? _%tl4074040774%_)
                                          (_%__kont4822848229%_
                                           _%hd4073940771%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4072340746%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4072340746%_)))
                              (let ()
                                (declare (not safe))
                                (_%g4072340746%_)))))
                    (let () (declare (not safe)) (_%g4072340746%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4072340746%_)))))))
                                         (_%__kont4846048461%_
                                          (lambda (_%g4024240659%_
                                                   _%g4024340661%_)
                                            (_%generate-struct38858%_
                                             (gx#stx-e _%g4024340661%_)
                                             _%tgt40113%_
                                             _%g4024240659%_
                                             _%K40116%_
                                             _%E40117%_)))
                                         (_%__kont4846248463%_
                                          (lambda (_%g4025440600%_
                                                   _%g4025540602%_)
                                            (_%generate-class38861%_
                                             (gx#stx-e _%g4025540602%_)
                                             _%tgt40113%_
                                             _%g4025440600%_
                                             _%K40116%_
                                             _%E40117%_)))
                                         (_%__kont4846448465%_
                                          (lambda (_%g4026640497%_)
                                            (let* ((_%g4051140519%_
                                                    (lambda (_%g4051240515%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g4051240515%_)))
                                                   (_%g4051040538%_
                                                    (lambda (_%g4051240523%_)
                                                      ((lambda (_%g4051340526%_)
                                                         (cons 'if
                                                               (cons (cons _%g4051340526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g4012140134%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g4026640497%_
                                                           '()))
                                               '())))
                             (cons _%K40116%_ (cons _%E40117%_ '())))))
               _%g4051240523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4051040538%_
                                               (let ((_%e40542%_
                                                      (gx#stx-e
                                                       _%g4026640497%_)))
                                                 (if (or (symbol? _%e40542%_)
                                                         (keyword? _%e40542%_)
                                                         (immediate?
                                                          _%e40542%_))
                                                     '##eq?
                                                     (if (number? _%e40542%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont4846648467%_
                                          (lambda (_%g4027440417%_
                                                   _%g4027540419%_)
                                            (let* ((_%g4043540443%_
                                                    (lambda (_%g4043640439%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g4043640439%_)))
                                                   (_%g4043440462%_
                                                    (lambda (_%g4043640447%_)
                                                      ((lambda (_%g4043740450%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g4043740450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g4027540419%_
                                                     (cons _%g4012140134%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate138853%_
                                    _%g4043740450%_
                                    _%g4027440417%_
                                    _%K40116%_
                                    _%E40117%_)
                                   '()))))
               _%g4043640447%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4043440462%_
                                               (gx#genident 'e)))))
                                         (_%__kont4846848469%_
                                          (lambda (_%g4028640359%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g4028640359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g4012140134%_ '()))
                      '())
                (cons _%K40116%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont4847048471%_
                                          (lambda () _%K40116%_)))
                                     (if (gx#stx-pair? _%__stx4843748438%_)
                                         (let ((_%e4016541601%_
                                                (gx#syntax-e
                                                 _%__stx4843748438%_)))
                                           (let ((_%tl4016741608%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4016541601%_)))
                                                 (_%hd4016641605%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4016541601%_))))
                                             (if (gx#stx-datum?
                                                  _%hd4016641605%_)
                                                 (let ((_%e4016841611%_
                                                        (gx#stx-e
                                                         _%hd4016641605%_)))
                                                   (if (equal? _%e4016841611%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl4016741608%_)
                                                           (let ((_%e4016941615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4016741608%_)))
                     (let ((_%tl4017141622%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4016941615%_)))
                           (_%hd4017041619%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4016941615%_))))
                       (_%__kont4844048441%_
                        _%tl4017141622%_
                        _%hd4017041619%_)))
                   (let () (declare (not safe)) (_%g4016140303%_)))
               (if (equal? _%e4016841611%_ 'and:)
                   (_%__kont4844248443%_ _%tl4016741608%_)
                   (if (equal? _%e4016841611%_ 'or:)
                       (_%__kont4844448445%_ _%tl4016741608%_)
                       (if (equal? _%e4016841611%_ 'not:)
                           (if (gx#stx-pair? _%tl4016741608%_)
                               (let ((_%e4018741384%_
                                      (gx#syntax-e _%tl4016741608%_)))
                                 (let ((_%tl4018941391%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4018741384%_)))
                                       (_%hd4018841388%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4018741384%_))))
                                   (if (gx#stx-null? _%tl4018941391%_)
                                       (_%__kont4844648447%_ _%hd4018841388%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4016140303%_)))))
                               (let () (declare (not safe)) (_%g4016140303%_)))
                           (if (equal? _%e4016841611%_ 'cons:)
                               (if (gx#stx-pair? _%tl4016741608%_)
                                   (let ((_%e4019641248%_
                                          (gx#syntax-e _%tl4016741608%_)))
                                     (let ((_%tl4019841255%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4019641248%_)))
                                           (_%hd4019741252%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4019641248%_))))
                                       (if (gx#stx-pair? _%tl4019841255%_)
                                           (let ((_%e4019941258%_
                                                  (gx#syntax-e
                                                   _%tl4019841255%_)))
                                             (let ((_%tl4020141265%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4019941258%_)))
                                                   (_%hd4020041262%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4019941258%_))))
                                               (if (gx#stx-null?
                                                    _%tl4020141265%_)
                                                   (_%__kont4844848449%_
                                                    _%hd4020041262%_
                                                    _%hd4019741252%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4016140303%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4016140303%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4016140303%_)))
                               (if (equal? _%e4016841611%_ 'null:)
                                   (if (gx#stx-null? _%tl4016741608%_)
                                       (_%__kont4845048451%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4016140303%_)))
                                   (if (equal? _%e4016841611%_ 'splice:)
                                       (if (gx#stx-pair? _%tl4016741608%_)
                                           (let ((_%e4021241164%_
                                                  (gx#syntax-e
                                                   _%tl4016741608%_)))
                                             (let ((_%tl4021441171%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4021241164%_)))
                                                   (_%hd4021341168%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4021241164%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4021441171%_)
                                                   (let ((_%e4021541174%_
                                                          (gx#syntax-e
                                                           _%tl4021441171%_)))
                                                     (let ((_%tl4021741181%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4021541174%_)))
                                                           (_%hd4021641178%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4021541174%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4021741181%_)
                                                           (_%__kont4845248453%_
                                                            _%hd4021641178%_
                                                            _%hd4021341168%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4016140303%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4016140303%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4016140303%_)))
                                       (if (equal? _%e4016841611%_ 'box:)
                                           (if (gx#stx-pair? _%tl4016741608%_)
                                               (let ((_%e4022341088%_
                                                      (gx#syntax-e
                                                       _%tl4016741608%_)))
                                                 (let ((_%tl4022541095%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4022341088%_)))
                                                       (_%hd4022441092%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4022341088%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4022541095%_)
                                                       (_%__kont4845448455%_
                                                        _%hd4022441092%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4016140303%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4016140303%_)))
                                           (if (equal? _%e4016841611%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl4016741608%_)
                                                   (let ((_%e4023140893%_
                                                          (gx#syntax-e
                                                           _%tl4016741608%_)))
                                                     (let ((_%tl4023340900%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4023140893%_)))
                                                           (_%hd4023240897%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4023140893%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4023340900%_)
                                                           (_%__kont4845648457%_
                                                            _%hd4023240897%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4016140303%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4016140303%_)))
                                               (if (equal? _%e4016841611%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl4016741608%_)
                                                       (let ((_%e4023940698%_
                                                              (gx#syntax-e
                                                               _%tl4016741608%_)))
                                                         (let ((_%tl4024140705%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4023940698%_)))
                       (_%hd4024040702%_
                        (let () (declare (not safe)) (##car _%e4023940698%_))))
                   (if (gx#stx-null? _%tl4024140705%_)
                       (_%__kont4845848459%_ _%hd4024040702%_)
                       (let () (declare (not safe)) (_%g4016140303%_)))))
               (let () (declare (not safe)) (_%g4016140303%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e4016841611%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl4016741608%_)
                                                           (let ((_%e4024840639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4016741608%_)))
                     (let ((_%tl4025040646%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4024840639%_)))
                           (_%hd4024940643%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4024840639%_))))
                       (if (gx#stx-pair? _%tl4025040646%_)
                           (let ((_%e4025140649%_
                                  (gx#syntax-e _%tl4025040646%_)))
                             (let ((_%tl4025340656%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4025140649%_)))
                                   (_%hd4025240653%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4025140649%_))))
                               (if (gx#stx-null? _%tl4025340656%_)
                                   (_%__kont4846048461%_
                                    _%hd4025240653%_
                                    _%hd4024940643%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4016140303%_)))))
                           (let () (declare (not safe)) (_%g4016140303%_)))))
                   (let () (declare (not safe)) (_%g4016140303%_)))
               (if (equal? _%e4016841611%_ 'class:)
                   (if (gx#stx-pair? _%tl4016741608%_)
                       (let ((_%e4026040580%_ (gx#syntax-e _%tl4016741608%_)))
                         (let ((_%tl4026240587%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4026040580%_)))
                               (_%hd4026140584%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4026040580%_))))
                           (if (gx#stx-pair? _%tl4026240587%_)
                               (let ((_%e4026340590%_
                                      (gx#syntax-e _%tl4026240587%_)))
                                 (let ((_%tl4026540597%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4026340590%_)))
                                       (_%hd4026440594%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4026340590%_))))
                                   (if (gx#stx-null? _%tl4026540597%_)
                                       (_%__kont4846248463%_
                                        _%hd4026440594%_
                                        _%hd4026140584%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4016140303%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4016140303%_)))))
                       (let () (declare (not safe)) (_%g4016140303%_)))
                   (if (equal? _%e4016841611%_ 'datum:)
                       (if (gx#stx-pair? _%tl4016741608%_)
                           (let ((_%e4027140487%_
                                  (gx#syntax-e _%tl4016741608%_)))
                             (let ((_%tl4027340494%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4027140487%_)))
                                   (_%hd4027240491%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4027140487%_))))
                               (if (gx#stx-null? _%tl4027340494%_)
                                   (_%__kont4846448465%_ _%hd4027240491%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4016140303%_)))))
                           (let () (declare (not safe)) (_%g4016140303%_)))
                       (if (equal? _%e4016841611%_ 'apply:)
                           (if (gx#stx-pair? _%tl4016741608%_)
                               (let ((_%e4028040397%_
                                      (gx#syntax-e _%tl4016741608%_)))
                                 (let ((_%tl4028240404%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4028040397%_)))
                                       (_%hd4028140401%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4028040397%_))))
                                   (if (gx#stx-pair? _%tl4028240404%_)
                                       (let ((_%e4028340407%_
                                              (gx#syntax-e _%tl4028240404%_)))
                                         (let ((_%tl4028540414%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4028340407%_)))
                                               (_%hd4028440411%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4028340407%_))))
                                           (if (gx#stx-null? _%tl4028540414%_)
                                               (_%__kont4846648467%_
                                                _%hd4028440411%_
                                                _%hd4028140401%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4016140303%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4016140303%_)))))
                               (let () (declare (not safe)) (_%g4016140303%_)))
                           (if (equal? _%e4016841611%_ 'var:)
                               (if (gx#stx-pair? _%tl4016741608%_)
                                   (let ((_%e4029140349%_
                                          (gx#syntax-e _%tl4016741608%_)))
                                     (let ((_%tl4029340356%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4029140349%_)))
                                           (_%hd4029240353%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4029140349%_))))
                                       (if (gx#stx-null? _%tl4029340356%_)
                                           (_%__kont4846848469%_
                                            _%hd4029240353%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4016140303%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4016140303%_)))
                               (if (equal? _%e4016841611%_ 'any:)
                                   (if (gx#stx-null? _%tl4016741608%_)
                                       (_%__kont4847048471%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4016140303%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4016140303%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4016140303%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4016140303%_))))))
                               _%g4012040131%_))))
                      (_%g4011841910%_ _%tgt40113%_))))
                 (_%generate-splice38855%_
                  (lambda (_%tgt39491%_
                           _%hd39493%_
                           _%rest39494%_
                           _%K39495%_
                           _%E39496%_)
                    (let* ((_%g3949839515%_
                            (lambda (_%g3949939511%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3949939511%_)))
                           (_%g3949740109%_
                            (lambda (_%g3949939519%_)
                              (if (gx#stx-pair/null? _%g3949939519%_)
                                  (let ((_g49592_
                                         (gx#syntax-split-splice
                                          _%g3949939519%_
                                          '0)))
                                    (begin
                                      (let ((_g49593_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49592_)
                                                   (##values-length _g49592_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49593_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49593_)))
                                      (let ((_%target3950139522%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g49592_ 0)))
                                            (_%tl3950339525%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g49592_ 1))))
                                        (if (gx#stx-null? _%tl3950339525%_)
                                            (letrec ((_%loop3950439528%_
                                                      (lambda (_%hd3950239532%_
                                                               _%var3950839535%_)
                                                        (if (gx#stx-pair?
                                                             _%hd3950239532%_)
                                                            (let ((_%e3950539537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd3950239532%_)))
                      (let ((_%lp-hd3950639541%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3950539537%_)))
                            (_%lp-tl3950739544%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3950539537%_))))
                        (_%loop3950439528%_
                         _%lp-tl3950739544%_
                         (cons _%lp-hd3950639541%_ _%var3950839535%_))))
                    (let ((_%var3950939547%_ (reverse _%var3950839535%_)))
                      ((lambda (_%g3950039550%_)
                         (let* ((_%g3956639583%_
                                 (lambda (_%g3956739579%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g3956739579%_)))
                                (_%g3956540097%_
                                 (lambda (_%g3956739587%_)
                                   (if (gx#stx-pair/null? _%g3956739587%_)
                                       (let ((_g49594_
                                              (gx#syntax-split-splice
                                               _%g3956739587%_
                                               '0)))
                                         (begin
                                           (let ((_g49595_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49594_)
                                                        (##values-length
                                                         _g49594_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49595_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49595_)))
                                           (let ((_%target3956939590%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49594_ 0)))
                                                 (_%tl3957139593%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49594_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl3957139593%_)
                                                 (letrec ((_%loop3957239596%_
                                                           (lambda (_%hd3957039600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r3957639603%_)
                     (if (gx#stx-pair? _%hd3957039600%_)
                         (let ((_%e3957339605%_
                                (gx#syntax-e _%hd3957039600%_)))
                           (let ((_%lp-hd3957439609%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3957339605%_)))
                                 (_%lp-tl3957539612%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3957339605%_))))
                             (_%loop3957239596%_
                              _%lp-tl3957539612%_
                              (cons _%lp-hd3957439609%_ _%var-r3957639603%_))))
                         (let ((_%var-r3957739615%_
                                (reverse _%var-r3957639603%_)))
                           ((lambda (_%g3956839618%_)
                              (let* ((_%g3963539652%_
                                      (lambda (_%g3963639648%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3963639648%_)))
                                     (_%g3963440085%_
                                      (lambda (_%g3963639656%_)
                                        (if (gx#stx-pair/null? _%g3963639656%_)
                                            (let ((_g49596_
                                                   (gx#syntax-split-splice
                                                    _%g3963639656%_
                                                    '0)))
                                              (begin
                                                (let ((_g49597_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g49596_)
                                                             (##values-length
                                                              _g49596_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g49597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g49597_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3963839659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g49596_
                                                          0)))
                                                      (_%tl3964039662%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g49596_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3964039662%_)
                                                      (letrec ((_%loop3964139665%_
                                                                (lambda (_%hd3963939669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init3964539672%_)
                          (if (gx#stx-pair? _%hd3963939669%_)
                              (let ((_%e3964239674%_
                                     (gx#syntax-e _%hd3963939669%_)))
                                (let ((_%lp-hd3964339678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3964239674%_)))
                                      (_%lp-tl3964439681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3964239674%_))))
                                  (_%loop3964139665%_
                                   _%lp-tl3964439681%_
                                   (cons _%lp-hd3964339678%_
                                         _%init3964539672%_))))
                              (let ((_%init3964639684%_
                                     (reverse _%init3964539672%_)))
                                ((lambda (_%g3963739687%_)
                                   (let* ((_%g3970439712%_
                                           (lambda (_%g3970539708%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3970539708%_)))
                                          (_%g3970340081%_
                                           (lambda (_%g3970539716%_)
                                             ((lambda (_%g3970639719%_)
                                                (let* ((_%g3973239740%_
                                                        (lambda (_%g3973339736%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3973339736%_)))
                                                       (_%g3973140077%_
                                                        (lambda (_%g3973339744%_)
                                                          ((lambda (_%g3973439747%_)
                                                             (let* ((_%g3976039768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3976139764%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3976139764%_)))
                            (_%g3975940073%_
                             (lambda (_%g3976139772%_)
                               ((lambda (_%g3976239775%_)
                                  (let* ((_%g3978839796%_
                                          (lambda (_%g3978939792%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3978939792%_)))
                                         (_%g3978740069%_
                                          (lambda (_%g3978939800%_)
                                            ((lambda (_%g3979039803%_)
                                               (let* ((_%g3981639824%_
                                                       (lambda (_%g3981739820%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3981739820%_)))
                                                      (_%g3981540065%_
                                                       (lambda (_%g3981739828%_)
                                                         ((lambda (_%g3981839831%_)
                                                            (let* ((_%g3984439852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3984539848%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3984539848%_)))
                           (_%g3984340061%_
                            (lambda (_%g3984539856%_)
                              ((lambda (_%g3984639859%_)
                                 (let* ((_%g3987239880%_
                                         (lambda (_%g3987339876%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3987339876%_)))
                                        (_%g3987140057%_
                                         (lambda (_%g3987339884%_)
                                           ((lambda (_%g3987439887%_)
                                              (let* ((_%g3990039908%_
                                                      (lambda (_%g3990139904%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3990139904%_)))
                                                     (_%g3989940042%_
                                                      (lambda (_%g3990139912%_)
                                                        ((lambda (_%g3990239915%_)
                                                           (let* ((_%g3992839936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3992939932%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3992939932%_)))
                          (_%g3992740030%_
                           (lambda (_%g3992939940%_)
                             ((lambda (_%g3993039943%_)
                                (let* ((_%g3995639964%_
                                        (lambda (_%g3995739960%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3995739960%_)))
                                       (_%g3995540026%_
                                        (lambda (_%g3995739968%_)
                                          ((lambda (_%g3995839971%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g3973439747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g3984639859%_
                                                     (foldr (lambda (_%g3998539996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3998639999%_)
                      (cons _%g3998539996%_ _%g3998639999%_))
                    '()
                    _%g3950039550%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g3987439887%_ '())))
                                   '()))
                       (cons (cons _%g3979039803%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g3981839831%_
                                                           (cons _%g3984639859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3998740002%_ _%g3998840005%_)
                                  (cons _%g3998740002%_ _%g3998840005%_))
                                '()
                                _%g3956839618%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3995839971%_
                                                           '())))
                                         '()))
                             (cons (cons _%g3976239775%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g3984639859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3998940008%_ _%g3999040011%_)
                                  (cons _%g3998940008%_ _%g3999040011%_))
                                '()
                                _%g3956839618%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g3984639859%_ '()))
                                     (cons (cons _%g3979039803%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3984639859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g3984639859%_
                     (foldr (lambda (_%g3999140014%_ _%g3999240017%_)
                              (cons _%g3999140014%_ _%g3999240017%_))
                            '()
                            _%g3956839618%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3993039943%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g3976239775%_
                             (cons _%g3970639719%_
                                   (foldr (lambda (_%g3999340020%_
                                                   _%g3999440023%_)
                                            (cons _%g3999340020%_
                                                  _%g3999440023%_))
                                          '()
                                          _%g3963739687%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3995739968%_))))
                                  (_%g3995540026%_
                                   (_%generate138853%_
                                    _%g3981839831%_
                                    _%hd39493%_
                                    _%g3990239915%_
                                    _%g3993039943%_))))
                              _%g3992939940%_))))
                     (_%g3992740030%_
                      (cons _%g3973439747%_
                            (cons _%g3984639859%_
                                  (foldr (lambda (_%g4003340036%_
                                                  _%g4003440039%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g4003340036%_
                                                             '()))
                                                 _%g4003440039%_))
                                         '()
                                         _%g3956839618%_))))))
                 _%g3990139912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3989940042%_
                                                 (cons _%g3976239775%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g3984639859%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g3956839618%_
                        _%g3950039550%_)
                       (foldr (lambda (_%g4004540049%_
                                       _%g4004640052%_
                                       _%g4004740054%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g4004640052%_
                                                  (cons _%g4004540049%_ '())))
                                      _%g4004740054%_))
                              '()
                              _%g3956839618%_
                              _%g3950039550%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3987339884%_))))
                                   (_%g3987140057%_
                                    (_%generate138853%_
                                     _%g3984639859%_
                                     _%rest39494%_
                                     _%K39495%_
                                     _%E39496%_))))
                               _%g3984539856%_))))
                      (_%g3984340061%_ (gx#genident 'rest))))
                  _%g3981739828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3981540065%_
                                                  (gx#genident 'hd))))
                                             _%g3978939800%_))))
                                    (_%g3978740069%_
                                     (gx#genident 'splice-try))))
                                _%g3976139772%_))))
                       (_%g3975940073%_ (gx#genident 'splice-loop))))
                   _%g3973339744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3973140077%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3970539716%_))))
                                     (_%g3970340081%_ _%tgt39491%_)))
                                 _%init3964639684%_))))))
                (_%loop3964139665%_ _%target3963839659%_ '()))
              (_%g3963539652%_ _%g3963639656%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3963539652%_
                                             _%g3963639656%_)))))
                                (_%g3963440085%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g4008840091%_
                                                   _%g4008940094%_)
                                            (cons _%g4008840091%_
                                                  _%g4008940094%_))
                                          '()
                                          _%g3950039550%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r3957739615%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop3957239596%_
                                                    _%target3956939590%_
                                                    '()))
                                                 (_%g3956639583%_
                                                  _%g3956739587%_)))))
                                       (_%g3956639583%_ _%g3956739587%_)))))
                           (_%g3956540097%_
                            (gx#gentemps
                             (foldr (lambda (_%g4010040103%_ _%g4010140106%_)
                                      (cons _%g4010040103%_ _%g4010140106%_))
                                    '()
                                    _%g3950039550%_)))))
                       _%var3950939547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop3950439528%_
                                               _%target3950139522%_
                                               '()))
                                            (_%g3949839515%_
                                             _%g3949939519%_)))))
                                  (_%g3949839515%_ _%g3949939519%_)))))
                      (_%g3949740109%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd39493%_)))))
                 (_%generate-simple-vector38856%_
                  (lambda (_%tgt39314%_
                           _%body39316%_
                           _%start39317%_
                           _%ref39318%_
                           _%K39319%_
                           _%E39320%_)
                    (let _%recur39322%_ ((_%rest39325%_ _%body39316%_)
                                         (_%off39327%_ _%start39317%_))
                      (let* ((_%__stx4879548796%_ _%rest39325%_)
                             (_%g3933039342%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4879548796%_))))
                        (let ((_%__kont4879848799%_
                               (lambda (_%g3933239370%_ _%g3933339372%_)
                                 (let* ((_%g3938739410%_
                                         (lambda (_%g3938839406%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3938839406%_)))
                                        (_%g3938639483%_
                                         (lambda (_%g3938839414%_)
                                           (if (gx#stx-pair? _%g3938839414%_)
                                               (let ((_%e3939339417%_
                                                      (gx#syntax-e
                                                       _%g3938839414%_)))
                                                 (let ((_%hd3939439421%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3939339417%_)))
                                                       (_%tl3939539424%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3939339417%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3939539424%_)
                                                       (let ((_%e3939639427%_
                                                              (gx#syntax-e
                                                               _%tl3939539424%_)))
                                                         (let ((_%hd3939739431%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e3939639427%_)))
                       (_%tl3939839434%_
                        (let () (declare (not safe)) (##cdr _%e3939639427%_))))
                   (if (gx#stx-pair? _%tl3939839434%_)
                       (let ((_%e3939939437%_ (gx#syntax-e _%tl3939839434%_)))
                         (let ((_%hd3940039441%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3939939437%_)))
                               (_%tl3940139444%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3939939437%_))))
                           (if (gx#stx-pair? _%tl3940139444%_)
                               (let ((_%e3940239447%_
                                      (gx#syntax-e _%tl3940139444%_)))
                                 (let ((_%hd3940339451%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3940239447%_)))
                                       (_%tl3940439454%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3940239447%_))))
                                   (if (gx#stx-null? _%tl3940439454%_)
                                       ((lambda (_%g3938939457%_
                                                 _%g3939039459%_
                                                 _%g3939139460%_
                                                 _%g3939239461%_)
                                          (cons 'let
                                                (cons (cons (cons _%g3939239461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g3938939457%_
                                      (cons _%g3939139460%_
                                            (cons _%g3939039459%_ '())))
                                '()))
                    '())
              (cons (_%generate138853%_
                     _%g3939239461%_
                     _%g3933339372%_
                     (_%recur39322%_ _%g3933239370%_ (fx1+ _%off39327%_))
                     _%E39320%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd3940339451%_
                                        _%hd3940039441%_
                                        _%hd3939739431%_
                                        _%hd3939439421%_)
                                       (_%g3938739410%_ _%g3938839414%_))))
                               (_%g3938739410%_ _%g3938839414%_))))
                       (_%g3938739410%_ _%g3938839414%_))))
               (_%g3938739410%_ _%g3938839414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3938739410%_
                                                _%g3938839414%_)))))
                                   (_%g3938639483%_
                                    (list (gx#genident 'e)
                                          _%tgt39314%_
                                          _%off39327%_
                                          _%ref39318%_)))))
                              (_%__kont4880048801%_ (lambda () _%K39319%_)))
                          (if (gx#stx-pair? _%__stx4879548796%_)
                              (let ((_%e3933439360%_
                                     (gx#syntax-e _%__stx4879548796%_)))
                                (let ((_%tl3933639367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3933439360%_)))
                                      (_%hd3933539364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3933439360%_))))
                                  (_%__kont4879848799%_
                                   _%tl3933639367%_
                                   _%hd3933539364%_)))
                              (_%__kont4880048801%_)))))))
                 (_%generate-list-vector38857%_
                  (lambda (_%tgt39206%_
                           _%body39208%_
                           _%->list39209%_
                           _%K39210%_
                           _%E39211%_)
                    (let* ((_%g3921339221%_
                            (lambda (_%g3921439217%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3921439217%_)))
                           (_%g3921239310%_
                            (lambda (_%g3921439225%_)
                              ((lambda (_%g3921539228%_)
                                 (let* ((_%g3924039248%_
                                         (lambda (_%g3924139244%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3924139244%_)))
                                        (_%g3923939306%_
                                         (lambda (_%g3924139252%_)
                                           ((lambda (_%g3924239255%_)
                                              (let* ((_%g3926839276%_
                                                      (lambda (_%g3926939272%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3926939272%_)))
                                                     (_%g3926739298%_
                                                      (lambda (_%g3926939280%_)
                                                        ((lambda (_%g3927039283%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g3921539228%_
                                           (cons _%g3927039283%_ '()))
                                     '())
                               (cons (_%generate138853%_
                                      _%g3921539228%_
                                      _%body39208%_
                                      _%K39210%_
                                      _%E39211%_)
                                     '()))))
                 _%g3926939280%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3926739298%_
                                                 (let ((_%$e39302%_
                                                        _%->list39209%_))
                                                   (if (eq? 'values->list
                                                            _%$e39302%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g3924239255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e39302%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g3924239255%_ '()))
                   (if (eq? 'struct->list _%$e39302%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g3924239255%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx38846%_
                        _%->list39209%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3924139252%_))))
                                   (_%g3923939306%_ _%tgt39206%_)))
                               _%g3921439225%_))))
                      (_%g3921239310%_ (gx#genident 'e)))))
                 (_%generate-struct38858%_
                  (lambda (_%info39077%_
                           _%tgt39079%_
                           _%body39080%_
                           _%K39081%_
                           _%E39082%_)
                    (let* ((_%__stx4881148812%_ _%body39080%_)
                           (_%g3908539108%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4881148812%_))))
                      (let ((_%__kont4881448815%_
                             (lambda (_%g3908739185%_)
                               (let ((_%fields39199%_
                                      (_%struct-field-accessors38860%_
                                       _%info39077%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj49565
                                                          _%info39077%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj49565
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj49565
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj49565
                                                          'predicate)))
                                                   (cons _%tgt39079%_ '()))
                                             (cons (_%generate-simple-struct-body38859%_
                                                    _%info39077%_
                                                    _%tgt39079%_
                                                    _%g3908739185%_
                                                    _%K39081%_
                                                    _%E39082%_)
                                                   (cons _%E39082%_ '())))))))
                            (_%__kont4881648817%_
                             (lambda (_%g3909539139%_)
                               (cons 'if
                                     (cons (cons (let ((__obj49566
                                                        _%info39077%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj49566
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj49566
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj49566
                                                        'predicate)))
                                                 (cons _%tgt39079%_ '()))
                                           (cons (_%generate-list-vector38857%_
                                                  _%tgt39079%_
                                                  _%g3909539139%_
                                                  'struct->list
                                                  _%K39081%_
                                                  _%E39082%_)
                                                 (cons _%E39082%_ '())))))))
                        (if (gx#stx-pair? _%__stx4881148812%_)
                            (let ((_%e3908839161%_
                                   (gx#syntax-e _%__stx4881148812%_)))
                              (let ((_%tl3909039168%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3908839161%_)))
                                    (_%hd3908939165%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3908839161%_))))
                                (if (gx#stx-datum? _%hd3908939165%_)
                                    (let ((_%e3909139171%_
                                           (gx#stx-e _%hd3908939165%_)))
                                      (if (equal? _%e3909139171%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3909039168%_)
                                              (let ((_%e3909239175%_
                                                     (gx#syntax-e
                                                      _%tl3909039168%_)))
                                                (let ((_%tl3909439182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3909239175%_)))
                                                      (_%hd3909339179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3909239175%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3909439182%_)
                                                      (_%__kont4881448815%_
                                                       _%hd3909339179%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3908539108%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3908539108%_)))
                                          (if (equal? _%e3909139171%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3909039168%_)
                                                  (let ((_%e3910039129%_
                                                         (gx#syntax-e
                                                          _%tl3909039168%_)))
                                                    (let ((_%tl3910239136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3910039129%_)))
                                                          (_%hd3910139133%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3910039129%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3910239136%_)
                                                          (_%__kont4881648817%_
                                                           _%hd3910139133%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3908539108%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3908539108%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3908539108%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3908539108%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3908539108%_)))))))
                 (_%generate-simple-struct-body38859%_
                  (lambda (_%info38997%_
                           _%tgt38999%_
                           _%body39000%_
                           _%K39001%_
                           _%E39002%_)
                    (let _%recur39004%_ ((_%rest39007%_ _%body39000%_)
                                         (_%fields39009%_
                                          (_%struct-field-accessors38860%_
                                           _%info38997%_)))
                      (let* ((_%__stx4886148862%_ _%rest39007%_)
                             (_%g3901239024%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4886148862%_))))
                        (let ((_%__kont4886448865%_
                               (lambda (_%g3901439052%_ _%g3901539054%_)
                                 (if (null? _%fields39009%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx38846%_
                                      _%info38997%_
                                      (let ((__obj49567 _%info38997%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj49567
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj49567
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj49567
                                             'name))))
                                     (let ((_%$tgt39069%_ (gx#genident 'e))
                                           (_%getf39071%_
                                            (car _%fields39009%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt39069%_
                                                               (cons (cons _%getf39071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt38999%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate138853%_
                                                          _%$tgt39069%_
                                                          _%g3901539054%_
                                                          (_%recur39004%_
                                                           _%g3901439052%_
                                                           (cdr _%fields39009%_))
                                                          _%E39002%_)
                                                         '())))))))
                              (_%__kont4886648867%_ (lambda () _%K39001%_)))
                          (if (gx#stx-pair? _%__stx4886148862%_)
                              (let ((_%e3901639042%_
                                     (gx#syntax-e _%__stx4886148862%_)))
                                (let ((_%tl3901839049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3901639042%_)))
                                      (_%hd3901739046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3901639042%_))))
                                  (_%__kont4886448865%_
                                   _%tl3901839049%_
                                   _%hd3901739046%_)))
                              (_%__kont4886648867%_)))))))
                 (_%struct-field-accessors38860%_
                  (lambda (_%info38978%_)
                    (let _%recur38981%_ ((_%next38984%_
                                          (cons _%info38978%_ '())))
                      (if (null? _%next38984%_)
                          '()
                          (let ((_%ti38987%_ (car _%next38984%_)))
                            (let ((__tmp49599
                                   (_%recur38981%_
                                    (map gx#syntax-local-value
                                         (let ((__obj49568 _%ti38987%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj49568
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj49568
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj49568
                                                'super))))))
                                  (__tmp49598
                                   (map (lambda (_%slot38990%_)
                                          (let ((_%$e38993%_
                                                 (agetq _%slot38990%_
                                                        (let ((__obj49569
                                                               _%ti38987%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj49569
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj49569 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj49569
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e38993%_
                                                _%$e38993%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx38846%_
                                                 _%info38978%_
                                                 _%slot38990%_))))
                                        (let ((__obj49570 _%ti38987%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49570
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49570
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj49570
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp49599 __tmp49598)))))))
                 (_%generate-class38861%_
                  (lambda (_%info38971%_
                           _%tgt38973%_
                           _%body38974%_
                           _%K38975%_
                           _%E38976%_)
                    (cons 'if
                          (cons (cons (let ((__obj49571 _%info38971%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj49571
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj49571
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj49571
                                             'predicate)))
                                      (cons _%tgt38973%_ '()))
                                (cons (_%generate-class-body38862%_
                                       _%info38971%_
                                       _%tgt38973%_
                                       _%body38974%_
                                       _%K38975%_
                                       _%E38976%_)
                                      (cons _%E38976%_ '()))))))
                 (_%generate-class-body38862%_
                  (lambda (_%info38864%_
                           _%tgt38866%_
                           _%body38867%_
                           _%K38868%_
                           _%E38869%_)
                    (let _%recur38871%_ ((_%rest38874%_ _%body38867%_))
                      (let* ((_%__stx4887748878%_ _%rest38874%_)
                             (_%g3887838894%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4887748878%_))))
                        (let ((_%__kont4888048881%_
                               (lambda (_%g3888038932%_
                                        _%g3888138934%_
                                        _%g3888238935%_)
                                 (let ((_%$e38955%_
                                        (agetq (let ((__tmp49600
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g3888238935%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp49600))
                                               (let ((__obj49572
                                                      _%info38864%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj49572
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj49572
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj49572
                                                      'unchecked-accessors))))))
                                   (if _%$e38955%_
                                       ((lambda (_%getf38959%_)
                                          (let ((_%$tgt38962%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt38962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf38959%_ (cons _%tgt38866%_ '()))
                                  '()))
                      '())
                (cons (_%generate138853%_
                       _%$tgt38962%_
                       _%g3888138934%_
                       (_%recur38871%_ _%g3888038932%_)
                       _%E38869%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e38955%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx38846%_
                                        _%info38864%_
                                        _%g3888238935%_)))))
                              (_%__kont4888248883%_ (lambda () _%K38868%_)))
                          (if (gx#stx-pair? _%__stx4887748878%_)
                              (let ((_%e3888338912%_
                                     (gx#syntax-e _%__stx4887748878%_)))
                                (let ((_%tl3888538919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3888338912%_)))
                                      (_%hd3888438916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3888338912%_))))
                                  (if (gx#stx-pair? _%tl3888538919%_)
                                      (let ((_%e3888638922%_
                                             (gx#syntax-e _%tl3888538919%_)))
                                        (let ((_%tl3888838929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3888638922%_)))
                                              (_%hd3888738926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3888638922%_))))
                                          (_%__kont4888048881%_
                                           _%tl3888838929%_
                                           _%hd3888738926%_
                                           _%hd3888438916%_)))
                                      (_%__kont4888248883%_))))
                              (_%__kont4888248883%_))))))))
          (_%generate138853%_
           _%tgt38848%_
           _%ptree38849%_
           _%K38850%_
           _%E38851%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx37665%_ _%tgt-lst37667%_ _%clauses37668%_)
        (letrec ((_%parse-body37670%_
                  (lambda (_%hd-len38668%_)
                    (let _%lp38671%_ ((_%rest38674%_ _%clauses37668%_)
                                      (_%r38676%_ '()))
                      (let* ((_%__stx4892748928%_ _%rest38674%_)
                             (_%g3867938691%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4892748928%_))))
                        (let ((_%__kont4893048931%_
                               (lambda (_%g3868138719%_ _%g3868238721%_)
                                 (let* ((_%__stx4889948900%_ _%g3868238721%_)
                                        (_%g3873838754%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx4889948900%_))))
                                   (let ((_%__kont4890248903%_
                                          (lambda (_%g3874038823%_)
                                            (if (gx#stx-null? _%g3868138719%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g3874038823%_)
                                 (let ((_%$e38834%_
                                        (gx#stx-source _%g3868238721%_)))
                                   (if _%$e38834%_
                                       _%$e38834%_
                                       (gx#stx-source _%stx37665%_))))
                                '())))
              _%r38676%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx37665%_
                                                 _%g3868238721%_))))
                                         (_%__kont4890448905%_
                                          (lambda (_%g3874438782%_
                                                   _%g3874538784%_)
                                            (_%lp38671%_
                                             _%g3868138719%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g3879638798%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g3879638798%_
                           _%stx37665%_))
                        _%g3874538784%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g3874438782%_)
                              (let ((_%$e38802%_
                                     (gx#stx-source _%g3868238721%_)))
                                (if _%$e38802%_
                                    _%$e38802%_
                                    (gx#stx-source _%stx37665%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r38676%_))))
                                         (_%__kont4890648907%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx37665%_
                                             _%g3868238721%_))))
                                     (let* ((_%__match4892448925%_
                                             (lambda (_%e3874638772%_
                                                      _%hd3874738776%_
                                                      _%tl3874838779%_)
                                               (let ((_%g3874438782%_
                                                      _%tl3874838779%_)
                                                     (_%g3874538784%_
                                                      _%hd3874738776%_))
                                                 (if (and (gx#stx-list?
                                                           _%g3874538784%_)
                                                          (fx= (gx#stx-length
                                                                _%g3874538784%_)
                                                               _%hd-len38668%_)
                                                          (gx#stx-list?
                                                           _%g3874438782%_)
                                                          (not (gx#stx-null?
                                                                _%g3874438782%_)))
                                                     (_%__kont4890448905%_
                                                      _%g3874438782%_
                                                      _%g3874538784%_)
                                                     (_%__kont4890648907%_)))))
                                            (_%__match4891848919%_
                                             (lambda (_%e3874138813%_
                                                      _%hd3874238817%_
                                                      _%tl3874338820%_)
                                               (let ((_%g3874038823%_
                                                      _%tl3874338820%_))
                                                 (if (and (gx#stx-list?
                                                           _%g3874038823%_)
                                                          (not (gx#stx-null?
                                                                _%g3874038823%_)))
                                                     (_%__kont4890248903%_
                                                      _%g3874038823%_)
                                                     (_%__match4892448925%_
                                                      _%e3874138813%_
                                                      _%hd3874238817%_
                                                      _%tl3874338820%_))))))
                                       (if (gx#stx-pair? _%__stx4889948900%_)
                                           (let ((_%e3874138813%_
                                                  (gx#syntax-e
                                                   _%__stx4889948900%_)))
                                             (let ((_%tl3874338820%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3874138813%_)))
                                                   (_%hd3874238817%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3874138813%_))))
                                               (if (gx#identifier?
                                                    _%hd3874238817%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g49601_|
                                                        _%hd3874238817%_)
                                                       (_%__match4891848919%_
                                                        _%e3874138813%_
                                                        _%hd3874238817%_
                                                        _%tl3874338820%_)
                                                       (_%__match4892448925%_
                                                        _%e3874138813%_
                                                        _%hd3874238817%_
                                                        _%tl3874338820%_))
                                                   (_%__match4892448925%_
                                                    _%e3874138813%_
                                                    _%hd3874238817%_
                                                    _%tl3874338820%_))))
                                           (_%__kont4890648907%_)))))))
                              (_%__kont4893248933%_ (lambda () _%r38676%_)))
                          (if (gx#stx-pair? _%__stx4892748928%_)
                              (let ((_%e3868338709%_
                                     (gx#syntax-e _%__stx4892748928%_)))
                                (let ((_%tl3868538716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3868338709%_)))
                                      (_%hd3868438713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3868338709%_))))
                                  (_%__kont4893048931%_
                                   _%tl3868538716%_
                                   _%hd3868438713%_)))
                              (_%__kont4893248933%_)))))))
                 (_%generate-body37672%_
                  (lambda (_%body38374%_)
                    (let* ((_%g3837738385%_
                            (lambda (_%g3837838381%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3837838381%_)))
                           (_%g3837638664%_
                            (lambda (_%g3837838389%_)
                              ((lambda (_%g3837938392%_)
                                 (let* ((_%g3840438421%_
                                         (lambda (_%g3840538417%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3840538417%_)))
                                        (_%g3840338660%_
                                         (lambda (_%g3840538425%_)
                                           (if (gx#stx-pair/null?
                                                _%g3840538425%_)
                                               (let ((_g49602_
                                                      (gx#syntax-split-splice
                                                       _%g3840538425%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g49603_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g49602_)
                        (##values-length _g49602_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g49603_ 2)))
                 (error "Context expects 2 values" _g49603_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3840738428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g49602_
                                                             0)))
                                                         (_%tl3840938431%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g49602_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3840938431%_)
                                                         (letrec ((_%loop3841038434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3840838438%_ _%target3841438441%_)
                             (if (gx#stx-pair? _%hd3840838438%_)
                                 (let ((_%e3841138443%_
                                        (gx#syntax-e _%hd3840838438%_)))
                                   (let ((_%lp-hd3841238447%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3841138443%_)))
                                         (_%lp-tl3841338450%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3841138443%_))))
                                     (_%loop3841038434%_
                                      _%lp-tl3841338450%_
                                      (cons _%lp-hd3841238447%_
                                            _%target3841438441%_))))
                                 (let ((_%target3841538453%_
                                        (reverse _%target3841438441%_)))
                                   ((lambda (_%g3840638456%_)
                                      (let* ((_%g3847338490%_
                                              (lambda (_%g3847438486%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3847438486%_)))
                                             (_%g3847238656%_
                                              (lambda (_%g3847438494%_)
                                                (if (gx#stx-pair/null?
                                                     _%g3847438494%_)
                                                    (let ((_g49604_
                                                           (gx#syntax-split-splice
                                                            _%g3847438494%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g49605_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g49604_)
                             (##values-length _g49604_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g49605_ 2)))
                      (error "Context expects 2 values" _g49605_)))
                (let ((_%target3847638497%_
                       (let () (declare (not safe)) (##values-ref _g49604_ 0)))
                      (_%tl3847838500%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g49604_ 1))))
                  (if (gx#stx-null? _%tl3847838500%_)
                      (letrec ((_%loop3847938503%_
                                (lambda (_%hd3847738507%_
                                         _%fail-diagnostic3848338510%_)
                                  (if (gx#stx-pair? _%hd3847738507%_)
                                      (let ((_%e3848038512%_
                                             (gx#syntax-e _%hd3847738507%_)))
                                        (let ((_%lp-hd3848138516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3848038512%_)))
                                              (_%lp-tl3848238519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3848038512%_))))
                                          (_%loop3847938503%_
                                           _%lp-tl3848238519%_
                                           (cons _%lp-hd3848138516%_
                                                 _%fail-diagnostic3848338510%_))))
                                      (let ((_%fail-diagnostic3848438522%_
                                             (reverse _%fail-diagnostic3848338510%_)))
                                        ((lambda (_%g3847538525%_)
                                           (let* ((_%g3854238550%_
                                                   (lambda (_%g3854338546%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g3854338546%_)))
                                                  (_%g3854138636%_
                                                   (lambda (_%g3854338554%_)
                                                     ((lambda (_%g3854438557%_)
                                                        (let* ((_%g3857038578%_
                                                                (lambda (_%g3857138574%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g3857138574%_)))
                       (_%g3856938632%_
                        (lambda (_%g3857138582%_)
                          ((lambda (_%g3857238585%_)
                             (let* ((_%g3859838606%_
                                     (lambda (_%g3859938602%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g3859938602%_)))
                                    (_%g3859738628%_
                                     (lambda (_%g3859938610%_)
                                       ((lambda (_%g3860038613%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g3860038613%_
                                                            '()))))
                                        _%g3859938610%_))))
                               (_%g3859738628%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g3837938392%_
                                                         (cons _%g3854438557%_
                                                               '()))
                                                   '())
                                             (cons _%g3857238585%_ '())))
                                 (gx#stx-source _%stx37665%_)))))
                           _%g3857138582%_))))
                  (_%g3856938632%_
                   (_%generate-clauses37673%_
                    _%body38374%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g3837938392%_ '()) '())))))))
              _%g3854338554%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g3854138636%_
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
                                     (foldr (lambda (_%g3863938644%_
                                                     _%g3864038647%_)
                                              (cons _%g3863938644%_
                                                    _%g3864038647%_))
                                            (foldr (lambda (_%g3864138650%_
                                                            _%g3864238653%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g3864138650%_ '()))
                   _%g3864238653%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g3847538525%_)
                                            _%g3840638456%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx37665%_)))))
                                         _%fail-diagnostic3848438522%_))))))
                        (_%loop3847938503%_ _%target3847638497%_ '()))
                      (_%g3847338490%_ _%g3847438494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3847338490%_
                                                     _%g3847438494%_)))))
                                        (_%g3847238656%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses37668%_))))
                                    _%target3841538453%_))))))
                   (_%loop3841038434%_ _%target3840738428%_ '()))
                 (_%g3840438421%_ _%g3840538425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3840438421%_
                                                _%g3840538425%_)))))
                                   (_%g3840338660%_ _%tgt-lst37667%_)))
                               _%g3837838389%_))))
                      (_%g3837638664%_ (gx#genident 'E)))))
                 (_%generate-clauses37673%_
                  (lambda (_%rest38026%_ _%E38028%_)
                    (let* ((_%__stx4894348944%_ _%rest38026%_)
                           (_%g3803238048%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4894348944%_))))
                      (let ((_%__kont4894648947%_
                             (lambda (_%g3803438282%_)
                               (let* ((_%g3829338311%_
                                       (lambda (_%g3829438307%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g3829438307%_)))
                                      (_%g3829238366%_
                                       (lambda (_%g3829438315%_)
                                         (if (gx#stx-pair? _%g3829438315%_)
                                             (let ((_%e3829738318%_
                                                    (gx#syntax-e
                                                     _%g3829438315%_)))
                                               (let ((_%hd3829838322%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e3829738318%_)))
                                                     (_%tl3829938325%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e3829738318%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl3829938325%_)
                                                     (let ((_%e3830038328%_
                                                            (gx#syntax-e
                                                             _%tl3829938325%_)))
                                                       (let ((_%hd3830138332%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e3830038328%_)))
                     (_%tl3830238335%_
                      (let () (declare (not safe)) (##cdr _%e3830038328%_))))
                 (if (gx#stx-pair? _%tl3830238335%_)
                     (let ((_%e3830338338%_ (gx#syntax-e _%tl3830238335%_)))
                       (let ((_%hd3830438342%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3830338338%_)))
                             (_%tl3830538345%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3830338338%_))))
                         (if (gx#stx-null? _%tl3830538345%_)
                             ((lambda (_%g3829538348%_ _%g3829638350%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g3829638350%_)
                                                      (_%generate137674%_
                                                       _%g3829638350%_
                                                       _%g3829538348%_
                                                       _%E38028%_)
                                                      _%g3829538348%_)
                                                  '()))))
                              _%hd3830438342%_
                              _%hd3830138332%_)
                             (_%g3829338311%_ _%g3829438315%_))))
                     (_%g3829338311%_ _%g3829438315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g3829338311%_
                                                      _%g3829438315%_))))
                                             (_%g3829338311%_
                                              _%g3829438315%_)))))
                                 (_%g3829238366%_ _%g3803438282%_))))
                            (_%__kont4894848949%_
                             (lambda (_%g3803838076%_ _%g3803938078%_)
                               (let* ((_%g3809138110%_
                                       (lambda (_%g3809238106%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g3809238106%_)))
                                      (_%g3809038261%_
                                       (lambda (_%g3809238114%_)
                                         (if (gx#stx-pair? _%g3809238114%_)
                                             (let ((_%e3809638117%_
                                                    (gx#syntax-e
                                                     _%g3809238114%_)))
                                               (let ((_%hd3809738121%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e3809638117%_)))
                                                     (_%tl3809838124%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e3809638117%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl3809838124%_)
                                                     (let ((_%e3809938127%_
                                                            (gx#syntax-e
                                                             _%tl3809838124%_)))
                                                       (let ((_%hd3810038131%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e3809938127%_)))
                     (_%tl3810138134%_
                      (let () (declare (not safe)) (##cdr _%e3809938127%_))))
                 (if (gx#stx-pair? _%tl3810138134%_)
                     (let ((_%e3810238137%_ (gx#syntax-e _%tl3810138134%_)))
                       (let ((_%hd3810338141%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3810238137%_)))
                             (_%tl3810438144%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3810238137%_))))
                         (if (gx#stx-null? _%tl3810438144%_)
                             ((lambda (_%g3809338147%_
                                       _%g3809438149%_
                                       _%g3809538150%_)
                                (if (gx#stx-e _%g3809438149%_)
                                    (let* ((_%g3816738182%_
                                            (lambda (_%g3816838178%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g3816838178%_)))
                                           (_%g3816638227%_
                                            (lambda (_%g3816838186%_)
                                              (if (gx#stx-pair?
                                                   _%g3816838186%_)
                                                  (let ((_%e3817138189%_
                                                         (gx#syntax-e
                                                          _%g3816838186%_)))
                                                    (let ((_%hd3817238193%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3817138189%_)))
                                                          (_%tl3817338196%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3817138189%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl3817338196%_)
                                                          (let ((_%e3817438199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3817338196%_)))
                    (let ((_%hd3817538203%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3817438199%_)))
                          (_%tl3817638206%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3817438199%_))))
                      (if (gx#stx-null? _%tl3817638206%_)
                          ((lambda (_%g3816938209%_ _%g3817038211%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g3809538150%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g3817038211%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g3816938209%_ '()))))
                           _%hd3817538203%_
                           _%hd3817238193%_)
                          (_%g3816738182%_ _%g3816838186%_))))
                  (_%g3816738182%_ _%g3816838186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3816738182%_
                                                   _%g3816838186%_)))))
                                      (_%g3816638227%_
                                       (list (_%generate137674%_
                                              _%g3809438149%_
                                              _%g3809338147%_
                                              _%E38028%_)
                                             (_%generate-clauses37673%_
                                              _%g3803838076%_
                                              (cons _%g3809538150%_ '())))))
                                    (let* ((_%g3823138239%_
                                            (lambda (_%g3823238235%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g3823238235%_)))
                                           (_%g3823038257%_
                                            (lambda (_%g3823238243%_)
                                              ((lambda (_%g3823338246%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g3809538150%_
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
                             (cons _%g3809338147%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g3823338246%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g3823238243%_))))
                                      (_%g3823038257%_
                                       (_%generate-clauses37673%_
                                        _%g3803838076%_
                                        (cons _%g3809538150%_ '()))))))
                              _%hd3810338141%_
                              _%hd3810038131%_
                              _%hd3809738121%_)
                             (_%g3809138110%_ _%g3809238114%_))))
                     (_%g3809138110%_ _%g3809238114%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g3809138110%_
                                                      _%g3809238114%_))))
                                             (_%g3809138110%_
                                              _%g3809238114%_)))))
                                 (_%g3809038261%_ _%g3803938078%_))))
                            (_%__kont4895048951%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E38028%_ '()))))))
                        (if (gx#stx-pair? _%__stx4894348944%_)
                            (let ((_%e3803538272%_
                                   (gx#syntax-e _%__stx4894348944%_)))
                              (let ((_%tl3803738279%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3803538272%_)))
                                    (_%hd3803638276%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3803538272%_))))
                                (if (gx#stx-null? _%tl3803738279%_)
                                    (_%__kont4894648947%_ _%hd3803638276%_)
                                    (_%__kont4894848949%_
                                     _%tl3803738279%_
                                     _%hd3803638276%_))))
                            (_%__kont4895048951%_))))))
                 (_%generate137674%_
                  (lambda (_%clause37676%_ _%body37678%_ _%E37679%_)
                    (let* ((_%g3768137705%_
                            (lambda (_%g3768237701%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3768237701%_)))
                           (_%g3768038022%_
                            (lambda (_%g3768237709%_)
                              (if (gx#stx-pair? _%g3768237709%_)
                                  (let ((_%e3768537712%_
                                         (gx#syntax-e _%g3768237709%_)))
                                    (let ((_%hd3768637716%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3768537712%_)))
                                          (_%tl3768737719%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3768537712%_))))
                                      (if (gx#stx-pair? _%tl3768737719%_)
                                          (let ((_%e3768837722%_
                                                 (gx#syntax-e
                                                  _%tl3768737719%_)))
                                            (let ((_%hd3768937726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3768837722%_)))
                                                  (_%tl3769037729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3768837722%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd3768937726%_)
                                                  (let ((_g49606_
                                                         (gx#syntax-split-splice
                                                          _%hd3768937726%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g49607_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g49606_)
                           (##values-length _g49606_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g49607_ 2)))
                    (error "Context expects 2 values" _g49607_)))
              (let ((_%target3769137732%_
                     (let () (declare (not safe)) (##values-ref _g49606_ 0)))
                    (_%tl3769337735%_
                     (let () (declare (not safe)) (##values-ref _g49606_ 1))))
                (if (gx#stx-null? _%tl3769337735%_)
                    (letrec ((_%loop3769437738%_
                              (lambda (_%hd3769237742%_ _%var3769837745%_)
                                (if (gx#stx-pair? _%hd3769237742%_)
                                    (let ((_%e3769537747%_
                                           (gx#syntax-e _%hd3769237742%_)))
                                      (let ((_%lp-hd3769637751%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3769537747%_)))
                                            (_%lp-tl3769737754%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3769537747%_))))
                                        (_%loop3769437738%_
                                         _%lp-tl3769737754%_
                                         (cons _%lp-hd3769637751%_
                                               _%var3769837745%_))))
                                    (let ((_%var3769937757%_
                                           (reverse _%var3769837745%_)))
                                      (if (gx#stx-null? _%tl3769037729%_)
                                          ((lambda (_%g3768337760%_
                                                    _%g3768437762%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g3778337786%_
                                                                _%g3778437789%_)
                                                         (cons _%g3778337786%_
                                                               _%g3778437789%_))
                                                       '()
                                                       _%g3768337760%_)
                                                _%stx37665%_)
                                               (let* ((_%g3779237800%_
                                                       (lambda (_%g3779337796%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3779337796%_)))
                                                      (_%g3779137894%_
                                                       (lambda (_%g3779337804%_)
                                                         ((lambda (_%g3779437807%_)
                                                            (let* ((_%g3782037828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3782137824%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3782137824%_)))
                           (_%g3781937890%_
                            (lambda (_%g3782137832%_)
                              ((lambda (_%g3782237835%_)
                                 (let* ((_%g3784837856%_
                                         (lambda (_%g3784937852%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3784937852%_)))
                                        (_%g3784737878%_
                                         (lambda (_%g3784937860%_)
                                           ((lambda (_%g3785037863%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g3768437762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g3785037863%_ '()))
                   (cons _%g3779437807%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx37665%_)))
                                            _%g3784937860%_))))
                                   (_%g3784737878%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g3788137884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3788237887%_)
                  (cons _%g3788137884%_ _%g3788237887%_))
                '()
                _%g3768337760%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g3782237835%_ '())))
                                     (gx#stx-source _%stx37665%_)))))
                               _%g3782137832%_))))
                      (_%g3781937890%_ _%body37678%_)))
                  _%g3779337804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3779137894%_
                                                  (let _%recur37898%_ ((_%rest37901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause37676%_)
                               (_%rest-targets37903%_ _%tgt-lst37667%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx4896948970%_
                                                            _%rest37901%_)
                                                           (_%g3790637918%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx4896948970%_))))
                                                      (let ((_%__kont4897248973%_
                                                             (lambda (_%g3790837954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g3790937956%_)
                       (let* ((_%g3797137983%_
                               (lambda (_%g3797237979%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g3797237979%_)))
                              (_%g3797038014%_
                               (lambda (_%g3797237987%_)
                                 (if (gx#stx-pair? _%g3797237987%_)
                                     (let ((_%e3797537990%_
                                            (gx#syntax-e _%g3797237987%_)))
                                       (let ((_%hd3797637994%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e3797537990%_)))
                                             (_%tl3797737997%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e3797537990%_))))
                                         ((lambda (_%g3797338000%_
                                                   _%g3797438002%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx37665%_
                                             _%g3797438002%_
                                             _%g3790937956%_
                                             (_%recur37898%_
                                              _%g3790837954%_
                                              _%g3797338000%_)
                                             _%E37679%_))
                                          _%tl3797737997%_
                                          _%hd3797637994%_)))
                                     (_%g3797137983%_ _%g3797237987%_)))))
                         (_%g3797038014%_ _%rest-targets37903%_))))
                    (_%__kont4897448975%_
                     (lambda ()
                       (cons _%g3768437762%_
                             (foldr (lambda (_%g3792837931%_ _%g3792937934%_)
                                      (cons _%g3792837931%_ _%g3792937934%_))
                                    '()
                                    _%g3768337760%_)))))
                (if (gx#stx-pair? _%__stx4896948970%_)
                    (let ((_%e3791037944%_ (gx#syntax-e _%__stx4896948970%_)))
                      (let ((_%tl3791237951%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3791037944%_)))
                            (_%hd3791137948%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3791037944%_))))
                        (_%__kont4897248973%_
                         _%tl3791237951%_
                         _%hd3791137948%_)))
                    (_%__kont4897448975%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var3769937757%_
                                           _%hd3768637716%_)
                                          (_%g3768137705%_
                                           _%g3768237709%_)))))))
                      (_%loop3769437738%_ _%target3769137732%_ '()))
                    (_%g3768137705%_ _%g3768237709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3768137705%_
                                                   _%g3768237709%_))))
                                          (_%g3768137705%_ _%g3768237709%_))))
                                  (_%g3768137705%_ _%g3768237709%_)))))
                      (_%g3768038022%_
                       (list (gx#genident 'K)
                             (let ((__tmp49608
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause37676%_)))
                               (declare (not safe))
                               (##apply append __tmp49608))))))))
          (_%generate-body37672%_
           (_%parse-body37670%_ (gx#stx-length _%tgt-lst37667%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx37567%_ _%tgt37569%_ _%clauses37570%_)
        (letrec ((_%reclause37572%_
                  (lambda (_%clause37575%_)
                    (let* ((_%__stx4898548986%_ _%clause37575%_)
                           (_%g3758037595%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx4898548986%_))))
                      (let ((_%__kont4898848989%_ (lambda () _%clause37575%_))
                            (_%__kont4899048991%_
                             (lambda (_%g3758537623%_ _%g3758637625%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g3758637625%_ '())
                                      _%g3758537623%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont4899248993%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx37567%_
                                _%clause37575%_))))
                        (if (gx#stx-pair? _%__stx4898548986%_)
                            (let ((_%e3758237647%_
                                   (gx#syntax-e _%__stx4898548986%_)))
                              (let ((_%tl3758437654%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3758237647%_)))
                                    (_%hd3758337651%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3758237647%_))))
                                (if (gx#identifier? _%hd3758337651%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g49609_|
                                         _%hd3758337651%_)
                                        (_%__kont4898848989%_)
                                        (_%__kont4899048991%_
                                         _%tl3758437654%_
                                         _%hd3758337651%_))
                                    (_%__kont4899048991%_
                                     _%tl3758437654%_
                                     _%hd3758337651%_))))
                            (_%__kont4899248993%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx37567%_
           (cons _%tgt37569%_ '())
           (gx#stx-map _%reclause37572%_ _%clauses37570%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx44908%_)
        (let* ((_%__stx4901349014%_ _%stx44908%_)
               (_%g4491344942%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4901349014%_))))
          (let ((_%__kont4901649017%_
                 (lambda (_%g4491545182%_)
                   (let* ((_%g4519545203%_
                           (lambda (_%g4519645199%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4519645199%_)))
                          (_%g4519445256%_
                           (lambda (_%g4519645207%_)
                             ((lambda (_%g4519745210%_)
                                (let* ((_%g4522245230%_
                                        (lambda (_%g4522345226%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g4522345226%_)))
                                       (_%g4522145252%_
                                        (lambda (_%g4522345234%_)
                                          ((lambda (_%g4522445237%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4519745210%_
                                                               '())
                                                         (cons _%g4522445237%_
                                                               '()))))
                                           _%g4522345234%_))))
                                  (_%g4522145252%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g4519745210%_
                                                _%g4491545182%_))
                                    (gx#stx-source _%stx44908%_)))))
                              _%g4519645207%_))))
                     (_%g4519445256%_ (gx#genident 'e)))))
                (_%__kont4901849019%_
                 (lambda (_%g4492245077%_)
                   (let* ((_%g4509045098%_
                           (lambda (_%g4509145094%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4509145094%_)))
                          (_%g4508945151%_
                           (lambda (_%g4509145102%_)
                             ((lambda (_%g4509245105%_)
                                (let* ((_%g4511745125%_
                                        (lambda (_%g4511845121%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g4511845121%_)))
                                       (_%g4511645147%_
                                        (lambda (_%g4511845129%_)
                                          ((lambda (_%g4511945132%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g4509245105%_
                                                         (cons _%g4511945132%_
                                                               '()))))
                                           _%g4511845129%_))))
                                  (_%g4511645147%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g4509245105%_
                                                _%g4492245077%_))
                                    (gx#stx-source _%stx44908%_)))))
                              _%g4509145102%_))))
                     (_%g4508945151%_ (gx#genident 'args)))))
                (_%__kont4902049021%_
                 (lambda (_%g4492944969%_ _%g4493044971%_)
                   (let* ((_%g4498544993%_
                           (lambda (_%g4498644989%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4498644989%_)))
                          (_%g4498445046%_
                           (lambda (_%g4498644997%_)
                             ((lambda (_%g4498745000%_)
                                (let* ((_%g4501245020%_
                                        (lambda (_%g4501345016%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g4501345016%_)))
                                       (_%g4501145042%_
                                        (lambda (_%g4501345024%_)
                                          ((lambda (_%g4501445027%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g4498745000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g4493044971%_ '()))
                       '())
                 (cons _%g4501445027%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g4501345024%_))))
                                  (_%g4501145042%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx44908%_
                                    _%g4498745000%_
                                    _%g4492944969%_))))
                              _%g4498644997%_))))
                     (_%g4498445046%_ (gx#genident _%g4493044971%_))))))
            (let* ((_%__match4906649067%_
                    (lambda (_%e4493144949%_
                             _%hd4493244953%_
                             _%tl4493344956%_
                             _%e4493444959%_
                             _%hd4493544963%_
                             _%tl4493644966%_)
                      (let ((_%g4492944969%_ _%tl4493644966%_)
                            (_%g4493044971%_ _%hd4493544963%_))
                        (if (gx#stx-list? _%g4492944969%_)
                            (_%__kont4902049021%_
                             _%g4492944969%_
                             _%g4493044971%_)
                            (let () (declare (not safe)) (_%g4491344942%_))))))
                   (_%__match4905449055%_
                    (lambda (_%e4492345057%_
                             _%hd4492445061%_
                             _%tl4492545064%_
                             _%e4492645067%_
                             _%hd4492745071%_
                             _%tl4492845074%_)
                      (let ((_%g4492245077%_ _%tl4492845074%_))
                        (if (gx#stx-list? _%g4492245077%_)
                            (_%__kont4901849019%_ _%g4492245077%_)
                            (_%__match4906649067%_
                             _%e4492345057%_
                             _%hd4492445061%_
                             _%tl4492545064%_
                             _%e4492645067%_
                             _%hd4492745071%_
                             _%tl4492845074%_)))))
                   (_%__match4903849039%_
                    (lambda (_%e4491645162%_
                             _%hd4491745166%_
                             _%tl4491845169%_
                             _%e4491945172%_
                             _%hd4492045176%_
                             _%tl4492145179%_)
                      (let ((_%g4491545182%_ _%tl4492145179%_))
                        (if (gx#stx-list? _%g4491545182%_)
                            (_%__kont4901649017%_ _%g4491545182%_)
                            (_%__match4906649067%_
                             _%e4491645162%_
                             _%hd4491745166%_
                             _%tl4491845169%_
                             _%e4491945172%_
                             _%hd4492045176%_
                             _%tl4492145179%_))))))
              (if (gx#stx-pair? _%__stx4901349014%_)
                  (let ((_%e4491645162%_ (gx#syntax-e _%__stx4901349014%_)))
                    (let ((_%tl4491845169%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4491645162%_)))
                          (_%hd4491745166%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4491645162%_))))
                      (if (gx#stx-pair? _%tl4491845169%_)
                          (let ((_%e4491945172%_
                                 (gx#syntax-e _%tl4491845169%_)))
                            (let ((_%tl4492145179%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4491945172%_)))
                                  (_%hd4492045176%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4491945172%_))))
                              (if (gx#identifier? _%hd4492045176%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g49610_|
                                       _%hd4492045176%_)
                                      (_%__match4903849039%_
                                       _%e4491645162%_
                                       _%hd4491745166%_
                                       _%tl4491845169%_
                                       _%e4491945172%_
                                       _%hd4492045176%_
                                       _%tl4492145179%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g49611_|
                                           _%hd4492045176%_)
                                          (_%__match4905449055%_
                                           _%e4491645162%_
                                           _%hd4491745166%_
                                           _%tl4491845169%_
                                           _%e4491945172%_
                                           _%hd4492045176%_
                                           _%tl4492145179%_)
                                          (_%__match4906649067%_
                                           _%e4491645162%_
                                           _%hd4491745166%_
                                           _%tl4491845169%_
                                           _%e4491945172%_
                                           _%hd4492045176%_
                                           _%tl4492145179%_)))
                                  (_%__match4906649067%_
                                   _%e4491645162%_
                                   _%hd4491745166%_
                                   _%tl4491845169%_
                                   _%e4491945172%_
                                   _%hd4492045176%_
                                   _%tl4492145179%_))))
                          (let () (declare (not safe)) (_%g4491344942%_)))))
                  (let () (declare (not safe)) (_%g4491344942%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx45264%_)
        (let* ((_%g4526745291%_
                (lambda (_%g4526845287%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4526845287%_)))
               (_%g4526645499%_
                (lambda (_%g4526845295%_)
                  (if (gx#stx-pair? _%g4526845295%_)
                      (let ((_%e4527145298%_ (gx#syntax-e _%g4526845295%_)))
                        (let ((_%hd4527245302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4527145298%_)))
                              (_%tl4527345305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4527145298%_))))
                          (if (gx#stx-pair? _%tl4527345305%_)
                              (let ((_%e4527445308%_
                                     (gx#syntax-e _%tl4527345305%_)))
                                (let ((_%hd4527545312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4527445308%_)))
                                      (_%tl4527645315%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4527445308%_))))
                                  (if (gx#stx-pair/null? _%hd4527545312%_)
                                      (let ((_g49612_
                                             (gx#syntax-split-splice
                                              _%hd4527545312%_
                                              '0)))
                                        (begin
                                          (let ((_g49613_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49612_)
                                                       (##values-length
                                                        _g49612_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49613_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49613_)))
                                          (let ((_%target4527745318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49612_ 0)))
                                                (_%tl4527945321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49612_ 1))))
                                            (if (gx#stx-null? _%tl4527945321%_)
                                                (letrec ((_%loop4528045324%_
                                                          (lambda (_%hd4527845328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4528445331%_)
                    (if (gx#stx-pair? _%hd4527845328%_)
                        (let ((_%e4528145333%_ (gx#syntax-e _%hd4527845328%_)))
                          (let ((_%lp-hd4528245337%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4528145333%_)))
                                (_%lp-tl4528345340%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4528145333%_))))
                            (_%loop4528045324%_
                             _%lp-tl4528345340%_
                             (cons _%lp-hd4528245337%_ _%e4528445331%_))))
                        (let ((_%e4528545343%_ (reverse _%e4528445331%_)))
                          ((lambda (_%g4526945346%_ _%g4527045348%_)
                             (if (gx#stx-list? _%g4526945346%_)
                                 (let* ((_%g4536645383%_
                                         (lambda (_%g4536745379%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4536745379%_)))
                                        (_%g4536545487%_
                                         (lambda (_%g4536745387%_)
                                           (if (gx#stx-pair/null?
                                                _%g4536745387%_)
                                               (let ((_g49614_
                                                      (gx#syntax-split-splice
                                                       _%g4536745387%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g49615_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g49614_)
                        (##values-length _g49614_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g49615_ 2)))
                 (error "Context expects 2 values" _g49615_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4536945390%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g49614_
                                                             0)))
                                                         (_%tl4537145393%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g49614_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4537145393%_)
                                                         (letrec ((_%loop4537245396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4537045400%_ _%$e4537645403%_)
                             (if (gx#stx-pair? _%hd4537045400%_)
                                 (let ((_%e4537345405%_
                                        (gx#syntax-e _%hd4537045400%_)))
                                   (let ((_%lp-hd4537445409%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4537345405%_)))
                                         (_%lp-tl4537545412%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4537345405%_))))
                                     (_%loop4537245396%_
                                      _%lp-tl4537545412%_
                                      (cons _%lp-hd4537445409%_
                                            _%$e4537645403%_))))
                                 (let ((_%$e4537745415%_
                                        (reverse _%$e4537645403%_)))
                                   ((lambda (_%g4536845418%_)
                                      (let* ((_%g4543445442%_
                                              (lambda (_%g4543545438%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g4543545438%_)))
                                             (_%g4543345475%_
                                              (lambda (_%g4543545446%_)
                                                ((lambda (_%g4543645449%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g4527045348%_
                          _%g4536845418%_)
                         (foldr (lambda (_%g4546345467%_
                                         _%g4546445470%_
                                         _%g4546545472%_)
                                  (cons (cons _%g4546445470%_
                                              (cons _%g4546345467%_ '()))
                                        _%g4546545472%_))
                                '()
                                _%g4527045348%_
                                _%g4536845418%_))
                       (cons _%g4543645449%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4543545446%_))))
                                        (_%g4543345475%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx45264%_
                                          (foldr (lambda (_%g4547845481%_
                                                          _%g4547945484%_)
                                                   (cons _%g4547845481%_
                                                         _%g4547945484%_))
                                                 '()
                                                 _%g4536845418%_)
                                          _%g4526945346%_))))
                                    _%$e4537745415%_))))))
                   (_%loop4537245396%_ _%target4536945390%_ '()))
                 (_%g4536645383%_ _%g4536745387%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4536645383%_
                                                _%g4536745387%_)))))
                                   (_%g4536545487%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4549045493%_
                                                     _%g4549145496%_)
                                              (cons _%g4549045493%_
                                                    _%g4549145496%_))
                                            '()
                                            _%g4527045348%_))))
                                 (_%g4526745291%_ _%g4526845295%_)))
                           _%tl4527645315%_
                           _%e4528545343%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4528045324%_
                                                   _%target4527745318%_
                                                   '()))
                                                (_%g4526745291%_
                                                 _%g4526845295%_)))))
                                      (_%g4526745291%_ _%g4526845295%_))))
                              (_%g4526745291%_ _%g4526845295%_))))
                      (_%g4526745291%_ _%g4526845295%_)))))
          (_%g4526645499%_ _%stx45264%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx45505%_)
        (let* ((_%__stx4906949070%_ _%$stx45505%_)
               (_%g4551145594%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4906949070%_))))
          (let ((_%__kont4907249073%_
                 (lambda (_%g4551345914%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4593045933%_ _%g4593145936%_)
                                        (cons _%g4593045933%_ _%g4593145936%_))
                                      '()
                                      _%g4551345914%_)))))
                (_%__kont4907649077%_
                 (lambda (_%g4552945824%_
                          _%g4553045826%_
                          _%g4553145827%_
                          _%g4553245828%_)
                   (cons _%g4553245828%_
                         (cons (cons (cons _%g4553145827%_
                                           (cons _%g4553045826%_ '()))
                                     '())
                               (foldr (lambda (_%g4585045853%_ _%g4585145856%_)
                                        (cons _%g4585045853%_ _%g4585145856%_))
                                      '()
                                      _%g4552945824%_)))))
                (_%__kont4908049081%_
                 (lambda (_%g4555445699%_ _%g4555545701%_ _%g4555645702%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g4572445731%_ _%g4572545734%_)
                                        (cons _%g4572445731%_ _%g4572545734%_))
                                      '()
                                      _%g4555545701%_)
                               (cons (cons (foldr (lambda (_%g4572645737%_
                                                           _%g4572745740%_)
                                                    (cons _%g4572645737%_
                                                          _%g4572745740%_))
                                                  '()
                                                  _%g4555645702%_)
                                           (foldr (lambda (_%g4572845743%_
                                                           _%g4572945746%_)
                                                    (cons _%g4572845743%_
                                                          _%g4572945746%_))
                                                  '()
                                                  _%g4555445699%_))
                                     '()))))))
            (let* ((_%__match4916249163%_
                    (lambda (_%e4555745601%_
                             _%hd4555845605%_
                             _%tl4555945608%_
                             _%e4556045611%_
                             _%hd4556145615%_
                             _%tl4556245618%_
                             _%__splice4908249083%_
                             _%target4556345621%_
                             _%tl4556545624%_)
                      (letrec ((_%loop4556645627%_
                                (lambda (_%hd4556445631%_
                                         _%expr4557045634%_
                                         _%hd4557145635%_)
                                  (if (gx#stx-pair? _%hd4556445631%_)
                                      (let ((_%e4556745637%_
                                             (gx#syntax-e _%hd4556445631%_)))
                                        (let ((_%lp-tl4556945644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4556745637%_)))
                                              (_%lp-hd4556845641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4556745637%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd4556845641%_)
                                              (let ((_%e4557445647%_
                                                     (gx#syntax-e
                                                      _%lp-hd4556845641%_)))
                                                (let ((_%tl4557645654%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4557445647%_)))
                                                      (_%hd4557545651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4557445647%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4557645654%_)
                                                      (let ((_%e4557745657%_
                                                             (gx#syntax-e
                                                              _%tl4557645654%_)))
                                                        (let ((_%tl4557945664%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4557745657%_)))
                      (_%hd4557845661%_
                       (let () (declare (not safe)) (##car _%e4557745657%_))))
                  (if (gx#stx-null? _%tl4557945664%_)
                      (_%loop4556645627%_
                       _%lp-tl4556945644%_
                       (cons _%hd4557845661%_ _%expr4557045634%_)
                       (cons _%hd4557545651%_ _%hd4557145635%_))
                      (let () (declare (not safe)) (_%g4551145594%_)))))
              (let () (declare (not safe)) (_%g4551145594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4551145594%_)))))
                                      (let ((_%hd4557345669%_
                                             (reverse _%hd4557145635%_))
                                            (_%expr4557245667%_
                                             (reverse _%expr4557045634%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4556245618%_)
                                            (let ((_%__splice4908449085%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4556245618%_
                                                    '0)))
                                              (let ((_%tl4558245674%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4908449085%_
                                                        '1)))
                                                    (_%target4558045671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4908449085%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4558245674%_)
                                                    (letrec ((_%loop4558345677%_
                                                              (lambda (_%hd4558145681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4558745684%_)
                        (if (gx#stx-pair? _%hd4558145681%_)
                            (let ((_%e4558445686%_
                                   (gx#syntax-e _%hd4558145681%_)))
                              (let ((_%lp-tl4558645693%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4558445686%_)))
                                    (_%lp-hd4558545690%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4558445686%_))))
                                (_%loop4558345677%_
                                 _%lp-tl4558645693%_
                                 (cons _%lp-hd4558545690%_
                                       _%body4558745684%_))))
                            (let ((_%body4558845696%_
                                   (reverse _%body4558745684%_)))
                              (_%__kont4908049081%_
                               _%body4558845696%_
                               _%expr4557245667%_
                               _%hd4557345669%_))))))
              (_%loop4558345677%_ _%target4558045671%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4551145594%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4551145594%_))))))))
                        (_%loop4556645627%_ _%target4556345621%_ '() '()))))
                   (_%__match4915449155%_
                    (lambda (_%e4555745601%_
                             _%hd4555845605%_
                             _%tl4555945608%_
                             _%e4556045611%_
                             _%hd4556145615%_
                             _%tl4556245618%_)
                      (if (gx#stx-pair/null? _%hd4556145615%_)
                          (let ((_%__splice4908249083%_
                                 (gx#syntax-split-splice->vector
                                  _%hd4556145615%_
                                  '0)))
                            (let ((_%tl4556545624%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4908249083%_ '1)))
                                  (_%target4556345621%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4908249083%_
                                      '0))))
                              (if (gx#stx-null? _%tl4556545624%_)
                                  (_%__match4916249163%_
                                   _%e4555745601%_
                                   _%hd4555845605%_
                                   _%tl4555945608%_
                                   _%e4556045611%_
                                   _%hd4556145615%_
                                   _%tl4556245618%_
                                   _%__splice4908249083%_
                                   _%target4556345621%_
                                   _%tl4556545624%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4551145594%_)))))
                          (let () (declare (not safe)) (_%g4551145594%_)))))
                   (_%__match4914249143%_
                    (lambda (_%e4553345756%_
                             _%hd4553445760%_
                             _%tl4553545763%_
                             _%e4553645766%_
                             _%hd4553745770%_
                             _%tl4553845773%_
                             _%e4553945776%_
                             _%hd4554045780%_
                             _%tl4554145783%_
                             _%e4554245786%_
                             _%hd4554345790%_
                             _%tl4554445793%_
                             _%__splice4907849079%_
                             _%target4554545796%_
                             _%tl4554745799%_)
                      (letrec ((_%loop4554845802%_
                                (lambda (_%hd4554645806%_ _%body4555245809%_)
                                  (if (gx#stx-pair? _%hd4554645806%_)
                                      (let ((_%e4554945811%_
                                             (gx#syntax-e _%hd4554645806%_)))
                                        (let ((_%lp-tl4555145818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4554945811%_)))
                                              (_%lp-hd4555045815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4554945811%_))))
                                          (_%loop4554845802%_
                                           _%lp-tl4555145818%_
                                           (cons _%lp-hd4555045815%_
                                                 _%body4555245809%_))))
                                      (let ((_%body4555345821%_
                                             (reverse _%body4555245809%_)))
                                        (let ((_%g4552945824%_
                                               _%body4555345821%_)
                                              (_%g4553045826%_
                                               _%hd4554345790%_)
                                              (_%g4553145827%_
                                               _%hd4554045780%_)
                                              (_%g4553245828%_
                                               _%hd4553445760%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g4553145827%_)
                                              (_%__kont4907649077%_
                                               _%g4552945824%_
                                               _%g4553045826%_
                                               _%g4553145827%_
                                               _%g4553245828%_)
                                              (_%__match4915449155%_
                                               _%e4553345756%_
                                               _%hd4553445760%_
                                               _%tl4553545763%_
                                               _%e4553645766%_
                                               _%hd4553745770%_
                                               _%tl4553845773%_))))))))
                        (_%loop4554845802%_ _%target4554545796%_ '()))))
                   (_%__match4910849109%_
                    (lambda (_%e4551445866%_
                             _%hd4551545870%_
                             _%tl4551645873%_
                             _%e4551745876%_
                             _%hd4551845880%_
                             _%tl4551945883%_
                             _%__splice4907449075%_
                             _%target4552045886%_
                             _%tl4552245889%_)
                      (letrec ((_%loop4552345892%_
                                (lambda (_%hd4552145896%_ _%body4552745899%_)
                                  (if (gx#stx-pair? _%hd4552145896%_)
                                      (let ((_%e4552445901%_
                                             (gx#syntax-e _%hd4552145896%_)))
                                        (let ((_%lp-tl4552645908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4552445901%_)))
                                              (_%lp-hd4552545905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4552445901%_))))
                                          (_%loop4552345892%_
                                           _%lp-tl4552645908%_
                                           (cons _%lp-hd4552545905%_
                                                 _%body4552745899%_))))
                                      (let ((_%body4552845911%_
                                             (reverse _%body4552745899%_)))
                                        (_%__kont4907249073%_
                                         _%body4552845911%_))))))
                        (_%loop4552345892%_ _%target4552045886%_ '())))))
              (if (gx#stx-pair? _%__stx4906949070%_)
                  (let ((_%e4551445866%_ (gx#syntax-e _%__stx4906949070%_)))
                    (let ((_%tl4551645873%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4551445866%_)))
                          (_%hd4551545870%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4551445866%_))))
                      (if (gx#stx-pair? _%tl4551645873%_)
                          (let ((_%e4551745876%_
                                 (gx#syntax-e _%tl4551645873%_)))
                            (let ((_%tl4551945883%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4551745876%_)))
                                  (_%hd4551845880%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4551745876%_))))
                              (if (gx#stx-null? _%hd4551845880%_)
                                  (if (gx#stx-pair/null? _%tl4551945883%_)
                                      (let ((_%__splice4907449075%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4551945883%_
                                              '0)))
                                        (let ((_%tl4552245889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4907449075%_
                                                  '1)))
                                              (_%target4552045886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4907449075%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4552245889%_)
                                              (_%__match4910849109%_
                                               _%e4551445866%_
                                               _%hd4551545870%_
                                               _%tl4551645873%_
                                               _%e4551745876%_
                                               _%hd4551845880%_
                                               _%tl4551945883%_
                                               _%__splice4907449075%_
                                               _%target4552045886%_
                                               _%tl4552245889%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd4551845880%_)
                                                  (let ((_%__splice4908249083%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd4551845880%_
                                                          '0)))
                                                    (let ((_%tl4556545624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4908249083%_
                                                              '1)))
                                                          (_%target4556345621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4908249083%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4556545624%_)
                                                          (_%__match4916249163%_
                                                           _%e4551445866%_
                                                           _%hd4551545870%_
                                                           _%tl4551645873%_
                                                           _%e4551745876%_
                                                           _%hd4551845880%_
                                                           _%tl4551945883%_
                                                           _%__splice4908249083%_
                                                           _%target4556345621%_
                                                           _%tl4556545624%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4551145594%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4551145594%_))))))
                                      (if (gx#stx-pair/null? _%hd4551845880%_)
                                          (let ((_%__splice4908249083%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd4551845880%_
                                                  '0)))
                                            (let ((_%tl4556545624%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4908249083%_
                                                      '1)))
                                                  (_%target4556345621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4908249083%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4556545624%_)
                                                  (_%__match4916249163%_
                                                   _%e4551445866%_
                                                   _%hd4551545870%_
                                                   _%tl4551645873%_
                                                   _%e4551745876%_
                                                   _%hd4551845880%_
                                                   _%tl4551945883%_
                                                   _%__splice4908249083%_
                                                   _%target4556345621%_
                                                   _%tl4556545624%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4551145594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4551145594%_))))
                                  (if (gx#stx-pair? _%hd4551845880%_)
                                      (let ((_%e4553945776%_
                                             (gx#syntax-e _%hd4551845880%_)))
                                        (let ((_%tl4554145783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4553945776%_)))
                                              (_%hd4554045780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4553945776%_))))
                                          (if (gx#stx-pair? _%tl4554145783%_)
                                              (let ((_%e4554245786%_
                                                     (gx#syntax-e
                                                      _%tl4554145783%_)))
                                                (let ((_%tl4554445793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4554245786%_)))
                                                      (_%hd4554345790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4554245786%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4554445793%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4551945883%_)
                                                          (let ((_%__splice4907849079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4551945883%_ '0)))
                    (let ((_%tl4554745799%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4907849079%_ '1)))
                          (_%target4554545796%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4907849079%_ '0))))
                      (if (gx#stx-null? _%tl4554745799%_)
                          (_%__match4914249143%_
                           _%e4551445866%_
                           _%hd4551545870%_
                           _%tl4551645873%_
                           _%e4551745876%_
                           _%hd4551845880%_
                           _%tl4551945883%_
                           _%e4553945776%_
                           _%hd4554045780%_
                           _%tl4554145783%_
                           _%e4554245786%_
                           _%hd4554345790%_
                           _%tl4554445793%_
                           _%__splice4907849079%_
                           _%target4554545796%_
                           _%tl4554745799%_)
                          (if (gx#stx-pair/null? _%hd4551845880%_)
                              (let ((_%__splice4908249083%_
                                     (gx#syntax-split-splice->vector
                                      _%hd4551845880%_
                                      '0)))
                                (let ((_%tl4556545624%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4908249083%_
                                          '1)))
                                      (_%target4556345621%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4908249083%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4556545624%_)
                                      (_%__match4916249163%_
                                       _%e4551445866%_
                                       _%hd4551545870%_
                                       _%tl4551645873%_
                                       _%e4551745876%_
                                       _%hd4551845880%_
                                       _%tl4551945883%_
                                       _%__splice4908249083%_
                                       _%target4556345621%_
                                       _%tl4556545624%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4551145594%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4551145594%_))))))
                  (if (gx#stx-pair/null? _%hd4551845880%_)
                      (let ((_%__splice4908249083%_
                             (gx#syntax-split-splice->vector
                              _%hd4551845880%_
                              '0)))
                        (let ((_%tl4556545624%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4908249083%_ '1)))
                              (_%target4556345621%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4908249083%_ '0))))
                          (if (gx#stx-null? _%tl4556545624%_)
                              (_%__match4916249163%_
                               _%e4551445866%_
                               _%hd4551545870%_
                               _%tl4551645873%_
                               _%e4551745876%_
                               _%hd4551845880%_
                               _%tl4551945883%_
                               _%__splice4908249083%_
                               _%target4556345621%_
                               _%tl4556545624%_)
                              (let ()
                                (declare (not safe))
                                (_%g4551145594%_)))))
                      (let () (declare (not safe)) (_%g4551145594%_))))
              (if (gx#stx-pair/null? _%hd4551845880%_)
                  (let ((_%__splice4908249083%_
                         (gx#syntax-split-splice->vector _%hd4551845880%_ '0)))
                    (let ((_%tl4556545624%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4908249083%_ '1)))
                          (_%target4556345621%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4908249083%_ '0))))
                      (if (gx#stx-null? _%tl4556545624%_)
                          (_%__match4916249163%_
                           _%e4551445866%_
                           _%hd4551545870%_
                           _%tl4551645873%_
                           _%e4551745876%_
                           _%hd4551845880%_
                           _%tl4551945883%_
                           _%__splice4908249083%_
                           _%target4556345621%_
                           _%tl4556545624%_)
                          (let () (declare (not safe)) (_%g4551145594%_)))))
                  (let () (declare (not safe)) (_%g4551145594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd4551845880%_)
                                                  (let ((_%__splice4908249083%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd4551845880%_
                                                          '0)))
                                                    (let ((_%tl4556545624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4908249083%_
                                                              '1)))
                                                          (_%target4556345621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4908249083%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4556545624%_)
                                                          (_%__match4916249163%_
                                                           _%e4551445866%_
                                                           _%hd4551545870%_
                                                           _%tl4551645873%_
                                                           _%e4551745876%_
                                                           _%hd4551845880%_
                                                           _%tl4551945883%_
                                                           _%__splice4908249083%_
                                                           _%target4556345621%_
                                                           _%tl4556545624%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4551145594%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4551145594%_))))))
                                      (if (gx#stx-pair/null? _%hd4551845880%_)
                                          (let ((_%__splice4908249083%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd4551845880%_
                                                  '0)))
                                            (let ((_%tl4556545624%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4908249083%_
                                                      '1)))
                                                  (_%target4556345621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4908249083%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4556545624%_)
                                                  (_%__match4916249163%_
                                                   _%e4551445866%_
                                                   _%hd4551545870%_
                                                   _%tl4551645873%_
                                                   _%e4551745876%_
                                                   _%hd4551845880%_
                                                   _%tl4551945883%_
                                                   _%__splice4908249083%_
                                                   _%target4556345621%_
                                                   _%tl4556545624%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4551145594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4551145594%_)))))))
                          (let () (declare (not safe)) (_%g4551145594%_)))))
                  (let () (declare (not safe)) (_%g4551145594%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx45947%_)
        (let* ((_%__stx4916549166%_ _%$stx45947%_)
               (_%g4595246004%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4916549166%_))))
          (let ((_%__kont4916849169%_
                 (lambda (_%g4595446170%_
                          _%g4595546172%_
                          _%g4595646173%_
                          _%g4595746174%_
                          _%g4595846175%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g4595746174%_
                                           (cons _%g4595646173%_ '()))
                                     '())
                               (cons (cons _%g4595846175%_
                                           (cons _%g4595546172%_
                                                 (foldr (lambda (_%g4620046203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4620146206%_)
                  (cons _%g4620046203%_ _%g4620146206%_))
                '()
                _%g4595446170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4917249173%_
                 (lambda (_%g4598346059%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4607646079%_ _%g4607746082%_)
                                        (cons _%g4607646079%_ _%g4607746082%_))
                                      '()
                                      _%g4598346059%_))))))
            (let* ((_%__match4923849239%_
                    (lambda (_%e4598446011%_
                             _%hd4598546015%_
                             _%tl4598646018%_
                             _%e4598746021%_
                             _%hd4598846025%_
                             _%tl4598946028%_
                             _%__splice4917449175%_
                             _%target4599046031%_
                             _%tl4599246034%_)
                      (letrec ((_%loop4599346037%_
                                (lambda (_%hd4599146041%_ _%body4599746044%_)
                                  (if (gx#stx-pair? _%hd4599146041%_)
                                      (let ((_%e4599446046%_
                                             (gx#syntax-e _%hd4599146041%_)))
                                        (let ((_%lp-tl4599646053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4599446046%_)))
                                              (_%lp-hd4599546050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4599446046%_))))
                                          (_%loop4599346037%_
                                           _%lp-tl4599646053%_
                                           (cons _%lp-hd4599546050%_
                                                 _%body4599746044%_))))
                                      (let ((_%body4599846056%_
                                             (reverse _%body4599746044%_)))
                                        (_%__kont4917249173%_
                                         _%body4599846056%_))))))
                        (_%loop4599346037%_ _%target4599046031%_ '()))))
                   (_%__match4921649217%_
                    (lambda (_%e4595946092%_
                             _%hd4596046096%_
                             _%tl4596146099%_
                             _%e4596246102%_
                             _%hd4596346106%_
                             _%tl4596446109%_
                             _%e4596546112%_
                             _%hd4596646116%_
                             _%tl4596746119%_
                             _%e4596846122%_
                             _%hd4596946126%_
                             _%tl4597046129%_
                             _%e4597146132%_
                             _%hd4597246136%_
                             _%tl4597346139%_
                             _%__splice4917049171%_
                             _%target4597446142%_
                             _%tl4597646145%_)
                      (letrec ((_%loop4597746148%_
                                (lambda (_%hd4597546152%_ _%body4598146155%_)
                                  (if (gx#stx-pair? _%hd4597546152%_)
                                      (let ((_%e4597846157%_
                                             (gx#syntax-e _%hd4597546152%_)))
                                        (let ((_%lp-tl4598046164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4597846157%_)))
                                              (_%lp-hd4597946161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4597846157%_))))
                                          (_%loop4597746148%_
                                           _%lp-tl4598046164%_
                                           (cons _%lp-hd4597946161%_
                                                 _%body4598146155%_))))
                                      (let ((_%body4598246167%_
                                             (reverse _%body4598146155%_)))
                                        (_%__kont4916849169%_
                                         _%body4598246167%_
                                         _%tl4596746119%_
                                         _%hd4597246136%_
                                         _%hd4596946126%_
                                         _%hd4596046096%_))))))
                        (_%loop4597746148%_ _%target4597446142%_ '())))))
              (if (gx#stx-pair? _%__stx4916549166%_)
                  (let ((_%e4595946092%_ (gx#syntax-e _%__stx4916549166%_)))
                    (let ((_%tl4596146099%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4595946092%_)))
                          (_%hd4596046096%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4595946092%_))))
                      (if (gx#stx-pair? _%tl4596146099%_)
                          (let ((_%e4596246102%_
                                 (gx#syntax-e _%tl4596146099%_)))
                            (let ((_%tl4596446109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4596246102%_)))
                                  (_%hd4596346106%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4596246102%_))))
                              (if (gx#stx-pair? _%hd4596346106%_)
                                  (let ((_%e4596546112%_
                                         (gx#syntax-e _%hd4596346106%_)))
                                    (let ((_%tl4596746119%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4596546112%_)))
                                          (_%hd4596646116%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4596546112%_))))
                                      (if (gx#stx-pair? _%hd4596646116%_)
                                          (let ((_%e4596846122%_
                                                 (gx#syntax-e
                                                  _%hd4596646116%_)))
                                            (let ((_%tl4597046129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4596846122%_)))
                                                  (_%hd4596946126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4596846122%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4597046129%_)
                                                  (let ((_%e4597146132%_
                                                         (gx#syntax-e
                                                          _%tl4597046129%_)))
                                                    (let ((_%tl4597346139%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4597146132%_)))
                                                          (_%hd4597246136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4597146132%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4597346139%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4596446109%_)
                                                              (let ((_%__splice4917049171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4596446109%_
                              '0)))
                        (let ((_%tl4597646145%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4917049171%_ '1)))
                              (_%target4597446142%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4917049171%_ '0))))
                          (if (gx#stx-null? _%tl4597646145%_)
                              (_%__match4921649217%_
                               _%e4595946092%_
                               _%hd4596046096%_
                               _%tl4596146099%_
                               _%e4596246102%_
                               _%hd4596346106%_
                               _%tl4596446109%_
                               _%e4596546112%_
                               _%hd4596646116%_
                               _%tl4596746119%_
                               _%e4596846122%_
                               _%hd4596946126%_
                               _%tl4597046129%_
                               _%e4597146132%_
                               _%hd4597246136%_
                               _%tl4597346139%_
                               _%__splice4917049171%_
                               _%target4597446142%_
                               _%tl4597646145%_)
                              (let ()
                                (declare (not safe))
                                (_%g4595246004%_)))))
                      (let () (declare (not safe)) (_%g4595246004%_)))
                  (let () (declare (not safe)) (_%g4595246004%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4595246004%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4595246004%_)))))
                                  (if (gx#stx-null? _%hd4596346106%_)
                                      (if (gx#stx-pair/null? _%tl4596446109%_)
                                          (let ((_%__splice4917449175%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4596446109%_
                                                  '0)))
                                            (let ((_%tl4599246034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4917449175%_
                                                      '1)))
                                                  (_%target4599046031%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4917449175%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4599246034%_)
                                                  (_%__match4923849239%_
                                                   _%e4595946092%_
                                                   _%hd4596046096%_
                                                   _%tl4596146099%_
                                                   _%e4596246102%_
                                                   _%hd4596346106%_
                                                   _%tl4596446109%_
                                                   _%__splice4917449175%_
                                                   _%target4599046031%_
                                                   _%tl4599246034%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4595246004%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4595246004%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4595246004%_))))))
                          (let () (declare (not safe)) (_%g4595246004%_)))))
                  (let () (declare (not safe)) (_%g4595246004%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx46215%_)
        (let* ((_%__stx4924149242%_ _%$stx46215%_)
               (_%g4622646372%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4924149242%_))))
          (let ((_%__kont4924449245%_
                 (lambda (_%g4622846972%_ _%g4622946974%_ _%g4623046975%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g4699646999%_ _%g4699747002%_)
                                  (cons (cons _%g4623046975%_
                                              (cons _%g4699646999%_
                                                    (cons _%g4622846972%_
                                                          '())))
                                        _%g4699747002%_))
                                '()
                                _%g4622946974%_))))
                (_%__kont4924849249%_
                 (lambda (_%g4625246864%_ _%g4625346866%_ _%g4625446867%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g4688846891%_ _%g4688946894%_)
                                  (cons (cons _%g4625446867%_
                                              (cons _%g4688846891%_
                                                    (cons _%g4625246864%_
                                                          '())))
                                        _%g4688946894%_))
                                '()
                                _%g4625346866%_))))
                (_%__kont4925249253%_
                 (lambda (_%g4627646766%_ _%g4627746768%_ _%g4627846769%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g4627846769%_
                                     (cons _%g4627746768%_
                                           (cons _%g4627646766%_ '())))
                               '()))))
                (_%__kont4925449255%_
                 (lambda (_%g4629446692%_ _%g4629546694%_)
                   (cons _%g4629546694%_ (cons _%g4629446692%_ '()))))
                (_%__kont4925649257%_
                 (lambda (_%g4630546640%_ _%g4630646642%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g4630646642%_
                                           (cons _%g4630546640%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont4925849259%_
                 (lambda (_%g4631346592%_ _%g4631446594%_ _%g4631546595%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g4631546595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4631446594%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g4631346592%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4926049261%_
                 (lambda (_%g4632846523%_ _%g4632946525%_ _%g4633046526%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g4633046526%_
                                                       (cons _%g4632946525%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g4632846523%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4926249263%_
                 (lambda (_%g4634446443%_
                          _%g4634546445%_
                          _%g4634646446%_
                          _%g4634746447%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g4634746447%_
                                                       (cons _%g4634646446%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g4634446443%_
                                                             (cons (cons _%g4634546445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match4941449415%_
                    (lambda (_%e4631646552%_
                             _%hd4631746556%_
                             _%tl4631846559%_
                             _%e4631946562%_
                             _%hd4632046566%_
                             _%tl4632146569%_
                             _%e4632246572%_
                             _%hd4632346576%_
                             _%tl4632446579%_)
                      (if (gx#identifier? _%hd4632346576%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g49616_|
                               _%hd4632346576%_)
                              (if (gx#stx-pair? _%tl4632446579%_)
                                  (let ((_%e4632546582%_
                                         (gx#syntax-e _%tl4632446579%_)))
                                    (let ((_%tl4632746589%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4632546582%_)))
                                          (_%hd4632646586%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4632546582%_))))
                                      (if (gx#stx-null? _%tl4632746589%_)
                                          (_%__kont4925849259%_
                                           _%hd4632646586%_
                                           _%hd4632046566%_
                                           _%hd4631746556%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4622646372%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4622646372%_)))
                              (let () (declare (not safe)) (_%g4622646372%_)))
                          (if (gx#stx-datum? _%hd4632346576%_)
                              (let ((_%e4634046509%_
                                     (gx#stx-e _%hd4632346576%_)))
                                (if (equal? _%e4634046509%_ '::)
                                    (if (gx#stx-pair? _%tl4632446579%_)
                                        (let ((_%e4634146513%_
                                               (gx#syntax-e _%tl4632446579%_)))
                                          (let ((_%tl4634346520%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4634146513%_)))
                                                (_%hd4634246517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4634146513%_))))
                                            (if (gx#stx-null? _%tl4634346520%_)
                                                (_%__kont4926049261%_
                                                 _%hd4634246517%_
                                                 _%hd4632046566%_
                                                 _%hd4631746556%_)
                                                (if (gx#stx-pair?
                                                     _%tl4634346520%_)
                                                    (let ((_%e4636146423%_
                                                           (gx#syntax-e
                                                            _%tl4634346520%_)))
                                                      (let ((_%tl4636346430%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4636146423%_)))
                    (_%hd4636246427%_
                     (let () (declare (not safe)) (##car _%e4636146423%_))))
                (if (gx#identifier? _%hd4636246427%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g49617_|
                         _%hd4636246427%_)
                        (if (gx#stx-pair? _%tl4636346430%_)
                            (let ((_%e4636446433%_
                                   (gx#syntax-e _%tl4636346430%_)))
                              (let ((_%tl4636646440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4636446433%_)))
                                    (_%hd4636546437%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4636446433%_))))
                                (if (gx#stx-null? _%tl4636646440%_)
                                    (_%__kont4926249263%_
                                     _%hd4636546437%_
                                     _%hd4634246517%_
                                     _%hd4632046566%_
                                     _%hd4631746556%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_)))))
                            (let () (declare (not safe)) (_%g4622646372%_)))
                        (let () (declare (not safe)) (_%g4622646372%_)))
                    (let () (declare (not safe)) (_%g4622646372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4622646372%_))))))
                   (_%__match4939449395%_
                    (lambda (_%e4630746620%_
                             _%hd4630846624%_
                             _%tl4630946627%_
                             _%e4631046630%_
                             _%hd4631146634%_
                             _%tl4631246637%_)
                      (if (gx#stx-null? _%tl4631246637%_)
                          (_%__kont4925649257%_
                           _%hd4631146634%_
                           _%hd4630846624%_)
                          (if (gx#stx-pair? _%tl4631246637%_)
                              (let ((_%e4632246572%_
                                     (gx#syntax-e _%tl4631246637%_)))
                                (let ((_%tl4632446579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4632246572%_)))
                                      (_%hd4632346576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4632246572%_))))
                                  (if (gx#identifier? _%hd4632346576%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g49616_|
                                           _%hd4632346576%_)
                                          (if (gx#stx-pair? _%tl4632446579%_)
                                              (let ((_%e4632546582%_
                                                     (gx#syntax-e
                                                      _%tl4632446579%_)))
                                                (let ((_%tl4632746589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4632546582%_)))
                                                      (_%hd4632646586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4632546582%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4632746589%_)
                                                      (_%__kont4925849259%_
                                                       _%hd4632646586%_
                                                       _%hd4631146634%_
                                                       _%hd4630846624%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4622646372%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4622646372%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4622646372%_)))
                                      (if (gx#stx-datum? _%hd4632346576%_)
                                          (let ((_%e4634046509%_
                                                 (gx#stx-e _%hd4632346576%_)))
                                            (if (equal? _%e4634046509%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl4632446579%_)
                                                    (let ((_%e4634146513%_
                                                           (gx#syntax-e
                                                            _%tl4632446579%_)))
                                                      (let ((_%tl4634346520%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4634146513%_)))
                    (_%hd4634246517%_
                     (let () (declare (not safe)) (##car _%e4634146513%_))))
                (if (gx#stx-null? _%tl4634346520%_)
                    (_%__kont4926049261%_
                     _%hd4634246517%_
                     _%hd4631146634%_
                     _%hd4630846624%_)
                    (if (gx#stx-pair? _%tl4634346520%_)
                        (let ((_%e4636146423%_ (gx#syntax-e _%tl4634346520%_)))
                          (let ((_%tl4636346430%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4636146423%_)))
                                (_%hd4636246427%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4636146423%_))))
                            (if (gx#identifier? _%hd4636246427%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g49617_|
                                     _%hd4636246427%_)
                                    (if (gx#stx-pair? _%tl4636346430%_)
                                        (let ((_%e4636446433%_
                                               (gx#syntax-e _%tl4636346430%_)))
                                          (let ((_%tl4636646440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4636446433%_)))
                                                (_%hd4636546437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4636446433%_))))
                                            (if (gx#stx-null? _%tl4636646440%_)
                                                (_%__kont4926249263%_
                                                 _%hd4636546437%_
                                                 _%hd4634246517%_
                                                 _%hd4631146634%_
                                                 _%hd4630846624%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4622646372%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4622646372%_)))))
                        (let () (declare (not safe)) (_%g4622646372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4622646372%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4622646372%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g4622646372%_))))))
                   (_%__match4932449325%_
                    (lambda (_%e4625546796%_
                             _%hd4625646800%_
                             _%tl4625746803%_
                             _%e4625846806%_
                             _%hd4625946810%_
                             _%tl4626046813%_
                             _%e4626146816%_
                             _%hd4626246820%_
                             _%tl4626346823%_
                             _%__splice4925049251%_
                             _%target4626446826%_
                             _%tl4626646829%_)
                      (letrec ((_%loop4626746832%_
                                (lambda (_%hd4626546836%_ _%pred4627146839%_)
                                  (if (gx#stx-pair? _%hd4626546836%_)
                                      (let ((_%e4626846841%_
                                             (gx#syntax-e _%hd4626546836%_)))
                                        (let ((_%lp-tl4627046848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4626846841%_)))
                                              (_%lp-hd4626946845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4626846841%_))))
                                          (_%loop4626746832%_
                                           _%lp-tl4627046848%_
                                           (cons _%lp-hd4626946845%_
                                                 _%pred4627146839%_))))
                                      (let ((_%pred4627246851%_
                                             (reverse _%pred4627146839%_)))
                                        (if (gx#stx-pair? _%tl4626046813%_)
                                            (let ((_%e4627346854%_
                                                   (gx#syntax-e
                                                    _%tl4626046813%_)))
                                              (let ((_%tl4627546861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4627346854%_)))
                                                    (_%hd4627446858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4627346854%_))))
                                                (if (gx#stx-null?
                                                     _%tl4627546861%_)
                                                    (_%__kont4924849249%_
                                                     _%hd4627446858%_
                                                     _%pred4627246851%_
                                                     _%hd4625646800%_)
                                                    (_%__match4941449415%_
                                                     _%e4625546796%_
                                                     _%hd4625646800%_
                                                     _%tl4625746803%_
                                                     _%e4625846806%_
                                                     _%hd4625946810%_
                                                     _%tl4626046813%_
                                                     _%e4627346854%_
                                                     _%hd4627446858%_
                                                     _%tl4627546861%_))))
                                            (_%__match4939449395%_
                                             _%e4625546796%_
                                             _%hd4625646800%_
                                             _%tl4625746803%_
                                             _%e4625846806%_
                                             _%hd4625946810%_
                                             _%tl4626046813%_)))))))
                        (_%loop4626746832%_ _%target4626446826%_ '()))))
                   (_%__match4929449295%_
                    (lambda (_%e4623146904%_
                             _%hd4623246908%_
                             _%tl4623346911%_
                             _%e4623446914%_
                             _%hd4623546918%_
                             _%tl4623646921%_
                             _%e4623746924%_
                             _%hd4623846928%_
                             _%tl4623946931%_
                             _%__splice4924649247%_
                             _%target4624046934%_
                             _%tl4624246937%_)
                      (letrec ((_%loop4624346940%_
                                (lambda (_%hd4624146944%_ _%pred4624746947%_)
                                  (if (gx#stx-pair? _%hd4624146944%_)
                                      (let ((_%e4624446949%_
                                             (gx#syntax-e _%hd4624146944%_)))
                                        (let ((_%lp-tl4624646956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4624446949%_)))
                                              (_%lp-hd4624546953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4624446949%_))))
                                          (_%loop4624346940%_
                                           _%lp-tl4624646956%_
                                           (cons _%lp-hd4624546953%_
                                                 _%pred4624746947%_))))
                                      (let ((_%pred4624846959%_
                                             (reverse _%pred4624746947%_)))
                                        (if (gx#stx-pair? _%tl4623646921%_)
                                            (let ((_%e4624946962%_
                                                   (gx#syntax-e
                                                    _%tl4623646921%_)))
                                              (let ((_%tl4625146969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4624946962%_)))
                                                    (_%hd4625046966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4624946962%_))))
                                                (if (gx#stx-null?
                                                     _%tl4625146969%_)
                                                    (_%__kont4924449245%_
                                                     _%hd4625046966%_
                                                     _%pred4624846959%_
                                                     _%hd4623246908%_)
                                                    (_%__match4941449415%_
                                                     _%e4623146904%_
                                                     _%hd4623246908%_
                                                     _%tl4623346911%_
                                                     _%e4623446914%_
                                                     _%hd4623546918%_
                                                     _%tl4623646921%_
                                                     _%e4624946962%_
                                                     _%hd4625046966%_
                                                     _%tl4625146969%_))))
                                            (_%__match4939449395%_
                                             _%e4623146904%_
                                             _%hd4623246908%_
                                             _%tl4623346911%_
                                             _%e4623446914%_
                                             _%hd4623546918%_
                                             _%tl4623646921%_)))))))
                        (_%loop4624346940%_ _%target4624046934%_ '())))))
              (if (gx#stx-pair? _%__stx4924149242%_)
                  (let ((_%e4623146904%_ (gx#syntax-e _%__stx4924149242%_)))
                    (let ((_%tl4623346911%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4623146904%_)))
                          (_%hd4623246908%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4623146904%_))))
                      (if (gx#stx-pair? _%tl4623346911%_)
                          (let ((_%e4623446914%_
                                 (gx#syntax-e _%tl4623346911%_)))
                            (let ((_%tl4623646921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4623446914%_)))
                                  (_%hd4623546918%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4623446914%_))))
                              (if (gx#stx-pair? _%hd4623546918%_)
                                  (let ((_%e4623746924%_
                                         (gx#syntax-e _%hd4623546918%_)))
                                    (let ((_%tl4623946931%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4623746924%_)))
                                          (_%hd4623846928%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4623746924%_))))
                                      (if (gx#identifier? _%hd4623846928%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g49618_|
                                               _%hd4623846928%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl4623946931%_)
                                                  (let ((_%__splice4924649247%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4623946931%_
                                                          '0)))
                                                    (let ((_%tl4624246937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4924649247%_
                                                              '1)))
                                                          (_%target4624046934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4924649247%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4624246937%_)
                                                          (_%__match4929449295%_
                                                           _%e4623146904%_
                                                           _%hd4623246908%_
                                                           _%tl4623346911%_
                                                           _%e4623446914%_
                                                           _%hd4623546918%_
                                                           _%tl4623646921%_
                                                           _%e4623746924%_
                                                           _%hd4623846928%_
                                                           _%tl4623946931%_
                                                           _%__splice4924649247%_
                                                           _%target4624046934%_
                                                           _%tl4624246937%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4623646921%_)
                                                              (let ((_%e4630246682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4623646921%_)))
                        (let ((_%tl4630446689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4630246682%_)))
                              (_%hd4630346686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4630246682%_))))
                          (if (gx#stx-null? _%tl4630446689%_)
                              (_%__kont4925449255%_
                               _%hd4630346686%_
                               _%hd4623546918%_)
                              (if (gx#identifier? _%hd4630346686%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g49616_|
                                       _%hd4630346686%_)
                                      (if (gx#stx-pair? _%tl4630446689%_)
                                          (let ((_%e4632546582%_
                                                 (gx#syntax-e
                                                  _%tl4630446689%_)))
                                            (let ((_%tl4632746589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4632546582%_)))
                                                  (_%hd4632646586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4632546582%_))))
                                              (if (gx#stx-null?
                                                   _%tl4632746589%_)
                                                  (_%__kont4925849259%_
                                                   _%hd4632646586%_
                                                   _%hd4623546918%_
                                                   _%hd4623246908%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4622646372%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4622646372%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4622646372%_)))
                                  (if (gx#stx-datum? _%hd4630346686%_)
                                      (let ((_%e4634046509%_
                                             (gx#stx-e _%hd4630346686%_)))
                                        (if (equal? _%e4634046509%_ '::)
                                            (if (gx#stx-pair? _%tl4630446689%_)
                                                (let ((_%e4634146513%_
                                                       (gx#syntax-e
                                                        _%tl4630446689%_)))
                                                  (let ((_%tl4634346520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4634146513%_)))
                                                        (_%hd4634246517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4634146513%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4634346520%_)
                                                        (_%__kont4926049261%_
                                                         _%hd4634246517%_
                                                         _%hd4623546918%_
                                                         _%hd4623246908%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4634346520%_)
                                                            (let ((_%e4636146423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4634346520%_)))
                      (let ((_%tl4636346430%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4636146423%_)))
                            (_%hd4636246427%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4636146423%_))))
                        (if (gx#identifier? _%hd4636246427%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g49617_|
                                 _%hd4636246427%_)
                                (if (gx#stx-pair? _%tl4636346430%_)
                                    (let ((_%e4636446433%_
                                           (gx#syntax-e _%tl4636346430%_)))
                                      (let ((_%tl4636646440%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4636446433%_)))
                                            (_%hd4636546437%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4636446433%_))))
                                        (if (gx#stx-null? _%tl4636646440%_)
                                            (_%__kont4926249263%_
                                             _%hd4636546437%_
                                             _%hd4634246517%_
                                             _%hd4623546918%_
                                             _%hd4623246908%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4622646372%_)))
                            (let () (declare (not safe)) (_%g4622646372%_)))))
                    (let () (declare (not safe)) (_%g4622646372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4622646372%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4622646372%_)))))))
                      (if (gx#stx-null? _%tl4623646921%_)
                          (_%__kont4925649257%_
                           _%hd4623546918%_
                           _%hd4623246908%_)
                          (let () (declare (not safe)) (_%g4622646372%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl4623646921%_)
                                                      (let ((_%e4630246682%_
                                                             (gx#syntax-e
                                                              _%tl4623646921%_)))
                                                        (let ((_%tl4630446689%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4630246682%_)))
                      (_%hd4630346686%_
                       (let () (declare (not safe)) (##car _%e4630246682%_))))
                  (if (gx#stx-null? _%tl4630446689%_)
                      (_%__kont4925449255%_ _%hd4630346686%_ _%hd4623546918%_)
                      (if (gx#identifier? _%hd4630346686%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g49616_|
                               _%hd4630346686%_)
                              (if (gx#stx-pair? _%tl4630446689%_)
                                  (let ((_%e4632546582%_
                                         (gx#syntax-e _%tl4630446689%_)))
                                    (let ((_%tl4632746589%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4632546582%_)))
                                          (_%hd4632646586%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4632546582%_))))
                                      (if (gx#stx-null? _%tl4632746589%_)
                                          (_%__kont4925849259%_
                                           _%hd4632646586%_
                                           _%hd4623546918%_
                                           _%hd4623246908%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4622646372%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4622646372%_)))
                              (let () (declare (not safe)) (_%g4622646372%_)))
                          (if (gx#stx-datum? _%hd4630346686%_)
                              (let ((_%e4634046509%_
                                     (gx#stx-e _%hd4630346686%_)))
                                (if (equal? _%e4634046509%_ '::)
                                    (if (gx#stx-pair? _%tl4630446689%_)
                                        (let ((_%e4634146513%_
                                               (gx#syntax-e _%tl4630446689%_)))
                                          (let ((_%tl4634346520%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4634146513%_)))
                                                (_%hd4634246517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4634146513%_))))
                                            (if (gx#stx-null? _%tl4634346520%_)
                                                (_%__kont4926049261%_
                                                 _%hd4634246517%_
                                                 _%hd4623546918%_
                                                 _%hd4623246908%_)
                                                (if (gx#stx-pair?
                                                     _%tl4634346520%_)
                                                    (let ((_%e4636146423%_
                                                           (gx#syntax-e
                                                            _%tl4634346520%_)))
                                                      (let ((_%tl4636346430%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4636146423%_)))
                    (_%hd4636246427%_
                     (let () (declare (not safe)) (##car _%e4636146423%_))))
                (if (gx#identifier? _%hd4636246427%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g49617_|
                         _%hd4636246427%_)
                        (if (gx#stx-pair? _%tl4636346430%_)
                            (let ((_%e4636446433%_
                                   (gx#syntax-e _%tl4636346430%_)))
                              (let ((_%tl4636646440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4636446433%_)))
                                    (_%hd4636546437%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4636446433%_))))
                                (if (gx#stx-null? _%tl4636646440%_)
                                    (_%__kont4926249263%_
                                     _%hd4636546437%_
                                     _%hd4634246517%_
                                     _%hd4623546918%_
                                     _%hd4623246908%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_)))))
                            (let () (declare (not safe)) (_%g4622646372%_)))
                        (let () (declare (not safe)) (_%g4622646372%_)))
                    (let () (declare (not safe)) (_%g4622646372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4622646372%_)))))))
              (if (gx#stx-null? _%tl4623646921%_)
                  (_%__kont4925649257%_ _%hd4623546918%_ _%hd4623246908%_)
                  (let () (declare (not safe)) (_%g4622646372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g49619_|
                                                   _%hd4623846928%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4623946931%_)
                                                      (let ((_%__splice4925049251%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4623946931%_
                                                              '0)))
                                                        (let ((_%tl4626646829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4925049251%_ '1)))
                      (_%target4626446826%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4925049251%_ '0))))
                  (if (gx#stx-null? _%tl4626646829%_)
                      (_%__match4932449325%_
                       _%e4623146904%_
                       _%hd4623246908%_
                       _%tl4623346911%_
                       _%e4623446914%_
                       _%hd4623546918%_
                       _%tl4623646921%_
                       _%e4623746924%_
                       _%hd4623846928%_
                       _%tl4623946931%_
                       _%__splice4925049251%_
                       _%target4626446826%_
                       _%tl4626646829%_)
                      (if (gx#stx-pair? _%tl4623646921%_)
                          (let ((_%e4630246682%_
                                 (gx#syntax-e _%tl4623646921%_)))
                            (let ((_%tl4630446689%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4630246682%_)))
                                  (_%hd4630346686%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4630246682%_))))
                              (if (gx#stx-null? _%tl4630446689%_)
                                  (_%__kont4925449255%_
                                   _%hd4630346686%_
                                   _%hd4623546918%_)
                                  (if (gx#identifier? _%hd4630346686%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g49616_|
                                           _%hd4630346686%_)
                                          (if (gx#stx-pair? _%tl4630446689%_)
                                              (let ((_%e4632546582%_
                                                     (gx#syntax-e
                                                      _%tl4630446689%_)))
                                                (let ((_%tl4632746589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4632546582%_)))
                                                      (_%hd4632646586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4632546582%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4632746589%_)
                                                      (_%__kont4925849259%_
                                                       _%hd4632646586%_
                                                       _%hd4623546918%_
                                                       _%hd4623246908%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4622646372%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4622646372%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4622646372%_)))
                                      (if (gx#stx-datum? _%hd4630346686%_)
                                          (let ((_%e4634046509%_
                                                 (gx#stx-e _%hd4630346686%_)))
                                            (if (equal? _%e4634046509%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl4630446689%_)
                                                    (let ((_%e4634146513%_
                                                           (gx#syntax-e
                                                            _%tl4630446689%_)))
                                                      (let ((_%tl4634346520%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4634146513%_)))
                    (_%hd4634246517%_
                     (let () (declare (not safe)) (##car _%e4634146513%_))))
                (if (gx#stx-null? _%tl4634346520%_)
                    (_%__kont4926049261%_
                     _%hd4634246517%_
                     _%hd4623546918%_
                     _%hd4623246908%_)
                    (if (gx#stx-pair? _%tl4634346520%_)
                        (let ((_%e4636146423%_ (gx#syntax-e _%tl4634346520%_)))
                          (let ((_%tl4636346430%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4636146423%_)))
                                (_%hd4636246427%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4636146423%_))))
                            (if (gx#identifier? _%hd4636246427%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g49617_|
                                     _%hd4636246427%_)
                                    (if (gx#stx-pair? _%tl4636346430%_)
                                        (let ((_%e4636446433%_
                                               (gx#syntax-e _%tl4636346430%_)))
                                          (let ((_%tl4636646440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4636446433%_)))
                                                (_%hd4636546437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4636446433%_))))
                                            (if (gx#stx-null? _%tl4636646440%_)
                                                (_%__kont4926249263%_
                                                 _%hd4636546437%_
                                                 _%hd4634246517%_
                                                 _%hd4623546918%_
                                                 _%hd4623246908%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4622646372%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4622646372%_)))))
                        (let () (declare (not safe)) (_%g4622646372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4622646372%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4622646372%_)))))))
                          (if (gx#stx-null? _%tl4623646921%_)
                              (_%__kont4925649257%_
                               _%hd4623546918%_
                               _%hd4623246908%_)
                              (let ()
                                (declare (not safe))
                                (_%g4622646372%_)))))))
              (if (gx#stx-pair? _%tl4623646921%_)
                  (let ((_%e4630246682%_ (gx#syntax-e _%tl4623646921%_)))
                    (let ((_%tl4630446689%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4630246682%_)))
                          (_%hd4630346686%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4630246682%_))))
                      (if (gx#stx-null? _%tl4630446689%_)
                          (_%__kont4925449255%_
                           _%hd4630346686%_
                           _%hd4623546918%_)
                          (if (gx#identifier? _%hd4630346686%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g49616_|
                                   _%hd4630346686%_)
                                  (if (gx#stx-pair? _%tl4630446689%_)
                                      (let ((_%e4632546582%_
                                             (gx#syntax-e _%tl4630446689%_)))
                                        (let ((_%tl4632746589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4632546582%_)))
                                              (_%hd4632646586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4632546582%_))))
                                          (if (gx#stx-null? _%tl4632746589%_)
                                              (_%__kont4925849259%_
                                               _%hd4632646586%_
                                               _%hd4623546918%_
                                               _%hd4623246908%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4622646372%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4622646372%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4622646372%_)))
                              (if (gx#stx-datum? _%hd4630346686%_)
                                  (let ((_%e4634046509%_
                                         (gx#stx-e _%hd4630346686%_)))
                                    (if (equal? _%e4634046509%_ '::)
                                        (if (gx#stx-pair? _%tl4630446689%_)
                                            (let ((_%e4634146513%_
                                                   (gx#syntax-e
                                                    _%tl4630446689%_)))
                                              (let ((_%tl4634346520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4634146513%_)))
                                                    (_%hd4634246517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4634146513%_))))
                                                (if (gx#stx-null?
                                                     _%tl4634346520%_)
                                                    (_%__kont4926049261%_
                                                     _%hd4634246517%_
                                                     _%hd4623546918%_
                                                     _%hd4623246908%_)
                                                    (if (gx#stx-pair?
                                                         _%tl4634346520%_)
                                                        (let ((_%e4636146423%_
                                                               (gx#syntax-e
                                                                _%tl4634346520%_)))
                                                          (let ((_%tl4636346430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e4636146423%_)))
                        (_%hd4636246427%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4636146423%_))))
                    (if (gx#identifier? _%hd4636246427%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g49617_|
                             _%hd4636246427%_)
                            (if (gx#stx-pair? _%tl4636346430%_)
                                (let ((_%e4636446433%_
                                       (gx#syntax-e _%tl4636346430%_)))
                                  (let ((_%tl4636646440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4636446433%_)))
                                        (_%hd4636546437%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4636446433%_))))
                                    (if (gx#stx-null? _%tl4636646440%_)
                                        (_%__kont4926249263%_
                                         _%hd4636546437%_
                                         _%hd4634246517%_
                                         _%hd4623546918%_
                                         _%hd4623246908%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4622646372%_)))
                            (let () (declare (not safe)) (_%g4622646372%_)))
                        (let () (declare (not safe)) (_%g4622646372%_)))))
                (let () (declare (not safe)) (_%g4622646372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4622646372%_)))))))
                  (if (gx#stx-null? _%tl4623646921%_)
                      (_%__kont4925649257%_ _%hd4623546918%_ _%hd4623246908%_)
                      (let () (declare (not safe)) (_%g4622646372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g49620_|
                                                       _%hd4623846928%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4623946931%_)
                                                          (let ((_%e4628846746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4623946931%_)))
                    (let ((_%tl4629046753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4628846746%_)))
                          (_%hd4628946750%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4628846746%_))))
                      (if (gx#stx-null? _%tl4629046753%_)
                          (if (gx#stx-pair? _%tl4623646921%_)
                              (let ((_%e4629146756%_
                                     (gx#syntax-e _%tl4623646921%_)))
                                (let ((_%tl4629346763%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4629146756%_)))
                                      (_%hd4629246760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4629146756%_))))
                                  (if (gx#stx-null? _%tl4629346763%_)
                                      (_%__kont4925249253%_
                                       _%hd4629246760%_
                                       _%hd4628946750%_
                                       _%hd4623246908%_)
                                      (if (gx#identifier? _%hd4629246760%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g49616_|
                                               _%hd4629246760%_)
                                              (if (gx#stx-pair?
                                                   _%tl4629346763%_)
                                                  (let ((_%e4632546582%_
                                                         (gx#syntax-e
                                                          _%tl4629346763%_)))
                                                    (let ((_%tl4632746589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4632546582%_)))
                                                          (_%hd4632646586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4632546582%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4632746589%_)
                                                          (_%__kont4925849259%_
                                                           _%hd4632646586%_
                                                           _%hd4623546918%_
                                                           _%hd4623246908%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4622646372%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4622646372%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4622646372%_)))
                                          (if (gx#stx-datum? _%hd4629246760%_)
                                              (let ((_%e4634046509%_
                                                     (gx#stx-e
                                                      _%hd4629246760%_)))
                                                (if (equal? _%e4634046509%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl4629346763%_)
                                                        (let ((_%e4634146513%_
                                                               (gx#syntax-e
                                                                _%tl4629346763%_)))
                                                          (let ((_%tl4634346520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e4634146513%_)))
                        (_%hd4634246517%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4634146513%_))))
                    (if (gx#stx-null? _%tl4634346520%_)
                        (_%__kont4926049261%_
                         _%hd4634246517%_
                         _%hd4623546918%_
                         _%hd4623246908%_)
                        (if (gx#stx-pair? _%tl4634346520%_)
                            (let ((_%e4636146423%_
                                   (gx#syntax-e _%tl4634346520%_)))
                              (let ((_%tl4636346430%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4636146423%_)))
                                    (_%hd4636246427%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4636146423%_))))
                                (if (gx#identifier? _%hd4636246427%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g49617_|
                                         _%hd4636246427%_)
                                        (if (gx#stx-pair? _%tl4636346430%_)
                                            (let ((_%e4636446433%_
                                                   (gx#syntax-e
                                                    _%tl4636346430%_)))
                                              (let ((_%tl4636646440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4636446433%_)))
                                                    (_%hd4636546437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4636446433%_))))
                                                (if (gx#stx-null?
                                                     _%tl4636646440%_)
                                                    (_%__kont4926249263%_
                                                     _%hd4636546437%_
                                                     _%hd4634246517%_
                                                     _%hd4623546918%_
                                                     _%hd4623246908%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_)))))
                            (let () (declare (not safe)) (_%g4622646372%_))))))
                (let () (declare (not safe)) (_%g4622646372%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4622646372%_)))))))
                              (if (gx#stx-null? _%tl4623646921%_)
                                  (_%__kont4925649257%_
                                   _%hd4623546918%_
                                   _%hd4623246908%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4622646372%_))))
                          (if (gx#stx-pair? _%tl4623646921%_)
                              (let ((_%e4630246682%_
                                     (gx#syntax-e _%tl4623646921%_)))
                                (let ((_%tl4630446689%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4630246682%_)))
                                      (_%hd4630346686%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4630246682%_))))
                                  (if (gx#stx-null? _%tl4630446689%_)
                                      (_%__kont4925449255%_
                                       _%hd4630346686%_
                                       _%hd4623546918%_)
                                      (if (gx#identifier? _%hd4630346686%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g49616_|
                                               _%hd4630346686%_)
                                              (if (gx#stx-pair?
                                                   _%tl4630446689%_)
                                                  (let ((_%e4632546582%_
                                                         (gx#syntax-e
                                                          _%tl4630446689%_)))
                                                    (let ((_%tl4632746589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4632546582%_)))
                                                          (_%hd4632646586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4632546582%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4632746589%_)
                                                          (_%__kont4925849259%_
                                                           _%hd4632646586%_
                                                           _%hd4623546918%_
                                                           _%hd4623246908%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4622646372%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4622646372%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4622646372%_)))
                                          (if (gx#stx-datum? _%hd4630346686%_)
                                              (let ((_%e4634046509%_
                                                     (gx#stx-e
                                                      _%hd4630346686%_)))
                                                (if (equal? _%e4634046509%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl4630446689%_)
                                                        (let ((_%e4634146513%_
                                                               (gx#syntax-e
                                                                _%tl4630446689%_)))
                                                          (let ((_%tl4634346520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e4634146513%_)))
                        (_%hd4634246517%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4634146513%_))))
                    (if (gx#stx-null? _%tl4634346520%_)
                        (_%__kont4926049261%_
                         _%hd4634246517%_
                         _%hd4623546918%_
                         _%hd4623246908%_)
                        (if (gx#stx-pair? _%tl4634346520%_)
                            (let ((_%e4636146423%_
                                   (gx#syntax-e _%tl4634346520%_)))
                              (let ((_%tl4636346430%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4636146423%_)))
                                    (_%hd4636246427%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4636146423%_))))
                                (if (gx#identifier? _%hd4636246427%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g49617_|
                                         _%hd4636246427%_)
                                        (if (gx#stx-pair? _%tl4636346430%_)
                                            (let ((_%e4636446433%_
                                                   (gx#syntax-e
                                                    _%tl4636346430%_)))
                                              (let ((_%tl4636646440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4636446433%_)))
                                                    (_%hd4636546437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4636446433%_))))
                                                (if (gx#stx-null?
                                                     _%tl4636646440%_)
                                                    (_%__kont4926249263%_
                                                     _%hd4636546437%_
                                                     _%hd4634246517%_
                                                     _%hd4623546918%_
                                                     _%hd4623246908%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_)))))
                            (let () (declare (not safe)) (_%g4622646372%_))))))
                (let () (declare (not safe)) (_%g4622646372%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4622646372%_)))))))
                              (if (gx#stx-null? _%tl4623646921%_)
                                  (_%__kont4925649257%_
                                   _%hd4623546918%_
                                   _%hd4623246908%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4622646372%_)))))))
                  (if (gx#stx-pair? _%tl4623646921%_)
                      (let ((_%e4630246682%_ (gx#syntax-e _%tl4623646921%_)))
                        (let ((_%tl4630446689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4630246682%_)))
                              (_%hd4630346686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4630246682%_))))
                          (if (gx#stx-null? _%tl4630446689%_)
                              (_%__kont4925449255%_
                               _%hd4630346686%_
                               _%hd4623546918%_)
                              (if (gx#identifier? _%hd4630346686%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g49616_|
                                       _%hd4630346686%_)
                                      (if (gx#stx-pair? _%tl4630446689%_)
                                          (let ((_%e4632546582%_
                                                 (gx#syntax-e
                                                  _%tl4630446689%_)))
                                            (let ((_%tl4632746589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4632546582%_)))
                                                  (_%hd4632646586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4632546582%_))))
                                              (if (gx#stx-null?
                                                   _%tl4632746589%_)
                                                  (_%__kont4925849259%_
                                                   _%hd4632646586%_
                                                   _%hd4623546918%_
                                                   _%hd4623246908%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4622646372%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4622646372%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4622646372%_)))
                                  (if (gx#stx-datum? _%hd4630346686%_)
                                      (let ((_%e4634046509%_
                                             (gx#stx-e _%hd4630346686%_)))
                                        (if (equal? _%e4634046509%_ '::)
                                            (if (gx#stx-pair? _%tl4630446689%_)
                                                (let ((_%e4634146513%_
                                                       (gx#syntax-e
                                                        _%tl4630446689%_)))
                                                  (let ((_%tl4634346520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4634146513%_)))
                                                        (_%hd4634246517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4634146513%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4634346520%_)
                                                        (_%__kont4926049261%_
                                                         _%hd4634246517%_
                                                         _%hd4623546918%_
                                                         _%hd4623246908%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4634346520%_)
                                                            (let ((_%e4636146423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4634346520%_)))
                      (let ((_%tl4636346430%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4636146423%_)))
                            (_%hd4636246427%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4636146423%_))))
                        (if (gx#identifier? _%hd4636246427%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g49617_|
                                 _%hd4636246427%_)
                                (if (gx#stx-pair? _%tl4636346430%_)
                                    (let ((_%e4636446433%_
                                           (gx#syntax-e _%tl4636346430%_)))
                                      (let ((_%tl4636646440%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4636446433%_)))
                                            (_%hd4636546437%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4636446433%_))))
                                        (if (gx#stx-null? _%tl4636646440%_)
                                            (_%__kont4926249263%_
                                             _%hd4636546437%_
                                             _%hd4634246517%_
                                             _%hd4623546918%_
                                             _%hd4623246908%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4622646372%_)))
                            (let () (declare (not safe)) (_%g4622646372%_)))))
                    (let () (declare (not safe)) (_%g4622646372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4622646372%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4622646372%_)))))))
                      (if (gx#stx-null? _%tl4623646921%_)
                          (_%__kont4925649257%_
                           _%hd4623546918%_
                           _%hd4623246908%_)
                          (let () (declare (not safe)) (_%g4622646372%_)))))
              (if (gx#stx-pair? _%tl4623646921%_)
                  (let ((_%e4630246682%_ (gx#syntax-e _%tl4623646921%_)))
                    (let ((_%tl4630446689%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4630246682%_)))
                          (_%hd4630346686%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4630246682%_))))
                      (if (gx#stx-null? _%tl4630446689%_)
                          (_%__kont4925449255%_
                           _%hd4630346686%_
                           _%hd4623546918%_)
                          (if (gx#identifier? _%hd4630346686%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g49616_|
                                   _%hd4630346686%_)
                                  (if (gx#stx-pair? _%tl4630446689%_)
                                      (let ((_%e4632546582%_
                                             (gx#syntax-e _%tl4630446689%_)))
                                        (let ((_%tl4632746589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4632546582%_)))
                                              (_%hd4632646586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4632546582%_))))
                                          (if (gx#stx-null? _%tl4632746589%_)
                                              (_%__kont4925849259%_
                                               _%hd4632646586%_
                                               _%hd4623546918%_
                                               _%hd4623246908%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4622646372%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4622646372%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4622646372%_)))
                              (if (gx#stx-datum? _%hd4630346686%_)
                                  (let ((_%e4634046509%_
                                         (gx#stx-e _%hd4630346686%_)))
                                    (if (equal? _%e4634046509%_ '::)
                                        (if (gx#stx-pair? _%tl4630446689%_)
                                            (let ((_%e4634146513%_
                                                   (gx#syntax-e
                                                    _%tl4630446689%_)))
                                              (let ((_%tl4634346520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4634146513%_)))
                                                    (_%hd4634246517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4634146513%_))))
                                                (if (gx#stx-null?
                                                     _%tl4634346520%_)
                                                    (_%__kont4926049261%_
                                                     _%hd4634246517%_
                                                     _%hd4623546918%_
                                                     _%hd4623246908%_)
                                                    (if (gx#stx-pair?
                                                         _%tl4634346520%_)
                                                        (let ((_%e4636146423%_
                                                               (gx#syntax-e
                                                                _%tl4634346520%_)))
                                                          (let ((_%tl4636346430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e4636146423%_)))
                        (_%hd4636246427%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4636146423%_))))
                    (if (gx#identifier? _%hd4636246427%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g49617_|
                             _%hd4636246427%_)
                            (if (gx#stx-pair? _%tl4636346430%_)
                                (let ((_%e4636446433%_
                                       (gx#syntax-e _%tl4636346430%_)))
                                  (let ((_%tl4636646440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4636446433%_)))
                                        (_%hd4636546437%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4636446433%_))))
                                    (if (gx#stx-null? _%tl4636646440%_)
                                        (_%__kont4926249263%_
                                         _%hd4636546437%_
                                         _%hd4634246517%_
                                         _%hd4623546918%_
                                         _%hd4623246908%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4622646372%_)))
                            (let () (declare (not safe)) (_%g4622646372%_)))
                        (let () (declare (not safe)) (_%g4622646372%_)))))
                (let () (declare (not safe)) (_%g4622646372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4622646372%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4622646372%_)))))))
                  (if (gx#stx-null? _%tl4623646921%_)
                      (_%__kont4925649257%_ _%hd4623546918%_ _%hd4623246908%_)
                      (let () (declare (not safe)) (_%g4622646372%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl4623646921%_)
                                              (let ((_%e4630246682%_
                                                     (gx#syntax-e
                                                      _%tl4623646921%_)))
                                                (let ((_%tl4630446689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4630246682%_)))
                                                      (_%hd4630346686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4630246682%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4630446689%_)
                                                      (_%__kont4925449255%_
                                                       _%hd4630346686%_
                                                       _%hd4623546918%_)
                                                      (if (gx#identifier?
                                                           _%hd4630346686%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g49616_|
                                                               _%hd4630346686%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4630446689%_)
                          (let ((_%e4632546582%_
                                 (gx#syntax-e _%tl4630446689%_)))
                            (let ((_%tl4632746589%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4632546582%_)))
                                  (_%hd4632646586%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4632546582%_))))
                              (if (gx#stx-null? _%tl4632746589%_)
                                  (_%__kont4925849259%_
                                   _%hd4632646586%_
                                   _%hd4623546918%_
                                   _%hd4623246908%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4622646372%_)))))
                          (let () (declare (not safe)) (_%g4622646372%_)))
                      (let () (declare (not safe)) (_%g4622646372%_)))
                  (if (gx#stx-datum? _%hd4630346686%_)
                      (let ((_%e4634046509%_ (gx#stx-e _%hd4630346686%_)))
                        (if (equal? _%e4634046509%_ '::)
                            (if (gx#stx-pair? _%tl4630446689%_)
                                (let ((_%e4634146513%_
                                       (gx#syntax-e _%tl4630446689%_)))
                                  (let ((_%tl4634346520%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4634146513%_)))
                                        (_%hd4634246517%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4634146513%_))))
                                    (if (gx#stx-null? _%tl4634346520%_)
                                        (_%__kont4926049261%_
                                         _%hd4634246517%_
                                         _%hd4623546918%_
                                         _%hd4623246908%_)
                                        (if (gx#stx-pair? _%tl4634346520%_)
                                            (let ((_%e4636146423%_
                                                   (gx#syntax-e
                                                    _%tl4634346520%_)))
                                              (let ((_%tl4636346430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4636146423%_)))
                                                    (_%hd4636246427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4636146423%_))))
                                                (if (gx#identifier?
                                                     _%hd4636246427%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g49617_|
                                                         _%hd4636246427%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4636346430%_)
                                                            (let ((_%e4636446433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4636346430%_)))
                      (let ((_%tl4636646440%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4636446433%_)))
                            (_%hd4636546437%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4636446433%_))))
                        (if (gx#stx-null? _%tl4636646440%_)
                            (_%__kont4926249263%_
                             _%hd4636546437%_
                             _%hd4634246517%_
                             _%hd4623546918%_
                             _%hd4623246908%_)
                            (let () (declare (not safe)) (_%g4622646372%_)))))
                    (let () (declare (not safe)) (_%g4622646372%_)))
                (let () (declare (not safe)) (_%g4622646372%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4622646372%_)))
                            (let () (declare (not safe)) (_%g4622646372%_))))
                      (let () (declare (not safe)) (_%g4622646372%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl4623646921%_)
                                                  (_%__kont4925649257%_
                                                   _%hd4623546918%_
                                                   _%hd4623246908%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4622646372%_)))))))
                                  (if (gx#stx-pair? _%tl4623646921%_)
                                      (let ((_%e4630246682%_
                                             (gx#syntax-e _%tl4623646921%_)))
                                        (let ((_%tl4630446689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4630246682%_)))
                                              (_%hd4630346686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4630246682%_))))
                                          (if (gx#stx-null? _%tl4630446689%_)
                                              (_%__kont4925449255%_
                                               _%hd4630346686%_
                                               _%hd4623546918%_)
                                              (if (gx#identifier?
                                                   _%hd4630346686%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g49616_|
                                                       _%hd4630346686%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4630446689%_)
                                                          (let ((_%e4632546582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4630446689%_)))
                    (let ((_%tl4632746589%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4632546582%_)))
                          (_%hd4632646586%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4632546582%_))))
                      (if (gx#stx-null? _%tl4632746589%_)
                          (_%__kont4925849259%_
                           _%hd4632646586%_
                           _%hd4623546918%_
                           _%hd4623246908%_)
                          (let () (declare (not safe)) (_%g4622646372%_)))))
                  (let () (declare (not safe)) (_%g4622646372%_)))
              (let () (declare (not safe)) (_%g4622646372%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd4630346686%_)
                                                      (let ((_%e4634046509%_
                                                             (gx#stx-e
                                                              _%hd4630346686%_)))
                                                        (if (equal? _%e4634046509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl4630446689%_)
                        (let ((_%e4634146513%_ (gx#syntax-e _%tl4630446689%_)))
                          (let ((_%tl4634346520%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4634146513%_)))
                                (_%hd4634246517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4634146513%_))))
                            (if (gx#stx-null? _%tl4634346520%_)
                                (_%__kont4926049261%_
                                 _%hd4634246517%_
                                 _%hd4623546918%_
                                 _%hd4623246908%_)
                                (if (gx#stx-pair? _%tl4634346520%_)
                                    (let ((_%e4636146423%_
                                           (gx#syntax-e _%tl4634346520%_)))
                                      (let ((_%tl4636346430%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4636146423%_)))
                                            (_%hd4636246427%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4636146423%_))))
                                        (if (gx#identifier? _%hd4636246427%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g49617_|
                                                 _%hd4636246427%_)
                                                (if (gx#stx-pair?
                                                     _%tl4636346430%_)
                                                    (let ((_%e4636446433%_
                                                           (gx#syntax-e
                                                            _%tl4636346430%_)))
                                                      (let ((_%tl4636646440%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4636446433%_)))
                    (_%hd4636546437%_
                     (let () (declare (not safe)) (##car _%e4636446433%_))))
                (if (gx#stx-null? _%tl4636646440%_)
                    (_%__kont4926249263%_
                     _%hd4636546437%_
                     _%hd4634246517%_
                     _%hd4623546918%_
                     _%hd4623246908%_)
                    (let () (declare (not safe)) (_%g4622646372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4622646372%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4622646372%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4622646372%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4622646372%_))))))
                        (let () (declare (not safe)) (_%g4622646372%_)))
                    (let () (declare (not safe)) (_%g4622646372%_))))
              (let () (declare (not safe)) (_%g4622646372%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl4623646921%_)
                                          (_%__kont4925649257%_
                                           _%hd4623546918%_
                                           _%hd4623246908%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4622646372%_)))))))
                          (let () (declare (not safe)) (_%g4622646372%_)))))
                  (let () (declare (not safe)) (_%g4622646372%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx47011%_)
        (let* ((_%__stx4950949510%_ _%$stx47011%_)
               (_%g4701647050%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4950949510%_))))
          (let ((_%__kont4951249513%_
                 (lambda (_%g4701847154%_ _%g4701947156%_ _%g4702047157%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g4702047157%_
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
                                       (cons _%g4701947156%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g4701847154%_ '()))
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
                (_%__kont4951449515%_
                 (lambda (_%g4703347087%_ _%g4703447089%_ _%g4703547090%_)
                   (cons _%g4703547090%_
                         (cons _%g4703447089%_
                               (cons _%g4703347087%_
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
            (let ((_%__match4954249543%_
                   (lambda (_%e4702147114%_
                            _%hd4702247118%_
                            _%tl4702347121%_
                            _%e4702447124%_
                            _%hd4702547128%_
                            _%tl4702647131%_
                            _%e4702747134%_
                            _%hd4702847138%_
                            _%tl4702947141%_
                            _%e4703047144%_
                            _%hd4703147148%_
                            _%tl4703247151%_)
                     (let ((_%g4701847154%_ _%hd4703147148%_)
                           (_%g4701947156%_ _%hd4702847138%_)
                           (_%g4702047157%_ _%hd4702547128%_))
                       (if (gx#identifier? _%g4702047157%_)
                           (_%__kont4951249513%_
                            _%g4701847154%_
                            _%g4701947156%_
                            _%g4702047157%_)
                           (let () (declare (not safe)) (_%g4701647050%_)))))))
              (if (gx#stx-pair? _%__stx4950949510%_)
                  (let ((_%e4702147114%_ (gx#syntax-e _%__stx4950949510%_)))
                    (let ((_%tl4702347121%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4702147114%_)))
                          (_%hd4702247118%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4702147114%_))))
                      (if (gx#stx-pair? _%tl4702347121%_)
                          (let ((_%e4702447124%_
                                 (gx#syntax-e _%tl4702347121%_)))
                            (let ((_%tl4702647131%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4702447124%_)))
                                  (_%hd4702547128%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4702447124%_))))
                              (if (gx#stx-pair? _%tl4702647131%_)
                                  (let ((_%e4702747134%_
                                         (gx#syntax-e _%tl4702647131%_)))
                                    (let ((_%tl4702947141%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4702747134%_)))
                                          (_%hd4702847138%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4702747134%_))))
                                      (if (gx#stx-pair? _%tl4702947141%_)
                                          (let ((_%e4703047144%_
                                                 (gx#syntax-e
                                                  _%tl4702947141%_)))
                                            (let ((_%tl4703247151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4703047144%_)))
                                                  (_%hd4703147148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4703047144%_))))
                                              (if (gx#stx-null?
                                                   _%tl4703247151%_)
                                                  (_%__match4954249543%_
                                                   _%e4702147114%_
                                                   _%hd4702247118%_
                                                   _%tl4702347121%_
                                                   _%e4702447124%_
                                                   _%hd4702547128%_
                                                   _%tl4702647131%_
                                                   _%e4702747134%_
                                                   _%hd4702847138%_
                                                   _%tl4702947141%_
                                                   _%e4703047144%_
                                                   _%hd4703147148%_
                                                   _%tl4703247151%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4701647050%_)))))
                                          (if (gx#stx-null? _%tl4702947141%_)
                                              (_%__kont4951449515%_
                                               _%hd4702847138%_
                                               _%hd4702547128%_
                                               _%hd4702247118%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4701647050%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4701647050%_)))))
                          (let () (declare (not safe)) (_%g4701647050%_)))))
                  (let () (declare (not safe)) (_%g4701647050%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx47179%_)
        (let* ((_%g4718347198%_
                (lambda (_%g4718447194%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4718447194%_)))
               (_%g4718247241%_
                (lambda (_%g4718447202%_)
                  (if (gx#stx-pair? _%g4718447202%_)
                      (let ((_%e4718747205%_ (gx#syntax-e _%g4718447202%_)))
                        (let ((_%hd4718847209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4718747205%_)))
                              (_%tl4718947212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4718747205%_))))
                          (if (gx#stx-pair? _%tl4718947212%_)
                              (let ((_%e4719047215%_
                                     (gx#syntax-e _%tl4718947212%_)))
                                (let ((_%hd4719147219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4719047215%_)))
                                      (_%tl4719247222%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4719047215%_))))
                                  ((lambda (_%g4718547225%_ _%g4718647227%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g4718647227%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g4718547225%_)
                                                       '()))))
                                   _%tl4719247222%_
                                   _%hd4719147219%_)))
                              (_%g4718347198%_ _%g4718447202%_))))
                      (_%g4718347198%_ _%g4718447202%_)))))
          (_%g4718247241%_ _%$stx47179%_))))))
