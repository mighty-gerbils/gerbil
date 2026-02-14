(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40369_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40370_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40371_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40372_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40373_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40374_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40375_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40376_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40377_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40378_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40379_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40380_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40381_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40382_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40383_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40396_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40404_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40405_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40406_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40411_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40412_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40413_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40414_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40415_|
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
      (lambda _%$args35690%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35690%_)))
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
      (lambda (_%stx35687%_)
        (if (gx#identifier? _%stx35687%_)
            (let ((__tmp40368 (gx#syntax-local-value _%stx35687%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40368))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33989%_ _%match-stx33991%_)
        (letrec ((_%parse133993%_
                  (lambda (_%hd34352%_)
                    (let* ((_%__stx3815638157%_ _%hd34352%_)
                           (_%g3437834520%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3815638157%_))))
                      (let ((_%__kont3815938160%_
                             (lambda (_%g3438035450%_ _%g3438135452%_)
                               (let* ((_%__stx3807638077%_ _%g3438035450%_)
                                      (_%g3546935502%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3807638077%_))))
                                 (let ((_%__kont3807938080%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3438135452%_ '()))))
                                       (_%__kont3808138082%_
                                        (lambda (_%g3547135643%_)
                                          (cons '?:
                                                (cons _%g3438135452%_
                                                      (cons (_%parse133993%_
                                                             _%g3547135643%_)
                                                            '())))))
                                       (_%__kont3808338084%_
                                        (lambda (_%g3547535613%_)
                                          (cons '?:
                                                (cons _%g3438135452%_
                                                      (cons '=>:
                                                            (cons (_%parse133993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3547535613%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3808538086%_
                                        (lambda (_%g3548235564%_
                                                 _%g3548335566%_)
                                          (cons '?:
                                                (cons _%g3438135452%_
                                                      (cons '::
                                                            (cons _%g3548335566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133993%_ _%g3548235564%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3808738088%_
                                        (lambda ()
                                          (_%parse-error34000%_ _%hd34352%_))))
                                   (let ((_%g3546535654%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3807638077%_)
                                                (let ((_%e3547235633%_
                                                       (gx#syntax-e
                                                        _%__stx3807638077%_)))
                                                  (let ((_%tl3547435640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3547235633%_)))
                                                        (_%hd3547335637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3547235633%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3547435640%_)
                                                        (_%__kont3808138082%_
                                                         _%hd3547335637%_)
                                                        (if (gx#identifier?
                                                             _%hd3547335637%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40369_|
                         _%hd3547335637%_)
                        (if (gx#stx-pair? _%tl3547435640%_)
                            (let ((_%e3547935603%_
                                   (gx#syntax-e _%tl3547435640%_)))
                              (let ((_%tl3548135610%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3547935603%_)))
                                    (_%hd3548035607%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3547935603%_))))
                                (if (gx#stx-null? _%tl3548135610%_)
                                    (_%__kont3808338084%_ _%hd3548035607%_)
                                    (_%__kont3808738088%_))))
                            (_%__kont3808738088%_))
                        (_%__kont3808738088%_))
                    (if (gx#stx-datum? _%hd3547335637%_)
                        (let ((_%e3548735530%_ (gx#stx-e _%hd3547335637%_)))
                          (if (equal? _%e3548735530%_ '::)
                              (if (gx#stx-pair? _%tl3547435640%_)
                                  (let ((_%e3548835534%_
                                         (gx#syntax-e _%tl3547435640%_)))
                                    (let ((_%tl3549035541%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3548835534%_)))
                                          (_%hd3548935538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3548835534%_))))
                                      (if (gx#stx-pair? _%tl3549035541%_)
                                          (let ((_%e3549135544%_
                                                 (gx#syntax-e
                                                  _%tl3549035541%_)))
                                            (let ((_%tl3549335551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3549135544%_)))
                                                  (_%hd3549235548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3549135544%_))))
                                              (if (gx#identifier?
                                                   _%hd3549235548%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40370_|
                                                       _%hd3549235548%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3549335551%_)
                                                          (let ((_%e3549435554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3549335551%_)))
                    (let ((_%tl3549635561%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3549435554%_)))
                          (_%hd3549535558%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3549435554%_))))
                      (if (gx#stx-null? _%tl3549635561%_)
                          (_%__kont3808538086%_
                           _%hd3549535558%_
                           _%hd3548935538%_)
                          (_%__kont3808738088%_))))
                  (_%__kont3808738088%_))
              (_%__kont3808738088%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3808738088%_))))
                                          (_%__kont3808738088%_))))
                                  (_%__kont3808738088%_))
                              (_%__kont3808738088%_)))
                        (_%__kont3808738088%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3808738088%_)))))
                                     (if (gx#stx-null? _%__stx3807638077%_)
                                         (_%__kont3807938080%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3546535654%_))))))))
                            (_%__kont3816138162%_
                             (lambda (_%g3438835355%_)
                               (let* ((_%__stx3805838059%_ _%g3438835355%_)
                                      (_%g3536735378%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3805838059%_))))
                                 (let ((_%__kont3806138062%_
                                        (lambda (_%g3536935406%_)
                                          (_%parse133993%_ _%g3536935406%_)))
                                       (_%__kont3806338064%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133993%_
                                                 _%g3438835355%_)))))
                                   (if (gx#stx-pair? _%__stx3805838059%_)
                                       (let ((_%e3537035396%_
                                              (gx#syntax-e
                                               _%__stx3805838059%_)))
                                         (let ((_%tl3537235403%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3537035396%_)))
                                               (_%hd3537135400%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3537035396%_))))
                                           (if (gx#stx-null? _%tl3537235403%_)
                                               (_%__kont3806138062%_
                                                _%hd3537135400%_)
                                               (_%__kont3806338064%_))))
                                       (_%__kont3806338064%_))))))
                            (_%__kont3816338164%_
                             (lambda (_%g3439235270%_)
                               (let* ((_%__stx3804038041%_ _%g3439235270%_)
                                      (_%g3528235293%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3804038041%_))))
                                 (let ((_%__kont3804338044%_
                                        (lambda (_%g3528435321%_)
                                          (_%parse133993%_ _%g3528435321%_)))
                                       (_%__kont3804538046%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133993%_
                                                 _%g3439235270%_)))))
                                   (if (gx#stx-pair? _%__stx3804038041%_)
                                       (let ((_%e3528535311%_
                                              (gx#syntax-e
                                               _%__stx3804038041%_)))
                                         (let ((_%tl3528735318%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3528535311%_)))
                                               (_%hd3528635315%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3528535311%_))))
                                           (if (gx#stx-null? _%tl3528735318%_)
                                               (_%__kont3804338044%_
                                                _%hd3528635315%_)
                                               (_%__kont3804538046%_))))
                                       (_%__kont3804538046%_))))))
                            (_%__kont3816538166%_
                             (lambda (_%g3439635240%_)
                               (cons 'not:
                                     (cons (_%parse133993%_ _%g3439635240%_)
                                           '()))))
                            (_%__kont3816738168%_
                             (lambda (_%g3440335196%_ _%g3440435198%_)
                               (cons 'cons:
                                     (cons (_%parse133993%_ _%g3440435198%_)
                                           (cons (_%parse133993%_
                                                  _%g3440335196%_)
                                                 '())))))
                            (_%__kont3816938170%_
                             (lambda (_%g3441435140%_
                                      _%g3441535142%_
                                      _%g3441635143%_)
                               (if (gx#stx-null? _%g3441435140%_)
                                   (cons 'cons:
                                         (cons (_%parse133993%_
                                                _%g3441635143%_)
                                               (cons (_%parse133993%_
                                                      _%g3441535142%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133993%_
                                                _%g3441635143%_)
                                               (cons (_%parse133993%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3441535142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3441435140%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3817138172%_
                             (lambda (_%g3442635092%_)
                               (_%parse-list33995%_ _%g3442635092%_)))
                            (_%__kont3817338174%_
                             (lambda (_%g3443035062%_)
                               (cons 'box:
                                     (cons (_%parse133993%_ _%g3443035062%_)
                                           '()))))
                            (_%__kont3817538176%_
                             (lambda (_%g3443735025%_)
                               (cons 'box:
                                     (cons (_%parse133993%_ _%g3443735025%_)
                                           '()))))
                            (_%__kont3817738178%_
                             (lambda (_%g3443935001%_)
                               (_%parse133993%_ _%g3443935001%_)))
                            (_%__kont3817938180%_
                             (lambda (_%g3444634963%_)
                               (cons 'values:
                                     (cons (_%parse-vector33996%_
                                            _%g3444634963%_)
                                           '()))))
                            (_%__kont3818138182%_
                             (lambda (_%g3445034935%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33996%_
                                            _%g3445034935%_)
                                           '()))))
                            (_%__kont3818338184%_
                             (lambda (_%g3445434896%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33996%_
                                            (foldr (lambda (_%g3490934912%_
                                                            _%g3491034915%_)
                                                     (cons _%g3490934912%_
                                                           _%g3491034915%_))
                                                   '()
                                                   _%g3445434896%_))
                                           '()))))
                            (_%__kont3818738188%_
                             (lambda (_%g3446534844%_ _%g3446634846%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3446634846%_)
                                           (cons (_%parse-vector33996%_
                                                  _%g3446534844%_)
                                                 '())))))
                            (_%__kont3818938190%_
                             (lambda (_%g3447034814%_ _%g3447134816%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3447134816%_)
                                           (cons (_%parse-class-body33998%_
                                                  _%g3447034814%_)
                                                 '())))))
                            (_%__kont3819138192%_
                             (lambda (_%g3447534774%_ _%g3447634776%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3447634776%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3447534774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3819338194%_
                             (lambda (_%g3448334734%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3448334734%_) '()))))
                            (_%__kont3819538196%_
                             (lambda (_%g3449034694%_)
                               (_%parse-qq33999%_ _%g3449034694%_)))
                            (_%__kont3819738198%_
                             (lambda (_%g3449734650%_ _%g3449834652%_)
                               (cons 'apply:
                                     (cons _%g3449834652%_
                                           (cons (_%parse133993%_
                                                  _%g3449734650%_)
                                                 '())))))
                            (_%__kont3819938200%_
                             (lambda (_%g3450834598%_)
                               (_%parse133993%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3450834598%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd34352%_)
                                  (let ((_%$e34609%_
                                         (gx#stx-source _%hd34352%_)))
                                    (if _%$e34609%_
                                        _%$e34609%_
                                        (gx#stx-source _%stx33989%_))))))))
                            (_%__kont3820138202%_
                             (lambda (_%g3451234572%_) (cons 'any: '())))
                            (_%__kont3820338204%_
                             (lambda (_%g3451334556%_)
                               (cons 'var: (cons _%g3451334556%_ '()))))
                            (_%__kont3820538206%_
                             (lambda (_%g3451434538%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3451434538%_) '()))))
                            (_%__kont3820738208%_
                             (lambda () (_%parse-error34000%_ _%hd34352%_))))
                        (let* ((_%g3437634549%_
                                (lambda ()
                                  (let ((_%g3451434538%_ _%__stx3815638157%_))
                                    (if (gx#stx-datum? _%g3451434538%_)
                                        (_%__kont3820538206%_ _%g3451434538%_)
                                        (_%__kont3820738208%_)))))
                               (_%g3437534565%_
                                (lambda ()
                                  (let ((_%g3451334556%_ _%__stx3815638157%_))
                                    (if (and (gx#identifier? _%g3451334556%_)
                                             (not (gx#ellipsis?
                                                   _%g3451334556%_)))
                                        (_%__kont3820338204%_ _%g3451334556%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3437634549%_))))))
                               (_%g3437434581%_
                                (lambda ()
                                  (let ((_%g3451234572%_ _%__stx3815638157%_))
                                    (if (gx#underscore? _%g3451234572%_)
                                        (_%__kont3820138202%_ _%g3451234572%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3437534565%_))))))
                               (_%__match3848338484%_
                                (lambda (_%e3450934588%_
                                         _%hd3451034592%_
                                         _%tl3451134595%_)
                                  (let ((_%g3450834598%_ _%hd3451034592%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3450834598%_)
                                        (_%__kont3819938200%_ _%g3450834598%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3437434581%_))))))
                               (_%__match3841738418%_
                                (lambda (_%e3447734754%_
                                         _%hd3447834758%_
                                         _%tl3447934761%_
                                         _%e3448034764%_
                                         _%hd3448134768%_
                                         _%tl3448234771%_)
                                  (let ((_%g3447534774%_ _%hd3448134768%_)
                                        (_%g3447634776%_ _%hd3447834758%_))
                                    (if (and (gx#identifier? _%g3447634776%_)
                                             (or (gx#free-identifier=?
                                                  _%g3447634776%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3447634776%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3447634776%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3819138192%_
                                         _%g3447534774%_
                                         _%g3447634776%_)
                                        (if (gx#identifier? _%hd3447834758%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40371_|
                                                 _%hd3447834758%_)
                                                (_%__kont3819338194%_
                                                 _%hd3448134768%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40372_|
                                                     _%hd3447834758%_)
                                                    (_%__kont3819538196%_
                                                     _%hd3448134768%_)
                                                    (_%__match3848338484%_
                                                     _%e3447734754%_
                                                     _%hd3447834758%_
                                                     _%tl3447934761%_)))
                                            (_%__match3848338484%_
                                             _%e3447734754%_
                                             _%hd3447834758%_
                                             _%tl3447934761%_))))))
                               (_%__match3840338404%_
                                (lambda (_%e3447234804%_
                                         _%hd3447334808%_
                                         _%tl3447434811%_)
                                  (let ((_%g3447034814%_ _%tl3447434811%_)
                                        (_%g3447134816%_ _%hd3447334808%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3447134816%_))
                                        (_%__kont3818938190%_
                                         _%g3447034814%_
                                         _%g3447134816%_)
                                        (if (gx#stx-pair? _%tl3447434811%_)
                                            (let ((_%e3448034764%_
                                                   (gx#syntax-e
                                                    _%tl3447434811%_)))
                                              (let ((_%tl3448234771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3448034764%_)))
                                                    (_%hd3448134768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3448034764%_))))
                                                (if (gx#stx-null?
                                                     _%tl3448234771%_)
                                                    (_%__match3841738418%_
                                                     _%e3447234804%_
                                                     _%hd3447334808%_
                                                     _%tl3447434811%_
                                                     _%e3448034764%_
                                                     _%hd3448134768%_
                                                     _%tl3448234771%_)
                                                    (if (gx#identifier?
                                                         _%hd3447334808%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40371_|
                                                             _%hd3447334808%_)
                                                            (_%__match3848338484%_
                                                             _%e3447234804%_
                                                             _%hd3447334808%_
                                                             _%tl3447434811%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40372_|
                         _%hd3447334808%_)
                        (_%__match3848338484%_
                         _%e3447234804%_
                         _%hd3447334808%_
                         _%tl3447434811%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40373_|
                             _%hd3447334808%_)
                            (if (gx#stx-pair? _%tl3448234771%_)
                                (let ((_%e3450534640%_
                                       (gx#syntax-e _%tl3448234771%_)))
                                  (let ((_%tl3450734647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3450534640%_)))
                                        (_%hd3450634644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3450534640%_))))
                                    (if (gx#stx-null? _%tl3450734647%_)
                                        (_%__kont3819738198%_
                                         _%hd3450634644%_
                                         _%hd3448134768%_)
                                        (_%__match3848338484%_
                                         _%e3447234804%_
                                         _%hd3447334808%_
                                         _%tl3447434811%_))))
                                (_%__match3848338484%_
                                 _%e3447234804%_
                                 _%hd3447334808%_
                                 _%tl3447434811%_))
                            (_%__match3848338484%_
                             _%e3447234804%_
                             _%hd3447334808%_
                             _%tl3447434811%_))))
                (_%__match3848338484%_
                 _%e3447234804%_
                 _%hd3447334808%_
                 _%tl3447434811%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3848338484%_
                                             _%e3447234804%_
                                             _%hd3447334808%_
                                             _%tl3447434811%_))))))
                               (_%__match3839738398%_
                                (lambda (_%e3446734834%_
                                         _%hd3446834838%_
                                         _%tl3446934841%_)
                                  (let ((_%g3446534844%_ _%tl3446934841%_)
                                        (_%g3446634846%_ _%hd3446834838%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3446634846%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3818738188%_
                                         _%g3446534844%_
                                         _%g3446634846%_)
                                        (_%__match3840338404%_
                                         _%e3446734834%_
                                         _%hd3446834838%_
                                         _%tl3446934841%_)))))
                               (_%__match3839138392%_
                                (lambda (_%e3445534864%_
                                         _%__splice3818538186%_
                                         _%target3445634868%_
                                         _%tl3445834871%_)
                                  (letrec ((_%loop3445934874%_
                                            (lambda (_%hd3445734878%_
                                                     _%body3446334881%_)
                                              (if (gx#stx-pair?
                                                   _%hd3445734878%_)
                                                  (let ((_%e3446034883%_
                                                         (gx#syntax-e
                                                          _%hd3445734878%_)))
                                                    (let ((_%lp-tl3446234890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3446034883%_)))
                                                          (_%lp-hd3446134887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3446034883%_))))
                                                      (_%loop3445934874%_
                                                       _%lp-tl3446234890%_
                                                       (cons _%lp-hd3446134887%_
                                                             _%body3446334881%_))))
                                                  (let ((_%body3446434893%_
                                                         (reverse _%body3446334881%_)))
                                                    (_%__kont3818338184%_
                                                     _%body3446434893%_))))))
                                    (_%loop3445934874%_
                                     _%target3445634868%_
                                     '()))))
                               (_%g3436634918%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3815638157%_)
                                      (let ((_%e3445534864%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3815638157%_))))
                                        (if (gx#stx-pair/null? _%e3445534864%_)
                                            (let ((_%__splice3818538186%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3445534864%_
                                                    '0)))
                                              (let ((_%tl3445834871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3818538186%_
                                                        '1)))
                                                    (_%target3445634868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3818538186%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3445834871%_)
                                                    (_%__match3839138392%_
                                                     _%e3445534864%_
                                                     _%__splice3818538186%_
                                                     _%target3445634868%_
                                                     _%tl3445834871%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3437434581%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3437434581%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3437434581%_)))))
                               (_%g3436235035%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3815638157%_)
                                      (let ((_%e3443835021%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3815638157%_))))
                                        (_%__kont3817538176%_ _%e3443835021%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3436634918%_)))))
                               (_%__match3824538246%_
                                (lambda (_%e3439335260%_
                                         _%hd3439435264%_
                                         _%tl3439535267%_)
                                  (let ((_%g3439235270%_ _%tl3439535267%_))
                                    (if (gx#stx-list? _%g3439235270%_)
                                        (_%__kont3816338164%_ _%g3439235270%_)
                                        (_%__match3839738398%_
                                         _%e3439335260%_
                                         _%hd3439435264%_
                                         _%tl3439535267%_)))))
                               (_%__match3823538236%_
                                (lambda (_%e3438935345%_
                                         _%hd3439035349%_
                                         _%tl3439135352%_)
                                  (let ((_%g3438835355%_ _%tl3439135352%_))
                                    (if (gx#stx-list? _%g3438835355%_)
                                        (_%__kont3816138162%_ _%g3438835355%_)
                                        (_%__match3839738398%_
                                         _%e3438935345%_
                                         _%hd3439035349%_
                                         _%tl3439135352%_))))))
                          (if (gx#stx-pair? _%__stx3815638157%_)
                              (let ((_%e3438235430%_
                                     (gx#syntax-e _%__stx3815638157%_)))
                                (let ((_%tl3438435437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3438235430%_)))
                                      (_%hd3438335434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3438235430%_))))
                                  (if (gx#identifier? _%hd3438335434%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40374_|
                                           _%hd3438335434%_)
                                          (if (gx#stx-pair? _%tl3438435437%_)
                                              (let ((_%e3438535440%_
                                                     (gx#syntax-e
                                                      _%tl3438435437%_)))
                                                (let ((_%tl3438735447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3438535440%_)))
                                                      (_%hd3438635444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3438535440%_))))
                                                  (_%__kont3815938160%_
                                                   _%tl3438735447%_
                                                   _%hd3438635444%_)))
                                              (_%__match3839738398%_
                                               _%e3438235430%_
                                               _%hd3438335434%_
                                               _%tl3438435437%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40375_|
                                               _%hd3438335434%_)
                                              (_%__match3823538236%_
                                               _%e3438235430%_
                                               _%hd3438335434%_
                                               _%tl3438435437%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40376_|
                                                   _%hd3438335434%_)
                                                  (_%__match3824538246%_
                                                   _%e3438235430%_
                                                   _%hd3438335434%_
                                                   _%tl3438435437%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40377_|
                                                       _%hd3438335434%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3438435437%_)
                                                          (let ((_%e3440035230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3438435437%_)))
                    (let ((_%tl3440235237%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3440035230%_)))
                          (_%hd3440135234%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3440035230%_))))
                      (if (gx#stx-null? _%tl3440235237%_)
                          (_%__kont3816538166%_ _%hd3440135234%_)
                          (_%__match3839738398%_
                           _%e3438235430%_
                           _%hd3438335434%_
                           _%tl3438435437%_))))
                  (_%__match3839738398%_
                   _%e3438235430%_
                   _%hd3438335434%_
                   _%tl3438435437%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40378_|
                   _%hd3438335434%_)
                  (if (gx#stx-pair? _%tl3438435437%_)
                      (let ((_%e3440835176%_ (gx#syntax-e _%tl3438435437%_)))
                        (let ((_%tl3441035183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3440835176%_)))
                              (_%hd3440935180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3440835176%_))))
                          (if (gx#stx-pair? _%tl3441035183%_)
                              (let ((_%e3441135186%_
                                     (gx#syntax-e _%tl3441035183%_)))
                                (let ((_%tl3441335193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3441135186%_)))
                                      (_%hd3441235190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3441135186%_))))
                                  (if (gx#stx-null? _%tl3441335193%_)
                                      (_%__kont3816738168%_
                                       _%hd3441235190%_
                                       _%hd3440935180%_)
                                      (_%__match3839738398%_
                                       _%e3438235430%_
                                       _%hd3438335434%_
                                       _%tl3438435437%_))))
                              (_%__match3839738398%_
                               _%e3438235430%_
                               _%hd3438335434%_
                               _%tl3438435437%_))))
                      (_%__match3839738398%_
                       _%e3438235430%_
                       _%hd3438335434%_
                       _%tl3438435437%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40379_|
                       _%hd3438335434%_)
                      (if (gx#stx-pair? _%tl3438435437%_)
                          (let ((_%e3442035120%_
                                 (gx#syntax-e _%tl3438435437%_)))
                            (let ((_%tl3442235127%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3442035120%_)))
                                  (_%hd3442135124%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3442035120%_))))
                              (if (gx#stx-pair? _%tl3442235127%_)
                                  (let ((_%e3442335130%_
                                         (gx#syntax-e _%tl3442235127%_)))
                                    (let ((_%tl3442535137%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3442335130%_)))
                                          (_%hd3442435134%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3442335130%_))))
                                      (_%__kont3816938170%_
                                       _%tl3442535137%_
                                       _%hd3442435134%_
                                       _%hd3442135124%_)))
                                  (_%__match3839738398%_
                                   _%e3438235430%_
                                   _%hd3438335434%_
                                   _%tl3438435437%_))))
                          (_%__match3839738398%_
                           _%e3438235430%_
                           _%hd3438335434%_
                           _%tl3438435437%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40380_|
                           _%hd3438335434%_)
                          (_%__kont3817138172%_ _%tl3438435437%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40381_|
                               _%hd3438335434%_)
                              (if (gx#stx-pair? _%tl3438435437%_)
                                  (let ((_%e3443435052%_
                                         (gx#syntax-e _%tl3438435437%_)))
                                    (let ((_%tl3443635059%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3443435052%_)))
                                          (_%hd3443535056%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3443435052%_))))
                                      (if (gx#stx-null? _%tl3443635059%_)
                                          (_%__kont3817338174%_
                                           _%hd3443535056%_)
                                          (_%__match3839738398%_
                                           _%e3438235430%_
                                           _%hd3438335434%_
                                           _%tl3438435437%_))))
                                  (_%__match3839738398%_
                                   _%e3438235430%_
                                   _%hd3438335434%_
                                   _%tl3438435437%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40382_|
                                   _%hd3438335434%_)
                                  (if (gx#stx-pair? _%tl3438435437%_)
                                      (let ((_%e3444334991%_
                                             (gx#syntax-e _%tl3438435437%_)))
                                        (let ((_%tl3444534998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3444334991%_)))
                                              (_%hd3444434995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3444334991%_))))
                                          (if (gx#stx-null? _%tl3444534998%_)
                                              (_%__kont3817738178%_
                                               _%hd3444434995%_)
                                              (_%__kont3817938180%_
                                               _%tl3438435437%_))))
                                      (_%__kont3817938180%_ _%tl3438435437%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40383_|
                                       _%hd3438335434%_)
                                      (_%__kont3818138182%_ _%tl3438435437%_)
                                      (_%__match3839738398%_
                                       _%e3438235430%_
                                       _%hd3438335434%_
                                       _%tl3438435437%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3839738398%_
                                       _%e3438235430%_
                                       _%hd3438335434%_
                                       _%tl3438435437%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3436235035%_))))))))
                 (_%parse-list33995%_
                  (lambda (_%body34175%_)
                    (let* ((_%__stx3848638487%_ _%body34175%_)
                           (_%g3418134210%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3848638487%_))))
                      (let ((_%__kont3848938490%_
                             (lambda (_%g3418334334%_)
                               (_%parse133993%_ _%g3418334334%_)))
                            (_%__kont3849138492%_
                             (lambda (_%g3419134286%_
                                      _%g3419234288%_
                                      _%g3419334289%_)
                               (cons 'splice:
                                     (cons (_%parse133993%_ _%g3419334289%_)
                                           (cons (_%parse-list33995%_
                                                  _%g3419134286%_)
                                                 '())))))
                            (_%__kont3849338494%_
                             (lambda (_%g3420034244%_ _%g3420134246%_)
                               (cons 'cons:
                                     (cons (_%parse133993%_ _%g3420134246%_)
                                           (cons (_%parse-list33995%_
                                                  _%g3420034244%_)
                                                 '())))))
                            (_%__kont3849538496%_
                             (lambda ()
                               (if (gx#stx-null? _%body34175%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body34175%_)
                                       (_%parse-error34000%_ _%body34175%_)
                                       (_%parse133993%_ _%body34175%_))))))
                        (let* ((_%__match3853538536%_
                                (lambda (_%e3420234234%_
                                         _%hd3420334238%_
                                         _%tl3420434241%_)
                                  (let ((_%g3420034244%_ _%tl3420434241%_)
                                        (_%g3420134246%_ _%hd3420334238%_))
                                    (if (gx#ellipsis? _%g3420134246%_)
                                        (_%__kont3849538496%_)
                                        (_%__kont3849338494%_
                                         _%g3420034244%_
                                         _%g3420134246%_)))))
                               (_%__match3852938530%_
                                (lambda (_%e3419434266%_
                                         _%hd3419534270%_
                                         _%tl3419634273%_
                                         _%e3419734276%_
                                         _%hd3419834280%_
                                         _%tl3419934283%_)
                                  (let ((_%g3419134286%_ _%tl3419934283%_)
                                        (_%g3419234288%_ _%hd3419834280%_)
                                        (_%g3419334289%_ _%hd3419534270%_))
                                    (if (gx#ellipsis? _%g3419234288%_)
                                        (_%__kont3849138492%_
                                         _%g3419134286%_
                                         _%g3419234288%_
                                         _%g3419334289%_)
                                        (_%__match3853538536%_
                                         _%e3419434266%_
                                         _%hd3419534270%_
                                         _%tl3419634273%_))))))
                          (if (gx#stx-pair? _%__stx3848638487%_)
                              (let ((_%e3418434310%_
                                     (gx#syntax-e _%__stx3848638487%_)))
                                (let ((_%tl3418634317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3418434310%_)))
                                      (_%hd3418534314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3418434310%_))))
                                  (if (gx#stx-datum? _%hd3418534314%_)
                                      (let ((_%e3418734320%_
                                             (gx#stx-e _%hd3418534314%_)))
                                        (if (equal? _%e3418734320%_ '::)
                                            (if (gx#stx-pair? _%tl3418634317%_)
                                                (let ((_%e3418834324%_
                                                       (gx#syntax-e
                                                        _%tl3418634317%_)))
                                                  (let ((_%tl3419034331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3418834324%_)))
                                                        (_%hd3418934328%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3418834324%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3419034331%_)
                                                        (_%__kont3848938490%_
                                                         _%hd3418934328%_)
                                                        (_%__match3852938530%_
                                                         _%e3418434310%_
                                                         _%hd3418534314%_
                                                         _%tl3418634317%_
                                                         _%e3418834324%_
                                                         _%hd3418934328%_
                                                         _%tl3419034331%_))))
                                                (_%__match3853538536%_
                                                 _%e3418434310%_
                                                 _%hd3418534314%_
                                                 _%tl3418634317%_))
                                            (if (gx#stx-pair? _%tl3418634317%_)
                                                (let ((_%e3419734276%_
                                                       (gx#syntax-e
                                                        _%tl3418634317%_)))
                                                  (let ((_%tl3419934283%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3419734276%_)))
                                                        (_%hd3419834280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3419734276%_))))
                                                    (_%__match3852938530%_
                                                     _%e3418434310%_
                                                     _%hd3418534314%_
                                                     _%tl3418634317%_
                                                     _%e3419734276%_
                                                     _%hd3419834280%_
                                                     _%tl3419934283%_)))
                                                (_%__match3853538536%_
                                                 _%e3418434310%_
                                                 _%hd3418534314%_
                                                 _%tl3418634317%_))))
                                      (if (gx#stx-pair? _%tl3418634317%_)
                                          (let ((_%e3419734276%_
                                                 (gx#syntax-e
                                                  _%tl3418634317%_)))
                                            (let ((_%tl3419934283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3419734276%_)))
                                                  (_%hd3419834280%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3419734276%_))))
                                              (_%__match3852938530%_
                                               _%e3418434310%_
                                               _%hd3418534314%_
                                               _%tl3418634317%_
                                               _%e3419734276%_
                                               _%hd3419834280%_
                                               _%tl3419934283%_)))
                                          (_%__match3853538536%_
                                           _%e3418434310%_
                                           _%hd3418534314%_
                                           _%tl3418634317%_)))))
                              (_%__kont3849538496%_)))))))
                 (_%parse-vector33996%_
                  (lambda (_%body34172%_)
                    (if (_%simple-vector?33997%_ _%body34172%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133993%_ _%body34172%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33995%_ _%body34172%_)
                                    '())))))
                 (_%simple-vector?33997%_
                  (lambda (_%body34109%_)
                    (let* ((_%__stx3853838539%_ _%body34109%_)
                           (_%g3411334125%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3853838539%_))))
                      (let ((_%__kont3854138542%_
                             (lambda (_%g3411534153%_ _%g3411634155%_)
                               (if (gx#ellipsis? _%g3411634155%_)
                                   '#f
                                   (_%simple-vector?33997%_ _%g3411534153%_))))
                            (_%__kont3854338544%_
                             (lambda () (gx#stx-null? _%body34109%_))))
                        (if (gx#stx-pair? _%__stx3853838539%_)
                            (let ((_%e3411734143%_
                                   (gx#syntax-e _%__stx3853838539%_)))
                              (let ((_%tl3411934150%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3411734143%_)))
                                    (_%hd3411834147%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3411734143%_))))
                                (_%__kont3854138542%_
                                 _%tl3411934150%_
                                 _%hd3411834147%_)))
                            (_%__kont3854338544%_))))))
                 (_%parse-class-body33998%_
                  (lambda (_%body34018%_)
                    (let _%recur34021%_ ((_%rest34024%_ _%body34018%_))
                      (let* ((_%__stx3855438555%_ _%rest34024%_)
                             (_%g3402834044%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3855438555%_))))
                        (let ((_%__kont3855738558%_
                               (lambda (_%g3403034082%_
                                        _%g3403134084%_
                                        _%g3403234085%_)
                                 (cons _%g3403234085%_
                                       (cons (_%parse133993%_ _%g3403134084%_)
                                             (_%recur34021%_
                                              _%g3403034082%_)))))
                              (_%__kont3855938560%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest34024%_)
                                     '()
                                     (_%parse-error34000%_ _%rest34024%_)))))
                          (let ((_%__match3857338574%_
                                 (lambda (_%e3403334062%_
                                          _%hd3403434066%_
                                          _%tl3403534069%_
                                          _%e3403634072%_
                                          _%hd3403734076%_
                                          _%tl3403834079%_)
                                   (let ((_%g3403034082%_ _%tl3403834079%_)
                                         (_%g3403134084%_ _%hd3403734076%_)
                                         (_%g3403234085%_ _%hd3403434066%_))
                                     (if (gx#stx-keyword? _%g3403234085%_)
                                         (_%__kont3855738558%_
                                          _%g3403034082%_
                                          _%g3403134084%_
                                          _%g3403234085%_)
                                         (_%__kont3855938560%_))))))
                            (if (gx#stx-pair? _%__stx3855438555%_)
                                (let ((_%e3403334062%_
                                       (gx#syntax-e _%__stx3855438555%_)))
                                  (let ((_%tl3403534069%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3403334062%_)))
                                        (_%hd3403434066%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3403334062%_))))
                                    (if (gx#stx-pair? _%tl3403534069%_)
                                        (let ((_%e3403634072%_
                                               (gx#syntax-e _%tl3403534069%_)))
                                          (let ((_%tl3403834079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3403634072%_)))
                                                (_%hd3403734076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3403634072%_))))
                                            (_%__match3857338574%_
                                             _%e3403334062%_
                                             _%hd3403434066%_
                                             _%tl3403534069%_
                                             _%e3403634072%_
                                             _%hd3403734076%_
                                             _%tl3403834079%_)))
                                        (_%__kont3855938560%_))))
                                (_%__kont3855938560%_))))))))
                 (_%parse-qq33999%_
                  (lambda (_%hd34005%_)
                    (let ((_%g3400734014%_
                           (lambda (_%g3400834010%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3400834010%_))))
                      (_%g3400734014%_ _%hd34005%_))))
                 (_%parse-error34000%_
                  (lambda (_%hd34002%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33991%_
                               (cons _%match-stx33991%_
                                     (cons _%stx33989%_
                                           (cons _%hd34002%_ '())))
                               (cons _%stx33989%_ (cons _%hd34002%_ '())))))))
          (_%parse133993%_ _%stx33989%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35677%_)
        (let ((_%match-stx35680%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35677%_
           _%match-stx35680%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40384_
        (let ((_g40385_ (let () (declare (not safe)) (##length _g40384_))))
          (cond ((let () (declare (not safe)) (##fx= _g40385_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g40384_))
                ((let () (declare (not safe)) (##fx= _g40385_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g40384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40384_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33974%_)
        (let ((__tmp40386
               (lambda (_%E33977%_)
                 (with-exception-handler
                  (let ((_%E!33980%_ (current-exception-handler)))
                    (lambda (_%e33983%_)
                      (if (syntax-error? _%e33983%_)
                          (_%E33977%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33980%_ _%e33983%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33974%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40386))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32709%_)
        (letrec ((_%loop32712%_
                  (lambda (_%ptree32999%_ _%vars33001%_ _%K33002%_)
                    (let* ((_%__stx3867238673%_ _%ptree32999%_)
                           (_%g3301533125%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3867238673%_))))
                      (let ((_%__kont3867538676%_
                             (lambda (_%g3301733755%_)
                               (let* ((_%__stx3859238593%_ _%g3301733755%_)
                                      (_%g3377233806%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3859238593%_))))
                                 (let ((_%__kont3859538596%_
                                        (lambda (_%g3377433955%_)
                                          (_%loop32712%_
                                           _%g3377433955%_
                                           _%vars33001%_
                                           _%K33002%_)))
                                       (_%__kont3859738598%_
                                        (lambda (_%g3377833924%_)
                                          (_%loop32712%_
                                           _%g3377833924%_
                                           _%vars33001%_
                                           _%K33002%_)))
                                       (_%__kont3859938600%_
                                        (lambda (_%g3378633872%_)
                                          (_%loop32712%_
                                           _%g3378633872%_
                                           _%vars33001%_
                                           _%K33002%_)))
                                       (_%__kont3860138602%_
                                        (lambda ()
                                          (_%K33002%_ _%vars33001%_))))
                                   (if (gx#stx-pair? _%__stx3859238593%_)
                                       (let ((_%e3377533945%_
                                              (gx#syntax-e
                                               _%__stx3859238593%_)))
                                         (let ((_%tl3377733952%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3377533945%_)))
                                               (_%hd3377633949%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3377533945%_))))
                                           (if (gx#stx-null? _%tl3377733952%_)
                                               (_%__kont3859538596%_
                                                _%hd3377633949%_)
                                               (if (gx#stx-datum?
                                                    _%hd3377633949%_)
                                                   (let ((_%e3378233910%_
                                                          (gx#stx-e
                                                           _%hd3377633949%_)))
                                                     (if (equal? _%e3378233910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3377733952%_)
                     (let ((_%e3378333914%_ (gx#syntax-e _%tl3377733952%_)))
                       (let ((_%tl3378533921%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3378333914%_)))
                             (_%hd3378433918%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3378333914%_))))
                         (if (gx#stx-null? _%tl3378533921%_)
                             (_%__kont3859738598%_ _%hd3378433918%_)
                             (_%__kont3860138602%_))))
                     (_%__kont3860138602%_))
                 (if (equal? _%e3378233910%_ '::)
                     (if (gx#stx-pair? _%tl3377733952%_)
                         (let ((_%e3379133838%_
                                (gx#syntax-e _%tl3377733952%_)))
                           (let ((_%tl3379333845%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3379133838%_)))
                                 (_%hd3379233842%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3379133838%_))))
                             (if (gx#stx-pair? _%tl3379333845%_)
                                 (let ((_%e3379433848%_
                                        (gx#syntax-e _%tl3379333845%_)))
                                   (let ((_%tl3379633855%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3379433848%_)))
                                         (_%hd3379533852%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3379433848%_))))
                                     (if (gx#stx-datum? _%hd3379533852%_)
                                         (let ((_%e3379733858%_
                                                (gx#stx-e _%hd3379533852%_)))
                                           (if (equal? _%e3379733858%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3379633855%_)
                                                   (let ((_%e3379833862%_
                                                          (gx#syntax-e
                                                           _%tl3379633855%_)))
                                                     (let ((_%tl3380033869%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3379833862%_)))
                                                           (_%hd3379933866%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3379833862%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3380033869%_)
                                                           (_%__kont3859938600%_
                                                            _%hd3379933866%_)
                                                           (_%__kont3860138602%_))))
                                                   (_%__kont3860138602%_))
                                               (_%__kont3860138602%_)))
                                         (_%__kont3860138602%_))))
                                 (_%__kont3860138602%_))))
                         (_%__kont3860138602%_))
                     (_%__kont3860138602%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3860138602%_)))))
                                       (_%__kont3860138602%_))))))
                            (_%__kont3867738678%_
                             (lambda (_%g3302533642%_ _%g3302633644%_)
                               (let* ((_%__stx3857638577%_ _%g3302533642%_)
                                      (_%g3366033672%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3857638577%_))))
                                 (let ((_%__kont3857938580%_
                                        (lambda (_%g3366233700%_
                                                 _%g3366333702%_)
                                          (_%loop32712%_
                                           _%g3366333702%_
                                           _%vars33001%_
                                           (lambda (_%g3371433716%_)
                                             (_%loop32712%_
                                              (cons _%g3302633644%_
                                                    _%g3366233700%_)
                                              _%g3371433716%_
                                              _%K33002%_)))))
                                       (_%__kont3858138582%_
                                        (lambda ()
                                          (_%K33002%_ _%vars33001%_))))
                                   (if (gx#stx-pair? _%__stx3857638577%_)
                                       (let ((_%e3366433690%_
                                              (gx#syntax-e
                                               _%__stx3857638577%_)))
                                         (let ((_%tl3366633697%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3366433690%_)))
                                               (_%hd3366533694%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3366433690%_))))
                                           (_%__kont3857938580%_
                                            _%tl3366633697%_
                                            _%hd3366533694%_)))
                                       (_%__kont3858138582%_))))))
                            (_%__kont3867938680%_
                             (lambda (_%g3303033611%_)
                               (_%loop32712%_
                                _%g3303033611%_
                                _%vars33001%_
                                _%K33002%_)))
                            (_%__kont3868138682%_
                             (lambda (_%g3303833557%_ _%g3303933559%_)
                               (_%loop32712%_
                                _%g3303933559%_
                                _%vars33001%_
                                (lambda (_%g3357433576%_)
                                  (_%loop32712%_
                                   _%g3303833557%_
                                   _%g3357433576%_
                                   _%K33002%_)))))
                            (_%__kont3868338684%_
                             (lambda (_%g3305033493%_ _%g3305133495%_)
                               (_%loop32712%_
                                _%g3305133495%_
                                _%vars33001%_
                                (lambda (_%g3351033512%_)
                                  (_%loop32712%_
                                   _%g3305033493%_
                                   _%g3351033512%_
                                   _%K33002%_)))))
                            (_%__kont3868538686%_
                             (lambda (_%g3306233438%_)
                               (_%loop32712%_
                                _%g3306233438%_
                                _%vars33001%_
                                _%K33002%_)))
                            (_%__kont3868738688%_
                             (lambda (_%g3307033388%_ _%g3307133390%_)
                               (_%loop-vector32714%_
                                _%g3307033388%_
                                _%vars33001%_
                                _%K33002%_)))
                            (_%__kont3868938690%_
                             (lambda (_%g3307833345%_)
                               (_%loop-vector32714%_
                                _%g3307833345%_
                                _%vars33001%_
                                _%K33002%_)))
                            (_%__kont3869138692%_
                             (lambda (_%g3308933288%_)
                               (_%loop-class-list32716%_
                                _%g3308933288%_
                                _%vars33001%_
                                _%K33002%_)))
                            (_%__kont3869338694%_
                             (lambda (_%g3310033229%_ _%g3310133231%_)
                               (_%loop32712%_
                                _%g3310033229%_
                                _%vars33001%_
                                _%K33002%_)))
                            (_%__kont3869538696%_
                             (lambda (_%g3311233167%_)
                               (if (find (lambda (_%g3318233184%_)
                                           (gx#bound-identifier=?
                                            _%g3318233184%_
                                            _%g3311233167%_))
                                         _%vars33001%_)
                                   (_%K33002%_ _%vars33001%_)
                                   (_%K33002%_
                                    (cons _%g3311233167%_ _%vars33001%_)))))
                            (_%__kont3869738698%_
                             (lambda () (_%K33002%_ _%vars33001%_))))
                        (let* ((_%__match3882938830%_
                                (lambda (_%e3307233368%_
                                         _%hd3307333372%_
                                         _%tl3307433375%_
                                         _%e3307533378%_
                                         _%hd3307633382%_
                                         _%tl3307733385%_)
                                  (let ((_%g3307033388%_ _%hd3307633382%_)
                                        (_%g3307133390%_ _%hd3307333372%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3307133390%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3307133390%_))
                                        (_%__kont3868738688%_
                                         _%g3307033388%_
                                         _%g3307133390%_)
                                        (if (gx#stx-datum? _%hd3307333372%_)
                                            (let ((_%e3308233321%_
                                                   (gx#stx-e
                                                    _%hd3307333372%_)))
                                              (if (equal? _%e3308233321%_
                                                          'struct:)
                                                  (_%__kont3869738698%_)
                                                  (if (equal? _%e3308233321%_
                                                              'class:)
                                                      (_%__kont3869738698%_)
                                                      (if (equal? _%e3308233321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3869738698%_)
                  (if (equal? _%e3308233321%_ 'var:)
                      (_%__kont3869538696%_ _%hd3307633382%_)
                      (_%__kont3869738698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3869738698%_))))))
                               (_%__match3872338724%_
                                (lambda (_%e3302733632%_
                                         _%hd3302833636%_
                                         _%tl3302933639%_)
                                  (let ((_%g3302533642%_ _%tl3302933639%_)
                                        (_%g3302633644%_ _%hd3302833636%_))
                                    (if (or (gx#stx-eq? 'and: _%g3302633644%_)
                                            (gx#stx-eq? 'or: _%g3302633644%_))
                                        (_%__kont3867738678%_
                                         _%g3302533642%_
                                         _%g3302633644%_)
                                        (if (gx#stx-datum? _%hd3302833636%_)
                                            (let ((_%e3303433597%_
                                                   (gx#stx-e
                                                    _%hd3302833636%_)))
                                              (if (equal? _%e3303433597%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3302933639%_)
                                                      (let ((_%e3303533601%_
                                                             (gx#syntax-e
                                                              _%tl3302933639%_)))
                                                        (let ((_%tl3303733608%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3303533601%_)))
                      (_%hd3303633605%_
                       (let () (declare (not safe)) (##car _%e3303533601%_))))
                  (if (gx#stx-null? _%tl3303733608%_)
                      (_%__kont3867938680%_ _%hd3303633605%_)
                      (_%__kont3869738698%_))))
              (_%__kont3869738698%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3303433597%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3302933639%_)
                                                          (let ((_%e3304433537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3302933639%_)))
                    (let ((_%tl3304633544%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3304433537%_)))
                          (_%hd3304533541%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3304433537%_))))
                      (if (gx#stx-pair? _%tl3304633544%_)
                          (let ((_%e3304733547%_
                                 (gx#syntax-e _%tl3304633544%_)))
                            (let ((_%tl3304933554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3304733547%_)))
                                  (_%hd3304833551%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3304733547%_))))
                              (if (gx#stx-null? _%tl3304933554%_)
                                  (_%__kont3868138682%_
                                   _%hd3304833551%_
                                   _%hd3304533541%_)
                                  (_%__kont3869738698%_))))
                          (if (gx#stx-null? _%tl3304633544%_)
                              (_%__match3882938830%_
                               _%e3302733632%_
                               _%hd3302833636%_
                               _%tl3302933639%_
                               _%e3304433537%_
                               _%hd3304533541%_
                               _%tl3304633544%_)
                              (_%__kont3869738698%_)))))
                  (_%__kont3869738698%_))
              (if (equal? _%e3303433597%_ 'splice:)
                  (if (gx#stx-pair? _%tl3302933639%_)
                      (let ((_%e3305633473%_ (gx#syntax-e _%tl3302933639%_)))
                        (let ((_%tl3305833480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3305633473%_)))
                              (_%hd3305733477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3305633473%_))))
                          (if (gx#stx-pair? _%tl3305833480%_)
                              (let ((_%e3305933483%_
                                     (gx#syntax-e _%tl3305833480%_)))
                                (let ((_%tl3306133490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3305933483%_)))
                                      (_%hd3306033487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3305933483%_))))
                                  (if (gx#stx-null? _%tl3306133490%_)
                                      (_%__kont3868338684%_
                                       _%hd3306033487%_
                                       _%hd3305733477%_)
                                      (_%__kont3869738698%_))))
                              (if (gx#stx-null? _%tl3305833480%_)
                                  (_%__match3882938830%_
                                   _%e3302733632%_
                                   _%hd3302833636%_
                                   _%tl3302933639%_
                                   _%e3305633473%_
                                   _%hd3305733477%_
                                   _%tl3305833480%_)
                                  (_%__kont3869738698%_)))))
                      (_%__kont3869738698%_))
                  (if (equal? _%e3303433597%_ 'box:)
                      (if (gx#stx-pair? _%tl3302933639%_)
                          (let ((_%e3306733428%_
                                 (gx#syntax-e _%tl3302933639%_)))
                            (let ((_%tl3306933435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3306733428%_)))
                                  (_%hd3306833432%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3306733428%_))))
                              (if (gx#stx-null? _%tl3306933435%_)
                                  (_%__kont3868538686%_ _%hd3306833432%_)
                                  (_%__kont3869738698%_))))
                          (_%__kont3869738698%_))
                      (if (gx#stx-pair? _%tl3302933639%_)
                          (let ((_%e3307533378%_
                                 (gx#syntax-e _%tl3302933639%_)))
                            (let ((_%tl3307733385%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3307533378%_)))
                                  (_%hd3307633382%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3307533378%_))))
                              (if (gx#stx-null? _%tl3307733385%_)
                                  (_%__match3882938830%_
                                   _%e3302733632%_
                                   _%hd3302833636%_
                                   _%tl3302933639%_
                                   _%e3307533378%_
                                   _%hd3307633382%_
                                   _%tl3307733385%_)
                                  (if (equal? _%e3303433597%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3307733385%_)
                                          (let ((_%e3308633335%_
                                                 (gx#syntax-e
                                                  _%tl3307733385%_)))
                                            (let ((_%tl3308833342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3308633335%_)))
                                                  (_%hd3308733339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3308633335%_))))
                                              (if (gx#stx-null?
                                                   _%tl3308833342%_)
                                                  (_%__kont3868938690%_
                                                   _%hd3308733339%_)
                                                  (_%__kont3869738698%_))))
                                          (_%__kont3869738698%_))
                                      (if (equal? _%e3303433597%_ 'class:)
                                          (if (gx#stx-pair? _%tl3307733385%_)
                                              (let ((_%e3309733278%_
                                                     (gx#syntax-e
                                                      _%tl3307733385%_)))
                                                (let ((_%tl3309933285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3309733278%_)))
                                                      (_%hd3309833282%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3309733278%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3309933285%_)
                                                      (_%__kont3869138692%_
                                                       _%hd3309833282%_)
                                                      (_%__kont3869738698%_))))
                                              (_%__kont3869738698%_))
                                          (if (equal? _%e3303433597%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3307733385%_)
                                                  (let ((_%e3310933219%_
                                                         (gx#syntax-e
                                                          _%tl3307733385%_)))
                                                    (let ((_%tl3311133226%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3310933219%_)))
                                                          (_%hd3311033223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3310933219%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3311133226%_)
                                                          (_%__kont3869338694%_
                                                           _%hd3311033223%_
                                                           _%hd3307633382%_)
                                                          (_%__kont3869738698%_))))
                                                  (_%__kont3869738698%_))
                                              (_%__kont3869738698%_)))))))
                          (_%__kont3869738698%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3302933639%_)
                                                (let ((_%e3307533378%_
                                                       (gx#syntax-e
                                                        _%tl3302933639%_)))
                                                  (let ((_%tl3307733385%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3307533378%_)))
                                                        (_%hd3307633382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3307533378%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3307733385%_)
                                                        (_%__match3882938830%_
                                                         _%e3302733632%_
                                                         _%hd3302833636%_
                                                         _%tl3302933639%_
                                                         _%e3307533378%_
                                                         _%hd3307633382%_
                                                         _%tl3307733385%_)
                                                        (_%__kont3869738698%_))))
                                                (_%__kont3869738698%_))))))))
                          (if (gx#stx-pair? _%__stx3867238673%_)
                              (let ((_%e3301833731%_
                                     (gx#syntax-e _%__stx3867238673%_)))
                                (let ((_%tl3302033738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3301833731%_)))
                                      (_%hd3301933735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3301833731%_))))
                                  (if (gx#stx-datum? _%hd3301933735%_)
                                      (let ((_%e3302133741%_
                                             (gx#stx-e _%hd3301933735%_)))
                                        (if (equal? _%e3302133741%_ '?:)
                                            (if (gx#stx-pair? _%tl3302033738%_)
                                                (let ((_%e3302233745%_
                                                       (gx#syntax-e
                                                        _%tl3302033738%_)))
                                                  (let ((_%tl3302433752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3302233745%_)))
                                                        (_%hd3302333749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3302233745%_))))
                                                    (_%__kont3867538676%_
                                                     _%tl3302433752%_)))
                                                (_%__match3872338724%_
                                                 _%e3301833731%_
                                                 _%hd3301933735%_
                                                 _%tl3302033738%_))
                                            (_%__match3872338724%_
                                             _%e3301833731%_
                                             _%hd3301933735%_
                                             _%tl3302033738%_)))
                                      (_%__match3872338724%_
                                       _%e3301833731%_
                                       _%hd3301933735%_
                                       _%tl3302033738%_))))
                              (_%__kont3869738698%_)))))))
                 (_%loop-vector32714%_
                  (lambda (_%body32875%_ _%vars32877%_ _%K32878%_)
                    (let* ((_%__stx3893038931%_ _%body32875%_)
                           (_%g3288132904%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3893038931%_))))
                      (let ((_%__kont3893338934%_
                             (lambda (_%g3288332981%_)
                               (_%loop-list32715%_
                                _%g3288332981%_
                                _%vars32877%_
                                _%K32878%_)))
                            (_%__kont3893538936%_
                             (lambda (_%g3289132935%_)
                               (_%loop32712%_
                                _%g3289132935%_
                                _%vars32877%_
                                _%K32878%_))))
                        (if (gx#stx-pair? _%__stx3893038931%_)
                            (let ((_%e3288432957%_
                                   (gx#syntax-e _%__stx3893038931%_)))
                              (let ((_%tl3288632964%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3288432957%_)))
                                    (_%hd3288532961%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3288432957%_))))
                                (if (gx#stx-datum? _%hd3288532961%_)
                                    (let ((_%e3288732967%_
                                           (gx#stx-e _%hd3288532961%_)))
                                      (if (equal? _%e3288732967%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3288632964%_)
                                              (let ((_%e3288832971%_
                                                     (gx#syntax-e
                                                      _%tl3288632964%_)))
                                                (let ((_%tl3289032978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3288832971%_)))
                                                      (_%hd3288932975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3288832971%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3289032978%_)
                                                      (_%__kont3893338934%_
                                                       _%hd3288932975%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3288132904%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3288132904%_)))
                                          (if (equal? _%e3288732967%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3288632964%_)
                                                  (let ((_%e3289632925%_
                                                         (gx#syntax-e
                                                          _%tl3288632964%_)))
                                                    (let ((_%tl3289832932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3289632925%_)))
                                                          (_%hd3289732929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3289632925%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3289832932%_)
                                                          (_%__kont3893538936%_
                                                           _%hd3289732929%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3288132904%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3288132904%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3288132904%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3288132904%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3288132904%_)))))))
                 (_%loop-list32715%_
                  (lambda (_%rest32805%_ _%vars32807%_ _%K32808%_)
                    (let* ((_%__stx3898038981%_ _%rest32805%_)
                           (_%g3281132823%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3898038981%_))))
                      (let ((_%__kont3898338984%_
                             (lambda (_%g3281332851%_ _%g3281432853%_)
                               (_%loop32712%_
                                _%g3281432853%_
                                _%vars32807%_
                                (lambda (_%g3286532867%_)
                                  (_%loop-list32715%_
                                   _%g3281332851%_
                                   _%g3286532867%_
                                   _%K32808%_)))))
                            (_%__kont3898538986%_
                             (lambda () (_%K32808%_ _%vars32807%_))))
                        (if (gx#stx-pair? _%__stx3898038981%_)
                            (let ((_%e3281532841%_
                                   (gx#syntax-e _%__stx3898038981%_)))
                              (let ((_%tl3281732848%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3281532841%_)))
                                    (_%hd3281632845%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3281532841%_))))
                                (_%__kont3898338984%_
                                 _%tl3281732848%_
                                 _%hd3281632845%_)))
                            (_%__kont3898538986%_))))))
                 (_%loop-class-list32716%_
                  (lambda (_%rest32718%_ _%vars32720%_ _%K32721%_)
                    (let* ((_%__stx3899638997%_ _%rest32718%_)
                           (_%g3272432739%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3899638997%_))))
                      (let ((_%__kont3899939000%_
                             (lambda (_%g3272632777%_ _%g3272732779%_)
                               (_%loop32712%_
                                _%g3272732779%_
                                _%vars32720%_
                                (lambda (_%g3279532797%_)
                                  (_%loop-class-list32716%_
                                   _%g3272632777%_
                                   _%g3279532797%_
                                   _%K32721%_)))))
                            (_%__kont3900139002%_
                             (lambda () (_%K32721%_ _%vars32720%_))))
                        (if (gx#stx-pair? _%__stx3899638997%_)
                            (let ((_%e3272832757%_
                                   (gx#syntax-e _%__stx3899638997%_)))
                              (let ((_%tl3273032764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3272832757%_)))
                                    (_%hd3272932761%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3272832757%_))))
                                (if (gx#stx-pair? _%tl3273032764%_)
                                    (let ((_%e3273132767%_
                                           (gx#syntax-e _%tl3273032764%_)))
                                      (let ((_%tl3273332774%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3273132767%_)))
                                            (_%hd3273232771%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3273132767%_))))
                                        (_%__kont3899939000%_
                                         _%tl3273332774%_
                                         _%hd3273232771%_)))
                                    (_%__kont3900139002%_))))
                            (_%__kont3900139002%_)))))))
          (_%loop32712%_ _%ptree32709%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29641%_ _%tgt29643%_ _%ptree29644%_ _%K29645%_ _%E29646%_)
        (letrec ((_%generate129648%_
                  (lambda (_%tgt30908%_ _%ptree30910%_ _%K30911%_ _%E30912%_)
                    (let* ((_%g3091430922%_
                            (lambda (_%g3091530918%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3091530918%_)))
                           (_%g3091332705%_
                            (lambda (_%g3091530926%_)
                              ((lambda (_%g3091630929%_)
                                 (let* ((_%__stx3923239233%_ _%ptree30910%_)
                                        (_%g3095631098%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3923239233%_))))
                                   (let ((_%__kont3923539236%_
                                          (lambda (_%g3095832420%_
                                                   _%g3095932422%_)
                                            (let* ((_%__stx3915039151%_
                                                    _%g3095832420%_)
                                                   (_%g3243932474%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3915039151%_))))
                                              (let ((_%__kont3915339154%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3095932422%_
                                       (cons _%g3091630929%_ '())))
                           (cons _%K30911%_ (cons _%E30912%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3915539156%_
                                                     (lambda (_%g3244132675%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3095932422%_
                                       (cons _%g3091630929%_ '())))
                           (cons (_%generate129648%_
                                  _%tgt30908%_
                                  _%g3244132675%_
                                  _%K30911%_
                                  _%E30912%_)
                                 (cons _%E30912%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3915739158%_
                                                     (lambda (_%g3244532613%_)
                                                       (let* ((_%g3262732635%_
                                                               (lambda (_%g3262832631%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3262832631%_)))
                      (_%g3262632654%_
                       (lambda (_%g3262832639%_)
                         ((lambda (_%g3262932642%_)
                            (cons 'let
                                  (cons (cons (cons _%g3262932642%_
                                                    (cons (cons _%g3095932422%_
                                                                (cons _%g3091630929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g3262932642%_
                                                          (cons (_%generate129648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3262932642%_
                         _%g3244532613%_
                         _%K30911%_
                         _%E30912%_)
                        (cons _%E30912%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3262832639%_))))
                 (_%g3262632654%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3915939160%_
                                                     (lambda (_%g3245332529%_
                                                              _%g3245432531%_)
                                                       (let* ((_%g3255132559%_
                                                               (lambda (_%g3255232555%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3255232555%_)))
                      (_%g3255032578%_
                       (lambda (_%g3255232563%_)
                         ((lambda (_%g3255332566%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g3095932422%_
                                                    (cons _%g3091630929%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g3255332566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g3245432531%_
                                          (cons _%g3091630929%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129648%_
                         _%g3255332566%_
                         _%g3245332529%_
                         _%K30911%_
                         _%E30912%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30912%_ '())))))
                          _%g3255232563%_))))
                 (_%g3255032578%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3243632686%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3915039151%_)
                                                             (let ((_%e3244232665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3915039151%_)))
                       (let ((_%tl3244432672%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3244232665%_)))
                             (_%hd3244332669%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3244232665%_))))
                         (if (gx#stx-null? _%tl3244432672%_)
                             (_%__kont3915539156%_ _%hd3244332669%_)
                             (if (gx#stx-datum? _%hd3244332669%_)
                                 (let ((_%e3244932599%_
                                        (gx#stx-e _%hd3244332669%_)))
                                   (if (equal? _%e3244932599%_ '=>:)
                                       (if (gx#stx-pair? _%tl3244432672%_)
                                           (let ((_%e3245032603%_
                                                  (gx#syntax-e
                                                   _%tl3244432672%_)))
                                             (let ((_%tl3245232610%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3245032603%_)))
                                                   (_%hd3245132607%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3245032603%_))))
                                               (if (gx#stx-null?
                                                    _%tl3245232610%_)
                                                   (_%__kont3915739158%_
                                                    _%hd3245132607%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3243932474%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3243932474%_)))
                                       (if (equal? _%e3244932599%_ '::)
                                           (if (gx#stx-pair? _%tl3244432672%_)
                                               (let ((_%e3245932495%_
                                                      (gx#syntax-e
                                                       _%tl3244432672%_)))
                                                 (let ((_%tl3246132502%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3245932495%_)))
                                                       (_%hd3246032499%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3245932495%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3246132502%_)
                                                       (let ((_%e3246232505%_
                                                              (gx#syntax-e
                                                               _%tl3246132502%_)))
                                                         (let ((_%tl3246432512%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3246232505%_)))
                       (_%hd3246332509%_
                        (let () (declare (not safe)) (##car _%e3246232505%_))))
                   (if (gx#stx-datum? _%hd3246332509%_)
                       (let ((_%e3246532515%_ (gx#stx-e _%hd3246332509%_)))
                         (if (equal? _%e3246532515%_ '=>:)
                             (if (gx#stx-pair? _%tl3246432512%_)
                                 (let ((_%e3246632519%_
                                        (gx#syntax-e _%tl3246432512%_)))
                                   (let ((_%tl3246832526%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3246632519%_)))
                                         (_%hd3246732523%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3246632519%_))))
                                     (if (gx#stx-null? _%tl3246832526%_)
                                         (_%__kont3915939160%_
                                          _%hd3246732523%_
                                          _%hd3246032499%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3243932474%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3243932474%_)))
                             (let () (declare (not safe)) (_%g3243932474%_))))
                       (let () (declare (not safe)) (_%g3243932474%_)))))
               (let () (declare (not safe)) (_%g3243932474%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3243932474%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3243932474%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3243932474%_))))))
                     (let () (declare (not safe)) (_%g3243932474%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3915039151%_)
                                                      (_%__kont3915339154%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3243632686%_))))))))
                                         (_%__kont3923739238%_
                                          (lambda (_%g3096732317%_)
                                            (let* ((_%__stx3913439135%_
                                                    _%g3096732317%_)
                                                   (_%g3233032342%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3913439135%_))))
                                              (let ((_%__kont3913739138%_
                                                     (lambda (_%g3233232370%_
                                                              _%g3233332372%_)
                                                       (_%generate129648%_
                                                        _%tgt30908%_
                                                        _%g3233332372%_
                                                        (_%generate129648%_
                                                         _%tgt30908%_
                                                         (cons 'and:
                                                               _%g3233232370%_)
                                                         _%K30911%_
                                                         _%E30912%_)
                                                        _%E30912%_)))
                                                    (_%__kont3913939140%_
                                                     (lambda () _%K30911%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3913439135%_)
                                                    (let ((_%e3233432360%_
                                                           (gx#syntax-e
                                                            _%__stx3913439135%_)))
                                                      (let ((_%tl3233632367%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3233432360%_)))
                    (_%hd3233532364%_
                     (let () (declare (not safe)) (##car _%e3233432360%_))))
                (_%__kont3913739138%_ _%tl3233632367%_ _%hd3233532364%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3913939140%_))))))
                                         (_%__kont3923939240%_
                                          (lambda (_%g3097232224%_)
                                            (let* ((_%__stx3911839119%_
                                                    _%g3097232224%_)
                                                   (_%g3223732249%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3911839119%_))))
                                              (let ((_%__kont3912139122%_
                                                     (lambda (_%g3223932277%_
                                                              _%g3224032279%_)
                                                       (_%generate129648%_
                                                        _%tgt30908%_
                                                        _%g3224032279%_
                                                        _%K30911%_
                                                        (_%generate129648%_
                                                         _%tgt30908%_
                                                         (cons 'or:
                                                               _%g3223932277%_)
                                                         _%K30911%_
                                                         _%E30912%_))))
                                                    (_%__kont3912339124%_
                                                     (lambda () _%E30912%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3911839119%_)
                                                    (let ((_%e3224132267%_
                                                           (gx#syntax-e
                                                            _%__stx3911839119%_)))
                                                      (let ((_%tl3224332274%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3224132267%_)))
                    (_%hd3224232271%_
                     (let () (declare (not safe)) (##car _%e3224132267%_))))
                (_%__kont3912139122%_ _%tl3224332274%_ _%hd3224232271%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3912339124%_))))))
                                         (_%__kont3924139242%_
                                          (lambda (_%g3097732189%_)
                                            (_%generate129648%_
                                             _%tgt30908%_
                                             _%g3097732189%_
                                             _%E30912%_
                                             _%K30911%_)))
                                         (_%__kont3924339244%_
                                          (lambda (_%g3098532063%_
                                                   _%g3098632065%_)
                                            (let* ((_%g3208232097%_
                                                    (lambda (_%g3208332093%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3208332093%_)))
                                                   (_%g3208132154%_
                                                    (lambda (_%g3208332101%_)
                                                      (if (gx#stx-pair?
                                                           _%g3208332101%_)
                                                          (let ((_%e3208632104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3208332101%_)))
                    (let ((_%hd3208732108%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3208632104%_)))
                          (_%tl3208832111%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3208632104%_))))
                      (if (gx#stx-pair? _%tl3208832111%_)
                          (let ((_%e3208932114%_
                                 (gx#syntax-e _%tl3208832111%_)))
                            (let ((_%hd3209032118%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3208932114%_)))
                                  (_%tl3209132121%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3208932114%_))))
                              (if (gx#stx-null? _%tl3209132121%_)
                                  ((lambda (_%g3208432124%_ _%g3208532126%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g3091630929%_
                                                             '()))
                                                 (cons (let ((_%hd-pat32142%_
                                                              (gx#stx-e
                                                               _%g3098632065%_))
                                                             (_%tl-pat32144%_
                                                              (gx#stx-e
                                                               _%g3098532063%_)))
                                                         (if (and (equal? _%hd-pat32142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat32144%_ '(any:)))
                     _%K30911%_
                     (if (equal? _%tl-pat32144%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g3208532126%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3091630929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129648%_
                                            _%g3208532126%_
                                            _%g3098632065%_
                                            _%K30911%_
                                            _%E30912%_)
                                           '())))
                         (if (equal? _%hd-pat32142%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g3208432124%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3091630929%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129648%_
                                                _%g3208432124%_
                                                _%g3098532063%_
                                                _%K30911%_
                                                _%E30912%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g3208532126%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g3091630929%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g3208432124%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3091630929%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129648%_
                                                _%g3208532126%_
                                                _%g3098632065%_
                                                (_%generate129648%_
                                                 _%g3208432124%_
                                                 _%g3098532063%_
                                                 _%K30911%_
                                                 _%E30912%_)
                                                _%E30912%_)
                                               '())))))))
               (cons _%E30912%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3209032118%_
                                   _%hd3208732108%_)
                                  (_%g3208232097%_ _%g3208332101%_))))
                          (_%g3208232097%_ _%g3208332101%_))))
                  (_%g3208232097%_ _%g3208332101%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3208132154%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3924539246%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g3091630929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30911%_ (cons _%E30912%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3924739248%_
                                          (lambda (_%g3100131979%_
                                                   _%g3100231981%_)
                                            (_%generate-splice29650%_
                                             _%tgt30908%_
                                             _%g3100231981%_
                                             _%g3100131979%_
                                             _%K30911%_
                                             _%E30912%_)))
                                         (_%__kont3924939250%_
                                          (lambda (_%g3101331893%_)
                                            (let* ((_%g3190731915%_
                                                    (lambda (_%g3190831911%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3190831911%_)))
                                                   (_%g3190631934%_
                                                    (lambda (_%g3190831919%_)
                                                      ((lambda (_%g3190931922%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g3091630929%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g3190931922%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g3091630929%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129648%_
                                                      _%g3190931922%_
                                                      _%g3101331893%_
                                                      _%K30911%_
                                                      _%E30912%_)
                                                     '())))
                                   (cons _%E30912%_ '())))))
               _%g3190831919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3190631934%_
                                               (gx#genident 'e)))))
                                         (_%__kont3925139252%_
                                          (lambda (_%g3102131698%_)
                                            (let* ((_%__stx3906839069%_
                                                    _%g3102131698%_)
                                                   (_%g3171331736%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3906839069%_))))
                                              (let ((_%__kont3907139072%_
                                                     (lambda (_%g3171531813%_)
                                                       (let* ((_%g3182731835%_
                                                               (lambda (_%g3182831831%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3182831831%_)))
                      (_%g3182631854%_
                       (lambda (_%g3182831839%_)
                         ((lambda (_%g3182931842%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g3091630929%_
                                                                '()))
                                                    (cons _%g3182931842%_
                                                          '())))
                                        (cons (_%generate-simple-vector29651%_
                                               _%tgt30908%_
                                               _%g3171531813%_
                                               '0
                                               '##values-ref
                                               _%K30911%_
                                               _%E30912%_)
                                              (cons _%E30912%_ '())))))
                          _%g3182831839%_))))
                 (_%g3182631854%_ (gx#stx-length _%g3171531813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3907339074%_
                                                     (lambda (_%g3172331767%_)
                                                       (_%generate-list-vector29652%_
                                                        _%tgt30908%_
                                                        _%g3172331767%_
                                                        'values->list
                                                        _%K30911%_
                                                        _%E30912%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3906839069%_)
                                                    (let ((_%e3171631789%_
                                                           (gx#syntax-e
                                                            _%__stx3906839069%_)))
                                                      (let ((_%tl3171831796%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3171631789%_)))
                    (_%hd3171731793%_
                     (let () (declare (not safe)) (##car _%e3171631789%_))))
                (if (gx#stx-datum? _%hd3171731793%_)
                    (let ((_%e3171931799%_ (gx#stx-e _%hd3171731793%_)))
                      (if (equal? _%e3171931799%_ 'simple:)
                          (if (gx#stx-pair? _%tl3171831796%_)
                              (let ((_%e3172031803%_
                                     (gx#syntax-e _%tl3171831796%_)))
                                (let ((_%tl3172231810%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3172031803%_)))
                                      (_%hd3172131807%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3172031803%_))))
                                  (if (gx#stx-null? _%tl3172231810%_)
                                      (_%__kont3907139072%_ _%hd3172131807%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3171331736%_)))))
                              (let () (declare (not safe)) (_%g3171331736%_)))
                          (if (equal? _%e3171931799%_ 'list:)
                              (if (gx#stx-pair? _%tl3171831796%_)
                                  (let ((_%e3172831757%_
                                         (gx#syntax-e _%tl3171831796%_)))
                                    (let ((_%tl3173031764%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3172831757%_)))
                                          (_%hd3172931761%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3172831757%_))))
                                      (if (gx#stx-null? _%tl3173031764%_)
                                          (_%__kont3907339074%_
                                           _%hd3172931761%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3171331736%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3171331736%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3171331736%_)))))
                    (let () (declare (not safe)) (_%g3171331736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3171331736%_)))))))
                                         (_%__kont3925339254%_
                                          (lambda (_%g3102931503%_)
                                            (let* ((_%__stx3901839019%_
                                                    _%g3102931503%_)
                                                   (_%g3151831541%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3901839019%_))))
                                              (let ((_%__kont3902139022%_
                                                     (lambda (_%g3152031618%_)
                                                       (let* ((_%g3163231640%_
                                                               (lambda (_%g3163331636%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3163331636%_)))
                      (_%g3163131659%_
                       (lambda (_%g3163331644%_)
                         ((lambda (_%g3163431647%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g3091630929%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g3091630929%_ '()))
                              (cons _%g3163431647%_ '())))
                  (cons (_%generate-simple-vector29651%_
                         _%tgt30908%_
                         _%g3152031618%_
                         '0
                         '##vector-ref
                         _%K30911%_
                         _%E30912%_)
                        (cons _%E30912%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30912%_ '())))))
                          _%g3163331644%_))))
                 (_%g3163131659%_ (gx#stx-length _%g3152031618%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3902339024%_
                                                     (lambda (_%g3152831572%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g3091630929%_ '()))
                           (cons (_%generate-list-vector29652%_
                                  _%tgt30908%_
                                  _%g3152831572%_
                                  'vector->list
                                  _%K30911%_
                                  _%E30912%_)
                                 (cons _%E30912%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3901839019%_)
                                                    (let ((_%e3152131594%_
                                                           (gx#syntax-e
                                                            _%__stx3901839019%_)))
                                                      (let ((_%tl3152331601%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3152131594%_)))
                    (_%hd3152231598%_
                     (let () (declare (not safe)) (##car _%e3152131594%_))))
                (if (gx#stx-datum? _%hd3152231598%_)
                    (let ((_%e3152431604%_ (gx#stx-e _%hd3152231598%_)))
                      (if (equal? _%e3152431604%_ 'simple:)
                          (if (gx#stx-pair? _%tl3152331601%_)
                              (let ((_%e3152531608%_
                                     (gx#syntax-e _%tl3152331601%_)))
                                (let ((_%tl3152731615%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3152531608%_)))
                                      (_%hd3152631612%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3152531608%_))))
                                  (if (gx#stx-null? _%tl3152731615%_)
                                      (_%__kont3902139022%_ _%hd3152631612%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3151831541%_)))))
                              (let () (declare (not safe)) (_%g3151831541%_)))
                          (if (equal? _%e3152431604%_ 'list:)
                              (if (gx#stx-pair? _%tl3152331601%_)
                                  (let ((_%e3153331562%_
                                         (gx#syntax-e _%tl3152331601%_)))
                                    (let ((_%tl3153531569%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3153331562%_)))
                                          (_%hd3153431566%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3153331562%_))))
                                      (if (gx#stx-null? _%tl3153531569%_)
                                          (_%__kont3902339024%_
                                           _%hd3153431566%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3151831541%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3151831541%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3151831541%_)))))
                    (let () (declare (not safe)) (_%g3151831541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3151831541%_)))))))
                                         (_%__kont3925539256%_
                                          (lambda (_%g3103731454%_
                                                   _%g3103831456%_)
                                            (_%generate-struct29653%_
                                             (gx#stx-e _%g3103831456%_)
                                             _%tgt30908%_
                                             _%g3103731454%_
                                             _%K30911%_
                                             _%E30912%_)))
                                         (_%__kont3925739258%_
                                          (lambda (_%g3104931395%_
                                                   _%g3105031397%_)
                                            (_%generate-class29656%_
                                             (gx#stx-e _%g3105031397%_)
                                             _%tgt30908%_
                                             _%g3104931395%_
                                             _%K30911%_
                                             _%E30912%_)))
                                         (_%__kont3925939260%_
                                          (lambda (_%g3106131292%_)
                                            (let* ((_%g3130631314%_
                                                    (lambda (_%g3130731310%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3130731310%_)))
                                                   (_%g3130531333%_
                                                    (lambda (_%g3130731318%_)
                                                      ((lambda (_%g3130831321%_)
                                                         (cons 'if
                                                               (cons (cons _%g3130831321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g3091630929%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g3106131292%_
                                                           '()))
                                               '())))
                             (cons _%K30911%_ (cons _%E30912%_ '())))))
               _%g3130731318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3130531333%_
                                               (let ((_%e31337%_
                                                      (gx#stx-e
                                                       _%g3106131292%_)))
                                                 (if (or (symbol? _%e31337%_)
                                                         (keyword? _%e31337%_)
                                                         (immediate?
                                                          _%e31337%_))
                                                     '##eq?
                                                     (if (number? _%e31337%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3926139262%_
                                          (lambda (_%g3106931212%_
                                                   _%g3107031214%_)
                                            (let* ((_%g3123031238%_
                                                    (lambda (_%g3123131234%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3123131234%_)))
                                                   (_%g3122931257%_
                                                    (lambda (_%g3123131242%_)
                                                      ((lambda (_%g3123231245%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g3123231245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g3107031214%_
                                                     (cons _%g3091630929%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate129648%_
                                    _%g3123231245%_
                                    _%g3106931212%_
                                    _%K30911%_
                                    _%E30912%_)
                                   '()))))
               _%g3123131242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3122931257%_
                                               (gx#genident 'e)))))
                                         (_%__kont3926339264%_
                                          (lambda (_%g3108131154%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g3108131154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g3091630929%_ '()))
                      '())
                (cons _%K30911%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3926539266%_
                                          (lambda () _%K30911%_)))
                                     (if (gx#stx-pair? _%__stx3923239233%_)
                                         (let ((_%e3096032396%_
                                                (gx#syntax-e
                                                 _%__stx3923239233%_)))
                                           (let ((_%tl3096232403%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3096032396%_)))
                                                 (_%hd3096132400%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3096032396%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3096132400%_)
                                                 (let ((_%e3096332406%_
                                                        (gx#stx-e
                                                         _%hd3096132400%_)))
                                                   (if (equal? _%e3096332406%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3096232403%_)
                                                           (let ((_%e3096432410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3096232403%_)))
                     (let ((_%tl3096632417%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3096432410%_)))
                           (_%hd3096532414%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3096432410%_))))
                       (_%__kont3923539236%_
                        _%tl3096632417%_
                        _%hd3096532414%_)))
                   (let () (declare (not safe)) (_%g3095631098%_)))
               (if (equal? _%e3096332406%_ 'and:)
                   (_%__kont3923739238%_ _%tl3096232403%_)
                   (if (equal? _%e3096332406%_ 'or:)
                       (_%__kont3923939240%_ _%tl3096232403%_)
                       (if (equal? _%e3096332406%_ 'not:)
                           (if (gx#stx-pair? _%tl3096232403%_)
                               (let ((_%e3098232179%_
                                      (gx#syntax-e _%tl3096232403%_)))
                                 (let ((_%tl3098432186%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3098232179%_)))
                                       (_%hd3098332183%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3098232179%_))))
                                   (if (gx#stx-null? _%tl3098432186%_)
                                       (_%__kont3924139242%_ _%hd3098332183%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3095631098%_)))))
                               (let () (declare (not safe)) (_%g3095631098%_)))
                           (if (equal? _%e3096332406%_ 'cons:)
                               (if (gx#stx-pair? _%tl3096232403%_)
                                   (let ((_%e3099132043%_
                                          (gx#syntax-e _%tl3096232403%_)))
                                     (let ((_%tl3099332050%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3099132043%_)))
                                           (_%hd3099232047%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3099132043%_))))
                                       (if (gx#stx-pair? _%tl3099332050%_)
                                           (let ((_%e3099432053%_
                                                  (gx#syntax-e
                                                   _%tl3099332050%_)))
                                             (let ((_%tl3099632060%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3099432053%_)))
                                                   (_%hd3099532057%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3099432053%_))))
                                               (if (gx#stx-null?
                                                    _%tl3099632060%_)
                                                   (_%__kont3924339244%_
                                                    _%hd3099532057%_
                                                    _%hd3099232047%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3095631098%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3095631098%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3095631098%_)))
                               (if (equal? _%e3096332406%_ 'null:)
                                   (if (gx#stx-null? _%tl3096232403%_)
                                       (_%__kont3924539246%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3095631098%_)))
                                   (if (equal? _%e3096332406%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3096232403%_)
                                           (let ((_%e3100731959%_
                                                  (gx#syntax-e
                                                   _%tl3096232403%_)))
                                             (let ((_%tl3100931966%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3100731959%_)))
                                                   (_%hd3100831963%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3100731959%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3100931966%_)
                                                   (let ((_%e3101031969%_
                                                          (gx#syntax-e
                                                           _%tl3100931966%_)))
                                                     (let ((_%tl3101231976%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3101031969%_)))
                                                           (_%hd3101131973%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3101031969%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3101231976%_)
                                                           (_%__kont3924739248%_
                                                            _%hd3101131973%_
                                                            _%hd3100831963%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3095631098%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3095631098%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3095631098%_)))
                                       (if (equal? _%e3096332406%_ 'box:)
                                           (if (gx#stx-pair? _%tl3096232403%_)
                                               (let ((_%e3101831883%_
                                                      (gx#syntax-e
                                                       _%tl3096232403%_)))
                                                 (let ((_%tl3102031890%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3101831883%_)))
                                                       (_%hd3101931887%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3101831883%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3102031890%_)
                                                       (_%__kont3924939250%_
                                                        _%hd3101931887%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3095631098%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3095631098%_)))
                                           (if (equal? _%e3096332406%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3096232403%_)
                                                   (let ((_%e3102631688%_
                                                          (gx#syntax-e
                                                           _%tl3096232403%_)))
                                                     (let ((_%tl3102831695%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3102631688%_)))
                                                           (_%hd3102731692%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3102631688%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3102831695%_)
                                                           (_%__kont3925139252%_
                                                            _%hd3102731692%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3095631098%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3095631098%_)))
                                               (if (equal? _%e3096332406%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3096232403%_)
                                                       (let ((_%e3103431493%_
                                                              (gx#syntax-e
                                                               _%tl3096232403%_)))
                                                         (let ((_%tl3103631500%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3103431493%_)))
                       (_%hd3103531497%_
                        (let () (declare (not safe)) (##car _%e3103431493%_))))
                   (if (gx#stx-null? _%tl3103631500%_)
                       (_%__kont3925339254%_ _%hd3103531497%_)
                       (let () (declare (not safe)) (_%g3095631098%_)))))
               (let () (declare (not safe)) (_%g3095631098%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3096332406%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3096232403%_)
                                                           (let ((_%e3104331434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3096232403%_)))
                     (let ((_%tl3104531441%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3104331434%_)))
                           (_%hd3104431438%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3104331434%_))))
                       (if (gx#stx-pair? _%tl3104531441%_)
                           (let ((_%e3104631444%_
                                  (gx#syntax-e _%tl3104531441%_)))
                             (let ((_%tl3104831451%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3104631444%_)))
                                   (_%hd3104731448%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3104631444%_))))
                               (if (gx#stx-null? _%tl3104831451%_)
                                   (_%__kont3925539256%_
                                    _%hd3104731448%_
                                    _%hd3104431438%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3095631098%_)))))
                           (let () (declare (not safe)) (_%g3095631098%_)))))
                   (let () (declare (not safe)) (_%g3095631098%_)))
               (if (equal? _%e3096332406%_ 'class:)
                   (if (gx#stx-pair? _%tl3096232403%_)
                       (let ((_%e3105531375%_ (gx#syntax-e _%tl3096232403%_)))
                         (let ((_%tl3105731382%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3105531375%_)))
                               (_%hd3105631379%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3105531375%_))))
                           (if (gx#stx-pair? _%tl3105731382%_)
                               (let ((_%e3105831385%_
                                      (gx#syntax-e _%tl3105731382%_)))
                                 (let ((_%tl3106031392%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3105831385%_)))
                                       (_%hd3105931389%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3105831385%_))))
                                   (if (gx#stx-null? _%tl3106031392%_)
                                       (_%__kont3925739258%_
                                        _%hd3105931389%_
                                        _%hd3105631379%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3095631098%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3095631098%_)))))
                       (let () (declare (not safe)) (_%g3095631098%_)))
                   (if (equal? _%e3096332406%_ 'datum:)
                       (if (gx#stx-pair? _%tl3096232403%_)
                           (let ((_%e3106631282%_
                                  (gx#syntax-e _%tl3096232403%_)))
                             (let ((_%tl3106831289%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3106631282%_)))
                                   (_%hd3106731286%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3106631282%_))))
                               (if (gx#stx-null? _%tl3106831289%_)
                                   (_%__kont3925939260%_ _%hd3106731286%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3095631098%_)))))
                           (let () (declare (not safe)) (_%g3095631098%_)))
                       (if (equal? _%e3096332406%_ 'apply:)
                           (if (gx#stx-pair? _%tl3096232403%_)
                               (let ((_%e3107531192%_
                                      (gx#syntax-e _%tl3096232403%_)))
                                 (let ((_%tl3107731199%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3107531192%_)))
                                       (_%hd3107631196%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3107531192%_))))
                                   (if (gx#stx-pair? _%tl3107731199%_)
                                       (let ((_%e3107831202%_
                                              (gx#syntax-e _%tl3107731199%_)))
                                         (let ((_%tl3108031209%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3107831202%_)))
                                               (_%hd3107931206%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3107831202%_))))
                                           (if (gx#stx-null? _%tl3108031209%_)
                                               (_%__kont3926139262%_
                                                _%hd3107931206%_
                                                _%hd3107631196%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3095631098%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3095631098%_)))))
                               (let () (declare (not safe)) (_%g3095631098%_)))
                           (if (equal? _%e3096332406%_ 'var:)
                               (if (gx#stx-pair? _%tl3096232403%_)
                                   (let ((_%e3108631144%_
                                          (gx#syntax-e _%tl3096232403%_)))
                                     (let ((_%tl3108831151%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3108631144%_)))
                                           (_%hd3108731148%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3108631144%_))))
                                       (if (gx#stx-null? _%tl3108831151%_)
                                           (_%__kont3926339264%_
                                            _%hd3108731148%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3095631098%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3095631098%_)))
                               (if (equal? _%e3096332406%_ 'any:)
                                   (if (gx#stx-null? _%tl3096232403%_)
                                       (_%__kont3926539266%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3095631098%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3095631098%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3095631098%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3095631098%_))))))
                               _%g3091530926%_))))
                      (_%g3091332705%_ _%tgt30908%_))))
                 (_%generate-splice29650%_
                  (lambda (_%tgt30286%_
                           _%hd30288%_
                           _%rest30289%_
                           _%K30290%_
                           _%E30291%_)
                    (let* ((_%g3029330310%_
                            (lambda (_%g3029430306%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3029430306%_)))
                           (_%g3029230904%_
                            (lambda (_%g3029430314%_)
                              (if (gx#stx-pair/null? _%g3029430314%_)
                                  (let ((_g40387_
                                         (gx#syntax-split-splice
                                          _%g3029430314%_
                                          '0)))
                                    (begin
                                      (let ((_g40388_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40387_)
                                                   (##values-length _g40387_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40388_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40388_)))
                                      (let ((_%target3029630317%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40387_ 0)))
                                            (_%tl3029830320%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g40387_ 1))))
                                        (if (gx#stx-null? _%tl3029830320%_)
                                            (letrec ((_%loop3029930323%_
                                                      (lambda (_%hd3029730327%_
                                                               _%var3030330330%_)
                                                        (if (gx#stx-pair?
                                                             _%hd3029730327%_)
                                                            (let ((_%e3030030332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd3029730327%_)))
                      (let ((_%lp-hd3030130336%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3030030332%_)))
                            (_%lp-tl3030230339%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3030030332%_))))
                        (_%loop3029930323%_
                         _%lp-tl3030230339%_
                         (cons _%lp-hd3030130336%_ _%var3030330330%_))))
                    (let ((_%var3030430342%_ (reverse _%var3030330330%_)))
                      ((lambda (_%g3029530345%_)
                         (let* ((_%g3036130378%_
                                 (lambda (_%g3036230374%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g3036230374%_)))
                                (_%g3036030892%_
                                 (lambda (_%g3036230382%_)
                                   (if (gx#stx-pair/null? _%g3036230382%_)
                                       (let ((_g40389_
                                              (gx#syntax-split-splice
                                               _%g3036230382%_
                                               '0)))
                                         (begin
                                           (let ((_g40390_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g40389_)
                                                        (##values-length
                                                         _g40389_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g40390_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g40390_)))
                                           (let ((_%target3036430385%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g40389_ 0)))
                                                 (_%tl3036630388%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g40389_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl3036630388%_)
                                                 (letrec ((_%loop3036730391%_
                                                           (lambda (_%hd3036530395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r3037130398%_)
                     (if (gx#stx-pair? _%hd3036530395%_)
                         (let ((_%e3036830400%_
                                (gx#syntax-e _%hd3036530395%_)))
                           (let ((_%lp-hd3036930404%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3036830400%_)))
                                 (_%lp-tl3037030407%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3036830400%_))))
                             (_%loop3036730391%_
                              _%lp-tl3037030407%_
                              (cons _%lp-hd3036930404%_ _%var-r3037130398%_))))
                         (let ((_%var-r3037230410%_
                                (reverse _%var-r3037130398%_)))
                           ((lambda (_%g3036330413%_)
                              (let* ((_%g3043030447%_
                                      (lambda (_%g3043130443%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3043130443%_)))
                                     (_%g3042930880%_
                                      (lambda (_%g3043130451%_)
                                        (if (gx#stx-pair/null? _%g3043130451%_)
                                            (let ((_g40391_
                                                   (gx#syntax-split-splice
                                                    _%g3043130451%_
                                                    '0)))
                                              (begin
                                                (let ((_g40392_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g40391_)
                                                             (##values-length
                                                              _g40391_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40392_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3043330454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40391_
                                                          0)))
                                                      (_%tl3043530457%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g40391_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3043530457%_)
                                                      (letrec ((_%loop3043630460%_
                                                                (lambda (_%hd3043430464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init3044030467%_)
                          (if (gx#stx-pair? _%hd3043430464%_)
                              (let ((_%e3043730469%_
                                     (gx#syntax-e _%hd3043430464%_)))
                                (let ((_%lp-hd3043830473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3043730469%_)))
                                      (_%lp-tl3043930476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3043730469%_))))
                                  (_%loop3043630460%_
                                   _%lp-tl3043930476%_
                                   (cons _%lp-hd3043830473%_
                                         _%init3044030467%_))))
                              (let ((_%init3044130479%_
                                     (reverse _%init3044030467%_)))
                                ((lambda (_%g3043230482%_)
                                   (let* ((_%g3049930507%_
                                           (lambda (_%g3050030503%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3050030503%_)))
                                          (_%g3049830876%_
                                           (lambda (_%g3050030511%_)
                                             ((lambda (_%g3050130514%_)
                                                (let* ((_%g3052730535%_
                                                        (lambda (_%g3052830531%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3052830531%_)))
                                                       (_%g3052630872%_
                                                        (lambda (_%g3052830539%_)
                                                          ((lambda (_%g3052930542%_)
                                                             (let* ((_%g3055530563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3055630559%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3055630559%_)))
                            (_%g3055430868%_
                             (lambda (_%g3055630567%_)
                               ((lambda (_%g3055730570%_)
                                  (let* ((_%g3058330591%_
                                          (lambda (_%g3058430587%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3058430587%_)))
                                         (_%g3058230864%_
                                          (lambda (_%g3058430595%_)
                                            ((lambda (_%g3058530598%_)
                                               (let* ((_%g3061130619%_
                                                       (lambda (_%g3061230615%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3061230615%_)))
                                                      (_%g3061030860%_
                                                       (lambda (_%g3061230623%_)
                                                         ((lambda (_%g3061330626%_)
                                                            (let* ((_%g3063930647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3064030643%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3064030643%_)))
                           (_%g3063830856%_
                            (lambda (_%g3064030651%_)
                              ((lambda (_%g3064130654%_)
                                 (let* ((_%g3066730675%_
                                         (lambda (_%g3066830671%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3066830671%_)))
                                        (_%g3066630852%_
                                         (lambda (_%g3066830679%_)
                                           ((lambda (_%g3066930682%_)
                                              (let* ((_%g3069530703%_
                                                      (lambda (_%g3069630699%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3069630699%_)))
                                                     (_%g3069430837%_
                                                      (lambda (_%g3069630707%_)
                                                        ((lambda (_%g3069730710%_)
                                                           (let* ((_%g3072330731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3072430727%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3072430727%_)))
                          (_%g3072230825%_
                           (lambda (_%g3072430735%_)
                             ((lambda (_%g3072530738%_)
                                (let* ((_%g3075130759%_
                                        (lambda (_%g3075230755%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3075230755%_)))
                                       (_%g3075030821%_
                                        (lambda (_%g3075230763%_)
                                          ((lambda (_%g3075330766%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g3052930542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g3064130654%_
                                                     (foldr (lambda (_%g3078030791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3078130794%_)
                      (cons _%g3078030791%_ _%g3078130794%_))
                    '()
                    _%g3029530345%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g3066930682%_ '())))
                                   '()))
                       (cons (cons _%g3058530598%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g3061330626%_
                                                           (cons _%g3064130654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3078230797%_ _%g3078330800%_)
                                  (cons _%g3078230797%_ _%g3078330800%_))
                                '()
                                _%g3036330413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3075330766%_
                                                           '())))
                                         '()))
                             (cons (cons _%g3055730570%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g3064130654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3078430803%_ _%g3078530806%_)
                                  (cons _%g3078430803%_ _%g3078530806%_))
                                '()
                                _%g3036330413%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g3064130654%_ '()))
                                     (cons (cons _%g3058530598%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3064130654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g3064130654%_
                     (foldr (lambda (_%g3078630809%_ _%g3078730812%_)
                              (cons _%g3078630809%_ _%g3078730812%_))
                            '()
                            _%g3036330413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3072530738%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g3055730570%_
                             (cons _%g3050130514%_
                                   (foldr (lambda (_%g3078830815%_
                                                   _%g3078930818%_)
                                            (cons _%g3078830815%_
                                                  _%g3078930818%_))
                                          '()
                                          _%g3043230482%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3075230763%_))))
                                  (_%g3075030821%_
                                   (_%generate129648%_
                                    _%g3061330626%_
                                    _%hd30288%_
                                    _%g3069730710%_
                                    _%g3072530738%_))))
                              _%g3072430735%_))))
                     (_%g3072230825%_
                      (cons _%g3052930542%_
                            (cons _%g3064130654%_
                                  (foldr (lambda (_%g3082830831%_
                                                  _%g3082930834%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3082830831%_
                                                             '()))
                                                 _%g3082930834%_))
                                         '()
                                         _%g3036330413%_))))))
                 _%g3069630707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3069430837%_
                                                 (cons _%g3055730570%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g3064130654%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g3036330413%_
                        _%g3029530345%_)
                       (foldr (lambda (_%g3084030844%_
                                       _%g3084130847%_
                                       _%g3084230849%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3084130847%_
                                                  (cons _%g3084030844%_ '())))
                                      _%g3084230849%_))
                              '()
                              _%g3036330413%_
                              _%g3029530345%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3066830679%_))))
                                   (_%g3066630852%_
                                    (_%generate129648%_
                                     _%g3064130654%_
                                     _%rest30289%_
                                     _%K30290%_
                                     _%E30291%_))))
                               _%g3064030651%_))))
                      (_%g3063830856%_ (gx#genident 'rest))))
                  _%g3061230623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3061030860%_
                                                  (gx#genident 'hd))))
                                             _%g3058430595%_))))
                                    (_%g3058230864%_
                                     (gx#genident 'splice-try))))
                                _%g3055630567%_))))
                       (_%g3055430868%_ (gx#genident 'splice-loop))))
                   _%g3052830539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3052630872%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3050030511%_))))
                                     (_%g3049830876%_ _%tgt30286%_)))
                                 _%init3044130479%_))))))
                (_%loop3043630460%_ _%target3043330454%_ '()))
              (_%g3043030447%_ _%g3043130451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3043030447%_
                                             _%g3043130451%_)))))
                                (_%g3042930880%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3088330886%_
                                                   _%g3088430889%_)
                                            (cons _%g3088330886%_
                                                  _%g3088430889%_))
                                          '()
                                          _%g3029530345%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r3037230410%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop3036730391%_
                                                    _%target3036430385%_
                                                    '()))
                                                 (_%g3036130378%_
                                                  _%g3036230382%_)))))
                                       (_%g3036130378%_ _%g3036230382%_)))))
                           (_%g3036030892%_
                            (gx#gentemps
                             (foldr (lambda (_%g3089530898%_ _%g3089630901%_)
                                      (cons _%g3089530898%_ _%g3089630901%_))
                                    '()
                                    _%g3029530345%_)))))
                       _%var3030430342%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop3029930323%_
                                               _%target3029630317%_
                                               '()))
                                            (_%g3029330310%_
                                             _%g3029430314%_)))))
                                  (_%g3029330310%_ _%g3029430314%_)))))
                      (_%g3029230904%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd30288%_)))))
                 (_%generate-simple-vector29651%_
                  (lambda (_%tgt30109%_
                           _%body30111%_
                           _%start30112%_
                           _%ref30113%_
                           _%K30114%_
                           _%E30115%_)
                    (let _%recur30117%_ ((_%rest30120%_ _%body30111%_)
                                         (_%off30122%_ _%start30112%_))
                      (let* ((_%__stx3959039591%_ _%rest30120%_)
                             (_%g3012530137%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3959039591%_))))
                        (let ((_%__kont3959339594%_
                               (lambda (_%g3012730165%_ _%g3012830167%_)
                                 (let* ((_%g3018230205%_
                                         (lambda (_%g3018330201%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3018330201%_)))
                                        (_%g3018130278%_
                                         (lambda (_%g3018330209%_)
                                           (if (gx#stx-pair? _%g3018330209%_)
                                               (let ((_%e3018830212%_
                                                      (gx#syntax-e
                                                       _%g3018330209%_)))
                                                 (let ((_%hd3018930216%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3018830212%_)))
                                                       (_%tl3019030219%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3018830212%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3019030219%_)
                                                       (let ((_%e3019130222%_
                                                              (gx#syntax-e
                                                               _%tl3019030219%_)))
                                                         (let ((_%hd3019230226%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e3019130222%_)))
                       (_%tl3019330229%_
                        (let () (declare (not safe)) (##cdr _%e3019130222%_))))
                   (if (gx#stx-pair? _%tl3019330229%_)
                       (let ((_%e3019430232%_ (gx#syntax-e _%tl3019330229%_)))
                         (let ((_%hd3019530236%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3019430232%_)))
                               (_%tl3019630239%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3019430232%_))))
                           (if (gx#stx-pair? _%tl3019630239%_)
                               (let ((_%e3019730242%_
                                      (gx#syntax-e _%tl3019630239%_)))
                                 (let ((_%hd3019830246%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3019730242%_)))
                                       (_%tl3019930249%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3019730242%_))))
                                   (if (gx#stx-null? _%tl3019930249%_)
                                       ((lambda (_%g3018430252%_
                                                 _%g3018530254%_
                                                 _%g3018630255%_
                                                 _%g3018730256%_)
                                          (cons 'let
                                                (cons (cons (cons _%g3018730256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g3018430252%_
                                      (cons _%g3018630255%_
                                            (cons _%g3018530254%_ '())))
                                '()))
                    '())
              (cons (_%generate129648%_
                     _%g3018730256%_
                     _%g3012830167%_
                     (_%recur30117%_ _%g3012730165%_ (fx1+ _%off30122%_))
                     _%E30115%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd3019830246%_
                                        _%hd3019530236%_
                                        _%hd3019230226%_
                                        _%hd3018930216%_)
                                       (_%g3018230205%_ _%g3018330209%_))))
                               (_%g3018230205%_ _%g3018330209%_))))
                       (_%g3018230205%_ _%g3018330209%_))))
               (_%g3018230205%_ _%g3018330209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3018230205%_
                                                _%g3018330209%_)))))
                                   (_%g3018130278%_
                                    (list (gx#genident 'e)
                                          _%tgt30109%_
                                          _%off30122%_
                                          _%ref30113%_)))))
                              (_%__kont3959539596%_ (lambda () _%K30114%_)))
                          (if (gx#stx-pair? _%__stx3959039591%_)
                              (let ((_%e3012930155%_
                                     (gx#syntax-e _%__stx3959039591%_)))
                                (let ((_%tl3013130162%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3012930155%_)))
                                      (_%hd3013030159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3012930155%_))))
                                  (_%__kont3959339594%_
                                   _%tl3013130162%_
                                   _%hd3013030159%_)))
                              (_%__kont3959539596%_)))))))
                 (_%generate-list-vector29652%_
                  (lambda (_%tgt30001%_
                           _%body30003%_
                           _%->list30004%_
                           _%K30005%_
                           _%E30006%_)
                    (let* ((_%g3000830016%_
                            (lambda (_%g3000930012%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3000930012%_)))
                           (_%g3000730105%_
                            (lambda (_%g3000930020%_)
                              ((lambda (_%g3001030023%_)
                                 (let* ((_%g3003530043%_
                                         (lambda (_%g3003630039%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3003630039%_)))
                                        (_%g3003430101%_
                                         (lambda (_%g3003630047%_)
                                           ((lambda (_%g3003730050%_)
                                              (let* ((_%g3006330071%_
                                                      (lambda (_%g3006430067%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3006430067%_)))
                                                     (_%g3006230093%_
                                                      (lambda (_%g3006430075%_)
                                                        ((lambda (_%g3006530078%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g3001030023%_
                                           (cons _%g3006530078%_ '()))
                                     '())
                               (cons (_%generate129648%_
                                      _%g3001030023%_
                                      _%body30003%_
                                      _%K30005%_
                                      _%E30006%_)
                                     '()))))
                 _%g3006430075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3006230093%_
                                                 (let ((_%$e30097%_
                                                        _%->list30004%_))
                                                   (if (eq? 'values->list
                                                            _%$e30097%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g3003730050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e30097%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g3003730050%_ '()))
                   (if (eq? 'struct->list _%$e30097%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g3003730050%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29641%_
                        _%->list30004%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3003630047%_))))
                                   (_%g3003430101%_ _%tgt30001%_)))
                               _%g3000930020%_))))
                      (_%g3000730105%_ (gx#genident 'e)))))
                 (_%generate-struct29653%_
                  (lambda (_%info29872%_
                           _%tgt29874%_
                           _%body29875%_
                           _%K29876%_
                           _%E29877%_)
                    (let* ((_%__stx3960639607%_ _%body29875%_)
                           (_%g2988029903%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3960639607%_))))
                      (let ((_%__kont3960939610%_
                             (lambda (_%g2988229980%_)
                               (let ((_%fields29994%_
                                      (_%struct-field-accessors29655%_
                                       _%info29872%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj40360
                                                          _%info29872%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40360
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40360
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40360
                                                          'predicate)))
                                                   (cons _%tgt29874%_ '()))
                                             (cons (_%generate-simple-struct-body29654%_
                                                    _%info29872%_
                                                    _%tgt29874%_
                                                    _%g2988229980%_
                                                    _%K29876%_
                                                    _%E29877%_)
                                                   (cons _%E29877%_ '())))))))
                            (_%__kont3961139612%_
                             (lambda (_%g2989029934%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40361
                                                        _%info29872%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40361
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40361
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40361
                                                        'predicate)))
                                                 (cons _%tgt29874%_ '()))
                                           (cons (_%generate-list-vector29652%_
                                                  _%tgt29874%_
                                                  _%g2989029934%_
                                                  'struct->list
                                                  _%K29876%_
                                                  _%E29877%_)
                                                 (cons _%E29877%_ '())))))))
                        (if (gx#stx-pair? _%__stx3960639607%_)
                            (let ((_%e2988329956%_
                                   (gx#syntax-e _%__stx3960639607%_)))
                              (let ((_%tl2988529963%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2988329956%_)))
                                    (_%hd2988429960%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2988329956%_))))
                                (if (gx#stx-datum? _%hd2988429960%_)
                                    (let ((_%e2988629966%_
                                           (gx#stx-e _%hd2988429960%_)))
                                      (if (equal? _%e2988629966%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2988529963%_)
                                              (let ((_%e2988729970%_
                                                     (gx#syntax-e
                                                      _%tl2988529963%_)))
                                                (let ((_%tl2988929977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2988729970%_)))
                                                      (_%hd2988829974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2988729970%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2988929977%_)
                                                      (_%__kont3960939610%_
                                                       _%hd2988829974%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2988029903%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2988029903%_)))
                                          (if (equal? _%e2988629966%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2988529963%_)
                                                  (let ((_%e2989529924%_
                                                         (gx#syntax-e
                                                          _%tl2988529963%_)))
                                                    (let ((_%tl2989729931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2989529924%_)))
                                                          (_%hd2989629928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2989529924%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2989729931%_)
                                                          (_%__kont3961139612%_
                                                           _%hd2989629928%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2988029903%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2988029903%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2988029903%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2988029903%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2988029903%_)))))))
                 (_%generate-simple-struct-body29654%_
                  (lambda (_%info29792%_
                           _%tgt29794%_
                           _%body29795%_
                           _%K29796%_
                           _%E29797%_)
                    (let _%recur29799%_ ((_%rest29802%_ _%body29795%_)
                                         (_%fields29804%_
                                          (_%struct-field-accessors29655%_
                                           _%info29792%_)))
                      (let* ((_%__stx3965639657%_ _%rest29802%_)
                             (_%g2980729819%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3965639657%_))))
                        (let ((_%__kont3965939660%_
                               (lambda (_%g2980929847%_ _%g2981029849%_)
                                 (if (null? _%fields29804%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29641%_
                                      _%info29792%_
                                      (let ((__obj40362 _%info29792%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40362
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40362
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40362
                                             'name))))
                                     (let ((_%$tgt29864%_ (gx#genident 'e))
                                           (_%getf29866%_
                                            (car _%fields29804%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29864%_
                                                               (cons (cons _%getf29866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29794%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129648%_
                                                          _%$tgt29864%_
                                                          _%g2981029849%_
                                                          (_%recur29799%_
                                                           _%g2980929847%_
                                                           (cdr _%fields29804%_))
                                                          _%E29797%_)
                                                         '())))))))
                              (_%__kont3966139662%_ (lambda () _%K29796%_)))
                          (if (gx#stx-pair? _%__stx3965639657%_)
                              (let ((_%e2981129837%_
                                     (gx#syntax-e _%__stx3965639657%_)))
                                (let ((_%tl2981329844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2981129837%_)))
                                      (_%hd2981229841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2981129837%_))))
                                  (_%__kont3965939660%_
                                   _%tl2981329844%_
                                   _%hd2981229841%_)))
                              (_%__kont3966139662%_)))))))
                 (_%struct-field-accessors29655%_
                  (lambda (_%info29773%_)
                    (let _%recur29776%_ ((_%next29779%_
                                          (cons _%info29773%_ '())))
                      (if (null? _%next29779%_)
                          '()
                          (let ((_%ti29782%_ (car _%next29779%_)))
                            (let ((__tmp40394
                                   (_%recur29776%_
                                    (map gx#syntax-local-value
                                         (let ((__obj40363 _%ti29782%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj40363
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj40363
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj40363
                                                'super))))))
                                  (__tmp40393
                                   (map (lambda (_%slot29785%_)
                                          (let ((_%$e29788%_
                                                 (agetq _%slot29785%_
                                                        (let ((__obj40364
                                                               _%ti29782%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj40364
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj40364 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj40364
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29788%_
                                                _%$e29788%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29641%_
                                                 _%info29773%_
                                                 _%slot29785%_))))
                                        (let ((__obj40365 _%ti29782%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40365
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40365
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40365
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40394 __tmp40393)))))))
                 (_%generate-class29656%_
                  (lambda (_%info29766%_
                           _%tgt29768%_
                           _%body29769%_
                           _%K29770%_
                           _%E29771%_)
                    (cons 'if
                          (cons (cons (let ((__obj40366 _%info29766%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40366
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40366
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40366
                                             'predicate)))
                                      (cons _%tgt29768%_ '()))
                                (cons (_%generate-class-body29657%_
                                       _%info29766%_
                                       _%tgt29768%_
                                       _%body29769%_
                                       _%K29770%_
                                       _%E29771%_)
                                      (cons _%E29771%_ '()))))))
                 (_%generate-class-body29657%_
                  (lambda (_%info29659%_
                           _%tgt29661%_
                           _%body29662%_
                           _%K29663%_
                           _%E29664%_)
                    (let _%recur29666%_ ((_%rest29669%_ _%body29662%_))
                      (let* ((_%__stx3967239673%_ _%rest29669%_)
                             (_%g2967329689%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3967239673%_))))
                        (let ((_%__kont3967539676%_
                               (lambda (_%g2967529727%_
                                        _%g2967629729%_
                                        _%g2967729730%_)
                                 (let ((_%$e29750%_
                                        (agetq (let ((__tmp40395
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2967729730%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp40395))
                                               (let ((__obj40367
                                                      _%info29659%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40367
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40367
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40367
                                                      'unchecked-accessors))))))
                                   (if _%$e29750%_
                                       ((lambda (_%getf29754%_)
                                          (let ((_%$tgt29757%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29754%_ (cons _%tgt29661%_ '()))
                                  '()))
                      '())
                (cons (_%generate129648%_
                       _%$tgt29757%_
                       _%g2967629729%_
                       (_%recur29666%_ _%g2967529727%_)
                       _%E29664%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29750%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29641%_
                                        _%info29659%_
                                        _%g2967729730%_)))))
                              (_%__kont3967739678%_ (lambda () _%K29663%_)))
                          (if (gx#stx-pair? _%__stx3967239673%_)
                              (let ((_%e2967829707%_
                                     (gx#syntax-e _%__stx3967239673%_)))
                                (let ((_%tl2968029714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2967829707%_)))
                                      (_%hd2967929711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2967829707%_))))
                                  (if (gx#stx-pair? _%tl2968029714%_)
                                      (let ((_%e2968129717%_
                                             (gx#syntax-e _%tl2968029714%_)))
                                        (let ((_%tl2968329724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2968129717%_)))
                                              (_%hd2968229721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2968129717%_))))
                                          (_%__kont3967539676%_
                                           _%tl2968329724%_
                                           _%hd2968229721%_
                                           _%hd2967929711%_)))
                                      (_%__kont3967739678%_))))
                              (_%__kont3967739678%_))))))))
          (_%generate129648%_
           _%tgt29643%_
           _%ptree29644%_
           _%K29645%_
           _%E29646%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28460%_ _%tgt-lst28462%_ _%clauses28463%_)
        (letrec ((_%parse-body28465%_
                  (lambda (_%hd-len29463%_)
                    (let _%lp29466%_ ((_%rest29469%_ _%clauses28463%_)
                                      (_%r29471%_ '()))
                      (let* ((_%__stx3972239723%_ _%rest29469%_)
                             (_%g2947429486%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3972239723%_))))
                        (let ((_%__kont3972539726%_
                               (lambda (_%g2947629514%_ _%g2947729516%_)
                                 (let* ((_%__stx3969439695%_ _%g2947729516%_)
                                        (_%g2953329549%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3969439695%_))))
                                   (let ((_%__kont3969739698%_
                                          (lambda (_%g2953529618%_)
                                            (if (gx#stx-null? _%g2947629514%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2953529618%_)
                                 (let ((_%$e29629%_
                                        (gx#stx-source _%g2947729516%_)))
                                   (if _%$e29629%_
                                       _%$e29629%_
                                       (gx#stx-source _%stx28460%_))))
                                '())))
              _%r29471%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28460%_
                                                 _%g2947729516%_))))
                                         (_%__kont3969939700%_
                                          (lambda (_%g2953929577%_
                                                   _%g2954029579%_)
                                            (_%lp29466%_
                                             _%g2947629514%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2959129593%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2959129593%_
                           _%stx28460%_))
                        _%g2954029579%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2953929577%_)
                              (let ((_%$e29597%_
                                     (gx#stx-source _%g2947729516%_)))
                                (if _%$e29597%_
                                    _%$e29597%_
                                    (gx#stx-source _%stx28460%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29471%_))))
                                         (_%__kont3970139702%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28460%_
                                             _%g2947729516%_))))
                                     (let* ((_%__match3971939720%_
                                             (lambda (_%e2954129567%_
                                                      _%hd2954229571%_
                                                      _%tl2954329574%_)
                                               (let ((_%g2953929577%_
                                                      _%tl2954329574%_)
                                                     (_%g2954029579%_
                                                      _%hd2954229571%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2954029579%_)
                                                          (fx= (gx#stx-length
                                                                _%g2954029579%_)
                                                               _%hd-len29463%_)
                                                          (gx#stx-list?
                                                           _%g2953929577%_)
                                                          (not (gx#stx-null?
                                                                _%g2953929577%_)))
                                                     (_%__kont3969939700%_
                                                      _%g2953929577%_
                                                      _%g2954029579%_)
                                                     (_%__kont3970139702%_)))))
                                            (_%__match3971339714%_
                                             (lambda (_%e2953629608%_
                                                      _%hd2953729612%_
                                                      _%tl2953829615%_)
                                               (let ((_%g2953529618%_
                                                      _%tl2953829615%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2953529618%_)
                                                          (not (gx#stx-null?
                                                                _%g2953529618%_)))
                                                     (_%__kont3969739698%_
                                                      _%g2953529618%_)
                                                     (_%__match3971939720%_
                                                      _%e2953629608%_
                                                      _%hd2953729612%_
                                                      _%tl2953829615%_))))))
                                       (if (gx#stx-pair? _%__stx3969439695%_)
                                           (let ((_%e2953629608%_
                                                  (gx#syntax-e
                                                   _%__stx3969439695%_)))
                                             (let ((_%tl2953829615%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2953629608%_)))
                                                   (_%hd2953729612%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2953629608%_))))
                                               (if (gx#identifier?
                                                    _%hd2953729612%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40396_|
                                                        _%hd2953729612%_)
                                                       (_%__match3971339714%_
                                                        _%e2953629608%_
                                                        _%hd2953729612%_
                                                        _%tl2953829615%_)
                                                       (_%__match3971939720%_
                                                        _%e2953629608%_
                                                        _%hd2953729612%_
                                                        _%tl2953829615%_))
                                                   (_%__match3971939720%_
                                                    _%e2953629608%_
                                                    _%hd2953729612%_
                                                    _%tl2953829615%_))))
                                           (_%__kont3970139702%_)))))))
                              (_%__kont3972739728%_ (lambda () _%r29471%_)))
                          (if (gx#stx-pair? _%__stx3972239723%_)
                              (let ((_%e2947829504%_
                                     (gx#syntax-e _%__stx3972239723%_)))
                                (let ((_%tl2948029511%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2947829504%_)))
                                      (_%hd2947929508%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2947829504%_))))
                                  (_%__kont3972539726%_
                                   _%tl2948029511%_
                                   _%hd2947929508%_)))
                              (_%__kont3972739728%_)))))))
                 (_%generate-body28467%_
                  (lambda (_%body29169%_)
                    (let* ((_%g2917229180%_
                            (lambda (_%g2917329176%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2917329176%_)))
                           (_%g2917129459%_
                            (lambda (_%g2917329184%_)
                              ((lambda (_%g2917429187%_)
                                 (let* ((_%g2919929216%_
                                         (lambda (_%g2920029212%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2920029212%_)))
                                        (_%g2919829455%_
                                         (lambda (_%g2920029220%_)
                                           (if (gx#stx-pair/null?
                                                _%g2920029220%_)
                                               (let ((_g40397_
                                                      (gx#syntax-split-splice
                                                       _%g2920029220%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40398_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40397_)
                        (##values-length _g40397_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40398_ 2)))
                 (error "Context expects 2 values" _g40398_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2920229223%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40397_
                                                             0)))
                                                         (_%tl2920429226%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40397_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2920429226%_)
                                                         (letrec ((_%loop2920529229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2920329233%_ _%target2920929236%_)
                             (if (gx#stx-pair? _%hd2920329233%_)
                                 (let ((_%e2920629238%_
                                        (gx#syntax-e _%hd2920329233%_)))
                                   (let ((_%lp-hd2920729242%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2920629238%_)))
                                         (_%lp-tl2920829245%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2920629238%_))))
                                     (_%loop2920529229%_
                                      _%lp-tl2920829245%_
                                      (cons _%lp-hd2920729242%_
                                            _%target2920929236%_))))
                                 (let ((_%target2921029248%_
                                        (reverse _%target2920929236%_)))
                                   ((lambda (_%g2920129251%_)
                                      (let* ((_%g2926829285%_
                                              (lambda (_%g2926929281%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2926929281%_)))
                                             (_%g2926729451%_
                                              (lambda (_%g2926929289%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2926929289%_)
                                                    (let ((_g40399_
                                                           (gx#syntax-split-splice
                                                            _%g2926929289%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g40400_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g40399_)
                             (##values-length _g40399_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g40400_ 2)))
                      (error "Context expects 2 values" _g40400_)))
                (let ((_%target2927129292%_
                       (let () (declare (not safe)) (##values-ref _g40399_ 0)))
                      (_%tl2927329295%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g40399_ 1))))
                  (if (gx#stx-null? _%tl2927329295%_)
                      (letrec ((_%loop2927429298%_
                                (lambda (_%hd2927229302%_
                                         _%fail-diagnostic2927829305%_)
                                  (if (gx#stx-pair? _%hd2927229302%_)
                                      (let ((_%e2927529307%_
                                             (gx#syntax-e _%hd2927229302%_)))
                                        (let ((_%lp-hd2927629311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2927529307%_)))
                                              (_%lp-tl2927729314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2927529307%_))))
                                          (_%loop2927429298%_
                                           _%lp-tl2927729314%_
                                           (cons _%lp-hd2927629311%_
                                                 _%fail-diagnostic2927829305%_))))
                                      (let ((_%fail-diagnostic2927929317%_
                                             (reverse _%fail-diagnostic2927829305%_)))
                                        ((lambda (_%g2927029320%_)
                                           (let* ((_%g2933729345%_
                                                   (lambda (_%g2933829341%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2933829341%_)))
                                                  (_%g2933629431%_
                                                   (lambda (_%g2933829349%_)
                                                     ((lambda (_%g2933929352%_)
                                                        (let* ((_%g2936529373%_
                                                                (lambda (_%g2936629369%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2936629369%_)))
                       (_%g2936429427%_
                        (lambda (_%g2936629377%_)
                          ((lambda (_%g2936729380%_)
                             (let* ((_%g2939329401%_
                                     (lambda (_%g2939429397%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2939429397%_)))
                                    (_%g2939229423%_
                                     (lambda (_%g2939429405%_)
                                       ((lambda (_%g2939529408%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g2939529408%_
                                                            '()))))
                                        _%g2939429405%_))))
                               (_%g2939229423%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g2917429187%_
                                                         (cons _%g2933929352%_
                                                               '()))
                                                   '())
                                             (cons _%g2936729380%_ '())))
                                 (gx#stx-source _%stx28460%_)))))
                           _%g2936629377%_))))
                  (_%g2936429427%_
                   (_%generate-clauses28468%_
                    _%body29169%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g2917429187%_ '()) '())))))))
              _%g2933829349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2933629431%_
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
                                     (foldr (lambda (_%g2943429439%_
                                                     _%g2943529442%_)
                                              (cons _%g2943429439%_
                                                    _%g2943529442%_))
                                            (foldr (lambda (_%g2943629445%_
                                                            _%g2943729448%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2943629445%_ '()))
                   _%g2943729448%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g2927029320%_)
                                            _%g2920129251%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28460%_)))))
                                         _%fail-diagnostic2927929317%_))))))
                        (_%loop2927429298%_ _%target2927129292%_ '()))
                      (_%g2926829285%_ _%g2926929289%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2926829285%_
                                                     _%g2926929289%_)))))
                                        (_%g2926729451%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28463%_))))
                                    _%target2921029248%_))))))
                   (_%loop2920529229%_ _%target2920229223%_ '()))
                 (_%g2919929216%_ _%g2920029220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2919929216%_
                                                _%g2920029220%_)))))
                                   (_%g2919829455%_ _%tgt-lst28462%_)))
                               _%g2917329184%_))))
                      (_%g2917129459%_ (gx#genident 'E)))))
                 (_%generate-clauses28468%_
                  (lambda (_%rest28821%_ _%E28823%_)
                    (let* ((_%__stx3973839739%_ _%rest28821%_)
                           (_%g2882728843%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3973839739%_))))
                      (let ((_%__kont3974139742%_
                             (lambda (_%g2882929077%_)
                               (let* ((_%g2908829106%_
                                       (lambda (_%g2908929102%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2908929102%_)))
                                      (_%g2908729161%_
                                       (lambda (_%g2908929110%_)
                                         (if (gx#stx-pair? _%g2908929110%_)
                                             (let ((_%e2909229113%_
                                                    (gx#syntax-e
                                                     _%g2908929110%_)))
                                               (let ((_%hd2909329117%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2909229113%_)))
                                                     (_%tl2909429120%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2909229113%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2909429120%_)
                                                     (let ((_%e2909529123%_
                                                            (gx#syntax-e
                                                             _%tl2909429120%_)))
                                                       (let ((_%hd2909629127%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2909529123%_)))
                     (_%tl2909729130%_
                      (let () (declare (not safe)) (##cdr _%e2909529123%_))))
                 (if (gx#stx-pair? _%tl2909729130%_)
                     (let ((_%e2909829133%_ (gx#syntax-e _%tl2909729130%_)))
                       (let ((_%hd2909929137%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2909829133%_)))
                             (_%tl2910029140%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2909829133%_))))
                         (if (gx#stx-null? _%tl2910029140%_)
                             ((lambda (_%g2909029143%_ _%g2909129145%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g2909129145%_)
                                                      (_%generate128469%_
                                                       _%g2909129145%_
                                                       _%g2909029143%_
                                                       _%E28823%_)
                                                      _%g2909029143%_)
                                                  '()))))
                              _%hd2909929137%_
                              _%hd2909629127%_)
                             (_%g2908829106%_ _%g2908929110%_))))
                     (_%g2908829106%_ _%g2908929110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2908829106%_
                                                      _%g2908929110%_))))
                                             (_%g2908829106%_
                                              _%g2908929110%_)))))
                                 (_%g2908729161%_ _%g2882929077%_))))
                            (_%__kont3974339744%_
                             (lambda (_%g2883328871%_ _%g2883428873%_)
                               (let* ((_%g2888628905%_
                                       (lambda (_%g2888728901%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2888728901%_)))
                                      (_%g2888529056%_
                                       (lambda (_%g2888728909%_)
                                         (if (gx#stx-pair? _%g2888728909%_)
                                             (let ((_%e2889128912%_
                                                    (gx#syntax-e
                                                     _%g2888728909%_)))
                                               (let ((_%hd2889228916%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2889128912%_)))
                                                     (_%tl2889328919%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2889128912%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2889328919%_)
                                                     (let ((_%e2889428922%_
                                                            (gx#syntax-e
                                                             _%tl2889328919%_)))
                                                       (let ((_%hd2889528926%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2889428922%_)))
                     (_%tl2889628929%_
                      (let () (declare (not safe)) (##cdr _%e2889428922%_))))
                 (if (gx#stx-pair? _%tl2889628929%_)
                     (let ((_%e2889728932%_ (gx#syntax-e _%tl2889628929%_)))
                       (let ((_%hd2889828936%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2889728932%_)))
                             (_%tl2889928939%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2889728932%_))))
                         (if (gx#stx-null? _%tl2889928939%_)
                             ((lambda (_%g2888828942%_
                                       _%g2888928944%_
                                       _%g2889028945%_)
                                (if (gx#stx-e _%g2888928944%_)
                                    (let* ((_%g2896228977%_
                                            (lambda (_%g2896328973%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2896328973%_)))
                                           (_%g2896129022%_
                                            (lambda (_%g2896328981%_)
                                              (if (gx#stx-pair?
                                                   _%g2896328981%_)
                                                  (let ((_%e2896628984%_
                                                         (gx#syntax-e
                                                          _%g2896328981%_)))
                                                    (let ((_%hd2896728988%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2896628984%_)))
                                                          (_%tl2896828991%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2896628984%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2896828991%_)
                                                          (let ((_%e2896928994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2896828991%_)))
                    (let ((_%hd2897028998%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2896928994%_)))
                          (_%tl2897129001%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2896928994%_))))
                      (if (gx#stx-null? _%tl2897129001%_)
                          ((lambda (_%g2896429004%_ _%g2896529006%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g2889028945%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g2896529006%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g2896429004%_ '()))))
                           _%hd2897028998%_
                           _%hd2896728988%_)
                          (_%g2896228977%_ _%g2896328981%_))))
                  (_%g2896228977%_ _%g2896328981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2896228977%_
                                                   _%g2896328981%_)))))
                                      (_%g2896129022%_
                                       (list (_%generate128469%_
                                              _%g2888928944%_
                                              _%g2888828942%_
                                              _%E28823%_)
                                             (_%generate-clauses28468%_
                                              _%g2883328871%_
                                              (cons _%g2889028945%_ '())))))
                                    (let* ((_%g2902629034%_
                                            (lambda (_%g2902729030%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2902729030%_)))
                                           (_%g2902529052%_
                                            (lambda (_%g2902729038%_)
                                              ((lambda (_%g2902829041%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g2889028945%_
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
                             (cons _%g2888828942%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g2902829041%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2902729038%_))))
                                      (_%g2902529052%_
                                       (_%generate-clauses28468%_
                                        _%g2883328871%_
                                        (cons _%g2889028945%_ '()))))))
                              _%hd2889828936%_
                              _%hd2889528926%_
                              _%hd2889228916%_)
                             (_%g2888628905%_ _%g2888728909%_))))
                     (_%g2888628905%_ _%g2888728909%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2888628905%_
                                                      _%g2888728909%_))))
                                             (_%g2888628905%_
                                              _%g2888728909%_)))))
                                 (_%g2888529056%_ _%g2883428873%_))))
                            (_%__kont3974539746%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28823%_ '()))))))
                        (if (gx#stx-pair? _%__stx3973839739%_)
                            (let ((_%e2883029067%_
                                   (gx#syntax-e _%__stx3973839739%_)))
                              (let ((_%tl2883229074%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2883029067%_)))
                                    (_%hd2883129071%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2883029067%_))))
                                (if (gx#stx-null? _%tl2883229074%_)
                                    (_%__kont3974139742%_ _%hd2883129071%_)
                                    (_%__kont3974339744%_
                                     _%tl2883229074%_
                                     _%hd2883129071%_))))
                            (_%__kont3974539746%_))))))
                 (_%generate128469%_
                  (lambda (_%clause28471%_ _%body28473%_ _%E28474%_)
                    (let* ((_%g2847628500%_
                            (lambda (_%g2847728496%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2847728496%_)))
                           (_%g2847528817%_
                            (lambda (_%g2847728504%_)
                              (if (gx#stx-pair? _%g2847728504%_)
                                  (let ((_%e2848028507%_
                                         (gx#syntax-e _%g2847728504%_)))
                                    (let ((_%hd2848128511%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2848028507%_)))
                                          (_%tl2848228514%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2848028507%_))))
                                      (if (gx#stx-pair? _%tl2848228514%_)
                                          (let ((_%e2848328517%_
                                                 (gx#syntax-e
                                                  _%tl2848228514%_)))
                                            (let ((_%hd2848428521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2848328517%_)))
                                                  (_%tl2848528524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2848328517%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2848428521%_)
                                                  (let ((_g40401_
                                                         (gx#syntax-split-splice
                                                          _%hd2848428521%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40402_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40401_)
                           (##values-length _g40401_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40402_ 2)))
                    (error "Context expects 2 values" _g40402_)))
              (let ((_%target2848628527%_
                     (let () (declare (not safe)) (##values-ref _g40401_ 0)))
                    (_%tl2848828530%_
                     (let () (declare (not safe)) (##values-ref _g40401_ 1))))
                (if (gx#stx-null? _%tl2848828530%_)
                    (letrec ((_%loop2848928533%_
                              (lambda (_%hd2848728537%_ _%var2849328540%_)
                                (if (gx#stx-pair? _%hd2848728537%_)
                                    (let ((_%e2849028542%_
                                           (gx#syntax-e _%hd2848728537%_)))
                                      (let ((_%lp-hd2849128546%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2849028542%_)))
                                            (_%lp-tl2849228549%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2849028542%_))))
                                        (_%loop2848928533%_
                                         _%lp-tl2849228549%_
                                         (cons _%lp-hd2849128546%_
                                               _%var2849328540%_))))
                                    (let ((_%var2849428552%_
                                           (reverse _%var2849328540%_)))
                                      (if (gx#stx-null? _%tl2848528524%_)
                                          ((lambda (_%g2847828555%_
                                                    _%g2847928557%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2857828581%_
                                                                _%g2857928584%_)
                                                         (cons _%g2857828581%_
                                                               _%g2857928584%_))
                                                       '()
                                                       _%g2847828555%_)
                                                _%stx28460%_)
                                               (let* ((_%g2858728595%_
                                                       (lambda (_%g2858828591%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2858828591%_)))
                                                      (_%g2858628689%_
                                                       (lambda (_%g2858828599%_)
                                                         ((lambda (_%g2858928602%_)
                                                            (let* ((_%g2861528623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2861628619%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2861628619%_)))
                           (_%g2861428685%_
                            (lambda (_%g2861628627%_)
                              ((lambda (_%g2861728630%_)
                                 (let* ((_%g2864328651%_
                                         (lambda (_%g2864428647%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2864428647%_)))
                                        (_%g2864228673%_
                                         (lambda (_%g2864428655%_)
                                           ((lambda (_%g2864528658%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g2847928557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2864528658%_ '()))
                   (cons _%g2858928602%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28460%_)))
                                            _%g2864428655%_))))
                                   (_%g2864228673%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2867628679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2867728682%_)
                  (cons _%g2867628679%_ _%g2867728682%_))
                '()
                _%g2847828555%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g2861728630%_ '())))
                                     (gx#stx-source _%stx28460%_)))))
                               _%g2861628627%_))))
                      (_%g2861428685%_ _%body28473%_)))
                  _%g2858828599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2858628689%_
                                                  (let _%recur28693%_ ((_%rest28696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28471%_)
                               (_%rest-targets28698%_ _%tgt-lst28462%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3976439765%_
                                                            _%rest28696%_)
                                                           (_%g2870128713%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3976439765%_))))
                                                      (let ((_%__kont3976739768%_
                                                             (lambda (_%g2870328749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2870428751%_)
                       (let* ((_%g2876628778%_
                               (lambda (_%g2876728774%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2876728774%_)))
                              (_%g2876528809%_
                               (lambda (_%g2876728782%_)
                                 (if (gx#stx-pair? _%g2876728782%_)
                                     (let ((_%e2877028785%_
                                            (gx#syntax-e _%g2876728782%_)))
                                       (let ((_%hd2877128789%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2877028785%_)))
                                             (_%tl2877228792%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2877028785%_))))
                                         ((lambda (_%g2876828795%_
                                                   _%g2876928797%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28460%_
                                             _%g2876928797%_
                                             _%g2870428751%_
                                             (_%recur28693%_
                                              _%g2870328749%_
                                              _%g2876828795%_)
                                             _%E28474%_))
                                          _%tl2877228792%_
                                          _%hd2877128789%_)))
                                     (_%g2876628778%_ _%g2876728782%_)))))
                         (_%g2876528809%_ _%rest-targets28698%_))))
                    (_%__kont3976939770%_
                     (lambda ()
                       (cons _%g2847928557%_
                             (foldr (lambda (_%g2872328726%_ _%g2872428729%_)
                                      (cons _%g2872328726%_ _%g2872428729%_))
                                    '()
                                    _%g2847828555%_)))))
                (if (gx#stx-pair? _%__stx3976439765%_)
                    (let ((_%e2870528739%_ (gx#syntax-e _%__stx3976439765%_)))
                      (let ((_%tl2870728746%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2870528739%_)))
                            (_%hd2870628743%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2870528739%_))))
                        (_%__kont3976739768%_
                         _%tl2870728746%_
                         _%hd2870628743%_)))
                    (_%__kont3976939770%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2849428552%_
                                           _%hd2848128511%_)
                                          (_%g2847628500%_
                                           _%g2847728504%_)))))))
                      (_%loop2848928533%_ _%target2848628527%_ '()))
                    (_%g2847628500%_ _%g2847728504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2847628500%_
                                                   _%g2847728504%_))))
                                          (_%g2847628500%_ _%g2847728504%_))))
                                  (_%g2847628500%_ _%g2847728504%_)))))
                      (_%g2847528817%_
                       (list (gx#genident 'K)
                             (let ((__tmp40403
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28471%_)))
                               (declare (not safe))
                               (##apply append __tmp40403))))))))
          (_%generate-body28467%_
           (_%parse-body28465%_ (gx#stx-length _%tgt-lst28462%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx28362%_ _%tgt28364%_ _%clauses28365%_)
        (letrec ((_%reclause28367%_
                  (lambda (_%clause28370%_)
                    (let* ((_%__stx3978039781%_ _%clause28370%_)
                           (_%g2837528390%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3978039781%_))))
                      (let ((_%__kont3978339784%_ (lambda () _%clause28370%_))
                            (_%__kont3978539786%_
                             (lambda (_%g2838028418%_ _%g2838128420%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2838128420%_ '())
                                      _%g2838028418%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3978739788%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx28362%_
                                _%clause28370%_))))
                        (if (gx#stx-pair? _%__stx3978039781%_)
                            (let ((_%e2837728442%_
                                   (gx#syntax-e _%__stx3978039781%_)))
                              (let ((_%tl2837928449%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2837728442%_)))
                                    (_%hd2837828446%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2837728442%_))))
                                (if (gx#identifier? _%hd2837828446%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40404_|
                                         _%hd2837828446%_)
                                        (_%__kont3978339784%_)
                                        (_%__kont3978539786%_
                                         _%tl2837928449%_
                                         _%hd2837828446%_))
                                    (_%__kont3978539786%_
                                     _%tl2837928449%_
                                     _%hd2837828446%_))))
                            (_%__kont3978739788%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx28362%_
           (cons _%tgt28364%_ '())
           (gx#stx-map _%reclause28367%_ _%clauses28365%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35703%_)
        (let* ((_%__stx3980839809%_ _%stx35703%_)
               (_%g3570835737%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3980839809%_))))
          (let ((_%__kont3981139812%_
                 (lambda (_%g3571035977%_)
                   (let* ((_%g3599035998%_
                           (lambda (_%g3599135994%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3599135994%_)))
                          (_%g3598936051%_
                           (lambda (_%g3599136002%_)
                             ((lambda (_%g3599236005%_)
                                (let* ((_%g3601736025%_
                                        (lambda (_%g3601836021%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3601836021%_)))
                                       (_%g3601636047%_
                                        (lambda (_%g3601836029%_)
                                          ((lambda (_%g3601936032%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g3599236005%_
                                                               '())
                                                         (cons _%g3601936032%_
                                                               '()))))
                                           _%g3601836029%_))))
                                  (_%g3601636047%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3599236005%_
                                                _%g3571035977%_))
                                    (gx#stx-source _%stx35703%_)))))
                              _%g3599136002%_))))
                     (_%g3598936051%_ (gx#genident 'e)))))
                (_%__kont3981339814%_
                 (lambda (_%g3571735872%_)
                   (let* ((_%g3588535893%_
                           (lambda (_%g3588635889%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3588635889%_)))
                          (_%g3588435946%_
                           (lambda (_%g3588635897%_)
                             ((lambda (_%g3588735900%_)
                                (let* ((_%g3591235920%_
                                        (lambda (_%g3591335916%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3591335916%_)))
                                       (_%g3591135942%_
                                        (lambda (_%g3591335924%_)
                                          ((lambda (_%g3591435927%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g3588735900%_
                                                         (cons _%g3591435927%_
                                                               '()))))
                                           _%g3591335924%_))))
                                  (_%g3591135942%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3588735900%_
                                                _%g3571735872%_))
                                    (gx#stx-source _%stx35703%_)))))
                              _%g3588635897%_))))
                     (_%g3588435946%_ (gx#genident 'args)))))
                (_%__kont3981539816%_
                 (lambda (_%g3572435764%_ _%g3572535766%_)
                   (let* ((_%g3578035788%_
                           (lambda (_%g3578135784%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3578135784%_)))
                          (_%g3577935841%_
                           (lambda (_%g3578135792%_)
                             ((lambda (_%g3578235795%_)
                                (let* ((_%g3580735815%_
                                        (lambda (_%g3580835811%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3580835811%_)))
                                       (_%g3580635837%_
                                        (lambda (_%g3580835819%_)
                                          ((lambda (_%g3580935822%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g3578235795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3572535766%_ '()))
                       '())
                 (cons _%g3580935822%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3580835819%_))))
                                  (_%g3580635837%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35703%_
                                    _%g3578235795%_
                                    _%g3572435764%_))))
                              _%g3578135792%_))))
                     (_%g3577935841%_ (gx#genident _%g3572535766%_))))))
            (let* ((_%__match3986139862%_
                    (lambda (_%e3572635744%_
                             _%hd3572735748%_
                             _%tl3572835751%_
                             _%e3572935754%_
                             _%hd3573035758%_
                             _%tl3573135761%_)
                      (let ((_%g3572435764%_ _%tl3573135761%_)
                            (_%g3572535766%_ _%hd3573035758%_))
                        (if (gx#stx-list? _%g3572435764%_)
                            (_%__kont3981539816%_
                             _%g3572435764%_
                             _%g3572535766%_)
                            (let () (declare (not safe)) (_%g3570835737%_))))))
                   (_%__match3984939850%_
                    (lambda (_%e3571835852%_
                             _%hd3571935856%_
                             _%tl3572035859%_
                             _%e3572135862%_
                             _%hd3572235866%_
                             _%tl3572335869%_)
                      (let ((_%g3571735872%_ _%tl3572335869%_))
                        (if (gx#stx-list? _%g3571735872%_)
                            (_%__kont3981339814%_ _%g3571735872%_)
                            (_%__match3986139862%_
                             _%e3571835852%_
                             _%hd3571935856%_
                             _%tl3572035859%_
                             _%e3572135862%_
                             _%hd3572235866%_
                             _%tl3572335869%_)))))
                   (_%__match3983339834%_
                    (lambda (_%e3571135957%_
                             _%hd3571235961%_
                             _%tl3571335964%_
                             _%e3571435967%_
                             _%hd3571535971%_
                             _%tl3571635974%_)
                      (let ((_%g3571035977%_ _%tl3571635974%_))
                        (if (gx#stx-list? _%g3571035977%_)
                            (_%__kont3981139812%_ _%g3571035977%_)
                            (_%__match3986139862%_
                             _%e3571135957%_
                             _%hd3571235961%_
                             _%tl3571335964%_
                             _%e3571435967%_
                             _%hd3571535971%_
                             _%tl3571635974%_))))))
              (if (gx#stx-pair? _%__stx3980839809%_)
                  (let ((_%e3571135957%_ (gx#syntax-e _%__stx3980839809%_)))
                    (let ((_%tl3571335964%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3571135957%_)))
                          (_%hd3571235961%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3571135957%_))))
                      (if (gx#stx-pair? _%tl3571335964%_)
                          (let ((_%e3571435967%_
                                 (gx#syntax-e _%tl3571335964%_)))
                            (let ((_%tl3571635974%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3571435967%_)))
                                  (_%hd3571535971%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3571435967%_))))
                              (if (gx#identifier? _%hd3571535971%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40405_|
                                       _%hd3571535971%_)
                                      (_%__match3983339834%_
                                       _%e3571135957%_
                                       _%hd3571235961%_
                                       _%tl3571335964%_
                                       _%e3571435967%_
                                       _%hd3571535971%_
                                       _%tl3571635974%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40406_|
                                           _%hd3571535971%_)
                                          (_%__match3984939850%_
                                           _%e3571135957%_
                                           _%hd3571235961%_
                                           _%tl3571335964%_
                                           _%e3571435967%_
                                           _%hd3571535971%_
                                           _%tl3571635974%_)
                                          (_%__match3986139862%_
                                           _%e3571135957%_
                                           _%hd3571235961%_
                                           _%tl3571335964%_
                                           _%e3571435967%_
                                           _%hd3571535971%_
                                           _%tl3571635974%_)))
                                  (_%__match3986139862%_
                                   _%e3571135957%_
                                   _%hd3571235961%_
                                   _%tl3571335964%_
                                   _%e3571435967%_
                                   _%hd3571535971%_
                                   _%tl3571635974%_))))
                          (let () (declare (not safe)) (_%g3570835737%_)))))
                  (let () (declare (not safe)) (_%g3570835737%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx36059%_)
        (let* ((_%g3606236086%_
                (lambda (_%g3606336082%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3606336082%_)))
               (_%g3606136294%_
                (lambda (_%g3606336090%_)
                  (if (gx#stx-pair? _%g3606336090%_)
                      (let ((_%e3606636093%_ (gx#syntax-e _%g3606336090%_)))
                        (let ((_%hd3606736097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3606636093%_)))
                              (_%tl3606836100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3606636093%_))))
                          (if (gx#stx-pair? _%tl3606836100%_)
                              (let ((_%e3606936103%_
                                     (gx#syntax-e _%tl3606836100%_)))
                                (let ((_%hd3607036107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3606936103%_)))
                                      (_%tl3607136110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3606936103%_))))
                                  (if (gx#stx-pair/null? _%hd3607036107%_)
                                      (let ((_g40407_
                                             (gx#syntax-split-splice
                                              _%hd3607036107%_
                                              '0)))
                                        (begin
                                          (let ((_g40408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40407_)
                                                       (##values-length
                                                        _g40407_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40408_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40408_)))
                                          (let ((_%target3607236113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40407_ 0)))
                                                (_%tl3607436116%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40407_ 1))))
                                            (if (gx#stx-null? _%tl3607436116%_)
                                                (letrec ((_%loop3607536119%_
                                                          (lambda (_%hd3607336123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3607936126%_)
                    (if (gx#stx-pair? _%hd3607336123%_)
                        (let ((_%e3607636128%_ (gx#syntax-e _%hd3607336123%_)))
                          (let ((_%lp-hd3607736132%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3607636128%_)))
                                (_%lp-tl3607836135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3607636128%_))))
                            (_%loop3607536119%_
                             _%lp-tl3607836135%_
                             (cons _%lp-hd3607736132%_ _%e3607936126%_))))
                        (let ((_%e3608036138%_ (reverse _%e3607936126%_)))
                          ((lambda (_%g3606436141%_ _%g3606536143%_)
                             (if (gx#stx-list? _%g3606436141%_)
                                 (let* ((_%g3616136178%_
                                         (lambda (_%g3616236174%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3616236174%_)))
                                        (_%g3616036282%_
                                         (lambda (_%g3616236182%_)
                                           (if (gx#stx-pair/null?
                                                _%g3616236182%_)
                                               (let ((_g40409_
                                                      (gx#syntax-split-splice
                                                       _%g3616236182%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40410_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40409_)
                        (##values-length _g40409_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40410_ 2)))
                 (error "Context expects 2 values" _g40410_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3616436185%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40409_
                                                             0)))
                                                         (_%tl3616636188%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40409_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3616636188%_)
                                                         (letrec ((_%loop3616736191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3616536195%_ _%$e3617136198%_)
                             (if (gx#stx-pair? _%hd3616536195%_)
                                 (let ((_%e3616836200%_
                                        (gx#syntax-e _%hd3616536195%_)))
                                   (let ((_%lp-hd3616936204%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3616836200%_)))
                                         (_%lp-tl3617036207%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3616836200%_))))
                                     (_%loop3616736191%_
                                      _%lp-tl3617036207%_
                                      (cons _%lp-hd3616936204%_
                                            _%$e3617136198%_))))
                                 (let ((_%$e3617236210%_
                                        (reverse _%$e3617136198%_)))
                                   ((lambda (_%g3616336213%_)
                                      (let* ((_%g3622936237%_
                                              (lambda (_%g3623036233%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3623036233%_)))
                                             (_%g3622836270%_
                                              (lambda (_%g3623036241%_)
                                                ((lambda (_%g3623136244%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g3606536143%_
                          _%g3616336213%_)
                         (foldr (lambda (_%g3625836262%_
                                         _%g3625936265%_
                                         _%g3626036267%_)
                                  (cons (cons _%g3625936265%_
                                              (cons _%g3625836262%_ '()))
                                        _%g3626036267%_))
                                '()
                                _%g3606536143%_
                                _%g3616336213%_))
                       (cons _%g3623136244%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3623036241%_))))
                                        (_%g3622836270%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx36059%_
                                          (foldr (lambda (_%g3627336276%_
                                                          _%g3627436279%_)
                                                   (cons _%g3627336276%_
                                                         _%g3627436279%_))
                                                 '()
                                                 _%g3616336213%_)
                                          _%g3606436141%_))))
                                    _%$e3617236210%_))))))
                   (_%loop3616736191%_ _%target3616436185%_ '()))
                 (_%g3616136178%_ _%g3616236182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3616136178%_
                                                _%g3616236182%_)))))
                                   (_%g3616036282%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3628536288%_
                                                     _%g3628636291%_)
                                              (cons _%g3628536288%_
                                                    _%g3628636291%_))
                                            '()
                                            _%g3606536143%_))))
                                 (_%g3606236086%_ _%g3606336090%_)))
                           _%tl3607136110%_
                           _%e3608036138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3607536119%_
                                                   _%target3607236113%_
                                                   '()))
                                                (_%g3606236086%_
                                                 _%g3606336090%_)))))
                                      (_%g3606236086%_ _%g3606336090%_))))
                              (_%g3606236086%_ _%g3606336090%_))))
                      (_%g3606236086%_ _%g3606336090%_)))))
          (_%g3606136294%_ _%stx36059%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx36300%_)
        (let* ((_%__stx3986439865%_ _%$stx36300%_)
               (_%g3630636389%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3986439865%_))))
          (let ((_%__kont3986739868%_
                 (lambda (_%g3630836709%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3672536728%_ _%g3672636731%_)
                                        (cons _%g3672536728%_ _%g3672636731%_))
                                      '()
                                      _%g3630836709%_)))))
                (_%__kont3987139872%_
                 (lambda (_%g3632436619%_
                          _%g3632536621%_
                          _%g3632636622%_
                          _%g3632736623%_)
                   (cons _%g3632736623%_
                         (cons (cons (cons _%g3632636622%_
                                           (cons _%g3632536621%_ '()))
                                     '())
                               (foldr (lambda (_%g3664536648%_ _%g3664636651%_)
                                        (cons _%g3664536648%_ _%g3664636651%_))
                                      '()
                                      _%g3632436619%_)))))
                (_%__kont3987539876%_
                 (lambda (_%g3634936494%_ _%g3635036496%_ _%g3635136497%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3651936526%_ _%g3652036529%_)
                                        (cons _%g3651936526%_ _%g3652036529%_))
                                      '()
                                      _%g3635036496%_)
                               (cons (cons (foldr (lambda (_%g3652136532%_
                                                           _%g3652236535%_)
                                                    (cons _%g3652136532%_
                                                          _%g3652236535%_))
                                                  '()
                                                  _%g3635136497%_)
                                           (foldr (lambda (_%g3652336538%_
                                                           _%g3652436541%_)
                                                    (cons _%g3652336538%_
                                                          _%g3652436541%_))
                                                  '()
                                                  _%g3634936494%_))
                                     '()))))))
            (let* ((_%__match3995739958%_
                    (lambda (_%e3635236396%_
                             _%hd3635336400%_
                             _%tl3635436403%_
                             _%e3635536406%_
                             _%hd3635636410%_
                             _%tl3635736413%_
                             _%__splice3987739878%_
                             _%target3635836416%_
                             _%tl3636036419%_)
                      (letrec ((_%loop3636136422%_
                                (lambda (_%hd3635936426%_
                                         _%expr3636536429%_
                                         _%hd3636636430%_)
                                  (if (gx#stx-pair? _%hd3635936426%_)
                                      (let ((_%e3636236432%_
                                             (gx#syntax-e _%hd3635936426%_)))
                                        (let ((_%lp-tl3636436439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3636236432%_)))
                                              (_%lp-hd3636336436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3636236432%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3636336436%_)
                                              (let ((_%e3636936442%_
                                                     (gx#syntax-e
                                                      _%lp-hd3636336436%_)))
                                                (let ((_%tl3637136449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3636936442%_)))
                                                      (_%hd3637036446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3636936442%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3637136449%_)
                                                      (let ((_%e3637236452%_
                                                             (gx#syntax-e
                                                              _%tl3637136449%_)))
                                                        (let ((_%tl3637436459%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3637236452%_)))
                      (_%hd3637336456%_
                       (let () (declare (not safe)) (##car _%e3637236452%_))))
                  (if (gx#stx-null? _%tl3637436459%_)
                      (_%loop3636136422%_
                       _%lp-tl3636436439%_
                       (cons _%hd3637336456%_ _%expr3636536429%_)
                       (cons _%hd3637036446%_ _%hd3636636430%_))
                      (let () (declare (not safe)) (_%g3630636389%_)))))
              (let () (declare (not safe)) (_%g3630636389%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3630636389%_)))))
                                      (let ((_%hd3636836464%_
                                             (reverse _%hd3636636430%_))
                                            (_%expr3636736462%_
                                             (reverse _%expr3636536429%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3635736413%_)
                                            (let ((_%__splice3987939880%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3635736413%_
                                                    '0)))
                                              (let ((_%tl3637736469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3987939880%_
                                                        '1)))
                                                    (_%target3637536466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3987939880%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3637736469%_)
                                                    (letrec ((_%loop3637836472%_
                                                              (lambda (_%hd3637636476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3638236479%_)
                        (if (gx#stx-pair? _%hd3637636476%_)
                            (let ((_%e3637936481%_
                                   (gx#syntax-e _%hd3637636476%_)))
                              (let ((_%lp-tl3638136488%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3637936481%_)))
                                    (_%lp-hd3638036485%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3637936481%_))))
                                (_%loop3637836472%_
                                 _%lp-tl3638136488%_
                                 (cons _%lp-hd3638036485%_
                                       _%body3638236479%_))))
                            (let ((_%body3638336491%_
                                   (reverse _%body3638236479%_)))
                              (_%__kont3987539876%_
                               _%body3638336491%_
                               _%expr3636736462%_
                               _%hd3636836464%_))))))
              (_%loop3637836472%_ _%target3637536466%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3630636389%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3630636389%_))))))))
                        (_%loop3636136422%_ _%target3635836416%_ '() '()))))
                   (_%__match3994939950%_
                    (lambda (_%e3635236396%_
                             _%hd3635336400%_
                             _%tl3635436403%_
                             _%e3635536406%_
                             _%hd3635636410%_
                             _%tl3635736413%_)
                      (if (gx#stx-pair/null? _%hd3635636410%_)
                          (let ((_%__splice3987739878%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3635636410%_
                                  '0)))
                            (let ((_%tl3636036419%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3987739878%_ '1)))
                                  (_%target3635836416%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3987739878%_
                                      '0))))
                              (if (gx#stx-null? _%tl3636036419%_)
                                  (_%__match3995739958%_
                                   _%e3635236396%_
                                   _%hd3635336400%_
                                   _%tl3635436403%_
                                   _%e3635536406%_
                                   _%hd3635636410%_
                                   _%tl3635736413%_
                                   _%__splice3987739878%_
                                   _%target3635836416%_
                                   _%tl3636036419%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3630636389%_)))))
                          (let () (declare (not safe)) (_%g3630636389%_)))))
                   (_%__match3993739938%_
                    (lambda (_%e3632836551%_
                             _%hd3632936555%_
                             _%tl3633036558%_
                             _%e3633136561%_
                             _%hd3633236565%_
                             _%tl3633336568%_
                             _%e3633436571%_
                             _%hd3633536575%_
                             _%tl3633636578%_
                             _%e3633736581%_
                             _%hd3633836585%_
                             _%tl3633936588%_
                             _%__splice3987339874%_
                             _%target3634036591%_
                             _%tl3634236594%_)
                      (letrec ((_%loop3634336597%_
                                (lambda (_%hd3634136601%_ _%body3634736604%_)
                                  (if (gx#stx-pair? _%hd3634136601%_)
                                      (let ((_%e3634436606%_
                                             (gx#syntax-e _%hd3634136601%_)))
                                        (let ((_%lp-tl3634636613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3634436606%_)))
                                              (_%lp-hd3634536610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3634436606%_))))
                                          (_%loop3634336597%_
                                           _%lp-tl3634636613%_
                                           (cons _%lp-hd3634536610%_
                                                 _%body3634736604%_))))
                                      (let ((_%body3634836616%_
                                             (reverse _%body3634736604%_)))
                                        (let ((_%g3632436619%_
                                               _%body3634836616%_)
                                              (_%g3632536621%_
                                               _%hd3633836585%_)
                                              (_%g3632636622%_
                                               _%hd3633536575%_)
                                              (_%g3632736623%_
                                               _%hd3632936555%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3632636622%_)
                                              (_%__kont3987139872%_
                                               _%g3632436619%_
                                               _%g3632536621%_
                                               _%g3632636622%_
                                               _%g3632736623%_)
                                              (_%__match3994939950%_
                                               _%e3632836551%_
                                               _%hd3632936555%_
                                               _%tl3633036558%_
                                               _%e3633136561%_
                                               _%hd3633236565%_
                                               _%tl3633336568%_))))))))
                        (_%loop3634336597%_ _%target3634036591%_ '()))))
                   (_%__match3990339904%_
                    (lambda (_%e3630936661%_
                             _%hd3631036665%_
                             _%tl3631136668%_
                             _%e3631236671%_
                             _%hd3631336675%_
                             _%tl3631436678%_
                             _%__splice3986939870%_
                             _%target3631536681%_
                             _%tl3631736684%_)
                      (letrec ((_%loop3631836687%_
                                (lambda (_%hd3631636691%_ _%body3632236694%_)
                                  (if (gx#stx-pair? _%hd3631636691%_)
                                      (let ((_%e3631936696%_
                                             (gx#syntax-e _%hd3631636691%_)))
                                        (let ((_%lp-tl3632136703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3631936696%_)))
                                              (_%lp-hd3632036700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3631936696%_))))
                                          (_%loop3631836687%_
                                           _%lp-tl3632136703%_
                                           (cons _%lp-hd3632036700%_
                                                 _%body3632236694%_))))
                                      (let ((_%body3632336706%_
                                             (reverse _%body3632236694%_)))
                                        (_%__kont3986739868%_
                                         _%body3632336706%_))))))
                        (_%loop3631836687%_ _%target3631536681%_ '())))))
              (if (gx#stx-pair? _%__stx3986439865%_)
                  (let ((_%e3630936661%_ (gx#syntax-e _%__stx3986439865%_)))
                    (let ((_%tl3631136668%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3630936661%_)))
                          (_%hd3631036665%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3630936661%_))))
                      (if (gx#stx-pair? _%tl3631136668%_)
                          (let ((_%e3631236671%_
                                 (gx#syntax-e _%tl3631136668%_)))
                            (let ((_%tl3631436678%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3631236671%_)))
                                  (_%hd3631336675%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3631236671%_))))
                              (if (gx#stx-null? _%hd3631336675%_)
                                  (if (gx#stx-pair/null? _%tl3631436678%_)
                                      (let ((_%__splice3986939870%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3631436678%_
                                              '0)))
                                        (let ((_%tl3631736684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3986939870%_
                                                  '1)))
                                              (_%target3631536681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3986939870%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3631736684%_)
                                              (_%__match3990339904%_
                                               _%e3630936661%_
                                               _%hd3631036665%_
                                               _%tl3631136668%_
                                               _%e3631236671%_
                                               _%hd3631336675%_
                                               _%tl3631436678%_
                                               _%__splice3986939870%_
                                               _%target3631536681%_
                                               _%tl3631736684%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3631336675%_)
                                                  (let ((_%__splice3987739878%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3631336675%_
                                                          '0)))
                                                    (let ((_%tl3636036419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3987739878%_
                                                              '1)))
                                                          (_%target3635836416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3987739878%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3636036419%_)
                                                          (_%__match3995739958%_
                                                           _%e3630936661%_
                                                           _%hd3631036665%_
                                                           _%tl3631136668%_
                                                           _%e3631236671%_
                                                           _%hd3631336675%_
                                                           _%tl3631436678%_
                                                           _%__splice3987739878%_
                                                           _%target3635836416%_
                                                           _%tl3636036419%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3630636389%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3630636389%_))))))
                                      (if (gx#stx-pair/null? _%hd3631336675%_)
                                          (let ((_%__splice3987739878%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3631336675%_
                                                  '0)))
                                            (let ((_%tl3636036419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3987739878%_
                                                      '1)))
                                                  (_%target3635836416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3987739878%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3636036419%_)
                                                  (_%__match3995739958%_
                                                   _%e3630936661%_
                                                   _%hd3631036665%_
                                                   _%tl3631136668%_
                                                   _%e3631236671%_
                                                   _%hd3631336675%_
                                                   _%tl3631436678%_
                                                   _%__splice3987739878%_
                                                   _%target3635836416%_
                                                   _%tl3636036419%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3630636389%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3630636389%_))))
                                  (if (gx#stx-pair? _%hd3631336675%_)
                                      (let ((_%e3633436571%_
                                             (gx#syntax-e _%hd3631336675%_)))
                                        (let ((_%tl3633636578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3633436571%_)))
                                              (_%hd3633536575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3633436571%_))))
                                          (if (gx#stx-pair? _%tl3633636578%_)
                                              (let ((_%e3633736581%_
                                                     (gx#syntax-e
                                                      _%tl3633636578%_)))
                                                (let ((_%tl3633936588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3633736581%_)))
                                                      (_%hd3633836585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3633736581%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3633936588%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3631436678%_)
                                                          (let ((_%__splice3987339874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3631436678%_ '0)))
                    (let ((_%tl3634236594%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3987339874%_ '1)))
                          (_%target3634036591%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3987339874%_ '0))))
                      (if (gx#stx-null? _%tl3634236594%_)
                          (_%__match3993739938%_
                           _%e3630936661%_
                           _%hd3631036665%_
                           _%tl3631136668%_
                           _%e3631236671%_
                           _%hd3631336675%_
                           _%tl3631436678%_
                           _%e3633436571%_
                           _%hd3633536575%_
                           _%tl3633636578%_
                           _%e3633736581%_
                           _%hd3633836585%_
                           _%tl3633936588%_
                           _%__splice3987339874%_
                           _%target3634036591%_
                           _%tl3634236594%_)
                          (if (gx#stx-pair/null? _%hd3631336675%_)
                              (let ((_%__splice3987739878%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3631336675%_
                                      '0)))
                                (let ((_%tl3636036419%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3987739878%_
                                          '1)))
                                      (_%target3635836416%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3987739878%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3636036419%_)
                                      (_%__match3995739958%_
                                       _%e3630936661%_
                                       _%hd3631036665%_
                                       _%tl3631136668%_
                                       _%e3631236671%_
                                       _%hd3631336675%_
                                       _%tl3631436678%_
                                       _%__splice3987739878%_
                                       _%target3635836416%_
                                       _%tl3636036419%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3630636389%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3630636389%_))))))
                  (if (gx#stx-pair/null? _%hd3631336675%_)
                      (let ((_%__splice3987739878%_
                             (gx#syntax-split-splice->vector
                              _%hd3631336675%_
                              '0)))
                        (let ((_%tl3636036419%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3987739878%_ '1)))
                              (_%target3635836416%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3987739878%_ '0))))
                          (if (gx#stx-null? _%tl3636036419%_)
                              (_%__match3995739958%_
                               _%e3630936661%_
                               _%hd3631036665%_
                               _%tl3631136668%_
                               _%e3631236671%_
                               _%hd3631336675%_
                               _%tl3631436678%_
                               _%__splice3987739878%_
                               _%target3635836416%_
                               _%tl3636036419%_)
                              (let ()
                                (declare (not safe))
                                (_%g3630636389%_)))))
                      (let () (declare (not safe)) (_%g3630636389%_))))
              (if (gx#stx-pair/null? _%hd3631336675%_)
                  (let ((_%__splice3987739878%_
                         (gx#syntax-split-splice->vector _%hd3631336675%_ '0)))
                    (let ((_%tl3636036419%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3987739878%_ '1)))
                          (_%target3635836416%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3987739878%_ '0))))
                      (if (gx#stx-null? _%tl3636036419%_)
                          (_%__match3995739958%_
                           _%e3630936661%_
                           _%hd3631036665%_
                           _%tl3631136668%_
                           _%e3631236671%_
                           _%hd3631336675%_
                           _%tl3631436678%_
                           _%__splice3987739878%_
                           _%target3635836416%_
                           _%tl3636036419%_)
                          (let () (declare (not safe)) (_%g3630636389%_)))))
                  (let () (declare (not safe)) (_%g3630636389%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3631336675%_)
                                                  (let ((_%__splice3987739878%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3631336675%_
                                                          '0)))
                                                    (let ((_%tl3636036419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3987739878%_
                                                              '1)))
                                                          (_%target3635836416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3987739878%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3636036419%_)
                                                          (_%__match3995739958%_
                                                           _%e3630936661%_
                                                           _%hd3631036665%_
                                                           _%tl3631136668%_
                                                           _%e3631236671%_
                                                           _%hd3631336675%_
                                                           _%tl3631436678%_
                                                           _%__splice3987739878%_
                                                           _%target3635836416%_
                                                           _%tl3636036419%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3630636389%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3630636389%_))))))
                                      (if (gx#stx-pair/null? _%hd3631336675%_)
                                          (let ((_%__splice3987739878%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3631336675%_
                                                  '0)))
                                            (let ((_%tl3636036419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3987739878%_
                                                      '1)))
                                                  (_%target3635836416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3987739878%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3636036419%_)
                                                  (_%__match3995739958%_
                                                   _%e3630936661%_
                                                   _%hd3631036665%_
                                                   _%tl3631136668%_
                                                   _%e3631236671%_
                                                   _%hd3631336675%_
                                                   _%tl3631436678%_
                                                   _%__splice3987739878%_
                                                   _%target3635836416%_
                                                   _%tl3636036419%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3630636389%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3630636389%_)))))))
                          (let () (declare (not safe)) (_%g3630636389%_)))))
                  (let () (declare (not safe)) (_%g3630636389%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36742%_)
        (let* ((_%__stx3996039961%_ _%$stx36742%_)
               (_%g3674736799%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3996039961%_))))
          (let ((_%__kont3996339964%_
                 (lambda (_%g3674936965%_
                          _%g3675036967%_
                          _%g3675136968%_
                          _%g3675236969%_
                          _%g3675336970%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3675236969%_
                                           (cons _%g3675136968%_ '()))
                                     '())
                               (cons (cons _%g3675336970%_
                                           (cons _%g3675036967%_
                                                 (foldr (lambda (_%g3699536998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3699637001%_)
                  (cons _%g3699536998%_ _%g3699637001%_))
                '()
                _%g3674936965%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3996739968%_
                 (lambda (_%g3677836854%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3687136874%_ _%g3687236877%_)
                                        (cons _%g3687136874%_ _%g3687236877%_))
                                      '()
                                      _%g3677836854%_))))))
            (let* ((_%__match4003340034%_
                    (lambda (_%e3677936806%_
                             _%hd3678036810%_
                             _%tl3678136813%_
                             _%e3678236816%_
                             _%hd3678336820%_
                             _%tl3678436823%_
                             _%__splice3996939970%_
                             _%target3678536826%_
                             _%tl3678736829%_)
                      (letrec ((_%loop3678836832%_
                                (lambda (_%hd3678636836%_ _%body3679236839%_)
                                  (if (gx#stx-pair? _%hd3678636836%_)
                                      (let ((_%e3678936841%_
                                             (gx#syntax-e _%hd3678636836%_)))
                                        (let ((_%lp-tl3679136848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3678936841%_)))
                                              (_%lp-hd3679036845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3678936841%_))))
                                          (_%loop3678836832%_
                                           _%lp-tl3679136848%_
                                           (cons _%lp-hd3679036845%_
                                                 _%body3679236839%_))))
                                      (let ((_%body3679336851%_
                                             (reverse _%body3679236839%_)))
                                        (_%__kont3996739968%_
                                         _%body3679336851%_))))))
                        (_%loop3678836832%_ _%target3678536826%_ '()))))
                   (_%__match4001140012%_
                    (lambda (_%e3675436887%_
                             _%hd3675536891%_
                             _%tl3675636894%_
                             _%e3675736897%_
                             _%hd3675836901%_
                             _%tl3675936904%_
                             _%e3676036907%_
                             _%hd3676136911%_
                             _%tl3676236914%_
                             _%e3676336917%_
                             _%hd3676436921%_
                             _%tl3676536924%_
                             _%e3676636927%_
                             _%hd3676736931%_
                             _%tl3676836934%_
                             _%__splice3996539966%_
                             _%target3676936937%_
                             _%tl3677136940%_)
                      (letrec ((_%loop3677236943%_
                                (lambda (_%hd3677036947%_ _%body3677636950%_)
                                  (if (gx#stx-pair? _%hd3677036947%_)
                                      (let ((_%e3677336952%_
                                             (gx#syntax-e _%hd3677036947%_)))
                                        (let ((_%lp-tl3677536959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3677336952%_)))
                                              (_%lp-hd3677436956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3677336952%_))))
                                          (_%loop3677236943%_
                                           _%lp-tl3677536959%_
                                           (cons _%lp-hd3677436956%_
                                                 _%body3677636950%_))))
                                      (let ((_%body3677736962%_
                                             (reverse _%body3677636950%_)))
                                        (_%__kont3996339964%_
                                         _%body3677736962%_
                                         _%tl3676236914%_
                                         _%hd3676736931%_
                                         _%hd3676436921%_
                                         _%hd3675536891%_))))))
                        (_%loop3677236943%_ _%target3676936937%_ '())))))
              (if (gx#stx-pair? _%__stx3996039961%_)
                  (let ((_%e3675436887%_ (gx#syntax-e _%__stx3996039961%_)))
                    (let ((_%tl3675636894%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3675436887%_)))
                          (_%hd3675536891%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3675436887%_))))
                      (if (gx#stx-pair? _%tl3675636894%_)
                          (let ((_%e3675736897%_
                                 (gx#syntax-e _%tl3675636894%_)))
                            (let ((_%tl3675936904%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3675736897%_)))
                                  (_%hd3675836901%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3675736897%_))))
                              (if (gx#stx-pair? _%hd3675836901%_)
                                  (let ((_%e3676036907%_
                                         (gx#syntax-e _%hd3675836901%_)))
                                    (let ((_%tl3676236914%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3676036907%_)))
                                          (_%hd3676136911%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3676036907%_))))
                                      (if (gx#stx-pair? _%hd3676136911%_)
                                          (let ((_%e3676336917%_
                                                 (gx#syntax-e
                                                  _%hd3676136911%_)))
                                            (let ((_%tl3676536924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3676336917%_)))
                                                  (_%hd3676436921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3676336917%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3676536924%_)
                                                  (let ((_%e3676636927%_
                                                         (gx#syntax-e
                                                          _%tl3676536924%_)))
                                                    (let ((_%tl3676836934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3676636927%_)))
                                                          (_%hd3676736931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3676636927%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3676836934%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3675936904%_)
                                                              (let ((_%__splice3996539966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3675936904%_
                              '0)))
                        (let ((_%tl3677136940%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3996539966%_ '1)))
                              (_%target3676936937%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3996539966%_ '0))))
                          (if (gx#stx-null? _%tl3677136940%_)
                              (_%__match4001140012%_
                               _%e3675436887%_
                               _%hd3675536891%_
                               _%tl3675636894%_
                               _%e3675736897%_
                               _%hd3675836901%_
                               _%tl3675936904%_
                               _%e3676036907%_
                               _%hd3676136911%_
                               _%tl3676236914%_
                               _%e3676336917%_
                               _%hd3676436921%_
                               _%tl3676536924%_
                               _%e3676636927%_
                               _%hd3676736931%_
                               _%tl3676836934%_
                               _%__splice3996539966%_
                               _%target3676936937%_
                               _%tl3677136940%_)
                              (let ()
                                (declare (not safe))
                                (_%g3674736799%_)))))
                      (let () (declare (not safe)) (_%g3674736799%_)))
                  (let () (declare (not safe)) (_%g3674736799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3674736799%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3674736799%_)))))
                                  (if (gx#stx-null? _%hd3675836901%_)
                                      (if (gx#stx-pair/null? _%tl3675936904%_)
                                          (let ((_%__splice3996939970%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3675936904%_
                                                  '0)))
                                            (let ((_%tl3678736829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3996939970%_
                                                      '1)))
                                                  (_%target3678536826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3996939970%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3678736829%_)
                                                  (_%__match4003340034%_
                                                   _%e3675436887%_
                                                   _%hd3675536891%_
                                                   _%tl3675636894%_
                                                   _%e3675736897%_
                                                   _%hd3675836901%_
                                                   _%tl3675936904%_
                                                   _%__splice3996939970%_
                                                   _%target3678536826%_
                                                   _%tl3678736829%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3674736799%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3674736799%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3674736799%_))))))
                          (let () (declare (not safe)) (_%g3674736799%_)))))
                  (let () (declare (not safe)) (_%g3674736799%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx37010%_)
        (let* ((_%__stx4003640037%_ _%$stx37010%_)
               (_%g3702137167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4003640037%_))))
          (let ((_%__kont4003940040%_
                 (lambda (_%g3702337767%_ _%g3702437769%_ _%g3702537770%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3779137794%_ _%g3779237797%_)
                                  (cons (cons _%g3702537770%_
                                              (cons _%g3779137794%_
                                                    (cons _%g3702337767%_
                                                          '())))
                                        _%g3779237797%_))
                                '()
                                _%g3702437769%_))))
                (_%__kont4004340044%_
                 (lambda (_%g3704737659%_ _%g3704837661%_ _%g3704937662%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3768337686%_ _%g3768437689%_)
                                  (cons (cons _%g3704937662%_
                                              (cons _%g3768337686%_
                                                    (cons _%g3704737659%_
                                                          '())))
                                        _%g3768437689%_))
                                '()
                                _%g3704837661%_))))
                (_%__kont4004740048%_
                 (lambda (_%g3707137561%_ _%g3707237563%_ _%g3707337564%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3707337564%_
                                     (cons _%g3707237563%_
                                           (cons _%g3707137561%_ '())))
                               '()))))
                (_%__kont4004940050%_
                 (lambda (_%g3708937487%_ _%g3709037489%_)
                   (cons _%g3709037489%_ (cons _%g3708937487%_ '()))))
                (_%__kont4005140052%_
                 (lambda (_%g3710037435%_ _%g3710137437%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3710137437%_
                                           (cons _%g3710037435%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont4005340054%_
                 (lambda (_%g3710837387%_ _%g3710937389%_ _%g3711037390%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3711037390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3710937389%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3710837387%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4005540056%_
                 (lambda (_%g3712337318%_ _%g3712437320%_ _%g3712537321%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3712537321%_
                                                       (cons _%g3712437320%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3712337318%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont4005740058%_
                 (lambda (_%g3713937238%_
                          _%g3714037240%_
                          _%g3714137241%_
                          _%g3714237242%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3714237242%_
                                                       (cons _%g3714137241%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3713937238%_
                                                             (cons (cons _%g3714037240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match4020940210%_
                    (lambda (_%e3711137347%_
                             _%hd3711237351%_
                             _%tl3711337354%_
                             _%e3711437357%_
                             _%hd3711537361%_
                             _%tl3711637364%_
                             _%e3711737367%_
                             _%hd3711837371%_
                             _%tl3711937374%_)
                      (if (gx#identifier? _%hd3711837371%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40411_|
                               _%hd3711837371%_)
                              (if (gx#stx-pair? _%tl3711937374%_)
                                  (let ((_%e3712037377%_
                                         (gx#syntax-e _%tl3711937374%_)))
                                    (let ((_%tl3712237384%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3712037377%_)))
                                          (_%hd3712137381%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3712037377%_))))
                                      (if (gx#stx-null? _%tl3712237384%_)
                                          (_%__kont4005340054%_
                                           _%hd3712137381%_
                                           _%hd3711537361%_
                                           _%hd3711237351%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3702137167%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3702137167%_)))
                              (let () (declare (not safe)) (_%g3702137167%_)))
                          (if (gx#stx-datum? _%hd3711837371%_)
                              (let ((_%e3713537304%_
                                     (gx#stx-e _%hd3711837371%_)))
                                (if (equal? _%e3713537304%_ '::)
                                    (if (gx#stx-pair? _%tl3711937374%_)
                                        (let ((_%e3713637308%_
                                               (gx#syntax-e _%tl3711937374%_)))
                                          (let ((_%tl3713837315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3713637308%_)))
                                                (_%hd3713737312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3713637308%_))))
                                            (if (gx#stx-null? _%tl3713837315%_)
                                                (_%__kont4005540056%_
                                                 _%hd3713737312%_
                                                 _%hd3711537361%_
                                                 _%hd3711237351%_)
                                                (if (gx#stx-pair?
                                                     _%tl3713837315%_)
                                                    (let ((_%e3715637218%_
                                                           (gx#syntax-e
                                                            _%tl3713837315%_)))
                                                      (let ((_%tl3715837225%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3715637218%_)))
                    (_%hd3715737222%_
                     (let () (declare (not safe)) (##car _%e3715637218%_))))
                (if (gx#identifier? _%hd3715737222%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40412_|
                         _%hd3715737222%_)
                        (if (gx#stx-pair? _%tl3715837225%_)
                            (let ((_%e3715937228%_
                                   (gx#syntax-e _%tl3715837225%_)))
                              (let ((_%tl3716137235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3715937228%_)))
                                    (_%hd3716037232%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3715937228%_))))
                                (if (gx#stx-null? _%tl3716137235%_)
                                    (_%__kont4005740058%_
                                     _%hd3716037232%_
                                     _%hd3713737312%_
                                     _%hd3711537361%_
                                     _%hd3711237351%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_)))))
                            (let () (declare (not safe)) (_%g3702137167%_)))
                        (let () (declare (not safe)) (_%g3702137167%_)))
                    (let () (declare (not safe)) (_%g3702137167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3702137167%_))))))
                   (_%__match4018940190%_
                    (lambda (_%e3710237415%_
                             _%hd3710337419%_
                             _%tl3710437422%_
                             _%e3710537425%_
                             _%hd3710637429%_
                             _%tl3710737432%_)
                      (if (gx#stx-null? _%tl3710737432%_)
                          (_%__kont4005140052%_
                           _%hd3710637429%_
                           _%hd3710337419%_)
                          (if (gx#stx-pair? _%tl3710737432%_)
                              (let ((_%e3711737367%_
                                     (gx#syntax-e _%tl3710737432%_)))
                                (let ((_%tl3711937374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3711737367%_)))
                                      (_%hd3711837371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3711737367%_))))
                                  (if (gx#identifier? _%hd3711837371%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40411_|
                                           _%hd3711837371%_)
                                          (if (gx#stx-pair? _%tl3711937374%_)
                                              (let ((_%e3712037377%_
                                                     (gx#syntax-e
                                                      _%tl3711937374%_)))
                                                (let ((_%tl3712237384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3712037377%_)))
                                                      (_%hd3712137381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3712037377%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3712237384%_)
                                                      (_%__kont4005340054%_
                                                       _%hd3712137381%_
                                                       _%hd3710637429%_
                                                       _%hd3710337419%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3702137167%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3702137167%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3702137167%_)))
                                      (if (gx#stx-datum? _%hd3711837371%_)
                                          (let ((_%e3713537304%_
                                                 (gx#stx-e _%hd3711837371%_)))
                                            (if (equal? _%e3713537304%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3711937374%_)
                                                    (let ((_%e3713637308%_
                                                           (gx#syntax-e
                                                            _%tl3711937374%_)))
                                                      (let ((_%tl3713837315%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3713637308%_)))
                    (_%hd3713737312%_
                     (let () (declare (not safe)) (##car _%e3713637308%_))))
                (if (gx#stx-null? _%tl3713837315%_)
                    (_%__kont4005540056%_
                     _%hd3713737312%_
                     _%hd3710637429%_
                     _%hd3710337419%_)
                    (if (gx#stx-pair? _%tl3713837315%_)
                        (let ((_%e3715637218%_ (gx#syntax-e _%tl3713837315%_)))
                          (let ((_%tl3715837225%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3715637218%_)))
                                (_%hd3715737222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3715637218%_))))
                            (if (gx#identifier? _%hd3715737222%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40412_|
                                     _%hd3715737222%_)
                                    (if (gx#stx-pair? _%tl3715837225%_)
                                        (let ((_%e3715937228%_
                                               (gx#syntax-e _%tl3715837225%_)))
                                          (let ((_%tl3716137235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3715937228%_)))
                                                (_%hd3716037232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3715937228%_))))
                                            (if (gx#stx-null? _%tl3716137235%_)
                                                (_%__kont4005740058%_
                                                 _%hd3716037232%_
                                                 _%hd3713737312%_
                                                 _%hd3710637429%_
                                                 _%hd3710337419%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3702137167%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3702137167%_)))))
                        (let () (declare (not safe)) (_%g3702137167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3702137167%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3702137167%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3702137167%_))))))
                   (_%__match4011940120%_
                    (lambda (_%e3705037591%_
                             _%hd3705137595%_
                             _%tl3705237598%_
                             _%e3705337601%_
                             _%hd3705437605%_
                             _%tl3705537608%_
                             _%e3705637611%_
                             _%hd3705737615%_
                             _%tl3705837618%_
                             _%__splice4004540046%_
                             _%target3705937621%_
                             _%tl3706137624%_)
                      (letrec ((_%loop3706237627%_
                                (lambda (_%hd3706037631%_ _%pred3706637634%_)
                                  (if (gx#stx-pair? _%hd3706037631%_)
                                      (let ((_%e3706337636%_
                                             (gx#syntax-e _%hd3706037631%_)))
                                        (let ((_%lp-tl3706537643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3706337636%_)))
                                              (_%lp-hd3706437640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3706337636%_))))
                                          (_%loop3706237627%_
                                           _%lp-tl3706537643%_
                                           (cons _%lp-hd3706437640%_
                                                 _%pred3706637634%_))))
                                      (let ((_%pred3706737646%_
                                             (reverse _%pred3706637634%_)))
                                        (if (gx#stx-pair? _%tl3705537608%_)
                                            (let ((_%e3706837649%_
                                                   (gx#syntax-e
                                                    _%tl3705537608%_)))
                                              (let ((_%tl3707037656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3706837649%_)))
                                                    (_%hd3706937653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3706837649%_))))
                                                (if (gx#stx-null?
                                                     _%tl3707037656%_)
                                                    (_%__kont4004340044%_
                                                     _%hd3706937653%_
                                                     _%pred3706737646%_
                                                     _%hd3705137595%_)
                                                    (_%__match4020940210%_
                                                     _%e3705037591%_
                                                     _%hd3705137595%_
                                                     _%tl3705237598%_
                                                     _%e3705337601%_
                                                     _%hd3705437605%_
                                                     _%tl3705537608%_
                                                     _%e3706837649%_
                                                     _%hd3706937653%_
                                                     _%tl3707037656%_))))
                                            (_%__match4018940190%_
                                             _%e3705037591%_
                                             _%hd3705137595%_
                                             _%tl3705237598%_
                                             _%e3705337601%_
                                             _%hd3705437605%_
                                             _%tl3705537608%_)))))))
                        (_%loop3706237627%_ _%target3705937621%_ '()))))
                   (_%__match4008940090%_
                    (lambda (_%e3702637699%_
                             _%hd3702737703%_
                             _%tl3702837706%_
                             _%e3702937709%_
                             _%hd3703037713%_
                             _%tl3703137716%_
                             _%e3703237719%_
                             _%hd3703337723%_
                             _%tl3703437726%_
                             _%__splice4004140042%_
                             _%target3703537729%_
                             _%tl3703737732%_)
                      (letrec ((_%loop3703837735%_
                                (lambda (_%hd3703637739%_ _%pred3704237742%_)
                                  (if (gx#stx-pair? _%hd3703637739%_)
                                      (let ((_%e3703937744%_
                                             (gx#syntax-e _%hd3703637739%_)))
                                        (let ((_%lp-tl3704137751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3703937744%_)))
                                              (_%lp-hd3704037748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3703937744%_))))
                                          (_%loop3703837735%_
                                           _%lp-tl3704137751%_
                                           (cons _%lp-hd3704037748%_
                                                 _%pred3704237742%_))))
                                      (let ((_%pred3704337754%_
                                             (reverse _%pred3704237742%_)))
                                        (if (gx#stx-pair? _%tl3703137716%_)
                                            (let ((_%e3704437757%_
                                                   (gx#syntax-e
                                                    _%tl3703137716%_)))
                                              (let ((_%tl3704637764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3704437757%_)))
                                                    (_%hd3704537761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3704437757%_))))
                                                (if (gx#stx-null?
                                                     _%tl3704637764%_)
                                                    (_%__kont4003940040%_
                                                     _%hd3704537761%_
                                                     _%pred3704337754%_
                                                     _%hd3702737703%_)
                                                    (_%__match4020940210%_
                                                     _%e3702637699%_
                                                     _%hd3702737703%_
                                                     _%tl3702837706%_
                                                     _%e3702937709%_
                                                     _%hd3703037713%_
                                                     _%tl3703137716%_
                                                     _%e3704437757%_
                                                     _%hd3704537761%_
                                                     _%tl3704637764%_))))
                                            (_%__match4018940190%_
                                             _%e3702637699%_
                                             _%hd3702737703%_
                                             _%tl3702837706%_
                                             _%e3702937709%_
                                             _%hd3703037713%_
                                             _%tl3703137716%_)))))))
                        (_%loop3703837735%_ _%target3703537729%_ '())))))
              (if (gx#stx-pair? _%__stx4003640037%_)
                  (let ((_%e3702637699%_ (gx#syntax-e _%__stx4003640037%_)))
                    (let ((_%tl3702837706%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3702637699%_)))
                          (_%hd3702737703%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3702637699%_))))
                      (if (gx#stx-pair? _%tl3702837706%_)
                          (let ((_%e3702937709%_
                                 (gx#syntax-e _%tl3702837706%_)))
                            (let ((_%tl3703137716%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3702937709%_)))
                                  (_%hd3703037713%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3702937709%_))))
                              (if (gx#stx-pair? _%hd3703037713%_)
                                  (let ((_%e3703237719%_
                                         (gx#syntax-e _%hd3703037713%_)))
                                    (let ((_%tl3703437726%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3703237719%_)))
                                          (_%hd3703337723%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3703237719%_))))
                                      (if (gx#identifier? _%hd3703337723%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40413_|
                                               _%hd3703337723%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3703437726%_)
                                                  (let ((_%__splice4004140042%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3703437726%_
                                                          '0)))
                                                    (let ((_%tl3703737732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4004140042%_
                                                              '1)))
                                                          (_%target3703537729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4004140042%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3703737732%_)
                                                          (_%__match4008940090%_
                                                           _%e3702637699%_
                                                           _%hd3702737703%_
                                                           _%tl3702837706%_
                                                           _%e3702937709%_
                                                           _%hd3703037713%_
                                                           _%tl3703137716%_
                                                           _%e3703237719%_
                                                           _%hd3703337723%_
                                                           _%tl3703437726%_
                                                           _%__splice4004140042%_
                                                           _%target3703537729%_
                                                           _%tl3703737732%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3703137716%_)
                                                              (let ((_%e3709737477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3703137716%_)))
                        (let ((_%tl3709937484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3709737477%_)))
                              (_%hd3709837481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3709737477%_))))
                          (if (gx#stx-null? _%tl3709937484%_)
                              (_%__kont4004940050%_
                               _%hd3709837481%_
                               _%hd3703037713%_)
                              (if (gx#identifier? _%hd3709837481%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40411_|
                                       _%hd3709837481%_)
                                      (if (gx#stx-pair? _%tl3709937484%_)
                                          (let ((_%e3712037377%_
                                                 (gx#syntax-e
                                                  _%tl3709937484%_)))
                                            (let ((_%tl3712237384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3712037377%_)))
                                                  (_%hd3712137381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3712037377%_))))
                                              (if (gx#stx-null?
                                                   _%tl3712237384%_)
                                                  (_%__kont4005340054%_
                                                   _%hd3712137381%_
                                                   _%hd3703037713%_
                                                   _%hd3702737703%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3702137167%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3702137167%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3702137167%_)))
                                  (if (gx#stx-datum? _%hd3709837481%_)
                                      (let ((_%e3713537304%_
                                             (gx#stx-e _%hd3709837481%_)))
                                        (if (equal? _%e3713537304%_ '::)
                                            (if (gx#stx-pair? _%tl3709937484%_)
                                                (let ((_%e3713637308%_
                                                       (gx#syntax-e
                                                        _%tl3709937484%_)))
                                                  (let ((_%tl3713837315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3713637308%_)))
                                                        (_%hd3713737312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3713637308%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3713837315%_)
                                                        (_%__kont4005540056%_
                                                         _%hd3713737312%_
                                                         _%hd3703037713%_
                                                         _%hd3702737703%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3713837315%_)
                                                            (let ((_%e3715637218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3713837315%_)))
                      (let ((_%tl3715837225%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3715637218%_)))
                            (_%hd3715737222%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3715637218%_))))
                        (if (gx#identifier? _%hd3715737222%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40412_|
                                 _%hd3715737222%_)
                                (if (gx#stx-pair? _%tl3715837225%_)
                                    (let ((_%e3715937228%_
                                           (gx#syntax-e _%tl3715837225%_)))
                                      (let ((_%tl3716137235%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3715937228%_)))
                                            (_%hd3716037232%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3715937228%_))))
                                        (if (gx#stx-null? _%tl3716137235%_)
                                            (_%__kont4005740058%_
                                             _%hd3716037232%_
                                             _%hd3713737312%_
                                             _%hd3703037713%_
                                             _%hd3702737703%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3702137167%_)))
                            (let () (declare (not safe)) (_%g3702137167%_)))))
                    (let () (declare (not safe)) (_%g3702137167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3702137167%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3702137167%_)))))))
                      (if (gx#stx-null? _%tl3703137716%_)
                          (_%__kont4005140052%_
                           _%hd3703037713%_
                           _%hd3702737703%_)
                          (let () (declare (not safe)) (_%g3702137167%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3703137716%_)
                                                      (let ((_%e3709737477%_
                                                             (gx#syntax-e
                                                              _%tl3703137716%_)))
                                                        (let ((_%tl3709937484%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3709737477%_)))
                      (_%hd3709837481%_
                       (let () (declare (not safe)) (##car _%e3709737477%_))))
                  (if (gx#stx-null? _%tl3709937484%_)
                      (_%__kont4004940050%_ _%hd3709837481%_ _%hd3703037713%_)
                      (if (gx#identifier? _%hd3709837481%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40411_|
                               _%hd3709837481%_)
                              (if (gx#stx-pair? _%tl3709937484%_)
                                  (let ((_%e3712037377%_
                                         (gx#syntax-e _%tl3709937484%_)))
                                    (let ((_%tl3712237384%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3712037377%_)))
                                          (_%hd3712137381%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3712037377%_))))
                                      (if (gx#stx-null? _%tl3712237384%_)
                                          (_%__kont4005340054%_
                                           _%hd3712137381%_
                                           _%hd3703037713%_
                                           _%hd3702737703%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3702137167%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3702137167%_)))
                              (let () (declare (not safe)) (_%g3702137167%_)))
                          (if (gx#stx-datum? _%hd3709837481%_)
                              (let ((_%e3713537304%_
                                     (gx#stx-e _%hd3709837481%_)))
                                (if (equal? _%e3713537304%_ '::)
                                    (if (gx#stx-pair? _%tl3709937484%_)
                                        (let ((_%e3713637308%_
                                               (gx#syntax-e _%tl3709937484%_)))
                                          (let ((_%tl3713837315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3713637308%_)))
                                                (_%hd3713737312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3713637308%_))))
                                            (if (gx#stx-null? _%tl3713837315%_)
                                                (_%__kont4005540056%_
                                                 _%hd3713737312%_
                                                 _%hd3703037713%_
                                                 _%hd3702737703%_)
                                                (if (gx#stx-pair?
                                                     _%tl3713837315%_)
                                                    (let ((_%e3715637218%_
                                                           (gx#syntax-e
                                                            _%tl3713837315%_)))
                                                      (let ((_%tl3715837225%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3715637218%_)))
                    (_%hd3715737222%_
                     (let () (declare (not safe)) (##car _%e3715637218%_))))
                (if (gx#identifier? _%hd3715737222%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40412_|
                         _%hd3715737222%_)
                        (if (gx#stx-pair? _%tl3715837225%_)
                            (let ((_%e3715937228%_
                                   (gx#syntax-e _%tl3715837225%_)))
                              (let ((_%tl3716137235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3715937228%_)))
                                    (_%hd3716037232%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3715937228%_))))
                                (if (gx#stx-null? _%tl3716137235%_)
                                    (_%__kont4005740058%_
                                     _%hd3716037232%_
                                     _%hd3713737312%_
                                     _%hd3703037713%_
                                     _%hd3702737703%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_)))))
                            (let () (declare (not safe)) (_%g3702137167%_)))
                        (let () (declare (not safe)) (_%g3702137167%_)))
                    (let () (declare (not safe)) (_%g3702137167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3702137167%_)))))))
              (if (gx#stx-null? _%tl3703137716%_)
                  (_%__kont4005140052%_ _%hd3703037713%_ _%hd3702737703%_)
                  (let () (declare (not safe)) (_%g3702137167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40414_|
                                                   _%hd3703337723%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3703437726%_)
                                                      (let ((_%__splice4004540046%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3703437726%_
                                                              '0)))
                                                        (let ((_%tl3706137624%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4004540046%_ '1)))
                      (_%target3705937621%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4004540046%_ '0))))
                  (if (gx#stx-null? _%tl3706137624%_)
                      (_%__match4011940120%_
                       _%e3702637699%_
                       _%hd3702737703%_
                       _%tl3702837706%_
                       _%e3702937709%_
                       _%hd3703037713%_
                       _%tl3703137716%_
                       _%e3703237719%_
                       _%hd3703337723%_
                       _%tl3703437726%_
                       _%__splice4004540046%_
                       _%target3705937621%_
                       _%tl3706137624%_)
                      (if (gx#stx-pair? _%tl3703137716%_)
                          (let ((_%e3709737477%_
                                 (gx#syntax-e _%tl3703137716%_)))
                            (let ((_%tl3709937484%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3709737477%_)))
                                  (_%hd3709837481%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3709737477%_))))
                              (if (gx#stx-null? _%tl3709937484%_)
                                  (_%__kont4004940050%_
                                   _%hd3709837481%_
                                   _%hd3703037713%_)
                                  (if (gx#identifier? _%hd3709837481%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40411_|
                                           _%hd3709837481%_)
                                          (if (gx#stx-pair? _%tl3709937484%_)
                                              (let ((_%e3712037377%_
                                                     (gx#syntax-e
                                                      _%tl3709937484%_)))
                                                (let ((_%tl3712237384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3712037377%_)))
                                                      (_%hd3712137381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3712037377%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3712237384%_)
                                                      (_%__kont4005340054%_
                                                       _%hd3712137381%_
                                                       _%hd3703037713%_
                                                       _%hd3702737703%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3702137167%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3702137167%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3702137167%_)))
                                      (if (gx#stx-datum? _%hd3709837481%_)
                                          (let ((_%e3713537304%_
                                                 (gx#stx-e _%hd3709837481%_)))
                                            (if (equal? _%e3713537304%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3709937484%_)
                                                    (let ((_%e3713637308%_
                                                           (gx#syntax-e
                                                            _%tl3709937484%_)))
                                                      (let ((_%tl3713837315%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3713637308%_)))
                    (_%hd3713737312%_
                     (let () (declare (not safe)) (##car _%e3713637308%_))))
                (if (gx#stx-null? _%tl3713837315%_)
                    (_%__kont4005540056%_
                     _%hd3713737312%_
                     _%hd3703037713%_
                     _%hd3702737703%_)
                    (if (gx#stx-pair? _%tl3713837315%_)
                        (let ((_%e3715637218%_ (gx#syntax-e _%tl3713837315%_)))
                          (let ((_%tl3715837225%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3715637218%_)))
                                (_%hd3715737222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3715637218%_))))
                            (if (gx#identifier? _%hd3715737222%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40412_|
                                     _%hd3715737222%_)
                                    (if (gx#stx-pair? _%tl3715837225%_)
                                        (let ((_%e3715937228%_
                                               (gx#syntax-e _%tl3715837225%_)))
                                          (let ((_%tl3716137235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3715937228%_)))
                                                (_%hd3716037232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3715937228%_))))
                                            (if (gx#stx-null? _%tl3716137235%_)
                                                (_%__kont4005740058%_
                                                 _%hd3716037232%_
                                                 _%hd3713737312%_
                                                 _%hd3703037713%_
                                                 _%hd3702737703%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3702137167%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3702137167%_)))))
                        (let () (declare (not safe)) (_%g3702137167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3702137167%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3702137167%_)))))))
                          (if (gx#stx-null? _%tl3703137716%_)
                              (_%__kont4005140052%_
                               _%hd3703037713%_
                               _%hd3702737703%_)
                              (let ()
                                (declare (not safe))
                                (_%g3702137167%_)))))))
              (if (gx#stx-pair? _%tl3703137716%_)
                  (let ((_%e3709737477%_ (gx#syntax-e _%tl3703137716%_)))
                    (let ((_%tl3709937484%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3709737477%_)))
                          (_%hd3709837481%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3709737477%_))))
                      (if (gx#stx-null? _%tl3709937484%_)
                          (_%__kont4004940050%_
                           _%hd3709837481%_
                           _%hd3703037713%_)
                          (if (gx#identifier? _%hd3709837481%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40411_|
                                   _%hd3709837481%_)
                                  (if (gx#stx-pair? _%tl3709937484%_)
                                      (let ((_%e3712037377%_
                                             (gx#syntax-e _%tl3709937484%_)))
                                        (let ((_%tl3712237384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3712037377%_)))
                                              (_%hd3712137381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3712037377%_))))
                                          (if (gx#stx-null? _%tl3712237384%_)
                                              (_%__kont4005340054%_
                                               _%hd3712137381%_
                                               _%hd3703037713%_
                                               _%hd3702737703%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3702137167%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3702137167%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3702137167%_)))
                              (if (gx#stx-datum? _%hd3709837481%_)
                                  (let ((_%e3713537304%_
                                         (gx#stx-e _%hd3709837481%_)))
                                    (if (equal? _%e3713537304%_ '::)
                                        (if (gx#stx-pair? _%tl3709937484%_)
                                            (let ((_%e3713637308%_
                                                   (gx#syntax-e
                                                    _%tl3709937484%_)))
                                              (let ((_%tl3713837315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3713637308%_)))
                                                    (_%hd3713737312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3713637308%_))))
                                                (if (gx#stx-null?
                                                     _%tl3713837315%_)
                                                    (_%__kont4005540056%_
                                                     _%hd3713737312%_
                                                     _%hd3703037713%_
                                                     _%hd3702737703%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3713837315%_)
                                                        (let ((_%e3715637218%_
                                                               (gx#syntax-e
                                                                _%tl3713837315%_)))
                                                          (let ((_%tl3715837225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3715637218%_)))
                        (_%hd3715737222%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3715637218%_))))
                    (if (gx#identifier? _%hd3715737222%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40412_|
                             _%hd3715737222%_)
                            (if (gx#stx-pair? _%tl3715837225%_)
                                (let ((_%e3715937228%_
                                       (gx#syntax-e _%tl3715837225%_)))
                                  (let ((_%tl3716137235%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3715937228%_)))
                                        (_%hd3716037232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3715937228%_))))
                                    (if (gx#stx-null? _%tl3716137235%_)
                                        (_%__kont4005740058%_
                                         _%hd3716037232%_
                                         _%hd3713737312%_
                                         _%hd3703037713%_
                                         _%hd3702737703%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3702137167%_)))
                            (let () (declare (not safe)) (_%g3702137167%_)))
                        (let () (declare (not safe)) (_%g3702137167%_)))))
                (let () (declare (not safe)) (_%g3702137167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3702137167%_)))))))
                  (if (gx#stx-null? _%tl3703137716%_)
                      (_%__kont4005140052%_ _%hd3703037713%_ _%hd3702737703%_)
                      (let () (declare (not safe)) (_%g3702137167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40415_|
                                                       _%hd3703337723%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3703437726%_)
                                                          (let ((_%e3708337541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3703437726%_)))
                    (let ((_%tl3708537548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3708337541%_)))
                          (_%hd3708437545%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3708337541%_))))
                      (if (gx#stx-null? _%tl3708537548%_)
                          (if (gx#stx-pair? _%tl3703137716%_)
                              (let ((_%e3708637551%_
                                     (gx#syntax-e _%tl3703137716%_)))
                                (let ((_%tl3708837558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3708637551%_)))
                                      (_%hd3708737555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3708637551%_))))
                                  (if (gx#stx-null? _%tl3708837558%_)
                                      (_%__kont4004740048%_
                                       _%hd3708737555%_
                                       _%hd3708437545%_
                                       _%hd3702737703%_)
                                      (if (gx#identifier? _%hd3708737555%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40411_|
                                               _%hd3708737555%_)
                                              (if (gx#stx-pair?
                                                   _%tl3708837558%_)
                                                  (let ((_%e3712037377%_
                                                         (gx#syntax-e
                                                          _%tl3708837558%_)))
                                                    (let ((_%tl3712237384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3712037377%_)))
                                                          (_%hd3712137381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3712037377%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3712237384%_)
                                                          (_%__kont4005340054%_
                                                           _%hd3712137381%_
                                                           _%hd3703037713%_
                                                           _%hd3702737703%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3702137167%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3702137167%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3702137167%_)))
                                          (if (gx#stx-datum? _%hd3708737555%_)
                                              (let ((_%e3713537304%_
                                                     (gx#stx-e
                                                      _%hd3708737555%_)))
                                                (if (equal? _%e3713537304%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3708837558%_)
                                                        (let ((_%e3713637308%_
                                                               (gx#syntax-e
                                                                _%tl3708837558%_)))
                                                          (let ((_%tl3713837315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3713637308%_)))
                        (_%hd3713737312%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3713637308%_))))
                    (if (gx#stx-null? _%tl3713837315%_)
                        (_%__kont4005540056%_
                         _%hd3713737312%_
                         _%hd3703037713%_
                         _%hd3702737703%_)
                        (if (gx#stx-pair? _%tl3713837315%_)
                            (let ((_%e3715637218%_
                                   (gx#syntax-e _%tl3713837315%_)))
                              (let ((_%tl3715837225%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3715637218%_)))
                                    (_%hd3715737222%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3715637218%_))))
                                (if (gx#identifier? _%hd3715737222%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40412_|
                                         _%hd3715737222%_)
                                        (if (gx#stx-pair? _%tl3715837225%_)
                                            (let ((_%e3715937228%_
                                                   (gx#syntax-e
                                                    _%tl3715837225%_)))
                                              (let ((_%tl3716137235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3715937228%_)))
                                                    (_%hd3716037232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3715937228%_))))
                                                (if (gx#stx-null?
                                                     _%tl3716137235%_)
                                                    (_%__kont4005740058%_
                                                     _%hd3716037232%_
                                                     _%hd3713737312%_
                                                     _%hd3703037713%_
                                                     _%hd3702737703%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_)))))
                            (let () (declare (not safe)) (_%g3702137167%_))))))
                (let () (declare (not safe)) (_%g3702137167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3702137167%_)))))))
                              (if (gx#stx-null? _%tl3703137716%_)
                                  (_%__kont4005140052%_
                                   _%hd3703037713%_
                                   _%hd3702737703%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3702137167%_))))
                          (if (gx#stx-pair? _%tl3703137716%_)
                              (let ((_%e3709737477%_
                                     (gx#syntax-e _%tl3703137716%_)))
                                (let ((_%tl3709937484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3709737477%_)))
                                      (_%hd3709837481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3709737477%_))))
                                  (if (gx#stx-null? _%tl3709937484%_)
                                      (_%__kont4004940050%_
                                       _%hd3709837481%_
                                       _%hd3703037713%_)
                                      (if (gx#identifier? _%hd3709837481%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40411_|
                                               _%hd3709837481%_)
                                              (if (gx#stx-pair?
                                                   _%tl3709937484%_)
                                                  (let ((_%e3712037377%_
                                                         (gx#syntax-e
                                                          _%tl3709937484%_)))
                                                    (let ((_%tl3712237384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3712037377%_)))
                                                          (_%hd3712137381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3712037377%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3712237384%_)
                                                          (_%__kont4005340054%_
                                                           _%hd3712137381%_
                                                           _%hd3703037713%_
                                                           _%hd3702737703%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3702137167%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3702137167%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3702137167%_)))
                                          (if (gx#stx-datum? _%hd3709837481%_)
                                              (let ((_%e3713537304%_
                                                     (gx#stx-e
                                                      _%hd3709837481%_)))
                                                (if (equal? _%e3713537304%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3709937484%_)
                                                        (let ((_%e3713637308%_
                                                               (gx#syntax-e
                                                                _%tl3709937484%_)))
                                                          (let ((_%tl3713837315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3713637308%_)))
                        (_%hd3713737312%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3713637308%_))))
                    (if (gx#stx-null? _%tl3713837315%_)
                        (_%__kont4005540056%_
                         _%hd3713737312%_
                         _%hd3703037713%_
                         _%hd3702737703%_)
                        (if (gx#stx-pair? _%tl3713837315%_)
                            (let ((_%e3715637218%_
                                   (gx#syntax-e _%tl3713837315%_)))
                              (let ((_%tl3715837225%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3715637218%_)))
                                    (_%hd3715737222%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3715637218%_))))
                                (if (gx#identifier? _%hd3715737222%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40412_|
                                         _%hd3715737222%_)
                                        (if (gx#stx-pair? _%tl3715837225%_)
                                            (let ((_%e3715937228%_
                                                   (gx#syntax-e
                                                    _%tl3715837225%_)))
                                              (let ((_%tl3716137235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3715937228%_)))
                                                    (_%hd3716037232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3715937228%_))))
                                                (if (gx#stx-null?
                                                     _%tl3716137235%_)
                                                    (_%__kont4005740058%_
                                                     _%hd3716037232%_
                                                     _%hd3713737312%_
                                                     _%hd3703037713%_
                                                     _%hd3702737703%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_)))))
                            (let () (declare (not safe)) (_%g3702137167%_))))))
                (let () (declare (not safe)) (_%g3702137167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3702137167%_)))))))
                              (if (gx#stx-null? _%tl3703137716%_)
                                  (_%__kont4005140052%_
                                   _%hd3703037713%_
                                   _%hd3702737703%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3702137167%_)))))))
                  (if (gx#stx-pair? _%tl3703137716%_)
                      (let ((_%e3709737477%_ (gx#syntax-e _%tl3703137716%_)))
                        (let ((_%tl3709937484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3709737477%_)))
                              (_%hd3709837481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3709737477%_))))
                          (if (gx#stx-null? _%tl3709937484%_)
                              (_%__kont4004940050%_
                               _%hd3709837481%_
                               _%hd3703037713%_)
                              (if (gx#identifier? _%hd3709837481%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40411_|
                                       _%hd3709837481%_)
                                      (if (gx#stx-pair? _%tl3709937484%_)
                                          (let ((_%e3712037377%_
                                                 (gx#syntax-e
                                                  _%tl3709937484%_)))
                                            (let ((_%tl3712237384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3712037377%_)))
                                                  (_%hd3712137381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3712037377%_))))
                                              (if (gx#stx-null?
                                                   _%tl3712237384%_)
                                                  (_%__kont4005340054%_
                                                   _%hd3712137381%_
                                                   _%hd3703037713%_
                                                   _%hd3702737703%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3702137167%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3702137167%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3702137167%_)))
                                  (if (gx#stx-datum? _%hd3709837481%_)
                                      (let ((_%e3713537304%_
                                             (gx#stx-e _%hd3709837481%_)))
                                        (if (equal? _%e3713537304%_ '::)
                                            (if (gx#stx-pair? _%tl3709937484%_)
                                                (let ((_%e3713637308%_
                                                       (gx#syntax-e
                                                        _%tl3709937484%_)))
                                                  (let ((_%tl3713837315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3713637308%_)))
                                                        (_%hd3713737312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3713637308%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3713837315%_)
                                                        (_%__kont4005540056%_
                                                         _%hd3713737312%_
                                                         _%hd3703037713%_
                                                         _%hd3702737703%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3713837315%_)
                                                            (let ((_%e3715637218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3713837315%_)))
                      (let ((_%tl3715837225%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3715637218%_)))
                            (_%hd3715737222%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3715637218%_))))
                        (if (gx#identifier? _%hd3715737222%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40412_|
                                 _%hd3715737222%_)
                                (if (gx#stx-pair? _%tl3715837225%_)
                                    (let ((_%e3715937228%_
                                           (gx#syntax-e _%tl3715837225%_)))
                                      (let ((_%tl3716137235%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3715937228%_)))
                                            (_%hd3716037232%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3715937228%_))))
                                        (if (gx#stx-null? _%tl3716137235%_)
                                            (_%__kont4005740058%_
                                             _%hd3716037232%_
                                             _%hd3713737312%_
                                             _%hd3703037713%_
                                             _%hd3702737703%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3702137167%_)))
                            (let () (declare (not safe)) (_%g3702137167%_)))))
                    (let () (declare (not safe)) (_%g3702137167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3702137167%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3702137167%_)))))))
                      (if (gx#stx-null? _%tl3703137716%_)
                          (_%__kont4005140052%_
                           _%hd3703037713%_
                           _%hd3702737703%_)
                          (let () (declare (not safe)) (_%g3702137167%_)))))
              (if (gx#stx-pair? _%tl3703137716%_)
                  (let ((_%e3709737477%_ (gx#syntax-e _%tl3703137716%_)))
                    (let ((_%tl3709937484%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3709737477%_)))
                          (_%hd3709837481%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3709737477%_))))
                      (if (gx#stx-null? _%tl3709937484%_)
                          (_%__kont4004940050%_
                           _%hd3709837481%_
                           _%hd3703037713%_)
                          (if (gx#identifier? _%hd3709837481%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40411_|
                                   _%hd3709837481%_)
                                  (if (gx#stx-pair? _%tl3709937484%_)
                                      (let ((_%e3712037377%_
                                             (gx#syntax-e _%tl3709937484%_)))
                                        (let ((_%tl3712237384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3712037377%_)))
                                              (_%hd3712137381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3712037377%_))))
                                          (if (gx#stx-null? _%tl3712237384%_)
                                              (_%__kont4005340054%_
                                               _%hd3712137381%_
                                               _%hd3703037713%_
                                               _%hd3702737703%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3702137167%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3702137167%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3702137167%_)))
                              (if (gx#stx-datum? _%hd3709837481%_)
                                  (let ((_%e3713537304%_
                                         (gx#stx-e _%hd3709837481%_)))
                                    (if (equal? _%e3713537304%_ '::)
                                        (if (gx#stx-pair? _%tl3709937484%_)
                                            (let ((_%e3713637308%_
                                                   (gx#syntax-e
                                                    _%tl3709937484%_)))
                                              (let ((_%tl3713837315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3713637308%_)))
                                                    (_%hd3713737312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3713637308%_))))
                                                (if (gx#stx-null?
                                                     _%tl3713837315%_)
                                                    (_%__kont4005540056%_
                                                     _%hd3713737312%_
                                                     _%hd3703037713%_
                                                     _%hd3702737703%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3713837315%_)
                                                        (let ((_%e3715637218%_
                                                               (gx#syntax-e
                                                                _%tl3713837315%_)))
                                                          (let ((_%tl3715837225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3715637218%_)))
                        (_%hd3715737222%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3715637218%_))))
                    (if (gx#identifier? _%hd3715737222%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40412_|
                             _%hd3715737222%_)
                            (if (gx#stx-pair? _%tl3715837225%_)
                                (let ((_%e3715937228%_
                                       (gx#syntax-e _%tl3715837225%_)))
                                  (let ((_%tl3716137235%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3715937228%_)))
                                        (_%hd3716037232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3715937228%_))))
                                    (if (gx#stx-null? _%tl3716137235%_)
                                        (_%__kont4005740058%_
                                         _%hd3716037232%_
                                         _%hd3713737312%_
                                         _%hd3703037713%_
                                         _%hd3702737703%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3702137167%_)))
                            (let () (declare (not safe)) (_%g3702137167%_)))
                        (let () (declare (not safe)) (_%g3702137167%_)))))
                (let () (declare (not safe)) (_%g3702137167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3702137167%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3702137167%_)))))))
                  (if (gx#stx-null? _%tl3703137716%_)
                      (_%__kont4005140052%_ _%hd3703037713%_ _%hd3702737703%_)
                      (let () (declare (not safe)) (_%g3702137167%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3703137716%_)
                                              (let ((_%e3709737477%_
                                                     (gx#syntax-e
                                                      _%tl3703137716%_)))
                                                (let ((_%tl3709937484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3709737477%_)))
                                                      (_%hd3709837481%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3709737477%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3709937484%_)
                                                      (_%__kont4004940050%_
                                                       _%hd3709837481%_
                                                       _%hd3703037713%_)
                                                      (if (gx#identifier?
                                                           _%hd3709837481%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40411_|
                                                               _%hd3709837481%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3709937484%_)
                          (let ((_%e3712037377%_
                                 (gx#syntax-e _%tl3709937484%_)))
                            (let ((_%tl3712237384%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3712037377%_)))
                                  (_%hd3712137381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3712037377%_))))
                              (if (gx#stx-null? _%tl3712237384%_)
                                  (_%__kont4005340054%_
                                   _%hd3712137381%_
                                   _%hd3703037713%_
                                   _%hd3702737703%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3702137167%_)))))
                          (let () (declare (not safe)) (_%g3702137167%_)))
                      (let () (declare (not safe)) (_%g3702137167%_)))
                  (if (gx#stx-datum? _%hd3709837481%_)
                      (let ((_%e3713537304%_ (gx#stx-e _%hd3709837481%_)))
                        (if (equal? _%e3713537304%_ '::)
                            (if (gx#stx-pair? _%tl3709937484%_)
                                (let ((_%e3713637308%_
                                       (gx#syntax-e _%tl3709937484%_)))
                                  (let ((_%tl3713837315%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3713637308%_)))
                                        (_%hd3713737312%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3713637308%_))))
                                    (if (gx#stx-null? _%tl3713837315%_)
                                        (_%__kont4005540056%_
                                         _%hd3713737312%_
                                         _%hd3703037713%_
                                         _%hd3702737703%_)
                                        (if (gx#stx-pair? _%tl3713837315%_)
                                            (let ((_%e3715637218%_
                                                   (gx#syntax-e
                                                    _%tl3713837315%_)))
                                              (let ((_%tl3715837225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3715637218%_)))
                                                    (_%hd3715737222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3715637218%_))))
                                                (if (gx#identifier?
                                                     _%hd3715737222%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40412_|
                                                         _%hd3715737222%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3715837225%_)
                                                            (let ((_%e3715937228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3715837225%_)))
                      (let ((_%tl3716137235%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3715937228%_)))
                            (_%hd3716037232%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3715937228%_))))
                        (if (gx#stx-null? _%tl3716137235%_)
                            (_%__kont4005740058%_
                             _%hd3716037232%_
                             _%hd3713737312%_
                             _%hd3703037713%_
                             _%hd3702737703%_)
                            (let () (declare (not safe)) (_%g3702137167%_)))))
                    (let () (declare (not safe)) (_%g3702137167%_)))
                (let () (declare (not safe)) (_%g3702137167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3702137167%_)))
                            (let () (declare (not safe)) (_%g3702137167%_))))
                      (let () (declare (not safe)) (_%g3702137167%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3703137716%_)
                                                  (_%__kont4005140052%_
                                                   _%hd3703037713%_
                                                   _%hd3702737703%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3702137167%_)))))))
                                  (if (gx#stx-pair? _%tl3703137716%_)
                                      (let ((_%e3709737477%_
                                             (gx#syntax-e _%tl3703137716%_)))
                                        (let ((_%tl3709937484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3709737477%_)))
                                              (_%hd3709837481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3709737477%_))))
                                          (if (gx#stx-null? _%tl3709937484%_)
                                              (_%__kont4004940050%_
                                               _%hd3709837481%_
                                               _%hd3703037713%_)
                                              (if (gx#identifier?
                                                   _%hd3709837481%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40411_|
                                                       _%hd3709837481%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3709937484%_)
                                                          (let ((_%e3712037377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3709937484%_)))
                    (let ((_%tl3712237384%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3712037377%_)))
                          (_%hd3712137381%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3712037377%_))))
                      (if (gx#stx-null? _%tl3712237384%_)
                          (_%__kont4005340054%_
                           _%hd3712137381%_
                           _%hd3703037713%_
                           _%hd3702737703%_)
                          (let () (declare (not safe)) (_%g3702137167%_)))))
                  (let () (declare (not safe)) (_%g3702137167%_)))
              (let () (declare (not safe)) (_%g3702137167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3709837481%_)
                                                      (let ((_%e3713537304%_
                                                             (gx#stx-e
                                                              _%hd3709837481%_)))
                                                        (if (equal? _%e3713537304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3709937484%_)
                        (let ((_%e3713637308%_ (gx#syntax-e _%tl3709937484%_)))
                          (let ((_%tl3713837315%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3713637308%_)))
                                (_%hd3713737312%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3713637308%_))))
                            (if (gx#stx-null? _%tl3713837315%_)
                                (_%__kont4005540056%_
                                 _%hd3713737312%_
                                 _%hd3703037713%_
                                 _%hd3702737703%_)
                                (if (gx#stx-pair? _%tl3713837315%_)
                                    (let ((_%e3715637218%_
                                           (gx#syntax-e _%tl3713837315%_)))
                                      (let ((_%tl3715837225%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3715637218%_)))
                                            (_%hd3715737222%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3715637218%_))))
                                        (if (gx#identifier? _%hd3715737222%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40412_|
                                                 _%hd3715737222%_)
                                                (if (gx#stx-pair?
                                                     _%tl3715837225%_)
                                                    (let ((_%e3715937228%_
                                                           (gx#syntax-e
                                                            _%tl3715837225%_)))
                                                      (let ((_%tl3716137235%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3715937228%_)))
                    (_%hd3716037232%_
                     (let () (declare (not safe)) (##car _%e3715937228%_))))
                (if (gx#stx-null? _%tl3716137235%_)
                    (_%__kont4005740058%_
                     _%hd3716037232%_
                     _%hd3713737312%_
                     _%hd3703037713%_
                     _%hd3702737703%_)
                    (let () (declare (not safe)) (_%g3702137167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3702137167%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3702137167%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3702137167%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3702137167%_))))))
                        (let () (declare (not safe)) (_%g3702137167%_)))
                    (let () (declare (not safe)) (_%g3702137167%_))))
              (let () (declare (not safe)) (_%g3702137167%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3703137716%_)
                                          (_%__kont4005140052%_
                                           _%hd3703037713%_
                                           _%hd3702737703%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3702137167%_)))))))
                          (let () (declare (not safe)) (_%g3702137167%_)))))
                  (let () (declare (not safe)) (_%g3702137167%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37806%_)
        (let* ((_%__stx4030440305%_ _%$stx37806%_)
               (_%g3781137845%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4030440305%_))))
          (let ((_%__kont4030740308%_
                 (lambda (_%g3781337949%_ _%g3781437951%_ _%g3781537952%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3781537952%_
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
                                       (cons _%g3781437951%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3781337949%_ '()))
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
                (_%__kont4030940310%_
                 (lambda (_%g3782837882%_ _%g3782937884%_ _%g3783037885%_)
                   (cons _%g3783037885%_
                         (cons _%g3782937884%_
                               (cons _%g3782837882%_
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
            (let ((_%__match4033740338%_
                   (lambda (_%e3781637909%_
                            _%hd3781737913%_
                            _%tl3781837916%_
                            _%e3781937919%_
                            _%hd3782037923%_
                            _%tl3782137926%_
                            _%e3782237929%_
                            _%hd3782337933%_
                            _%tl3782437936%_
                            _%e3782537939%_
                            _%hd3782637943%_
                            _%tl3782737946%_)
                     (let ((_%g3781337949%_ _%hd3782637943%_)
                           (_%g3781437951%_ _%hd3782337933%_)
                           (_%g3781537952%_ _%hd3782037923%_))
                       (if (gx#identifier? _%g3781537952%_)
                           (_%__kont4030740308%_
                            _%g3781337949%_
                            _%g3781437951%_
                            _%g3781537952%_)
                           (let () (declare (not safe)) (_%g3781137845%_)))))))
              (if (gx#stx-pair? _%__stx4030440305%_)
                  (let ((_%e3781637909%_ (gx#syntax-e _%__stx4030440305%_)))
                    (let ((_%tl3781837916%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3781637909%_)))
                          (_%hd3781737913%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3781637909%_))))
                      (if (gx#stx-pair? _%tl3781837916%_)
                          (let ((_%e3781937919%_
                                 (gx#syntax-e _%tl3781837916%_)))
                            (let ((_%tl3782137926%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3781937919%_)))
                                  (_%hd3782037923%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3781937919%_))))
                              (if (gx#stx-pair? _%tl3782137926%_)
                                  (let ((_%e3782237929%_
                                         (gx#syntax-e _%tl3782137926%_)))
                                    (let ((_%tl3782437936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3782237929%_)))
                                          (_%hd3782337933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3782237929%_))))
                                      (if (gx#stx-pair? _%tl3782437936%_)
                                          (let ((_%e3782537939%_
                                                 (gx#syntax-e
                                                  _%tl3782437936%_)))
                                            (let ((_%tl3782737946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3782537939%_)))
                                                  (_%hd3782637943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3782537939%_))))
                                              (if (gx#stx-null?
                                                   _%tl3782737946%_)
                                                  (_%__match4033740338%_
                                                   _%e3781637909%_
                                                   _%hd3781737913%_
                                                   _%tl3781837916%_
                                                   _%e3781937919%_
                                                   _%hd3782037923%_
                                                   _%tl3782137926%_
                                                   _%e3782237929%_
                                                   _%hd3782337933%_
                                                   _%tl3782437936%_
                                                   _%e3782537939%_
                                                   _%hd3782637943%_
                                                   _%tl3782737946%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3781137845%_)))))
                                          (if (gx#stx-null? _%tl3782437936%_)
                                              (_%__kont4030940310%_
                                               _%hd3782337933%_
                                               _%hd3782037923%_
                                               _%hd3781737913%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3781137845%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3781137845%_)))))
                          (let () (declare (not safe)) (_%g3781137845%_)))))
                  (let () (declare (not safe)) (_%g3781137845%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37974%_)
        (let* ((_%g3797837993%_
                (lambda (_%g3797937989%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3797937989%_)))
               (_%g3797738036%_
                (lambda (_%g3797937997%_)
                  (if (gx#stx-pair? _%g3797937997%_)
                      (let ((_%e3798238000%_ (gx#syntax-e _%g3797937997%_)))
                        (let ((_%hd3798338004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3798238000%_)))
                              (_%tl3798438007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3798238000%_))))
                          (if (gx#stx-pair? _%tl3798438007%_)
                              (let ((_%e3798538010%_
                                     (gx#syntax-e _%tl3798438007%_)))
                                (let ((_%hd3798638014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3798538010%_)))
                                      (_%tl3798738017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3798538010%_))))
                                  ((lambda (_%g3798038020%_ _%g3798138022%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g3798138022%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g3798038020%_)
                                                       '()))))
                                   _%tl3798738017%_
                                   _%hd3798638014%_)))
                              (_%g3797837993%_ _%g3797937997%_))))
                      (_%g3797837993%_ _%g3797937997%_)))))
          (_%g3797738036%_ _%$stx37974%_))))))
