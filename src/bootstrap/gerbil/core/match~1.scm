(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39874_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39875_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39876_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39877_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39878_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39879_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39880_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39881_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39882_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39883_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39884_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39885_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39886_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39887_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39888_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39901_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39909_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39910_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39911_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39916_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39917_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39918_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39919_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39920_|
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
      (lambda _%$args35173%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35173%_)))
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
      (lambda (_%stx35170%_)
        (if (gx#identifier? _%stx35170%_)
            (let ((__tmp39873 (gx#syntax-local-value _%stx35170%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39873))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33470%_ _%match-stx33472%_)
        (letrec ((_%parse133474%_
                  (lambda (_%hd33833%_)
                    (let* ((_%__stx3766137662%_ _%hd33833%_)
                           (_%g3385934001%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3766137662%_))))
                      (let ((_%__kont3766437665%_
                             (lambda (_%L34933%_ _%L34935%_)
                               (let* ((_%__stx3758137582%_ _%L34933%_)
                                      (_%g3495234985%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3758137582%_))))
                                 (let ((_%__kont3758437585%_
                                        (lambda ()
                                          (cons '?: (cons _%L34935%_ '()))))
                                       (_%__kont3758637587%_
                                        (lambda (_%L35126%_)
                                          (cons '?:
                                                (cons _%L34935%_
                                                      (cons (_%parse133474%_
                                                             _%L35126%_)
                                                            '())))))
                                       (_%__kont3758837589%_
                                        (lambda (_%L35096%_)
                                          (cons '?:
                                                (cons _%L34935%_
                                                      (cons '=>:
                                                            (cons (_%parse133474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35096%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3759037591%_
                                        (lambda (_%L35047%_ _%L35049%_)
                                          (cons '?:
                                                (cons _%L34935%_
                                                      (cons '::
                                                            (cons _%L35049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133474%_ _%L35047%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3759237593%_
                                        (lambda ()
                                          (_%parse-error33481%_ _%hd33833%_))))
                                   (let ((_%g3494835137%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3758137582%_)
                                                (let ((_%e3495535116%_
                                                       (gx#syntax-e
                                                        _%__stx3758137582%_)))
                                                  (let ((_%tl3495735123%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3495535116%_)))
                                                        (_%hd3495635120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3495535116%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3495735123%_)
                                                        (_%__kont3758637587%_
                                                         _%hd3495635120%_)
                                                        (if (gx#identifier?
                                                             _%hd3495635120%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39874_|
                         _%hd3495635120%_)
                        (if (gx#stx-pair? _%tl3495735123%_)
                            (let ((_%e3496235086%_
                                   (gx#syntax-e _%tl3495735123%_)))
                              (let ((_%tl3496435093%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3496235086%_)))
                                    (_%hd3496335090%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3496235086%_))))
                                (if (gx#stx-null? _%tl3496435093%_)
                                    (_%__kont3758837589%_ _%hd3496335090%_)
                                    (_%__kont3759237593%_))))
                            (_%__kont3759237593%_))
                        (_%__kont3759237593%_))
                    (if (gx#stx-datum? _%hd3495635120%_)
                        (let ((_%e3497035013%_ (gx#stx-e _%hd3495635120%_)))
                          (if (equal? _%e3497035013%_ '::)
                              (if (gx#stx-pair? _%tl3495735123%_)
                                  (let ((_%e3497135017%_
                                         (gx#syntax-e _%tl3495735123%_)))
                                    (let ((_%tl3497335024%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3497135017%_)))
                                          (_%hd3497235021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3497135017%_))))
                                      (if (gx#stx-pair? _%tl3497335024%_)
                                          (let ((_%e3497435027%_
                                                 (gx#syntax-e
                                                  _%tl3497335024%_)))
                                            (let ((_%tl3497635034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3497435027%_)))
                                                  (_%hd3497535031%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3497435027%_))))
                                              (if (gx#identifier?
                                                   _%hd3497535031%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39875_|
                                                       _%hd3497535031%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3497635034%_)
                                                          (let ((_%e3497735037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3497635034%_)))
                    (let ((_%tl3497935044%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3497735037%_)))
                          (_%hd3497835041%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3497735037%_))))
                      (if (gx#stx-null? _%tl3497935044%_)
                          (_%__kont3759037591%_
                           _%hd3497835041%_
                           _%hd3497235021%_)
                          (_%__kont3759237593%_))))
                  (_%__kont3759237593%_))
              (_%__kont3759237593%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3759237593%_))))
                                          (_%__kont3759237593%_))))
                                  (_%__kont3759237593%_))
                              (_%__kont3759237593%_)))
                        (_%__kont3759237593%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3759237593%_)))))
                                     (if (gx#stx-null? _%__stx3758137582%_)
                                         (_%__kont3758437585%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3494835137%_))))))))
                            (_%__kont3766637667%_
                             (lambda (_%L34838%_)
                               (let* ((_%__stx3756337564%_ _%L34838%_)
                                      (_%g3485034861%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3756337564%_))))
                                 (let ((_%__kont3756637567%_
                                        (lambda (_%L34889%_)
                                          (_%parse133474%_ _%L34889%_)))
                                       (_%__kont3756837569%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133474%_
                                                 _%L34838%_)))))
                                   (if (gx#stx-pair? _%__stx3756337564%_)
                                       (let ((_%e3485334879%_
                                              (gx#syntax-e
                                               _%__stx3756337564%_)))
                                         (let ((_%tl3485534886%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3485334879%_)))
                                               (_%hd3485434883%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3485334879%_))))
                                           (if (gx#stx-null? _%tl3485534886%_)
                                               (_%__kont3756637567%_
                                                _%hd3485434883%_)
                                               (_%__kont3756837569%_))))
                                       (_%__kont3756837569%_))))))
                            (_%__kont3766837669%_
                             (lambda (_%L34753%_)
                               (let* ((_%__stx3754537546%_ _%L34753%_)
                                      (_%g3476534776%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3754537546%_))))
                                 (let ((_%__kont3754837549%_
                                        (lambda (_%L34804%_)
                                          (_%parse133474%_ _%L34804%_)))
                                       (_%__kont3755037551%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133474%_
                                                 _%L34753%_)))))
                                   (if (gx#stx-pair? _%__stx3754537546%_)
                                       (let ((_%e3476834794%_
                                              (gx#syntax-e
                                               _%__stx3754537546%_)))
                                         (let ((_%tl3477034801%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3476834794%_)))
                                               (_%hd3476934798%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3476834794%_))))
                                           (if (gx#stx-null? _%tl3477034801%_)
                                               (_%__kont3754837549%_
                                                _%hd3476934798%_)
                                               (_%__kont3755037551%_))))
                                       (_%__kont3755037551%_))))))
                            (_%__kont3767037671%_
                             (lambda (_%L34723%_)
                               (cons 'not:
                                     (cons (_%parse133474%_ _%L34723%_) '()))))
                            (_%__kont3767237673%_
                             (lambda (_%L34679%_ _%L34681%_)
                               (cons 'cons:
                                     (cons (_%parse133474%_ _%L34681%_)
                                           (cons (_%parse133474%_ _%L34679%_)
                                                 '())))))
                            (_%__kont3767437675%_
                             (lambda (_%L34623%_ _%L34625%_ _%L34626%_)
                               (if (gx#stx-null? _%L34623%_)
                                   (cons 'cons:
                                         (cons (_%parse133474%_ _%L34626%_)
                                               (cons (_%parse133474%_
                                                      _%L34625%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133474%_ _%L34626%_)
                                               (cons (_%parse133474%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3767637677%_
                             (lambda (_%L34575%_)
                               (_%parse-list33476%_ _%L34575%_)))
                            (_%__kont3767837679%_
                             (lambda (_%L34545%_)
                               (cons 'box:
                                     (cons (_%parse133474%_ _%L34545%_) '()))))
                            (_%__kont3768037681%_
                             (lambda (_%L34508%_)
                               (cons 'box:
                                     (cons (_%parse133474%_ _%L34508%_) '()))))
                            (_%__kont3768237683%_
                             (lambda (_%L34484%_)
                               (_%parse133474%_ _%L34484%_)))
                            (_%__kont3768437685%_
                             (lambda (_%L34446%_)
                               (cons 'values:
                                     (cons (_%parse-vector33477%_ _%L34446%_)
                                           '()))))
                            (_%__kont3768637687%_
                             (lambda (_%L34418%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33477%_ _%L34418%_)
                                           '()))))
                            (_%__kont3768837689%_
                             (lambda (_%L34379%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33477%_
                                            (foldr (lambda (_%g3439234395%_
                                                            _%g3439334398%_)
                                                     (cons _%g3439234395%_
                                                           _%g3439334398%_))
                                                   '()
                                                   _%L34379%_))
                                           '()))))
                            (_%__kont3769237693%_
                             (lambda (_%L34325%_ _%L34327%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34327%_)
                                           (cons (_%parse-vector33477%_
                                                  _%L34325%_)
                                                 '())))))
                            (_%__kont3769437695%_
                             (lambda (_%L34295%_ _%L34297%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34297%_)
                                           (cons (_%parse-class-body33479%_
                                                  _%L34295%_)
                                                 '())))))
                            (_%__kont3769637697%_
                             (lambda (_%L34255%_ _%L34257%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34257%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3769837699%_
                             (lambda (_%L34215%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34215%_) '()))))
                            (_%__kont3770037701%_
                             (lambda (_%L34175%_)
                               (_%parse-qq33480%_ _%L34175%_)))
                            (_%__kont3770237703%_
                             (lambda (_%L34131%_ _%L34133%_)
                               (cons 'apply:
                                     (cons _%L34133%_
                                           (cons (_%parse133474%_ _%L34131%_)
                                                 '())))))
                            (_%__kont3770437705%_
                             (lambda (_%L34079%_)
                               (_%parse133474%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34079%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33833%_)
                                  (let ((_%$e34090%_
                                         (gx#stx-source _%hd33833%_)))
                                    (if _%$e34090%_
                                        _%$e34090%_
                                        (gx#stx-source _%stx33470%_))))))))
                            (_%__kont3770637707%_
                             (lambda (_%L34053%_) (cons 'any: '())))
                            (_%__kont3770837709%_
                             (lambda (_%L34037%_)
                               (cons 'var: (cons _%L34037%_ '()))))
                            (_%__kont3771037711%_
                             (lambda (_%L34019%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34019%_) '()))))
                            (_%__kont3771237713%_
                             (lambda () (_%parse-error33481%_ _%hd33833%_))))
                        (let* ((_%g3385734030%_
                                (lambda ()
                                  (let ((_%L34019%_ _%__stx3766137662%_))
                                    (if (gx#stx-datum? _%L34019%_)
                                        (_%__kont3771037711%_ _%L34019%_)
                                        (_%__kont3771237713%_)))))
                               (_%g3385634046%_
                                (lambda ()
                                  (let ((_%L34037%_ _%__stx3766137662%_))
                                    (if (and (gx#identifier? _%L34037%_)
                                             (not (gx#ellipsis? _%L34037%_)))
                                        (_%__kont3770837709%_ _%L34037%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3385734030%_))))))
                               (_%g3385534062%_
                                (lambda ()
                                  (let ((_%L34053%_ _%__stx3766137662%_))
                                    (if (gx#underscore? _%L34053%_)
                                        (_%__kont3770637707%_ _%L34053%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3385634046%_))))))
                               (_%__match3798837989%_
                                (lambda (_%e3399034069%_
                                         _%hd3399134073%_
                                         _%tl3399234076%_)
                                  (let ((_%L34079%_ _%hd3399134073%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34079%_)
                                        (_%__kont3770437705%_ _%L34079%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3385534062%_))))))
                               (_%__match3792237923%_
                                (lambda (_%e3395834235%_
                                         _%hd3395934239%_
                                         _%tl3396034242%_
                                         _%e3396134245%_
                                         _%hd3396234249%_
                                         _%tl3396334252%_)
                                  (let ((_%L34255%_ _%hd3396234249%_)
                                        (_%L34257%_ _%hd3395934239%_))
                                    (if (and (gx#identifier? _%L34257%_)
                                             (or (gx#free-identifier=?
                                                  _%L34257%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34257%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34257%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3769637697%_
                                         _%L34255%_
                                         _%L34257%_)
                                        (if (gx#identifier? _%hd3395934239%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39876_|
                                                 _%hd3395934239%_)
                                                (_%__kont3769837699%_
                                                 _%hd3396234249%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39877_|
                                                     _%hd3395934239%_)
                                                    (_%__kont3770037701%_
                                                     _%hd3396234249%_)
                                                    (_%__match3798837989%_
                                                     _%e3395834235%_
                                                     _%hd3395934239%_
                                                     _%tl3396034242%_)))
                                            (_%__match3798837989%_
                                             _%e3395834235%_
                                             _%hd3395934239%_
                                             _%tl3396034242%_))))))
                               (_%__match3790837909%_
                                (lambda (_%e3395334285%_
                                         _%hd3395434289%_
                                         _%tl3395534292%_)
                                  (let ((_%L34295%_ _%tl3395534292%_)
                                        (_%L34297%_ _%hd3395434289%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34297%_))
                                        (_%__kont3769437695%_
                                         _%L34295%_
                                         _%L34297%_)
                                        (if (gx#stx-pair? _%tl3395534292%_)
                                            (let ((_%e3396134245%_
                                                   (gx#syntax-e
                                                    _%tl3395534292%_)))
                                              (let ((_%tl3396334252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3396134245%_)))
                                                    (_%hd3396234249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3396134245%_))))
                                                (if (gx#stx-null?
                                                     _%tl3396334252%_)
                                                    (_%__match3792237923%_
                                                     _%e3395334285%_
                                                     _%hd3395434289%_
                                                     _%tl3395534292%_
                                                     _%e3396134245%_
                                                     _%hd3396234249%_
                                                     _%tl3396334252%_)
                                                    (if (gx#identifier?
                                                         _%hd3395434289%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39876_|
                                                             _%hd3395434289%_)
                                                            (_%__match3798837989%_
                                                             _%e3395334285%_
                                                             _%hd3395434289%_
                                                             _%tl3395534292%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39877_|
                         _%hd3395434289%_)
                        (_%__match3798837989%_
                         _%e3395334285%_
                         _%hd3395434289%_
                         _%tl3395534292%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39878_|
                             _%hd3395434289%_)
                            (if (gx#stx-pair? _%tl3396334252%_)
                                (let ((_%e3398634121%_
                                       (gx#syntax-e _%tl3396334252%_)))
                                  (let ((_%tl3398834128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3398634121%_)))
                                        (_%hd3398734125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3398634121%_))))
                                    (if (gx#stx-null? _%tl3398834128%_)
                                        (_%__kont3770237703%_
                                         _%hd3398734125%_
                                         _%hd3396234249%_)
                                        (_%__match3798837989%_
                                         _%e3395334285%_
                                         _%hd3395434289%_
                                         _%tl3395534292%_))))
                                (_%__match3798837989%_
                                 _%e3395334285%_
                                 _%hd3395434289%_
                                 _%tl3395534292%_))
                            (_%__match3798837989%_
                             _%e3395334285%_
                             _%hd3395434289%_
                             _%tl3395534292%_))))
                (_%__match3798837989%_
                 _%e3395334285%_
                 _%hd3395434289%_
                 _%tl3395534292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3798837989%_
                                             _%e3395334285%_
                                             _%hd3395434289%_
                                             _%tl3395534292%_))))))
                               (_%__match3790237903%_
                                (lambda (_%e3394834315%_
                                         _%hd3394934319%_
                                         _%tl3395034322%_)
                                  (let ((_%L34325%_ _%tl3395034322%_)
                                        (_%L34327%_ _%hd3394934319%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34327%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3769237693%_
                                         _%L34325%_
                                         _%L34327%_)
                                        (_%__match3790837909%_
                                         _%e3394834315%_
                                         _%hd3394934319%_
                                         _%tl3395034322%_)))))
                               (_%__match3789637897%_
                                (lambda (_%e3393634345%_
                                         _%__splice3769037691%_
                                         _%target3393734349%_
                                         _%tl3393934352%_)
                                  (letrec ((_%loop3394034355%_
                                            (lambda (_%hd3393834359%_
                                                     _%body3394434362%_)
                                              (if (gx#stx-pair?
                                                   _%hd3393834359%_)
                                                  (let ((_%e3394134365%_
                                                         (gx#syntax-e
                                                          _%hd3393834359%_)))
                                                    (let ((_%lp-tl3394334372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3394134365%_)))
                                                          (_%lp-hd3394234369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3394134365%_))))
                                                      (_%loop3394034355%_
                                                       _%lp-tl3394334372%_
                                                       (cons _%lp-hd3394234369%_
                                                             _%body3394434362%_))))
                                                  (let ((_%body3394534375%_
                                                         (reverse _%body3394434362%_)))
                                                    (_%__kont3768837689%_
                                                     _%body3394534375%_))))))
                                    (_%loop3394034355%_
                                     _%target3393734349%_
                                     '()))))
                               (_%g3384734401%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3766137662%_)
                                      (let ((_%e3393634345%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3766137662%_))))
                                        (if (gx#stx-pair/null? _%e3393634345%_)
                                            (let ((_%__splice3769037691%_
                                                   (gx#syntax-split-splice
                                                    _%e3393634345%_
                                                    '0)))
                                              (let ((_%tl3393934352%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3769037691%_
                                                        '1)))
                                                    (_%target3393734349%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3769037691%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3393934352%_)
                                                    (_%__match3789637897%_
                                                     _%e3393634345%_
                                                     _%__splice3769037691%_
                                                     _%target3393734349%_
                                                     _%tl3393934352%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3385534062%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3385534062%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3385534062%_)))))
                               (_%g3384334518%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3766137662%_)
                                      (let ((_%e3391934504%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3766137662%_))))
                                        (_%__kont3768037681%_ _%e3391934504%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3384734401%_)))))
                               (_%__match3775037751%_
                                (lambda (_%e3387434743%_
                                         _%hd3387534747%_
                                         _%tl3387634750%_)
                                  (let ((_%L34753%_ _%tl3387634750%_))
                                    (if (gx#stx-list? _%L34753%_)
                                        (_%__kont3766837669%_ _%L34753%_)
                                        (_%__match3790237903%_
                                         _%e3387434743%_
                                         _%hd3387534747%_
                                         _%tl3387634750%_)))))
                               (_%__match3774037741%_
                                (lambda (_%e3387034828%_
                                         _%hd3387134832%_
                                         _%tl3387234835%_)
                                  (let ((_%L34838%_ _%tl3387234835%_))
                                    (if (gx#stx-list? _%L34838%_)
                                        (_%__kont3766637667%_ _%L34838%_)
                                        (_%__match3790237903%_
                                         _%e3387034828%_
                                         _%hd3387134832%_
                                         _%tl3387234835%_))))))
                          (if (gx#stx-pair? _%__stx3766137662%_)
                              (let ((_%e3386334913%_
                                     (gx#syntax-e _%__stx3766137662%_)))
                                (let ((_%tl3386534920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3386334913%_)))
                                      (_%hd3386434917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3386334913%_))))
                                  (if (gx#identifier? _%hd3386434917%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39879_|
                                           _%hd3386434917%_)
                                          (if (gx#stx-pair? _%tl3386534920%_)
                                              (let ((_%e3386634923%_
                                                     (gx#syntax-e
                                                      _%tl3386534920%_)))
                                                (let ((_%tl3386834930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3386634923%_)))
                                                      (_%hd3386734927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3386634923%_))))
                                                  (_%__kont3766437665%_
                                                   _%tl3386834930%_
                                                   _%hd3386734927%_)))
                                              (_%__match3790237903%_
                                               _%e3386334913%_
                                               _%hd3386434917%_
                                               _%tl3386534920%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39880_|
                                               _%hd3386434917%_)
                                              (_%__match3774037741%_
                                               _%e3386334913%_
                                               _%hd3386434917%_
                                               _%tl3386534920%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39881_|
                                                   _%hd3386434917%_)
                                                  (_%__match3775037751%_
                                                   _%e3386334913%_
                                                   _%hd3386434917%_
                                                   _%tl3386534920%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39882_|
                                                       _%hd3386434917%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3386534920%_)
                                                          (let ((_%e3388134713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3386534920%_)))
                    (let ((_%tl3388334720%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3388134713%_)))
                          (_%hd3388234717%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3388134713%_))))
                      (if (gx#stx-null? _%tl3388334720%_)
                          (_%__kont3767037671%_ _%hd3388234717%_)
                          (_%__match3790237903%_
                           _%e3386334913%_
                           _%hd3386434917%_
                           _%tl3386534920%_))))
                  (_%__match3790237903%_
                   _%e3386334913%_
                   _%hd3386434917%_
                   _%tl3386534920%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39883_|
                   _%hd3386434917%_)
                  (if (gx#stx-pair? _%tl3386534920%_)
                      (let ((_%e3388934659%_ (gx#syntax-e _%tl3386534920%_)))
                        (let ((_%tl3389134666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3388934659%_)))
                              (_%hd3389034663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3388934659%_))))
                          (if (gx#stx-pair? _%tl3389134666%_)
                              (let ((_%e3389234669%_
                                     (gx#syntax-e _%tl3389134666%_)))
                                (let ((_%tl3389434676%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3389234669%_)))
                                      (_%hd3389334673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3389234669%_))))
                                  (if (gx#stx-null? _%tl3389434676%_)
                                      (_%__kont3767237673%_
                                       _%hd3389334673%_
                                       _%hd3389034663%_)
                                      (_%__match3790237903%_
                                       _%e3386334913%_
                                       _%hd3386434917%_
                                       _%tl3386534920%_))))
                              (_%__match3790237903%_
                               _%e3386334913%_
                               _%hd3386434917%_
                               _%tl3386534920%_))))
                      (_%__match3790237903%_
                       _%e3386334913%_
                       _%hd3386434917%_
                       _%tl3386534920%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39884_|
                       _%hd3386434917%_)
                      (if (gx#stx-pair? _%tl3386534920%_)
                          (let ((_%e3390134603%_
                                 (gx#syntax-e _%tl3386534920%_)))
                            (let ((_%tl3390334610%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3390134603%_)))
                                  (_%hd3390234607%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3390134603%_))))
                              (if (gx#stx-pair? _%tl3390334610%_)
                                  (let ((_%e3390434613%_
                                         (gx#syntax-e _%tl3390334610%_)))
                                    (let ((_%tl3390634620%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3390434613%_)))
                                          (_%hd3390534617%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3390434613%_))))
                                      (_%__kont3767437675%_
                                       _%tl3390634620%_
                                       _%hd3390534617%_
                                       _%hd3390234607%_)))
                                  (_%__match3790237903%_
                                   _%e3386334913%_
                                   _%hd3386434917%_
                                   _%tl3386534920%_))))
                          (_%__match3790237903%_
                           _%e3386334913%_
                           _%hd3386434917%_
                           _%tl3386534920%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39885_|
                           _%hd3386434917%_)
                          (_%__kont3767637677%_ _%tl3386534920%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39886_|
                               _%hd3386434917%_)
                              (if (gx#stx-pair? _%tl3386534920%_)
                                  (let ((_%e3391534535%_
                                         (gx#syntax-e _%tl3386534920%_)))
                                    (let ((_%tl3391734542%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3391534535%_)))
                                          (_%hd3391634539%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3391534535%_))))
                                      (if (gx#stx-null? _%tl3391734542%_)
                                          (_%__kont3767837679%_
                                           _%hd3391634539%_)
                                          (_%__match3790237903%_
                                           _%e3386334913%_
                                           _%hd3386434917%_
                                           _%tl3386534920%_))))
                                  (_%__match3790237903%_
                                   _%e3386334913%_
                                   _%hd3386434917%_
                                   _%tl3386534920%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39887_|
                                   _%hd3386434917%_)
                                  (if (gx#stx-pair? _%tl3386534920%_)
                                      (let ((_%e3392434474%_
                                             (gx#syntax-e _%tl3386534920%_)))
                                        (let ((_%tl3392634481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3392434474%_)))
                                              (_%hd3392534478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3392434474%_))))
                                          (if (gx#stx-null? _%tl3392634481%_)
                                              (_%__kont3768237683%_
                                               _%hd3392534478%_)
                                              (_%__kont3768437685%_
                                               _%tl3386534920%_))))
                                      (_%__kont3768437685%_ _%tl3386534920%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39888_|
                                       _%hd3386434917%_)
                                      (_%__kont3768637687%_ _%tl3386534920%_)
                                      (_%__match3790237903%_
                                       _%e3386334913%_
                                       _%hd3386434917%_
                                       _%tl3386534920%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3790237903%_
                                       _%e3386334913%_
                                       _%hd3386434917%_
                                       _%tl3386534920%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3384334518%_))))))))
                 (_%parse-list33476%_
                  (lambda (_%body33656%_)
                    (let* ((_%__stx3799137992%_ _%body33656%_)
                           (_%g3366233691%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3799137992%_))))
                      (let ((_%__kont3799437995%_
                             (lambda (_%L33815%_)
                               (_%parse133474%_ _%L33815%_)))
                            (_%__kont3799637997%_
                             (lambda (_%L33767%_ _%L33769%_ _%L33770%_)
                               (cons 'splice:
                                     (cons (_%parse133474%_ _%L33770%_)
                                           (cons (_%parse-list33476%_
                                                  _%L33767%_)
                                                 '())))))
                            (_%__kont3799837999%_
                             (lambda (_%L33725%_ _%L33727%_)
                               (cons 'cons:
                                     (cons (_%parse133474%_ _%L33727%_)
                                           (cons (_%parse-list33476%_
                                                  _%L33725%_)
                                                 '())))))
                            (_%__kont3800038001%_
                             (lambda ()
                               (if (gx#stx-null? _%body33656%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33656%_)
                                       (_%parse-error33481%_ _%body33656%_)
                                       (_%parse133474%_ _%body33656%_))))))
                        (let* ((_%__match3804038041%_
                                (lambda (_%e3368333715%_
                                         _%hd3368433719%_
                                         _%tl3368533722%_)
                                  (let ((_%L33725%_ _%tl3368533722%_)
                                        (_%L33727%_ _%hd3368433719%_))
                                    (if (gx#ellipsis? _%L33727%_)
                                        (_%__kont3800038001%_)
                                        (_%__kont3799837999%_
                                         _%L33725%_
                                         _%L33727%_)))))
                               (_%__match3803438035%_
                                (lambda (_%e3367533747%_
                                         _%hd3367633751%_
                                         _%tl3367733754%_
                                         _%e3367833757%_
                                         _%hd3367933761%_
                                         _%tl3368033764%_)
                                  (let ((_%L33767%_ _%tl3368033764%_)
                                        (_%L33769%_ _%hd3367933761%_)
                                        (_%L33770%_ _%hd3367633751%_))
                                    (if (gx#ellipsis? _%L33769%_)
                                        (_%__kont3799637997%_
                                         _%L33767%_
                                         _%L33769%_
                                         _%L33770%_)
                                        (_%__match3804038041%_
                                         _%e3367533747%_
                                         _%hd3367633751%_
                                         _%tl3367733754%_))))))
                          (if (gx#stx-pair? _%__stx3799137992%_)
                              (let ((_%e3366533791%_
                                     (gx#syntax-e _%__stx3799137992%_)))
                                (let ((_%tl3366733798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3366533791%_)))
                                      (_%hd3366633795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3366533791%_))))
                                  (if (gx#stx-datum? _%hd3366633795%_)
                                      (let ((_%e3366833801%_
                                             (gx#stx-e _%hd3366633795%_)))
                                        (if (equal? _%e3366833801%_ '::)
                                            (if (gx#stx-pair? _%tl3366733798%_)
                                                (let ((_%e3366933805%_
                                                       (gx#syntax-e
                                                        _%tl3366733798%_)))
                                                  (let ((_%tl3367133812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3366933805%_)))
                                                        (_%hd3367033809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3366933805%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3367133812%_)
                                                        (_%__kont3799437995%_
                                                         _%hd3367033809%_)
                                                        (_%__match3803438035%_
                                                         _%e3366533791%_
                                                         _%hd3366633795%_
                                                         _%tl3366733798%_
                                                         _%e3366933805%_
                                                         _%hd3367033809%_
                                                         _%tl3367133812%_))))
                                                (_%__match3804038041%_
                                                 _%e3366533791%_
                                                 _%hd3366633795%_
                                                 _%tl3366733798%_))
                                            (if (gx#stx-pair? _%tl3366733798%_)
                                                (let ((_%e3367833757%_
                                                       (gx#syntax-e
                                                        _%tl3366733798%_)))
                                                  (let ((_%tl3368033764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3367833757%_)))
                                                        (_%hd3367933761%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3367833757%_))))
                                                    (_%__match3803438035%_
                                                     _%e3366533791%_
                                                     _%hd3366633795%_
                                                     _%tl3366733798%_
                                                     _%e3367833757%_
                                                     _%hd3367933761%_
                                                     _%tl3368033764%_)))
                                                (_%__match3804038041%_
                                                 _%e3366533791%_
                                                 _%hd3366633795%_
                                                 _%tl3366733798%_))))
                                      (if (gx#stx-pair? _%tl3366733798%_)
                                          (let ((_%e3367833757%_
                                                 (gx#syntax-e
                                                  _%tl3366733798%_)))
                                            (let ((_%tl3368033764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3367833757%_)))
                                                  (_%hd3367933761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3367833757%_))))
                                              (_%__match3803438035%_
                                               _%e3366533791%_
                                               _%hd3366633795%_
                                               _%tl3366733798%_
                                               _%e3367833757%_
                                               _%hd3367933761%_
                                               _%tl3368033764%_)))
                                          (_%__match3804038041%_
                                           _%e3366533791%_
                                           _%hd3366633795%_
                                           _%tl3366733798%_)))))
                              (_%__kont3800038001%_)))))))
                 (_%parse-vector33477%_
                  (lambda (_%body33653%_)
                    (if (_%simple-vector?33478%_ _%body33653%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133474%_ _%body33653%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33476%_ _%body33653%_)
                                    '())))))
                 (_%simple-vector?33478%_
                  (lambda (_%body33590%_)
                    (let* ((_%__stx3804338044%_ _%body33590%_)
                           (_%g3359433606%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3804338044%_))))
                      (let ((_%__kont3804638047%_
                             (lambda (_%L33634%_ _%L33636%_)
                               (if (gx#ellipsis? _%L33636%_)
                                   '#f
                                   (_%simple-vector?33478%_ _%L33634%_))))
                            (_%__kont3804838049%_
                             (lambda () (gx#stx-null? _%body33590%_))))
                        (if (gx#stx-pair? _%__stx3804338044%_)
                            (let ((_%e3359833624%_
                                   (gx#syntax-e _%__stx3804338044%_)))
                              (let ((_%tl3360033631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3359833624%_)))
                                    (_%hd3359933628%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3359833624%_))))
                                (_%__kont3804638047%_
                                 _%tl3360033631%_
                                 _%hd3359933628%_)))
                            (_%__kont3804838049%_))))))
                 (_%parse-class-body33479%_
                  (lambda (_%body33499%_)
                    (let _%recur33502%_ ((_%rest33505%_ _%body33499%_))
                      (let* ((_%__stx3805938060%_ _%rest33505%_)
                             (_%g3350933525%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3805938060%_))))
                        (let ((_%__kont3806238063%_
                               (lambda (_%L33563%_ _%L33565%_ _%L33566%_)
                                 (cons _%L33566%_
                                       (cons (_%parse133474%_ _%L33565%_)
                                             (_%recur33502%_ _%L33563%_)))))
                              (_%__kont3806438065%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33505%_)
                                     '()
                                     (_%parse-error33481%_ _%rest33505%_)))))
                          (let ((_%__match3807838079%_
                                 (lambda (_%e3351433543%_
                                          _%hd3351533547%_
                                          _%tl3351633550%_
                                          _%e3351733553%_
                                          _%hd3351833557%_
                                          _%tl3351933560%_)
                                   (let ((_%L33563%_ _%tl3351933560%_)
                                         (_%L33565%_ _%hd3351833557%_)
                                         (_%L33566%_ _%hd3351533547%_))
                                     (if (gx#stx-keyword? _%L33566%_)
                                         (_%__kont3806238063%_
                                          _%L33563%_
                                          _%L33565%_
                                          _%L33566%_)
                                         (_%__kont3806438065%_))))))
                            (if (gx#stx-pair? _%__stx3805938060%_)
                                (let ((_%e3351433543%_
                                       (gx#syntax-e _%__stx3805938060%_)))
                                  (let ((_%tl3351633550%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3351433543%_)))
                                        (_%hd3351533547%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3351433543%_))))
                                    (if (gx#stx-pair? _%tl3351633550%_)
                                        (let ((_%e3351733553%_
                                               (gx#syntax-e _%tl3351633550%_)))
                                          (let ((_%tl3351933560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3351733553%_)))
                                                (_%hd3351833557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3351733553%_))))
                                            (_%__match3807838079%_
                                             _%e3351433543%_
                                             _%hd3351533547%_
                                             _%tl3351633550%_
                                             _%e3351733553%_
                                             _%hd3351833557%_
                                             _%tl3351933560%_)))
                                        (_%__kont3806438065%_))))
                                (_%__kont3806438065%_))))))))
                 (_%parse-qq33480%_
                  (lambda (_%hd33486%_)
                    (let ((_%g3348833495%_
                           (lambda (_%g3348933491%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3348933491%_))))
                      (_%g3348833495%_ _%hd33486%_))))
                 (_%parse-error33481%_
                  (lambda (_%hd33483%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33472%_
                               (cons _%match-stx33472%_
                                     (cons _%stx33470%_
                                           (cons _%hd33483%_ '())))
                               (cons _%stx33470%_ (cons _%hd33483%_ '())))))))
          (_%parse133474%_ _%stx33470%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35160%_)
        (let ((_%match-stx35163%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35160%_
           _%match-stx35163%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39890_
        (let ((_g39889_ (let () (declare (not safe)) (##length _g39890_))))
          (cond ((let () (declare (not safe)) (##fx= _g39889_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39890_))
                ((let () (declare (not safe)) (##fx= _g39889_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39890_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33455%_)
        (let ((__tmp39891
               (lambda (_%E33458%_)
                 (with-exception-handler
                  (let ((_%E!33461%_ (current-exception-handler)))
                    (lambda (_%e33464%_)
                      (if (syntax-error? _%e33464%_)
                          (_%E33458%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33461%_ _%e33464%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33455%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39891))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32190%_)
        (letrec ((_%loop32193%_
                  (lambda (_%ptree32480%_ _%vars32482%_ _%K32483%_)
                    (let* ((_%__stx3817738178%_ _%ptree32480%_)
                           (_%g3249632606%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3817738178%_))))
                      (let ((_%__kont3818038181%_
                             (lambda (_%L33236%_)
                               (let* ((_%__stx3809738098%_ _%L33236%_)
                                      (_%g3325333287%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3809738098%_))))
                                 (let ((_%__kont3810038101%_
                                        (lambda (_%L33436%_)
                                          (_%loop32193%_
                                           _%L33436%_
                                           _%vars32482%_
                                           _%K32483%_)))
                                       (_%__kont3810238103%_
                                        (lambda (_%L33405%_)
                                          (_%loop32193%_
                                           _%L33405%_
                                           _%vars32482%_
                                           _%K32483%_)))
                                       (_%__kont3810438105%_
                                        (lambda (_%L33353%_)
                                          (_%loop32193%_
                                           _%L33353%_
                                           _%vars32482%_
                                           _%K32483%_)))
                                       (_%__kont3810638107%_
                                        (lambda ()
                                          (_%K32483%_ _%vars32482%_))))
                                   (if (gx#stx-pair? _%__stx3809738098%_)
                                       (let ((_%e3325633426%_
                                              (gx#syntax-e
                                               _%__stx3809738098%_)))
                                         (let ((_%tl3325833433%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3325633426%_)))
                                               (_%hd3325733430%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3325633426%_))))
                                           (if (gx#stx-null? _%tl3325833433%_)
                                               (_%__kont3810038101%_
                                                _%hd3325733430%_)
                                               (if (gx#stx-datum?
                                                    _%hd3325733430%_)
                                                   (let ((_%e3326333391%_
                                                          (gx#stx-e
                                                           _%hd3325733430%_)))
                                                     (if (equal? _%e3326333391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3325833433%_)
                     (let ((_%e3326433395%_ (gx#syntax-e _%tl3325833433%_)))
                       (let ((_%tl3326633402%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3326433395%_)))
                             (_%hd3326533399%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3326433395%_))))
                         (if (gx#stx-null? _%tl3326633402%_)
                             (_%__kont3810238103%_ _%hd3326533399%_)
                             (_%__kont3810638107%_))))
                     (_%__kont3810638107%_))
                 (if (equal? _%e3326333391%_ '::)
                     (if (gx#stx-pair? _%tl3325833433%_)
                         (let ((_%e3327233319%_
                                (gx#syntax-e _%tl3325833433%_)))
                           (let ((_%tl3327433326%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3327233319%_)))
                                 (_%hd3327333323%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3327233319%_))))
                             (if (gx#stx-pair? _%tl3327433326%_)
                                 (let ((_%e3327533329%_
                                        (gx#syntax-e _%tl3327433326%_)))
                                   (let ((_%tl3327733336%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3327533329%_)))
                                         (_%hd3327633333%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3327533329%_))))
                                     (if (gx#stx-datum? _%hd3327633333%_)
                                         (let ((_%e3327833339%_
                                                (gx#stx-e _%hd3327633333%_)))
                                           (if (equal? _%e3327833339%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3327733336%_)
                                                   (let ((_%e3327933343%_
                                                          (gx#syntax-e
                                                           _%tl3327733336%_)))
                                                     (let ((_%tl3328133350%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3327933343%_)))
                                                           (_%hd3328033347%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3327933343%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3328133350%_)
                                                           (_%__kont3810438105%_
                                                            _%hd3328033347%_)
                                                           (_%__kont3810638107%_))))
                                                   (_%__kont3810638107%_))
                                               (_%__kont3810638107%_)))
                                         (_%__kont3810638107%_))))
                                 (_%__kont3810638107%_))))
                         (_%__kont3810638107%_))
                     (_%__kont3810638107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3810638107%_)))))
                                       (_%__kont3810638107%_))))))
                            (_%__kont3818238183%_
                             (lambda (_%L33123%_ _%L33125%_)
                               (let* ((_%__stx3808138082%_ _%L33123%_)
                                      (_%g3314133153%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3808138082%_))))
                                 (let ((_%__kont3808438085%_
                                        (lambda (_%L33181%_ _%L33183%_)
                                          (_%loop32193%_
                                           _%L33183%_
                                           _%vars32482%_
                                           (lambda (_%g3319533197%_)
                                             (_%loop32193%_
                                              (cons _%L33125%_ _%L33181%_)
                                              _%g3319533197%_
                                              _%K32483%_)))))
                                       (_%__kont3808638087%_
                                        (lambda ()
                                          (_%K32483%_ _%vars32482%_))))
                                   (if (gx#stx-pair? _%__stx3808138082%_)
                                       (let ((_%e3314533171%_
                                              (gx#syntax-e
                                               _%__stx3808138082%_)))
                                         (let ((_%tl3314733178%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3314533171%_)))
                                               (_%hd3314633175%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3314533171%_))))
                                           (_%__kont3808438085%_
                                            _%tl3314733178%_
                                            _%hd3314633175%_)))
                                       (_%__kont3808638087%_))))))
                            (_%__kont3818438185%_
                             (lambda (_%L33092%_)
                               (_%loop32193%_
                                _%L33092%_
                                _%vars32482%_
                                _%K32483%_)))
                            (_%__kont3818638187%_
                             (lambda (_%L33038%_ _%L33040%_)
                               (_%loop32193%_
                                _%L33040%_
                                _%vars32482%_
                                (lambda (_%g3305533057%_)
                                  (_%loop32193%_
                                   _%L33038%_
                                   _%g3305533057%_
                                   _%K32483%_)))))
                            (_%__kont3818838189%_
                             (lambda (_%L32974%_ _%L32976%_)
                               (_%loop32193%_
                                _%L32976%_
                                _%vars32482%_
                                (lambda (_%g3299132993%_)
                                  (_%loop32193%_
                                   _%L32974%_
                                   _%g3299132993%_
                                   _%K32483%_)))))
                            (_%__kont3819038191%_
                             (lambda (_%L32919%_)
                               (_%loop32193%_
                                _%L32919%_
                                _%vars32482%_
                                _%K32483%_)))
                            (_%__kont3819238193%_
                             (lambda (_%L32869%_ _%L32871%_)
                               (_%loop-vector32195%_
                                _%L32869%_
                                _%vars32482%_
                                _%K32483%_)))
                            (_%__kont3819438195%_
                             (lambda (_%L32826%_)
                               (_%loop-vector32195%_
                                _%L32826%_
                                _%vars32482%_
                                _%K32483%_)))
                            (_%__kont3819638197%_
                             (lambda (_%L32769%_)
                               (_%loop-class-list32197%_
                                _%L32769%_
                                _%vars32482%_
                                _%K32483%_)))
                            (_%__kont3819838199%_
                             (lambda (_%L32710%_ _%L32712%_)
                               (_%loop32193%_
                                _%L32710%_
                                _%vars32482%_
                                _%K32483%_)))
                            (_%__kont3820038201%_
                             (lambda (_%L32648%_)
                               (if (find (lambda (_%g3266332665%_)
                                           (gx#bound-identifier=?
                                            _%g3266332665%_
                                            _%L32648%_))
                                         _%vars32482%_)
                                   (_%K32483%_ _%vars32482%_)
                                   (_%K32483%_
                                    (cons _%L32648%_ _%vars32482%_)))))
                            (_%__kont3820238203%_
                             (lambda () (_%K32483%_ _%vars32482%_))))
                        (let* ((_%__match3833438335%_
                                (lambda (_%e3255332849%_
                                         _%hd3255432853%_
                                         _%tl3255532856%_
                                         _%e3255632859%_
                                         _%hd3255732863%_
                                         _%tl3255832866%_)
                                  (let ((_%L32869%_ _%hd3255732863%_)
                                        (_%L32871%_ _%hd3255432853%_))
                                    (if (or (gx#stx-eq? 'values: _%L32871%_)
                                            (gx#stx-eq? 'vector: _%L32871%_))
                                        (_%__kont3819238193%_
                                         _%L32869%_
                                         _%L32871%_)
                                        (if (gx#stx-datum? _%hd3255432853%_)
                                            (let ((_%e3256332802%_
                                                   (gx#stx-e
                                                    _%hd3255432853%_)))
                                              (if (equal? _%e3256332802%_
                                                          'struct:)
                                                  (_%__kont3820238203%_)
                                                  (if (equal? _%e3256332802%_
                                                              'class:)
                                                      (_%__kont3820238203%_)
                                                      (if (equal? _%e3256332802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3820238203%_)
                  (if (equal? _%e3256332802%_ 'var:)
                      (_%__kont3820038201%_ _%hd3255732863%_)
                      (_%__kont3820238203%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3820238203%_))))))
                               (_%__match3822838229%_
                                (lambda (_%e3250833113%_
                                         _%hd3250933117%_
                                         _%tl3251033120%_)
                                  (let ((_%L33123%_ _%tl3251033120%_)
                                        (_%L33125%_ _%hd3250933117%_))
                                    (if (or (gx#stx-eq? 'and: _%L33125%_)
                                            (gx#stx-eq? 'or: _%L33125%_))
                                        (_%__kont3818238183%_
                                         _%L33123%_
                                         _%L33125%_)
                                        (if (gx#stx-datum? _%hd3250933117%_)
                                            (let ((_%e3251533078%_
                                                   (gx#stx-e
                                                    _%hd3250933117%_)))
                                              (if (equal? _%e3251533078%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3251033120%_)
                                                      (let ((_%e3251633082%_
                                                             (gx#syntax-e
                                                              _%tl3251033120%_)))
                                                        (let ((_%tl3251833089%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3251633082%_)))
                      (_%hd3251733086%_
                       (let () (declare (not safe)) (##car _%e3251633082%_))))
                  (if (gx#stx-null? _%tl3251833089%_)
                      (_%__kont3818438185%_ _%hd3251733086%_)
                      (_%__kont3820238203%_))))
              (_%__kont3820238203%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3251533078%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3251033120%_)
                                                          (let ((_%e3252533018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3251033120%_)))
                    (let ((_%tl3252733025%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3252533018%_)))
                          (_%hd3252633022%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3252533018%_))))
                      (if (gx#stx-pair? _%tl3252733025%_)
                          (let ((_%e3252833028%_
                                 (gx#syntax-e _%tl3252733025%_)))
                            (let ((_%tl3253033035%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3252833028%_)))
                                  (_%hd3252933032%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3252833028%_))))
                              (if (gx#stx-null? _%tl3253033035%_)
                                  (_%__kont3818638187%_
                                   _%hd3252933032%_
                                   _%hd3252633022%_)
                                  (_%__kont3820238203%_))))
                          (if (gx#stx-null? _%tl3252733025%_)
                              (_%__match3833438335%_
                               _%e3250833113%_
                               _%hd3250933117%_
                               _%tl3251033120%_
                               _%e3252533018%_
                               _%hd3252633022%_
                               _%tl3252733025%_)
                              (_%__kont3820238203%_)))))
                  (_%__kont3820238203%_))
              (if (equal? _%e3251533078%_ 'splice:)
                  (if (gx#stx-pair? _%tl3251033120%_)
                      (let ((_%e3253732954%_ (gx#syntax-e _%tl3251033120%_)))
                        (let ((_%tl3253932961%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3253732954%_)))
                              (_%hd3253832958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3253732954%_))))
                          (if (gx#stx-pair? _%tl3253932961%_)
                              (let ((_%e3254032964%_
                                     (gx#syntax-e _%tl3253932961%_)))
                                (let ((_%tl3254232971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3254032964%_)))
                                      (_%hd3254132968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3254032964%_))))
                                  (if (gx#stx-null? _%tl3254232971%_)
                                      (_%__kont3818838189%_
                                       _%hd3254132968%_
                                       _%hd3253832958%_)
                                      (_%__kont3820238203%_))))
                              (if (gx#stx-null? _%tl3253932961%_)
                                  (_%__match3833438335%_
                                   _%e3250833113%_
                                   _%hd3250933117%_
                                   _%tl3251033120%_
                                   _%e3253732954%_
                                   _%hd3253832958%_
                                   _%tl3253932961%_)
                                  (_%__kont3820238203%_)))))
                      (_%__kont3820238203%_))
                  (if (equal? _%e3251533078%_ 'box:)
                      (if (gx#stx-pair? _%tl3251033120%_)
                          (let ((_%e3254832909%_
                                 (gx#syntax-e _%tl3251033120%_)))
                            (let ((_%tl3255032916%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3254832909%_)))
                                  (_%hd3254932913%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3254832909%_))))
                              (if (gx#stx-null? _%tl3255032916%_)
                                  (_%__kont3819038191%_ _%hd3254932913%_)
                                  (_%__kont3820238203%_))))
                          (_%__kont3820238203%_))
                      (if (gx#stx-pair? _%tl3251033120%_)
                          (let ((_%e3255632859%_
                                 (gx#syntax-e _%tl3251033120%_)))
                            (let ((_%tl3255832866%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3255632859%_)))
                                  (_%hd3255732863%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3255632859%_))))
                              (if (gx#stx-null? _%tl3255832866%_)
                                  (_%__match3833438335%_
                                   _%e3250833113%_
                                   _%hd3250933117%_
                                   _%tl3251033120%_
                                   _%e3255632859%_
                                   _%hd3255732863%_
                                   _%tl3255832866%_)
                                  (if (equal? _%e3251533078%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3255832866%_)
                                          (let ((_%e3256732816%_
                                                 (gx#syntax-e
                                                  _%tl3255832866%_)))
                                            (let ((_%tl3256932823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3256732816%_)))
                                                  (_%hd3256832820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3256732816%_))))
                                              (if (gx#stx-null?
                                                   _%tl3256932823%_)
                                                  (_%__kont3819438195%_
                                                   _%hd3256832820%_)
                                                  (_%__kont3820238203%_))))
                                          (_%__kont3820238203%_))
                                      (if (equal? _%e3251533078%_ 'class:)
                                          (if (gx#stx-pair? _%tl3255832866%_)
                                              (let ((_%e3257832759%_
                                                     (gx#syntax-e
                                                      _%tl3255832866%_)))
                                                (let ((_%tl3258032766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3257832759%_)))
                                                      (_%hd3257932763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3257832759%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3258032766%_)
                                                      (_%__kont3819638197%_
                                                       _%hd3257932763%_)
                                                      (_%__kont3820238203%_))))
                                              (_%__kont3820238203%_))
                                          (if (equal? _%e3251533078%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3255832866%_)
                                                  (let ((_%e3259032700%_
                                                         (gx#syntax-e
                                                          _%tl3255832866%_)))
                                                    (let ((_%tl3259232707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3259032700%_)))
                                                          (_%hd3259132704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3259032700%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3259232707%_)
                                                          (_%__kont3819838199%_
                                                           _%hd3259132704%_
                                                           _%hd3255732863%_)
                                                          (_%__kont3820238203%_))))
                                                  (_%__kont3820238203%_))
                                              (_%__kont3820238203%_)))))))
                          (_%__kont3820238203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3251033120%_)
                                                (let ((_%e3255632859%_
                                                       (gx#syntax-e
                                                        _%tl3251033120%_)))
                                                  (let ((_%tl3255832866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3255632859%_)))
                                                        (_%hd3255732863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3255632859%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3255832866%_)
                                                        (_%__match3833438335%_
                                                         _%e3250833113%_
                                                         _%hd3250933117%_
                                                         _%tl3251033120%_
                                                         _%e3255632859%_
                                                         _%hd3255732863%_
                                                         _%tl3255832866%_)
                                                        (_%__kont3820238203%_))))
                                                (_%__kont3820238203%_))))))))
                          (if (gx#stx-pair? _%__stx3817738178%_)
                              (let ((_%e3249933212%_
                                     (gx#syntax-e _%__stx3817738178%_)))
                                (let ((_%tl3250133219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3249933212%_)))
                                      (_%hd3250033216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3249933212%_))))
                                  (if (gx#stx-datum? _%hd3250033216%_)
                                      (let ((_%e3250233222%_
                                             (gx#stx-e _%hd3250033216%_)))
                                        (if (equal? _%e3250233222%_ '?:)
                                            (if (gx#stx-pair? _%tl3250133219%_)
                                                (let ((_%e3250333226%_
                                                       (gx#syntax-e
                                                        _%tl3250133219%_)))
                                                  (let ((_%tl3250533233%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3250333226%_)))
                                                        (_%hd3250433230%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3250333226%_))))
                                                    (_%__kont3818038181%_
                                                     _%tl3250533233%_)))
                                                (_%__match3822838229%_
                                                 _%e3249933212%_
                                                 _%hd3250033216%_
                                                 _%tl3250133219%_))
                                            (_%__match3822838229%_
                                             _%e3249933212%_
                                             _%hd3250033216%_
                                             _%tl3250133219%_)))
                                      (_%__match3822838229%_
                                       _%e3249933212%_
                                       _%hd3250033216%_
                                       _%tl3250133219%_))))
                              (_%__kont3820238203%_)))))))
                 (_%loop-vector32195%_
                  (lambda (_%body32356%_ _%vars32358%_ _%K32359%_)
                    (let* ((_%__stx3843538436%_ _%body32356%_)
                           (_%g3236232385%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3843538436%_))))
                      (let ((_%__kont3843838439%_
                             (lambda (_%L32462%_)
                               (_%loop-list32196%_
                                _%L32462%_
                                _%vars32358%_
                                _%K32359%_)))
                            (_%__kont3844038441%_
                             (lambda (_%L32416%_)
                               (_%loop32193%_
                                _%L32416%_
                                _%vars32358%_
                                _%K32359%_))))
                        (if (gx#stx-pair? _%__stx3843538436%_)
                            (let ((_%e3236532438%_
                                   (gx#syntax-e _%__stx3843538436%_)))
                              (let ((_%tl3236732445%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3236532438%_)))
                                    (_%hd3236632442%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3236532438%_))))
                                (if (gx#stx-datum? _%hd3236632442%_)
                                    (let ((_%e3236832448%_
                                           (gx#stx-e _%hd3236632442%_)))
                                      (if (equal? _%e3236832448%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3236732445%_)
                                              (let ((_%e3236932452%_
                                                     (gx#syntax-e
                                                      _%tl3236732445%_)))
                                                (let ((_%tl3237132459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3236932452%_)))
                                                      (_%hd3237032456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3236932452%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3237132459%_)
                                                      (_%__kont3843838439%_
                                                       _%hd3237032456%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3236232385%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3236232385%_)))
                                          (if (equal? _%e3236832448%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3236732445%_)
                                                  (let ((_%e3237732406%_
                                                         (gx#syntax-e
                                                          _%tl3236732445%_)))
                                                    (let ((_%tl3237932413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3237732406%_)))
                                                          (_%hd3237832410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3237732406%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3237932413%_)
                                                          (_%__kont3844038441%_
                                                           _%hd3237832410%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3236232385%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3236232385%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3236232385%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3236232385%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3236232385%_)))))))
                 (_%loop-list32196%_
                  (lambda (_%rest32286%_ _%vars32288%_ _%K32289%_)
                    (let* ((_%__stx3848538486%_ _%rest32286%_)
                           (_%g3229232304%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3848538486%_))))
                      (let ((_%__kont3848838489%_
                             (lambda (_%L32332%_ _%L32334%_)
                               (_%loop32193%_
                                _%L32334%_
                                _%vars32288%_
                                (lambda (_%g3234632348%_)
                                  (_%loop-list32196%_
                                   _%L32332%_
                                   _%g3234632348%_
                                   _%K32289%_)))))
                            (_%__kont3849038491%_
                             (lambda () (_%K32289%_ _%vars32288%_))))
                        (if (gx#stx-pair? _%__stx3848538486%_)
                            (let ((_%e3229632322%_
                                   (gx#syntax-e _%__stx3848538486%_)))
                              (let ((_%tl3229832329%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3229632322%_)))
                                    (_%hd3229732326%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3229632322%_))))
                                (_%__kont3848838489%_
                                 _%tl3229832329%_
                                 _%hd3229732326%_)))
                            (_%__kont3849038491%_))))))
                 (_%loop-class-list32197%_
                  (lambda (_%rest32199%_ _%vars32201%_ _%K32202%_)
                    (let* ((_%__stx3850138502%_ _%rest32199%_)
                           (_%g3220532220%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3850138502%_))))
                      (let ((_%__kont3850438505%_
                             (lambda (_%L32258%_ _%L32260%_)
                               (_%loop32193%_
                                _%L32260%_
                                _%vars32201%_
                                (lambda (_%g3227632278%_)
                                  (_%loop-class-list32197%_
                                   _%L32258%_
                                   _%g3227632278%_
                                   _%K32202%_)))))
                            (_%__kont3850638507%_
                             (lambda () (_%K32202%_ _%vars32201%_))))
                        (if (gx#stx-pair? _%__stx3850138502%_)
                            (let ((_%e3220932238%_
                                   (gx#syntax-e _%__stx3850138502%_)))
                              (let ((_%tl3221132245%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3220932238%_)))
                                    (_%hd3221032242%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3220932238%_))))
                                (if (gx#stx-pair? _%tl3221132245%_)
                                    (let ((_%e3221232248%_
                                           (gx#syntax-e _%tl3221132245%_)))
                                      (let ((_%tl3221432255%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3221232248%_)))
                                            (_%hd3221332252%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3221232248%_))))
                                        (_%__kont3850438505%_
                                         _%tl3221432255%_
                                         _%hd3221332252%_)))
                                    (_%__kont3850638507%_))))
                            (_%__kont3850638507%_)))))))
          (_%loop32193%_ _%ptree32190%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29135%_ _%tgt29137%_ _%ptree29138%_ _%K29139%_ _%E29140%_)
        (letrec ((_%generate129142%_
                  (lambda (_%tgt30389%_ _%ptree30391%_ _%K30392%_ _%E30393%_)
                    (let* ((_%g3039530403%_
                            (lambda (_%g3039630399%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3039630399%_)))
                           (_%g3039432186%_
                            (lambda (_%g3039630407%_)
                              ((lambda (_%L30410%_)
                                 (let* ((_%__stx3873738738%_ _%ptree30391%_)
                                        (_%g3043730579%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3873738738%_))))
                                   (let ((_%__kont3874038741%_
                                          (lambda (_%L31901%_ _%L31903%_)
                                            (let* ((_%__stx3865538656%_
                                                    _%L31901%_)
                                                   (_%g3192031955%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3865538656%_))))
                                              (let ((_%__kont3865838659%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31903%_ (cons _%L30410%_ '())))
                           (cons _%K30392%_ (cons _%E30393%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3866038661%_
                                                     (lambda (_%L32156%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31903%_ (cons _%L30410%_ '())))
                           (cons (_%generate129142%_
                                  _%tgt30389%_
                                  _%L32156%_
                                  _%K30392%_
                                  _%E30393%_)
                                 (cons _%E30393%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3866238663%_
                                                     (lambda (_%L32094%_)
                                                       (let* ((_%g3210832116%_
                                                               (lambda (_%g3210932112%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3210932112%_)))
                      (_%g3210732135%_
                       (lambda (_%g3210932120%_)
                         ((lambda (_%L32123%_)
                            (cons 'let
                                  (cons (cons (cons _%L32123%_
                                                    (cons (cons _%L31903%_
                                                                (cons _%L30410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32123%_
                                                          (cons (_%generate129142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32123%_
                         _%L32094%_
                         _%K30392%_
                         _%E30393%_)
                        (cons _%E30393%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3210932120%_))))
                 (_%g3210732135%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3866438665%_
                                                     (lambda (_%L32010%_
                                                              _%L32012%_)
                                                       (let* ((_%g3203232040%_
                                                               (lambda (_%g3203332036%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3203332036%_)))
                      (_%g3203132059%_
                       (lambda (_%g3203332044%_)
                         ((lambda (_%L32047%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31903%_
                                                    (cons _%L30410%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L32012%_ (cons _%L30410%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129142%_
                         _%L32047%_
                         _%L32010%_
                         _%K30392%_
                         _%E30393%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30393%_ '())))))
                          _%g3203332044%_))))
                 (_%g3203132059%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3191732167%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3865538656%_)
                                                             (let ((_%e3192332146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3865538656%_)))
                       (let ((_%tl3192532153%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3192332146%_)))
                             (_%hd3192432150%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3192332146%_))))
                         (if (gx#stx-null? _%tl3192532153%_)
                             (_%__kont3866038661%_ _%hd3192432150%_)
                             (if (gx#stx-datum? _%hd3192432150%_)
                                 (let ((_%e3193032080%_
                                        (gx#stx-e _%hd3192432150%_)))
                                   (if (equal? _%e3193032080%_ '=>:)
                                       (if (gx#stx-pair? _%tl3192532153%_)
                                           (let ((_%e3193132084%_
                                                  (gx#syntax-e
                                                   _%tl3192532153%_)))
                                             (let ((_%tl3193332091%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3193132084%_)))
                                                   (_%hd3193232088%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3193132084%_))))
                                               (if (gx#stx-null?
                                                    _%tl3193332091%_)
                                                   (_%__kont3866238663%_
                                                    _%hd3193232088%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3192031955%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3192031955%_)))
                                       (if (equal? _%e3193032080%_ '::)
                                           (if (gx#stx-pair? _%tl3192532153%_)
                                               (let ((_%e3194031976%_
                                                      (gx#syntax-e
                                                       _%tl3192532153%_)))
                                                 (let ((_%tl3194231983%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3194031976%_)))
                                                       (_%hd3194131980%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3194031976%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3194231983%_)
                                                       (let ((_%e3194331986%_
                                                              (gx#syntax-e
                                                               _%tl3194231983%_)))
                                                         (let ((_%tl3194531993%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3194331986%_)))
                       (_%hd3194431990%_
                        (let () (declare (not safe)) (##car _%e3194331986%_))))
                   (if (gx#stx-datum? _%hd3194431990%_)
                       (let ((_%e3194631996%_ (gx#stx-e _%hd3194431990%_)))
                         (if (equal? _%e3194631996%_ '=>:)
                             (if (gx#stx-pair? _%tl3194531993%_)
                                 (let ((_%e3194732000%_
                                        (gx#syntax-e _%tl3194531993%_)))
                                   (let ((_%tl3194932007%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3194732000%_)))
                                         (_%hd3194832004%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3194732000%_))))
                                     (if (gx#stx-null? _%tl3194932007%_)
                                         (_%__kont3866438665%_
                                          _%hd3194832004%_
                                          _%hd3194131980%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3192031955%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3192031955%_)))
                             (let () (declare (not safe)) (_%g3192031955%_))))
                       (let () (declare (not safe)) (_%g3192031955%_)))))
               (let () (declare (not safe)) (_%g3192031955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3192031955%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3192031955%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3192031955%_))))))
                     (let () (declare (not safe)) (_%g3192031955%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3865538656%_)
                                                      (_%__kont3865838659%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3191732167%_))))))))
                                         (_%__kont3874238743%_
                                          (lambda (_%L31798%_)
                                            (let* ((_%__stx3863938640%_
                                                    _%L31798%_)
                                                   (_%g3181131823%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3863938640%_))))
                                              (let ((_%__kont3864238643%_
                                                     (lambda (_%L31851%_
                                                              _%L31853%_)
                                                       (_%generate129142%_
                                                        _%tgt30389%_
                                                        _%L31853%_
                                                        (_%generate129142%_
                                                         _%tgt30389%_
                                                         (cons 'and:
                                                               _%L31851%_)
                                                         _%K30392%_
                                                         _%E30393%_)
                                                        _%E30393%_)))
                                                    (_%__kont3864438645%_
                                                     (lambda () _%K30392%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3863938640%_)
                                                    (let ((_%e3181531841%_
                                                           (gx#syntax-e
                                                            _%__stx3863938640%_)))
                                                      (let ((_%tl3181731848%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3181531841%_)))
                    (_%hd3181631845%_
                     (let () (declare (not safe)) (##car _%e3181531841%_))))
                (_%__kont3864238643%_ _%tl3181731848%_ _%hd3181631845%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3864438645%_))))))
                                         (_%__kont3874438745%_
                                          (lambda (_%L31705%_)
                                            (let* ((_%__stx3862338624%_
                                                    _%L31705%_)
                                                   (_%g3171831730%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3862338624%_))))
                                              (let ((_%__kont3862638627%_
                                                     (lambda (_%L31758%_
                                                              _%L31760%_)
                                                       (_%generate129142%_
                                                        _%tgt30389%_
                                                        _%L31760%_
                                                        _%K30392%_
                                                        (_%generate129142%_
                                                         _%tgt30389%_
                                                         (cons 'or: _%L31758%_)
                                                         _%K30392%_
                                                         _%E30393%_))))
                                                    (_%__kont3862838629%_
                                                     (lambda () _%E30393%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3862338624%_)
                                                    (let ((_%e3172231748%_
                                                           (gx#syntax-e
                                                            _%__stx3862338624%_)))
                                                      (let ((_%tl3172431755%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3172231748%_)))
                    (_%hd3172331752%_
                     (let () (declare (not safe)) (##car _%e3172231748%_))))
                (_%__kont3862638627%_ _%tl3172431755%_ _%hd3172331752%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3862838629%_))))))
                                         (_%__kont3874638747%_
                                          (lambda (_%L31670%_)
                                            (_%generate129142%_
                                             _%tgt30389%_
                                             _%L31670%_
                                             _%E30393%_
                                             _%K30392%_)))
                                         (_%__kont3874838749%_
                                          (lambda (_%L31544%_ _%L31546%_)
                                            (let* ((_%g3156331578%_
                                                    (lambda (_%g3156431574%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3156431574%_)))
                                                   (_%g3156231635%_
                                                    (lambda (_%g3156431582%_)
                                                      (if (gx#stx-pair?
                                                           _%g3156431582%_)
                                                          (let ((_%e3156731585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3156431582%_)))
                    (let ((_%hd3156831589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3156731585%_)))
                          (_%tl3156931592%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3156731585%_))))
                      (if (gx#stx-pair? _%tl3156931592%_)
                          (let ((_%e3157031595%_
                                 (gx#syntax-e _%tl3156931592%_)))
                            (let ((_%hd3157131599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3157031595%_)))
                                  (_%tl3157231602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3157031595%_))))
                              (if (gx#stx-null? _%tl3157231602%_)
                                  ((lambda (_%L31605%_ _%L31607%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%L30410%_ '()))
                                                 (cons (let ((_%hd-pat31623%_
                                                              (gx#stx-e
                                                               _%L31546%_))
                                                             (_%tl-pat31625%_
                                                              (gx#stx-e
                                                               _%L31544%_)))
                                                         (if (and (equal? _%hd-pat31623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31625%_ '(any:)))
                     _%K30392%_
                     (if (equal? _%tl-pat31625%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31607%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129142%_
                                            _%L31607%_
                                            _%L31546%_
                                            _%K30392%_
                                            _%E30393%_)
                                           '())))
                         (if (equal? _%hd-pat31623%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31605%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30410%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129142%_
                                                _%L31605%_
                                                _%L31544%_
                                                _%K30392%_
                                                _%E30393%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31607%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30410%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31605%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30410%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129142%_
                                                _%L31607%_
                                                _%L31546%_
                                                (_%generate129142%_
                                                 _%L31605%_
                                                 _%L31544%_
                                                 _%K30392%_
                                                 _%E30393%_)
                                                _%E30393%_)
                                               '())))))))
               (cons _%E30393%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3157131599%_
                                   _%hd3156831589%_)
                                  (_%g3156331578%_ _%g3156431582%_))))
                          (_%g3156331578%_ _%g3156431582%_))))
                  (_%g3156331578%_ _%g3156431582%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3156231635%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3875038751%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%L30410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30392%_ (cons _%E30393%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3875238753%_
                                          (lambda (_%L31460%_ _%L31462%_)
                                            (_%generate-splice29144%_
                                             _%tgt30389%_
                                             _%L31462%_
                                             _%L31460%_
                                             _%K30392%_
                                             _%E30393%_)))
                                         (_%__kont3875438755%_
                                          (lambda (_%L31374%_)
                                            (let* ((_%g3138831396%_
                                                    (lambda (_%g3138931392%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3138931392%_)))
                                                   (_%g3138731415%_
                                                    (lambda (_%g3138931400%_)
                                                      ((lambda (_%L31403%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%L30410%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31403%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30410%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129142%_
                                                      _%L31403%_
                                                      _%L31374%_
                                                      _%K30392%_
                                                      _%E30393%_)
                                                     '())))
                                   (cons _%E30393%_ '())))))
               _%g3138931400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3138731415%_
                                               (gx#genident 'e)))))
                                         (_%__kont3875638757%_
                                          (lambda (_%L31179%_)
                                            (let* ((_%__stx3857338574%_
                                                    _%L31179%_)
                                                   (_%g3119431217%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3857338574%_))))
                                              (let ((_%__kont3857638577%_
                                                     (lambda (_%L31294%_)
                                                       (let* ((_%g3130831316%_
                                                               (lambda (_%g3130931312%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3130931312%_)))
                      (_%g3130731335%_
                       (lambda (_%g3130931320%_)
                         ((lambda (_%L31323%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30410%_
                                                                '()))
                                                    (cons _%L31323%_ '())))
                                        (cons (_%generate-simple-vector29145%_
                                               _%tgt30389%_
                                               _%L31294%_
                                               '0
                                               _%K30392%_
                                               _%E30393%_)
                                              (cons _%E30393%_ '())))))
                          _%g3130931320%_))))
                 (_%g3130731335%_ (gx#stx-length _%L31294%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3857838579%_
                                                     (lambda (_%L31248%_)
                                                       (_%generate-list-vector29146%_
                                                        _%tgt30389%_
                                                        _%L31248%_
                                                        'values->list
                                                        _%K30392%_
                                                        _%E30393%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3857338574%_)
                                                    (let ((_%e3119731270%_
                                                           (gx#syntax-e
                                                            _%__stx3857338574%_)))
                                                      (let ((_%tl3119931277%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3119731270%_)))
                    (_%hd3119831274%_
                     (let () (declare (not safe)) (##car _%e3119731270%_))))
                (if (gx#stx-datum? _%hd3119831274%_)
                    (let ((_%e3120031280%_ (gx#stx-e _%hd3119831274%_)))
                      (if (equal? _%e3120031280%_ 'simple:)
                          (if (gx#stx-pair? _%tl3119931277%_)
                              (let ((_%e3120131284%_
                                     (gx#syntax-e _%tl3119931277%_)))
                                (let ((_%tl3120331291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3120131284%_)))
                                      (_%hd3120231288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3120131284%_))))
                                  (if (gx#stx-null? _%tl3120331291%_)
                                      (_%__kont3857638577%_ _%hd3120231288%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3119431217%_)))))
                              (let () (declare (not safe)) (_%g3119431217%_)))
                          (if (equal? _%e3120031280%_ 'list:)
                              (if (gx#stx-pair? _%tl3119931277%_)
                                  (let ((_%e3120931238%_
                                         (gx#syntax-e _%tl3119931277%_)))
                                    (let ((_%tl3121131245%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3120931238%_)))
                                          (_%hd3121031242%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3120931238%_))))
                                      (if (gx#stx-null? _%tl3121131245%_)
                                          (_%__kont3857838579%_
                                           _%hd3121031242%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3119431217%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3119431217%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3119431217%_)))))
                    (let () (declare (not safe)) (_%g3119431217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3119431217%_)))))))
                                         (_%__kont3875838759%_
                                          (lambda (_%L30984%_)
                                            (let* ((_%__stx3852338524%_
                                                    _%L30984%_)
                                                   (_%g3099931022%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3852338524%_))))
                                              (let ((_%__kont3852638527%_
                                                     (lambda (_%L31099%_)
                                                       (let* ((_%g3111331121%_
                                                               (lambda (_%g3111431117%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3111431117%_)))
                      (_%g3111231140%_
                       (lambda (_%g3111431125%_)
                         ((lambda (_%L31128%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%L30410%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30410%_ '()))
                              (cons _%L31128%_ '())))
                  (cons (_%generate-simple-vector29145%_
                         _%tgt30389%_
                         _%L31099%_
                         '0
                         _%K30392%_
                         _%E30393%_)
                        (cons _%E30393%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30393%_ '())))))
                          _%g3111431125%_))))
                 (_%g3111231140%_ (gx#stx-length _%L31099%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3852838529%_
                                                     (lambda (_%L31053%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%L30410%_ '()))
                           (cons (_%generate-list-vector29146%_
                                  _%tgt30389%_
                                  _%L31053%_
                                  'vector->list
                                  _%K30392%_
                                  _%E30393%_)
                                 (cons _%E30393%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3852338524%_)
                                                    (let ((_%e3100231075%_
                                                           (gx#syntax-e
                                                            _%__stx3852338524%_)))
                                                      (let ((_%tl3100431082%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3100231075%_)))
                    (_%hd3100331079%_
                     (let () (declare (not safe)) (##car _%e3100231075%_))))
                (if (gx#stx-datum? _%hd3100331079%_)
                    (let ((_%e3100531085%_ (gx#stx-e _%hd3100331079%_)))
                      (if (equal? _%e3100531085%_ 'simple:)
                          (if (gx#stx-pair? _%tl3100431082%_)
                              (let ((_%e3100631089%_
                                     (gx#syntax-e _%tl3100431082%_)))
                                (let ((_%tl3100831096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3100631089%_)))
                                      (_%hd3100731093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3100631089%_))))
                                  (if (gx#stx-null? _%tl3100831096%_)
                                      (_%__kont3852638527%_ _%hd3100731093%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3099931022%_)))))
                              (let () (declare (not safe)) (_%g3099931022%_)))
                          (if (equal? _%e3100531085%_ 'list:)
                              (if (gx#stx-pair? _%tl3100431082%_)
                                  (let ((_%e3101431043%_
                                         (gx#syntax-e _%tl3100431082%_)))
                                    (let ((_%tl3101631050%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3101431043%_)))
                                          (_%hd3101531047%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3101431043%_))))
                                      (if (gx#stx-null? _%tl3101631050%_)
                                          (_%__kont3852838529%_
                                           _%hd3101531047%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3099931022%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3099931022%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3099931022%_)))))
                    (let () (declare (not safe)) (_%g3099931022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3099931022%_)))))))
                                         (_%__kont3876038761%_
                                          (lambda (_%L30935%_ _%L30937%_)
                                            (_%generate-struct29147%_
                                             (gx#stx-e _%L30937%_)
                                             _%tgt30389%_
                                             _%L30935%_
                                             _%K30392%_
                                             _%E30393%_)))
                                         (_%__kont3876238763%_
                                          (lambda (_%L30876%_ _%L30878%_)
                                            (_%generate-class29150%_
                                             (gx#stx-e _%L30878%_)
                                             _%tgt30389%_
                                             _%L30876%_
                                             _%K30392%_
                                             _%E30393%_)))
                                         (_%__kont3876438765%_
                                          (lambda (_%L30773%_)
                                            (let* ((_%g3078730795%_
                                                    (lambda (_%g3078830791%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3078830791%_)))
                                                   (_%g3078630814%_
                                                    (lambda (_%g3078830799%_)
                                                      ((lambda (_%L30802%_)
                                                         (cons 'if
                                                               (cons (cons _%L30802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30410%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30773%_ '()))
                                               '())))
                             (cons _%K30392%_ (cons _%E30393%_ '())))))
               _%g3078830799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3078630814%_
                                               (let ((_%e30818%_
                                                      (gx#stx-e _%L30773%_)))
                                                 (if (or (symbol? _%e30818%_)
                                                         (keyword? _%e30818%_)
                                                         (immediate?
                                                          _%e30818%_))
                                                     '##eq?
                                                     (if (number? _%e30818%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3876638767%_
                                          (lambda (_%L30693%_ _%L30695%_)
                                            (let* ((_%g3071130719%_
                                                    (lambda (_%g3071230715%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3071230715%_)))
                                                   (_%g3071030738%_
                                                    (lambda (_%g3071230723%_)
                                                      ((lambda (_%L30726%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30695%_
                                                     (cons _%L30410%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129142%_
                                    _%L30726%_
                                    _%L30693%_
                                    _%K30392%_
                                    _%E30393%_)
                                   '()))))
               _%g3071230723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3071030738%_
                                               (gx#genident 'e)))))
                                         (_%__kont3876838769%_
                                          (lambda (_%L30635%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30410%_ '()))
                      '())
                (cons _%K30392%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3877038771%_
                                          (lambda () _%K30392%_)))
                                     (if (gx#stx-pair? _%__stx3873738738%_)
                                         (let ((_%e3044131877%_
                                                (gx#syntax-e
                                                 _%__stx3873738738%_)))
                                           (let ((_%tl3044331884%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3044131877%_)))
                                                 (_%hd3044231881%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3044131877%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3044231881%_)
                                                 (let ((_%e3044431887%_
                                                        (gx#stx-e
                                                         _%hd3044231881%_)))
                                                   (if (equal? _%e3044431887%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3044331884%_)
                                                           (let ((_%e3044531891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3044331884%_)))
                     (let ((_%tl3044731898%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3044531891%_)))
                           (_%hd3044631895%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3044531891%_))))
                       (_%__kont3874038741%_
                        _%tl3044731898%_
                        _%hd3044631895%_)))
                   (let () (declare (not safe)) (_%g3043730579%_)))
               (if (equal? _%e3044431887%_ 'and:)
                   (_%__kont3874238743%_ _%tl3044331884%_)
                   (if (equal? _%e3044431887%_ 'or:)
                       (_%__kont3874438745%_ _%tl3044331884%_)
                       (if (equal? _%e3044431887%_ 'not:)
                           (if (gx#stx-pair? _%tl3044331884%_)
                               (let ((_%e3046331660%_
                                      (gx#syntax-e _%tl3044331884%_)))
                                 (let ((_%tl3046531667%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3046331660%_)))
                                       (_%hd3046431664%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3046331660%_))))
                                   (if (gx#stx-null? _%tl3046531667%_)
                                       (_%__kont3874638747%_ _%hd3046431664%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3043730579%_)))))
                               (let () (declare (not safe)) (_%g3043730579%_)))
                           (if (equal? _%e3044431887%_ 'cons:)
                               (if (gx#stx-pair? _%tl3044331884%_)
                                   (let ((_%e3047231524%_
                                          (gx#syntax-e _%tl3044331884%_)))
                                     (let ((_%tl3047431531%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3047231524%_)))
                                           (_%hd3047331528%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3047231524%_))))
                                       (if (gx#stx-pair? _%tl3047431531%_)
                                           (let ((_%e3047531534%_
                                                  (gx#syntax-e
                                                   _%tl3047431531%_)))
                                             (let ((_%tl3047731541%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3047531534%_)))
                                                   (_%hd3047631538%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3047531534%_))))
                                               (if (gx#stx-null?
                                                    _%tl3047731541%_)
                                                   (_%__kont3874838749%_
                                                    _%hd3047631538%_
                                                    _%hd3047331528%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3043730579%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3043730579%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3043730579%_)))
                               (if (equal? _%e3044431887%_ 'null:)
                                   (if (gx#stx-null? _%tl3044331884%_)
                                       (_%__kont3875038751%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3043730579%_)))
                                   (if (equal? _%e3044431887%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3044331884%_)
                                           (let ((_%e3048831440%_
                                                  (gx#syntax-e
                                                   _%tl3044331884%_)))
                                             (let ((_%tl3049031447%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3048831440%_)))
                                                   (_%hd3048931444%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3048831440%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3049031447%_)
                                                   (let ((_%e3049131450%_
                                                          (gx#syntax-e
                                                           _%tl3049031447%_)))
                                                     (let ((_%tl3049331457%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3049131450%_)))
                                                           (_%hd3049231454%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3049131450%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3049331457%_)
                                                           (_%__kont3875238753%_
                                                            _%hd3049231454%_
                                                            _%hd3048931444%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3043730579%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3043730579%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3043730579%_)))
                                       (if (equal? _%e3044431887%_ 'box:)
                                           (if (gx#stx-pair? _%tl3044331884%_)
                                               (let ((_%e3049931364%_
                                                      (gx#syntax-e
                                                       _%tl3044331884%_)))
                                                 (let ((_%tl3050131371%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3049931364%_)))
                                                       (_%hd3050031368%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3049931364%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3050131371%_)
                                                       (_%__kont3875438755%_
                                                        _%hd3050031368%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3043730579%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3043730579%_)))
                                           (if (equal? _%e3044431887%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3044331884%_)
                                                   (let ((_%e3050731169%_
                                                          (gx#syntax-e
                                                           _%tl3044331884%_)))
                                                     (let ((_%tl3050931176%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3050731169%_)))
                                                           (_%hd3050831173%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3050731169%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3050931176%_)
                                                           (_%__kont3875638757%_
                                                            _%hd3050831173%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3043730579%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3043730579%_)))
                                               (if (equal? _%e3044431887%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3044331884%_)
                                                       (let ((_%e3051530974%_
                                                              (gx#syntax-e
                                                               _%tl3044331884%_)))
                                                         (let ((_%tl3051730981%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3051530974%_)))
                       (_%hd3051630978%_
                        (let () (declare (not safe)) (##car _%e3051530974%_))))
                   (if (gx#stx-null? _%tl3051730981%_)
                       (_%__kont3875838759%_ _%hd3051630978%_)
                       (let () (declare (not safe)) (_%g3043730579%_)))))
               (let () (declare (not safe)) (_%g3043730579%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3044431887%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3044331884%_)
                                                           (let ((_%e3052430915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3044331884%_)))
                     (let ((_%tl3052630922%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3052430915%_)))
                           (_%hd3052530919%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3052430915%_))))
                       (if (gx#stx-pair? _%tl3052630922%_)
                           (let ((_%e3052730925%_
                                  (gx#syntax-e _%tl3052630922%_)))
                             (let ((_%tl3052930932%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3052730925%_)))
                                   (_%hd3052830929%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3052730925%_))))
                               (if (gx#stx-null? _%tl3052930932%_)
                                   (_%__kont3876038761%_
                                    _%hd3052830929%_
                                    _%hd3052530919%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3043730579%_)))))
                           (let () (declare (not safe)) (_%g3043730579%_)))))
                   (let () (declare (not safe)) (_%g3043730579%_)))
               (if (equal? _%e3044431887%_ 'class:)
                   (if (gx#stx-pair? _%tl3044331884%_)
                       (let ((_%e3053630856%_ (gx#syntax-e _%tl3044331884%_)))
                         (let ((_%tl3053830863%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3053630856%_)))
                               (_%hd3053730860%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3053630856%_))))
                           (if (gx#stx-pair? _%tl3053830863%_)
                               (let ((_%e3053930866%_
                                      (gx#syntax-e _%tl3053830863%_)))
                                 (let ((_%tl3054130873%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3053930866%_)))
                                       (_%hd3054030870%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3053930866%_))))
                                   (if (gx#stx-null? _%tl3054130873%_)
                                       (_%__kont3876238763%_
                                        _%hd3054030870%_
                                        _%hd3053730860%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3043730579%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3043730579%_)))))
                       (let () (declare (not safe)) (_%g3043730579%_)))
                   (if (equal? _%e3044431887%_ 'datum:)
                       (if (gx#stx-pair? _%tl3044331884%_)
                           (let ((_%e3054730763%_
                                  (gx#syntax-e _%tl3044331884%_)))
                             (let ((_%tl3054930770%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3054730763%_)))
                                   (_%hd3054830767%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3054730763%_))))
                               (if (gx#stx-null? _%tl3054930770%_)
                                   (_%__kont3876438765%_ _%hd3054830767%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3043730579%_)))))
                           (let () (declare (not safe)) (_%g3043730579%_)))
                       (if (equal? _%e3044431887%_ 'apply:)
                           (if (gx#stx-pair? _%tl3044331884%_)
                               (let ((_%e3055630673%_
                                      (gx#syntax-e _%tl3044331884%_)))
                                 (let ((_%tl3055830680%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3055630673%_)))
                                       (_%hd3055730677%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3055630673%_))))
                                   (if (gx#stx-pair? _%tl3055830680%_)
                                       (let ((_%e3055930683%_
                                              (gx#syntax-e _%tl3055830680%_)))
                                         (let ((_%tl3056130690%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3055930683%_)))
                                               (_%hd3056030687%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3055930683%_))))
                                           (if (gx#stx-null? _%tl3056130690%_)
                                               (_%__kont3876638767%_
                                                _%hd3056030687%_
                                                _%hd3055730677%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3043730579%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3043730579%_)))))
                               (let () (declare (not safe)) (_%g3043730579%_)))
                           (if (equal? _%e3044431887%_ 'var:)
                               (if (gx#stx-pair? _%tl3044331884%_)
                                   (let ((_%e3056730625%_
                                          (gx#syntax-e _%tl3044331884%_)))
                                     (let ((_%tl3056930632%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3056730625%_)))
                                           (_%hd3056830629%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3056730625%_))))
                                       (if (gx#stx-null? _%tl3056930632%_)
                                           (_%__kont3876838769%_
                                            _%hd3056830629%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3043730579%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3043730579%_)))
                               (if (equal? _%e3044431887%_ 'any:)
                                   (if (gx#stx-null? _%tl3044331884%_)
                                       (_%__kont3877038771%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3043730579%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3043730579%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3043730579%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3043730579%_))))))
                               _%g3039630407%_))))
                      (_%g3039432186%_ _%tgt30389%_))))
                 (_%generate-splice29144%_
                  (lambda (_%tgt29761%_
                           _%hd29763%_
                           _%rest29764%_
                           _%K29765%_
                           _%E29766%_)
                    (let* ((_%g2976829785%_
                            (lambda (_%g2976929781%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2976929781%_)))
                           (_%g2976730385%_
                            (lambda (_%g2976929789%_)
                              (if (gx#stx-pair/null? _%g2976929789%_)
                                  (let ((_g39892_
                                         (gx#syntax-split-splice
                                          _%g2976929789%_
                                          '0)))
                                    (begin
                                      (let ((_g39893_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39892_)
                                                   (##vector-length _g39892_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39893_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39893_)))
                                      (let ((_%target2977129792%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39892_ 0)))
                                            (_%tl2977329795%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39892_ 1))))
                                        (if (gx#stx-null? _%tl2977329795%_)
                                            (letrec ((_%loop2977429798%_
                                                      (lambda (_%hd2977229802%_
                                                               _%var2977829805%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2977229802%_)
                                                            (let ((_%e2977529808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2977229802%_)))
                      (let ((_%lp-hd2977629812%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2977529808%_)))
                            (_%lp-tl2977729815%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2977529808%_))))
                        (_%loop2977429798%_
                         _%lp-tl2977729815%_
                         (cons _%lp-hd2977629812%_ _%var2977829805%_))))
                    (let ((_%var2977929818%_ (reverse _%var2977829805%_)))
                      ((lambda (_%L29822%_)
                         (let* ((_%g2983829855%_
                                 (lambda (_%g2983929851%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2983929851%_)))
                                (_%g2983730373%_
                                 (lambda (_%g2983929859%_)
                                   (if (gx#stx-pair/null? _%g2983929859%_)
                                       (let ((_g39894_
                                              (gx#syntax-split-splice
                                               _%g2983929859%_
                                               '0)))
                                         (begin
                                           (let ((_g39895_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39894_)
                                                        (##vector-length
                                                         _g39894_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39895_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39895_)))
                                           (let ((_%target2984129862%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g39894_ 0)))
                                                 (_%tl2984329865%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g39894_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2984329865%_)
                                                 (letrec ((_%loop2984429868%_
                                                           (lambda (_%hd2984229872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2984829875%_)
                     (if (gx#stx-pair? _%hd2984229872%_)
                         (let ((_%e2984529878%_
                                (gx#syntax-e _%hd2984229872%_)))
                           (let ((_%lp-hd2984629882%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2984529878%_)))
                                 (_%lp-tl2984729885%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2984529878%_))))
                             (_%loop2984429868%_
                              _%lp-tl2984729885%_
                              (cons _%lp-hd2984629882%_ _%var-r2984829875%_))))
                         (let ((_%var-r2984929888%_
                                (reverse _%var-r2984829875%_)))
                           ((lambda (_%L29892%_)
                              (let* ((_%g2990929926%_
                                      (lambda (_%g2991029922%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2991029922%_)))
                                     (_%g2990830361%_
                                      (lambda (_%g2991029930%_)
                                        (if (gx#stx-pair/null? _%g2991029930%_)
                                            (let ((_g39896_
                                                   (gx#syntax-split-splice
                                                    _%g2991029930%_
                                                    '0)))
                                              (begin
                                                (let ((_g39897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39896_)
                                                             (##vector-length
                                                              _g39896_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39897_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2991229933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39896_
                                                          0)))
                                                      (_%tl2991429936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39896_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2991429936%_)
                                                      (letrec ((_%loop2991529939%_
                                                                (lambda (_%hd2991329943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2991929946%_)
                          (if (gx#stx-pair? _%hd2991329943%_)
                              (let ((_%e2991629949%_
                                     (gx#syntax-e _%hd2991329943%_)))
                                (let ((_%lp-hd2991729953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2991629949%_)))
                                      (_%lp-tl2991829956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2991629949%_))))
                                  (_%loop2991529939%_
                                   _%lp-tl2991829956%_
                                   (cons _%lp-hd2991729953%_
                                         _%init2991929946%_))))
                              (let ((_%init2992029959%_
                                     (reverse _%init2991929946%_)))
                                ((lambda (_%L29963%_)
                                   (let* ((_%g2998029988%_
                                           (lambda (_%g2998129984%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2998129984%_)))
                                          (_%g2997930357%_
                                           (lambda (_%g2998129992%_)
                                             ((lambda (_%L29995%_)
                                                (let* ((_%g3000830016%_
                                                        (lambda (_%g3000930012%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3000930012%_)))
                                                       (_%g3000730353%_
                                                        (lambda (_%g3000930020%_)
                                                          ((lambda (_%L30023%_)
                                                             (let* ((_%g3003630044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3003730040%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3003730040%_)))
                            (_%g3003530349%_
                             (lambda (_%g3003730048%_)
                               ((lambda (_%L30051%_)
                                  (let* ((_%g3006430072%_
                                          (lambda (_%g3006530068%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3006530068%_)))
                                         (_%g3006330345%_
                                          (lambda (_%g3006530076%_)
                                            ((lambda (_%L30079%_)
                                               (let* ((_%g3009230100%_
                                                       (lambda (_%g3009330096%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3009330096%_)))
                                                      (_%g3009130341%_
                                                       (lambda (_%g3009330104%_)
                                                         ((lambda (_%L30107%_)
                                                            (let* ((_%g3012030128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3012130124%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3012130124%_)))
                           (_%g3011930337%_
                            (lambda (_%g3012130132%_)
                              ((lambda (_%L30135%_)
                                 (let* ((_%g3014830156%_
                                         (lambda (_%g3014930152%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3014930152%_)))
                                        (_%g3014730333%_
                                         (lambda (_%g3014930160%_)
                                           ((lambda (_%L30163%_)
                                              (let* ((_%g3017630184%_
                                                      (lambda (_%g3017730180%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3017730180%_)))
                                                     (_%g3017530318%_
                                                      (lambda (_%g3017730188%_)
                                                        ((lambda (_%L30191%_)
                                                           (let* ((_%g3020430212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3020530208%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3020530208%_)))
                          (_%g3020330306%_
                           (lambda (_%g3020530216%_)
                             ((lambda (_%L30219%_)
                                (let* ((_%g3023230240%_
                                        (lambda (_%g3023330236%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3023330236%_)))
                                       (_%g3023130302%_
                                        (lambda (_%g3023330244%_)
                                          ((lambda (_%L30247%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L30023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30135%_
                                                     (foldr (lambda (_%g3026930272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3027030275%_)
                      (cons _%g3026930272%_ _%g3027030275%_))
                    '()
                    _%L29822%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30163%_ '())))
                                   '()))
                       (cons (cons _%L30079%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30107%_
                                                           (cons _%L30135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3026730278%_ _%g3026830281%_)
                                  (cons _%g3026730278%_ _%g3026830281%_))
                                '()
                                _%L29892%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30247%_ '())))
                                         '()))
                             (cons (cons _%L30051%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3026530284%_ _%g3026630287%_)
                                  (cons _%g3026530284%_ _%g3026630287%_))
                                '()
                                _%L29892%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30135%_ '()))
                                     (cons (cons _%L30079%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30135%_
                     (foldr (lambda (_%g3026330290%_ _%g3026430293%_)
                              (cons _%g3026330290%_ _%g3026430293%_))
                            '()
                            _%L29892%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30219%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30051%_
                             (cons _%L29995%_
                                   (foldr (lambda (_%g3026130296%_
                                                   _%g3026230299%_)
                                            (cons _%g3026130296%_
                                                  _%g3026230299%_))
                                          '()
                                          _%L29963%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3023330244%_))))
                                  (_%g3023130302%_
                                   (_%generate129142%_
                                    _%L30107%_
                                    _%hd29763%_
                                    _%L30191%_
                                    _%L30219%_))))
                              _%g3020530216%_))))
                     (_%g3020330306%_
                      (cons _%L30023%_
                            (cons _%L30135%_
                                  (foldr (lambda (_%g3030930312%_
                                                  _%g3031030315%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3030930312%_
                                                             '()))
                                                 _%g3031030315%_))
                                         '()
                                         _%L29892%_))))))
                 _%g3017730188%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3017530318%_
                                                 (cons _%L30051%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30135%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29892%_ _%L29822%_)
                       (foldr (lambda (_%g3032130325%_
                                       _%g3032230328%_
                                       _%g3032330330%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3032230328%_
                                                  (cons _%g3032130325%_ '())))
                                      _%g3032330330%_))
                              '()
                              _%L29892%_
                              _%L29822%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3014930160%_))))
                                   (_%g3014730333%_
                                    (_%generate129142%_
                                     _%L30135%_
                                     _%rest29764%_
                                     _%K29765%_
                                     _%E29766%_))))
                               _%g3012130132%_))))
                      (_%g3011930337%_ (gx#genident 'rest))))
                  _%g3009330104%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3009130341%_
                                                  (gx#genident 'hd))))
                                             _%g3006530076%_))))
                                    (_%g3006330345%_
                                     (gx#genident 'splice-try))))
                                _%g3003730048%_))))
                       (_%g3003530349%_ (gx#genident 'splice-loop))))
                   _%g3000930020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3000730353%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g2998129992%_))))
                                     (_%g2997930357%_ _%tgt29761%_)))
                                 _%init2992029959%_))))))
                (_%loop2991529939%_ _%target2991229933%_ '()))
              (_%g2990929926%_ _%g2991029930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2990929926%_
                                             _%g2991029930%_)))))
                                (_%g2990830361%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3036430367%_
                                                   _%g3036530370%_)
                                            (cons _%g3036430367%_
                                                  _%g3036530370%_))
                                          '()
                                          _%L29822%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2984929888%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2984429868%_
                                                    _%target2984129862%_
                                                    '()))
                                                 (_%g2983829855%_
                                                  _%g2983929859%_)))))
                                       (_%g2983829855%_ _%g2983929859%_)))))
                           (_%g2983730373%_
                            (gx#gentemps
                             (foldr (lambda (_%g3037630379%_ _%g3037730382%_)
                                      (cons _%g3037630379%_ _%g3037730382%_))
                                    '()
                                    _%L29822%_)))))
                       _%var2977929818%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2977429798%_
                                               _%target2977129792%_
                                               '()))
                                            (_%g2976829785%_
                                             _%g2976929789%_)))))
                                  (_%g2976829785%_ _%g2976929789%_)))))
                      (_%g2976730385%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29763%_)))))
                 (_%generate-simple-vector29145%_
                  (lambda (_%tgt29603%_
                           _%body29605%_
                           _%start29606%_
                           _%K29607%_
                           _%E29608%_)
                    (let _%recur29610%_ ((_%rest29613%_ _%body29605%_)
                                         (_%off29615%_ _%start29606%_))
                      (let* ((_%__stx3909539096%_ _%rest29613%_)
                             (_%g2961829630%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3909539096%_))))
                        (let ((_%__kont3909839099%_
                               (lambda (_%L29658%_ _%L29660%_)
                                 (let* ((_%g2967529694%_
                                         (lambda (_%g2967629690%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2967629690%_)))
                                        (_%g2967429753%_
                                         (lambda (_%g2967629698%_)
                                           (if (gx#stx-pair? _%g2967629698%_)
                                               (let ((_%e2968029701%_
                                                      (gx#syntax-e
                                                       _%g2967629698%_)))
                                                 (let ((_%hd2968129705%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2968029701%_)))
                                                       (_%tl2968229708%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2968029701%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2968229708%_)
                                                       (let ((_%e2968329711%_
                                                              (gx#syntax-e
                                                               _%tl2968229708%_)))
                                                         (let ((_%hd2968429715%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2968329711%_)))
                       (_%tl2968529718%_
                        (let () (declare (not safe)) (##cdr _%e2968329711%_))))
                   (if (gx#stx-pair? _%tl2968529718%_)
                       (let ((_%e2968629721%_ (gx#syntax-e _%tl2968529718%_)))
                         (let ((_%hd2968729725%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2968629721%_)))
                               (_%tl2968829728%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2968629721%_))))
                           (if (gx#stx-null? _%tl2968829728%_)
                               ((lambda (_%L29731%_ _%L29733%_ _%L29734%_)
                                  (cons 'let
                                        (cons (cons (cons _%L29734%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector-ref)
                              (cons _%L29733%_ (cons _%L29731%_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_%generate129142%_
                                                     _%L29734%_
                                                     _%L29660%_
                                                     (_%recur29610%_
                                                      _%L29658%_
                                                      (fx1+ _%off29615%_))
                                                     _%E29608%_)
                                                    '()))))
                                _%hd2968729725%_
                                _%hd2968429715%_
                                _%hd2968129705%_)
                               (_%g2967529694%_ _%g2967629698%_))))
                       (_%g2967529694%_ _%g2967629698%_))))
               (_%g2967529694%_ _%g2967629698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2967529694%_
                                                _%g2967629698%_)))))
                                   (_%g2967429753%_
                                    (list (gx#genident 'e)
                                          _%tgt29603%_
                                          _%off29615%_)))))
                              (_%__kont3910039101%_ (lambda () _%K29607%_)))
                          (if (gx#stx-pair? _%__stx3909539096%_)
                              (let ((_%e2962229648%_
                                     (gx#syntax-e _%__stx3909539096%_)))
                                (let ((_%tl2962429655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2962229648%_)))
                                      (_%hd2962329652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2962229648%_))))
                                  (_%__kont3909839099%_
                                   _%tl2962429655%_
                                   _%hd2962329652%_)))
                              (_%__kont3910039101%_)))))))
                 (_%generate-list-vector29146%_
                  (lambda (_%tgt29495%_
                           _%body29497%_
                           _%->list29498%_
                           _%K29499%_
                           _%E29500%_)
                    (let* ((_%g2950229510%_
                            (lambda (_%g2950329506%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2950329506%_)))
                           (_%g2950129599%_
                            (lambda (_%g2950329514%_)
                              ((lambda (_%L29517%_)
                                 (let* ((_%g2952929537%_
                                         (lambda (_%g2953029533%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2953029533%_)))
                                        (_%g2952829595%_
                                         (lambda (_%g2953029541%_)
                                           ((lambda (_%L29544%_)
                                              (let* ((_%g2955729565%_
                                                      (lambda (_%g2955829561%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2955829561%_)))
                                                     (_%g2955629587%_
                                                      (lambda (_%g2955829569%_)
                                                        ((lambda (_%L29572%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29517%_ (cons _%L29572%_ '()))
                                     '())
                               (cons (_%generate129142%_
                                      _%L29517%_
                                      _%body29497%_
                                      _%K29499%_
                                      _%E29500%_)
                                     '()))))
                 _%g2955829569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2955629587%_
                                                 (let ((_%$e29591%_
                                                        _%->list29498%_))
                                                   (if (eq? 'values->list
                                                            _%$e29591%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29591%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29544%_ '()))
                   (if (eq? 'struct->list _%$e29591%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##structure->list)
                                         (cons _%L29544%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29135%_
                        _%->list29498%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2953029541%_))))
                                   (_%g2952829595%_ _%tgt29495%_)))
                               _%g2950329514%_))))
                      (_%g2950129599%_ (gx#genident 'e)))))
                 (_%generate-struct29147%_
                  (lambda (_%info29366%_
                           _%tgt29368%_
                           _%body29369%_
                           _%K29370%_
                           _%E29371%_)
                    (let* ((_%__stx3911139112%_ _%body29369%_)
                           (_%g2937429397%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3911139112%_))))
                      (let ((_%__kont3911439115%_
                             (lambda (_%L29474%_)
                               (let ((_%fields29488%_
                                      (_%struct-field-accessors29149%_
                                       _%info29366%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39865
                                                          _%info29366%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39865
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39865
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39865
                                                          'predicate)))
                                                   (cons _%tgt29368%_ '()))
                                             (cons (_%generate-simple-struct-body29148%_
                                                    _%info29366%_
                                                    _%tgt29368%_
                                                    _%L29474%_
                                                    _%K29370%_
                                                    _%E29371%_)
                                                   (cons _%E29371%_ '())))))))
                            (_%__kont3911639117%_
                             (lambda (_%L29428%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39866
                                                        _%info29366%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39866
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39866
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39866
                                                        'predicate)))
                                                 (cons _%tgt29368%_ '()))
                                           (cons (_%generate-list-vector29146%_
                                                  _%tgt29368%_
                                                  _%L29428%_
                                                  'struct->list
                                                  _%K29370%_
                                                  _%E29371%_)
                                                 (cons _%E29371%_ '())))))))
                        (if (gx#stx-pair? _%__stx3911139112%_)
                            (let ((_%e2937729450%_
                                   (gx#syntax-e _%__stx3911139112%_)))
                              (let ((_%tl2937929457%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2937729450%_)))
                                    (_%hd2937829454%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2937729450%_))))
                                (if (gx#stx-datum? _%hd2937829454%_)
                                    (let ((_%e2938029460%_
                                           (gx#stx-e _%hd2937829454%_)))
                                      (if (equal? _%e2938029460%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2937929457%_)
                                              (let ((_%e2938129464%_
                                                     (gx#syntax-e
                                                      _%tl2937929457%_)))
                                                (let ((_%tl2938329471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2938129464%_)))
                                                      (_%hd2938229468%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2938129464%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2938329471%_)
                                                      (_%__kont3911439115%_
                                                       _%hd2938229468%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2937429397%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2937429397%_)))
                                          (if (equal? _%e2938029460%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2937929457%_)
                                                  (let ((_%e2938929418%_
                                                         (gx#syntax-e
                                                          _%tl2937929457%_)))
                                                    (let ((_%tl2939129425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2938929418%_)))
                                                          (_%hd2939029422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2938929418%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2939129425%_)
                                                          (_%__kont3911639117%_
                                                           _%hd2939029422%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2937429397%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2937429397%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2937429397%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2937429397%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2937429397%_)))))))
                 (_%generate-simple-struct-body29148%_
                  (lambda (_%info29286%_
                           _%tgt29288%_
                           _%body29289%_
                           _%K29290%_
                           _%E29291%_)
                    (let _%recur29293%_ ((_%rest29296%_ _%body29289%_)
                                         (_%fields29298%_
                                          (_%struct-field-accessors29149%_
                                           _%info29286%_)))
                      (let* ((_%__stx3916139162%_ _%rest29296%_)
                             (_%g2930129313%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3916139162%_))))
                        (let ((_%__kont3916439165%_
                               (lambda (_%L29341%_ _%L29343%_)
                                 (if (null? _%fields29298%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29135%_
                                      _%info29286%_
                                      (let ((__obj39867 _%info29286%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39867
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39867
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39867
                                             'name))))
                                     (let ((_%$tgt29358%_ (gx#genident 'e))
                                           (_%getf29360%_
                                            (car _%fields29298%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29358%_
                                                               (cons (cons _%getf29360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29288%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129142%_
                                                          _%$tgt29358%_
                                                          _%L29343%_
                                                          (_%recur29293%_
                                                           _%L29341%_
                                                           (cdr _%fields29298%_))
                                                          _%E29291%_)
                                                         '())))))))
                              (_%__kont3916639167%_ (lambda () _%K29290%_)))
                          (if (gx#stx-pair? _%__stx3916139162%_)
                              (let ((_%e2930529331%_
                                     (gx#syntax-e _%__stx3916139162%_)))
                                (let ((_%tl2930729338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2930529331%_)))
                                      (_%hd2930629335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2930529331%_))))
                                  (_%__kont3916439165%_
                                   _%tl2930729338%_
                                   _%hd2930629335%_)))
                              (_%__kont3916639167%_)))))))
                 (_%struct-field-accessors29149%_
                  (lambda (_%info29267%_)
                    (let _%recur29270%_ ((_%next29273%_
                                          (cons _%info29267%_ '())))
                      (if (null? _%next29273%_)
                          '()
                          (let ((_%ti29276%_ (car _%next29273%_)))
                            (let ((__tmp39899
                                   (_%recur29270%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39868 _%ti29276%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39868
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39868
                                                  '3
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39868
                                                'super))))))
                                  (__tmp39898
                                   (map (lambda (_%slot29279%_)
                                          (let ((_%$e29282%_
                                                 (agetq _%slot29279%_
                                                        (let ((__obj39869
                                                               _%ti29276%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39869
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39869 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39869
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29282%_
                                                _%$e29282%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29135%_
                                                 _%info29267%_
                                                 _%slot29279%_))))
                                        (let ((__obj39870 _%ti29276%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39870
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39870
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39870
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39899 __tmp39898)))))))
                 (_%generate-class29150%_
                  (lambda (_%info29260%_
                           _%tgt29262%_
                           _%body29263%_
                           _%K29264%_
                           _%E29265%_)
                    (cons 'if
                          (cons (cons (let ((__obj39871 _%info29260%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39871
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39871
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39871
                                             'predicate)))
                                      (cons _%tgt29262%_ '()))
                                (cons (_%generate-class-body29151%_
                                       _%info29260%_
                                       _%tgt29262%_
                                       _%body29263%_
                                       _%K29264%_
                                       _%E29265%_)
                                      (cons _%E29265%_ '()))))))
                 (_%generate-class-body29151%_
                  (lambda (_%info29153%_
                           _%tgt29155%_
                           _%body29156%_
                           _%K29157%_
                           _%E29158%_)
                    (let _%recur29160%_ ((_%rest29163%_ _%body29156%_))
                      (let* ((_%__stx3917739178%_ _%rest29163%_)
                             (_%g2916729183%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3917739178%_))))
                        (let ((_%__kont3918039181%_
                               (lambda (_%L29221%_ _%L29223%_ _%L29224%_)
                                 (let ((_%$e29244%_
                                        (agetq (let ((__tmp39900
                                                      (keyword->string
                                                       (gx#stx-e _%L29224%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39900))
                                               (let ((__obj39872
                                                      _%info29153%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39872
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39872
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39872
                                                      'unchecked-accessors))))))
                                   (if _%$e29244%_
                                       ((lambda (_%getf29248%_)
                                          (let ((_%$tgt29251%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29248%_ (cons _%tgt29155%_ '()))
                                  '()))
                      '())
                (cons (_%generate129142%_
                       _%$tgt29251%_
                       _%L29223%_
                       (_%recur29160%_ _%L29221%_)
                       _%E29158%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29244%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29135%_
                                        _%info29153%_
                                        _%L29224%_)))))
                              (_%__kont3918239183%_ (lambda () _%K29157%_)))
                          (if (gx#stx-pair? _%__stx3917739178%_)
                              (let ((_%e2917229201%_
                                     (gx#syntax-e _%__stx3917739178%_)))
                                (let ((_%tl2917429208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2917229201%_)))
                                      (_%hd2917329205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2917229201%_))))
                                  (if (gx#stx-pair? _%tl2917429208%_)
                                      (let ((_%e2917529211%_
                                             (gx#syntax-e _%tl2917429208%_)))
                                        (let ((_%tl2917729218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2917529211%_)))
                                              (_%hd2917629215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2917529211%_))))
                                          (_%__kont3918039181%_
                                           _%tl2917729218%_
                                           _%hd2917629215%_
                                           _%hd2917329205%_)))
                                      (_%__kont3918239183%_))))
                              (_%__kont3918239183%_))))))))
          (_%generate129142%_
           _%tgt29137%_
           _%ptree29138%_
           _%K29139%_
           _%E29140%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27948%_ _%tgt-lst27950%_ _%clauses27951%_)
        (letrec ((_%parse-body27953%_
                  (lambda (_%hd-len28957%_)
                    (let _%lp28960%_ ((_%rest28963%_ _%clauses27951%_)
                                      (_%r28965%_ '()))
                      (let* ((_%__stx3922739228%_ _%rest28963%_)
                             (_%g2896828980%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3922739228%_))))
                        (let ((_%__kont3923039231%_
                               (lambda (_%L29008%_ _%L29010%_)
                                 (let* ((_%__stx3919939200%_ _%L29010%_)
                                        (_%g2902729043%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3919939200%_))))
                                   (let ((_%__kont3920239203%_
                                          (lambda (_%L29112%_)
                                            (if (gx#stx-null? _%L29008%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29112%_)
                                 (let ((_%$e29123%_
                                        (gx#stx-source _%L29010%_)))
                                   (if _%$e29123%_
                                       _%$e29123%_
                                       (gx#stx-source _%stx27948%_))))
                                '())))
              _%r28965%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27948%_
                                                 _%L29010%_))))
                                         (_%__kont3920439205%_
                                          (lambda (_%L29071%_ _%L29073%_)
                                            (_%lp28960%_
                                             _%L29008%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2908529087%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2908529087%_
                           _%stx27948%_))
                        _%L29073%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29071%_)
                              (let ((_%$e29091%_ (gx#stx-source _%L29010%_)))
                                (if _%$e29091%_
                                    _%$e29091%_
                                    (gx#stx-source _%stx27948%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r28965%_))))
                                         (_%__kont3920639207%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27948%_
                                             _%L29010%_))))
                                     (let* ((_%__match3922439225%_
                                             (lambda (_%e2903529061%_
                                                      _%hd2903629065%_
                                                      _%tl2903729068%_)
                                               (let ((_%L29071%_
                                                      _%tl2903729068%_)
                                                     (_%L29073%_
                                                      _%hd2903629065%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29073%_)
                                                          (fx= (gx#stx-length
                                                                _%L29073%_)
                                                               _%hd-len28957%_)
                                                          (gx#stx-list?
                                                           _%L29071%_)
                                                          (not (gx#stx-null?
                                                                _%L29071%_)))
                                                     (_%__kont3920439205%_
                                                      _%L29071%_
                                                      _%L29073%_)
                                                     (_%__kont3920639207%_)))))
                                            (_%__match3921839219%_
                                             (lambda (_%e2903029102%_
                                                      _%hd2903129106%_
                                                      _%tl2903229109%_)
                                               (let ((_%L29112%_
                                                      _%tl2903229109%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29112%_)
                                                          (not (gx#stx-null?
                                                                _%L29112%_)))
                                                     (_%__kont3920239203%_
                                                      _%L29112%_)
                                                     (_%__match3922439225%_
                                                      _%e2903029102%_
                                                      _%hd2903129106%_
                                                      _%tl2903229109%_))))))
                                       (if (gx#stx-pair? _%__stx3919939200%_)
                                           (let ((_%e2903029102%_
                                                  (gx#syntax-e
                                                   _%__stx3919939200%_)))
                                             (let ((_%tl2903229109%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2903029102%_)))
                                                   (_%hd2903129106%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2903029102%_))))
                                               (if (gx#identifier?
                                                    _%hd2903129106%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39901_|
                                                        _%hd2903129106%_)
                                                       (_%__match3921839219%_
                                                        _%e2903029102%_
                                                        _%hd2903129106%_
                                                        _%tl2903229109%_)
                                                       (_%__match3922439225%_
                                                        _%e2903029102%_
                                                        _%hd2903129106%_
                                                        _%tl2903229109%_))
                                                   (_%__match3922439225%_
                                                    _%e2903029102%_
                                                    _%hd2903129106%_
                                                    _%tl2903229109%_))))
                                           (_%__kont3920639207%_)))))))
                              (_%__kont3923239233%_ (lambda () _%r28965%_)))
                          (if (gx#stx-pair? _%__stx3922739228%_)
                              (let ((_%e2897228998%_
                                     (gx#syntax-e _%__stx3922739228%_)))
                                (let ((_%tl2897429005%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2897228998%_)))
                                      (_%hd2897329002%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2897228998%_))))
                                  (_%__kont3923039231%_
                                   _%tl2897429005%_
                                   _%hd2897329002%_)))
                              (_%__kont3923239233%_)))))))
                 (_%generate-body27955%_
                  (lambda (_%body28659%_)
                    (let* ((_%g2866228670%_
                            (lambda (_%g2866328666%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2866328666%_)))
                           (_%g2866128953%_
                            (lambda (_%g2866328674%_)
                              ((lambda (_%L28677%_)
                                 (let* ((_%g2868928706%_
                                         (lambda (_%g2869028702%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2869028702%_)))
                                        (_%g2868828949%_
                                         (lambda (_%g2869028710%_)
                                           (if (gx#stx-pair/null?
                                                _%g2869028710%_)
                                               (let ((_g39902_
                                                      (gx#syntax-split-splice
                                                       _%g2869028710%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39903_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39902_)
                        (##vector-length _g39902_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39903_ 2)))
                 (error "Context expects 2 values" _g39903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2869228713%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39902_
                                                             0)))
                                                         (_%tl2869428716%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39902_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2869428716%_)
                                                         (letrec ((_%loop2869528719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2869328723%_ _%target2869928726%_)
                             (if (gx#stx-pair? _%hd2869328723%_)
                                 (let ((_%e2869628729%_
                                        (gx#syntax-e _%hd2869328723%_)))
                                   (let ((_%lp-hd2869728733%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2869628729%_)))
                                         (_%lp-tl2869828736%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2869628729%_))))
                                     (_%loop2869528719%_
                                      _%lp-tl2869828736%_
                                      (cons _%lp-hd2869728733%_
                                            _%target2869928726%_))))
                                 (let ((_%target2870028739%_
                                        (reverse _%target2869928726%_)))
                                   ((lambda (_%L28743%_)
                                      (let* ((_%g2876028777%_
                                              (lambda (_%g2876128773%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2876128773%_)))
                                             (_%g2875928945%_
                                              (lambda (_%g2876128781%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2876128781%_)
                                                    (let ((_g39904_
                                                           (gx#syntax-split-splice
                                                            _%g2876128781%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39905_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39904_)
                             (##vector-length _g39904_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39905_ 2)))
                      (error "Context expects 2 values" _g39905_)))
                (let ((_%target2876328784%_
                       (let () (declare (not safe)) (##vector-ref _g39904_ 0)))
                      (_%tl2876528787%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g39904_ 1))))
                  (if (gx#stx-null? _%tl2876528787%_)
                      (letrec ((_%loop2876628790%_
                                (lambda (_%hd2876428794%_
                                         _%fail-diagnostic2877028797%_)
                                  (if (gx#stx-pair? _%hd2876428794%_)
                                      (let ((_%e2876728800%_
                                             (gx#syntax-e _%hd2876428794%_)))
                                        (let ((_%lp-hd2876828804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2876728800%_)))
                                              (_%lp-tl2876928807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2876728800%_))))
                                          (_%loop2876628790%_
                                           _%lp-tl2876928807%_
                                           (cons _%lp-hd2876828804%_
                                                 _%fail-diagnostic2877028797%_))))
                                      (let ((_%fail-diagnostic2877128810%_
                                             (reverse _%fail-diagnostic2877028797%_)))
                                        ((lambda (_%L28814%_)
                                           (let* ((_%g2883128839%_
                                                   (lambda (_%g2883228835%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2883228835%_)))
                                                  (_%g2883028925%_
                                                   (lambda (_%g2883228843%_)
                                                     ((lambda (_%L28846%_)
                                                        (let* ((_%g2885928867%_
                                                                (lambda (_%g2886028863%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2886028863%_)))
                       (_%g2885828921%_
                        (lambda (_%g2886028871%_)
                          ((lambda (_%L28874%_)
                             (let* ((_%g2888728895%_
                                     (lambda (_%g2888828891%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2888828891%_)))
                                    (_%g2888628917%_
                                     (lambda (_%g2888828899%_)
                                       ((lambda (_%L28902%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28902%_ '()))))
                                        _%g2888828899%_))))
                               (_%g2888628917%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28677%_
                                                         (cons _%L28846%_ '()))
                                                   '())
                                             (cons _%L28874%_ '())))
                                 (gx#stx-source _%stx27948%_)))))
                           _%g2886028871%_))))
                  (_%g2885828921%_
                   (_%generate-clauses27956%_
                    _%body28659%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28677%_ '()) '())))))))
              _%g2883228843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2883028925%_
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
                                     (foldr (lambda (_%g2892828933%_
                                                     _%g2892928936%_)
                                              (cons _%g2892828933%_
                                                    _%g2892928936%_))
                                            (foldr (lambda (_%g2893028939%_
                                                            _%g2893128942%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2893028939%_ '()))
                   _%g2893128942%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28814%_)
                                            _%L28743%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27948%_)))))
                                         _%fail-diagnostic2877128810%_))))))
                        (_%loop2876628790%_ _%target2876328784%_ '()))
                      (_%g2876028777%_ _%g2876128781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2876028777%_
                                                     _%g2876128781%_)))))
                                        (_%g2875928945%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses27951%_))))
                                    _%target2870028739%_))))))
                   (_%loop2869528719%_ _%target2869228713%_ '()))
                 (_%g2868928706%_ _%g2869028710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2868928706%_
                                                _%g2869028710%_)))))
                                   (_%g2868828949%_ _%tgt-lst27950%_)))
                               _%g2866328674%_))))
                      (_%g2866128953%_ (gx#genident 'E)))))
                 (_%generate-clauses27956%_
                  (lambda (_%rest28311%_ _%E28313%_)
                    (let* ((_%__stx3924339244%_ _%rest28311%_)
                           (_%g2831728333%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3924339244%_))))
                      (let ((_%__kont3924639247%_
                             (lambda (_%L28567%_)
                               (let* ((_%g2857828596%_
                                       (lambda (_%g2857928592%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2857928592%_)))
                                      (_%g2857728651%_
                                       (lambda (_%g2857928600%_)
                                         (if (gx#stx-pair? _%g2857928600%_)
                                             (let ((_%e2858228603%_
                                                    (gx#syntax-e
                                                     _%g2857928600%_)))
                                               (let ((_%hd2858328607%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2858228603%_)))
                                                     (_%tl2858428610%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2858228603%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2858428610%_)
                                                     (let ((_%e2858528613%_
                                                            (gx#syntax-e
                                                             _%tl2858428610%_)))
                                                       (let ((_%hd2858628617%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2858528613%_)))
                     (_%tl2858728620%_
                      (let () (declare (not safe)) (##cdr _%e2858528613%_))))
                 (if (gx#stx-pair? _%tl2858728620%_)
                     (let ((_%e2858828623%_ (gx#syntax-e _%tl2858728620%_)))
                       (let ((_%hd2858928627%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2858828623%_)))
                             (_%tl2859028630%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2858828623%_))))
                         (if (gx#stx-null? _%tl2859028630%_)
                             ((lambda (_%L28633%_ _%L28635%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28635%_)
                                                      (_%generate127957%_
                                                       _%L28635%_
                                                       _%L28633%_
                                                       _%E28313%_)
                                                      _%L28633%_)
                                                  '()))))
                              _%hd2858928627%_
                              _%hd2858628617%_)
                             (_%g2857828596%_ _%g2857928600%_))))
                     (_%g2857828596%_ _%g2857928600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2857828596%_
                                                      _%g2857928600%_))))
                                             (_%g2857828596%_
                                              _%g2857928600%_)))))
                                 (_%g2857728651%_ _%L28567%_))))
                            (_%__kont3924839249%_
                             (lambda (_%L28361%_ _%L28363%_)
                               (let* ((_%g2837628395%_
                                       (lambda (_%g2837728391%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2837728391%_)))
                                      (_%g2837528546%_
                                       (lambda (_%g2837728399%_)
                                         (if (gx#stx-pair? _%g2837728399%_)
                                             (let ((_%e2838128402%_
                                                    (gx#syntax-e
                                                     _%g2837728399%_)))
                                               (let ((_%hd2838228406%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2838128402%_)))
                                                     (_%tl2838328409%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2838128402%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2838328409%_)
                                                     (let ((_%e2838428412%_
                                                            (gx#syntax-e
                                                             _%tl2838328409%_)))
                                                       (let ((_%hd2838528416%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2838428412%_)))
                     (_%tl2838628419%_
                      (let () (declare (not safe)) (##cdr _%e2838428412%_))))
                 (if (gx#stx-pair? _%tl2838628419%_)
                     (let ((_%e2838728422%_ (gx#syntax-e _%tl2838628419%_)))
                       (let ((_%hd2838828426%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2838728422%_)))
                             (_%tl2838928429%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2838728422%_))))
                         (if (gx#stx-null? _%tl2838928429%_)
                             ((lambda (_%L28432%_ _%L28434%_ _%L28435%_)
                                (if (gx#stx-e _%L28434%_)
                                    (let* ((_%g2845228467%_
                                            (lambda (_%g2845328463%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2845328463%_)))
                                           (_%g2845128512%_
                                            (lambda (_%g2845328471%_)
                                              (if (gx#stx-pair?
                                                   _%g2845328471%_)
                                                  (let ((_%e2845628474%_
                                                         (gx#syntax-e
                                                          _%g2845328471%_)))
                                                    (let ((_%hd2845728478%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2845628474%_)))
                                                          (_%tl2845828481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2845628474%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2845828481%_)
                                                          (let ((_%e2845928484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2845828481%_)))
                    (let ((_%hd2846028488%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2845928484%_)))
                          (_%tl2846128491%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2845928484%_))))
                      (if (gx#stx-null? _%tl2846128491%_)
                          ((lambda (_%L28494%_ _%L28496%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28435%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28496%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28494%_ '()))))
                           _%hd2846028488%_
                           _%hd2845728478%_)
                          (_%g2845228467%_ _%g2845328471%_))))
                  (_%g2845228467%_ _%g2845328471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2845228467%_
                                                   _%g2845328471%_)))))
                                      (_%g2845128512%_
                                       (list (_%generate127957%_
                                              _%L28434%_
                                              _%L28432%_
                                              _%E28313%_)
                                             (_%generate-clauses27956%_
                                              _%L28361%_
                                              (cons _%L28435%_ '())))))
                                    (let* ((_%g2851628524%_
                                            (lambda (_%g2851728520%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2851728520%_)))
                                           (_%g2851528542%_
                                            (lambda (_%g2851728528%_)
                                              ((lambda (_%L28531%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28435%_
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
                             (cons _%L28432%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28531%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2851728528%_))))
                                      (_%g2851528542%_
                                       (_%generate-clauses27956%_
                                        _%L28361%_
                                        (cons _%L28435%_ '()))))))
                              _%hd2838828426%_
                              _%hd2838528416%_
                              _%hd2838228406%_)
                             (_%g2837628395%_ _%g2837728399%_))))
                     (_%g2837628395%_ _%g2837728399%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2837628395%_
                                                      _%g2837728399%_))))
                                             (_%g2837628395%_
                                              _%g2837728399%_)))))
                                 (_%g2837528546%_ _%L28363%_))))
                            (_%__kont3925039251%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28313%_ '()))))))
                        (if (gx#stx-pair? _%__stx3924339244%_)
                            (let ((_%e2832028557%_
                                   (gx#syntax-e _%__stx3924339244%_)))
                              (let ((_%tl2832228564%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2832028557%_)))
                                    (_%hd2832128561%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2832028557%_))))
                                (if (gx#stx-null? _%tl2832228564%_)
                                    (_%__kont3924639247%_ _%hd2832128561%_)
                                    (_%__kont3924839249%_
                                     _%tl2832228564%_
                                     _%hd2832128561%_))))
                            (_%__kont3925039251%_))))))
                 (_%generate127957%_
                  (lambda (_%clause27959%_ _%body27961%_ _%E27962%_)
                    (let* ((_%g2796427988%_
                            (lambda (_%g2796527984%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2796527984%_)))
                           (_%g2796328307%_
                            (lambda (_%g2796527992%_)
                              (if (gx#stx-pair? _%g2796527992%_)
                                  (let ((_%e2796827995%_
                                         (gx#syntax-e _%g2796527992%_)))
                                    (let ((_%hd2796927999%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2796827995%_)))
                                          (_%tl2797028002%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2796827995%_))))
                                      (if (gx#stx-pair? _%tl2797028002%_)
                                          (let ((_%e2797128005%_
                                                 (gx#syntax-e
                                                  _%tl2797028002%_)))
                                            (let ((_%hd2797228009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2797128005%_)))
                                                  (_%tl2797328012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2797128005%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2797228009%_)
                                                  (let ((_g39906_
                                                         (gx#syntax-split-splice
                                                          _%hd2797228009%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39907_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39906_)
                           (##vector-length _g39906_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39907_ 2)))
                    (error "Context expects 2 values" _g39907_)))
              (let ((_%target2797428015%_
                     (let () (declare (not safe)) (##vector-ref _g39906_ 0)))
                    (_%tl2797628018%_
                     (let () (declare (not safe)) (##vector-ref _g39906_ 1))))
                (if (gx#stx-null? _%tl2797628018%_)
                    (letrec ((_%loop2797728021%_
                              (lambda (_%hd2797528025%_ _%var2798128028%_)
                                (if (gx#stx-pair? _%hd2797528025%_)
                                    (let ((_%e2797828031%_
                                           (gx#syntax-e _%hd2797528025%_)))
                                      (let ((_%lp-hd2797928035%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2797828031%_)))
                                            (_%lp-tl2798028038%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2797828031%_))))
                                        (_%loop2797728021%_
                                         _%lp-tl2798028038%_
                                         (cons _%lp-hd2797928035%_
                                               _%var2798128028%_))))
                                    (let ((_%var2798228041%_
                                           (reverse _%var2798128028%_)))
                                      (if (gx#stx-null? _%tl2797328012%_)
                                          ((lambda (_%L28045%_ _%L28047%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2806828071%_
                                                                _%g2806928074%_)
                                                         (cons _%g2806828071%_
                                                               _%g2806928074%_))
                                                       '()
                                                       _%L28045%_)
                                                _%stx27948%_)
                                               (let* ((_%g2807728085%_
                                                       (lambda (_%g2807828081%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2807828081%_)))
                                                      (_%g2807628179%_
                                                       (lambda (_%g2807828089%_)
                                                         ((lambda (_%L28092%_)
                                                            (let* ((_%g2810528113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2810628109%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2810628109%_)))
                           (_%g2810428175%_
                            (lambda (_%g2810628117%_)
                              ((lambda (_%L28120%_)
                                 (let* ((_%g2813328141%_
                                         (lambda (_%g2813428137%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2813428137%_)))
                                        (_%g2813228163%_
                                         (lambda (_%g2813428145%_)
                                           ((lambda (_%L28148%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28148%_ '()))
                   (cons _%L28092%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27948%_)))
                                            _%g2813428145%_))))
                                   (_%g2813228163%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2816628169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2816728172%_)
                  (cons _%g2816628169%_ _%g2816728172%_))
                '()
                _%L28045%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28120%_ '())))
                                     (gx#stx-source _%stx27948%_)))))
                               _%g2810628117%_))))
                      (_%g2810428175%_ _%body27961%_)))
                  _%g2807828089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2807628179%_
                                                  (let _%recur28183%_ ((_%rest28186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause27959%_)
                               (_%rest-targets28188%_ _%tgt-lst27950%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3926939270%_
                                                            _%rest28186%_)
                                                           (_%g2819128203%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3926939270%_))))
                                                      (let ((_%__kont3927239273%_
                                                             (lambda (_%L28239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28241%_)
                       (let* ((_%g2825628268%_
                               (lambda (_%g2825728264%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2825728264%_)))
                              (_%g2825528299%_
                               (lambda (_%g2825728272%_)
                                 (if (gx#stx-pair? _%g2825728272%_)
                                     (let ((_%e2826028275%_
                                            (gx#syntax-e _%g2825728272%_)))
                                       (let ((_%hd2826128279%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2826028275%_)))
                                             (_%tl2826228282%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2826028275%_))))
                                         ((lambda (_%L28285%_ _%L28287%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27948%_
                                             _%L28287%_
                                             _%L28241%_
                                             (_%recur28183%_
                                              _%L28239%_
                                              _%L28285%_)
                                             _%E27962%_))
                                          _%tl2826228282%_
                                          _%hd2826128279%_)))
                                     (_%g2825628268%_ _%g2825728272%_)))))
                         (_%g2825528299%_ _%rest-targets28188%_))))
                    (_%__kont3927439275%_
                     (lambda ()
                       (cons _%L28047%_
                             (foldr (lambda (_%g2821328216%_ _%g2821428219%_)
                                      (cons _%g2821328216%_ _%g2821428219%_))
                                    '()
                                    _%L28045%_)))))
                (if (gx#stx-pair? _%__stx3926939270%_)
                    (let ((_%e2819528229%_ (gx#syntax-e _%__stx3926939270%_)))
                      (let ((_%tl2819728236%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2819528229%_)))
                            (_%hd2819628233%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2819528229%_))))
                        (_%__kont3927239273%_
                         _%tl2819728236%_
                         _%hd2819628233%_)))
                    (_%__kont3927439275%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2798228041%_
                                           _%hd2796927999%_)
                                          (_%g2796427988%_
                                           _%g2796527992%_)))))))
                      (_%loop2797728021%_ _%target2797428015%_ '()))
                    (_%g2796427988%_ _%g2796527992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2796427988%_
                                                   _%g2796527992%_))))
                                          (_%g2796427988%_ _%g2796527992%_))))
                                  (_%g2796427988%_ _%g2796527992%_)))))
                      (_%g2796328307%_
                       (list (gx#genident 'K)
                             (let ((__tmp39908
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause27959%_)))
                               (declare (not safe))
                               (##apply append __tmp39908))))))))
          (_%generate-body27955%_
           (_%parse-body27953%_ (gx#stx-length _%tgt-lst27950%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27850%_ _%tgt27852%_ _%clauses27853%_)
        (letrec ((_%reclause27855%_
                  (lambda (_%clause27858%_)
                    (let* ((_%__stx3928539286%_ _%clause27858%_)
                           (_%g2786327878%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3928539286%_))))
                      (let ((_%__kont3928839289%_ (lambda () _%clause27858%_))
                            (_%__kont3929039291%_
                             (lambda (_%L27906%_ _%L27908%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27908%_ '()) _%L27906%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3929239293%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27850%_
                                _%clause27858%_))))
                        (if (gx#stx-pair? _%__stx3928539286%_)
                            (let ((_%e2786527930%_
                                   (gx#syntax-e _%__stx3928539286%_)))
                              (let ((_%tl2786727937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2786527930%_)))
                                    (_%hd2786627934%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2786527930%_))))
                                (if (gx#identifier? _%hd2786627934%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39909_|
                                         _%hd2786627934%_)
                                        (_%__kont3928839289%_)
                                        (_%__kont3929039291%_
                                         _%tl2786727937%_
                                         _%hd2786627934%_))
                                    (_%__kont3929039291%_
                                     _%tl2786727937%_
                                     _%hd2786627934%_))))
                            (_%__kont3929239293%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27850%_
           (cons _%tgt27852%_ '())
           (gx#stx-map _%reclause27855%_ _%clauses27853%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35186%_)
        (let* ((_%__stx3931339314%_ _%stx35186%_)
               (_%g3519135220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3931339314%_))))
          (let ((_%__kont3931639317%_
                 (lambda (_%L35460%_)
                   (let* ((_%g3547335481%_
                           (lambda (_%g3547435477%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3547435477%_)))
                          (_%g3547235534%_
                           (lambda (_%g3547435485%_)
                             ((lambda (_%L35488%_)
                                (let* ((_%g3550035508%_
                                        (lambda (_%g3550135504%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3550135504%_)))
                                       (_%g3549935530%_
                                        (lambda (_%g3550135512%_)
                                          ((lambda (_%L35515%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35488%_ '())
                                                         (cons _%L35515%_
                                                               '()))))
                                           _%g3550135512%_))))
                                  (_%g3549935530%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35488%_ _%L35460%_))
                                    (gx#stx-source _%stx35186%_)))))
                              _%g3547435485%_))))
                     (_%g3547235534%_ (gx#genident 'e)))))
                (_%__kont3931839319%_
                 (lambda (_%L35355%_)
                   (let* ((_%g3536835376%_
                           (lambda (_%g3536935372%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3536935372%_)))
                          (_%g3536735429%_
                           (lambda (_%g3536935380%_)
                             ((lambda (_%L35383%_)
                                (let* ((_%g3539535403%_
                                        (lambda (_%g3539635399%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3539635399%_)))
                                       (_%g3539435425%_
                                        (lambda (_%g3539635407%_)
                                          ((lambda (_%L35410%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35383%_
                                                         (cons _%L35410%_
                                                               '()))))
                                           _%g3539635407%_))))
                                  (_%g3539435425%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35383%_ _%L35355%_))
                                    (gx#stx-source _%stx35186%_)))))
                              _%g3536935380%_))))
                     (_%g3536735429%_ (gx#genident 'args)))))
                (_%__kont3932039321%_
                 (lambda (_%L35247%_ _%L35249%_)
                   (let* ((_%g3526335271%_
                           (lambda (_%g3526435267%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3526435267%_)))
                          (_%g3526235324%_
                           (lambda (_%g3526435275%_)
                             ((lambda (_%L35278%_)
                                (let* ((_%g3529035298%_
                                        (lambda (_%g3529135294%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3529135294%_)))
                                       (_%g3528935320%_
                                        (lambda (_%g3529135302%_)
                                          ((lambda (_%L35305%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35249%_ '()))
                       '())
                 (cons _%L35305%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3529135302%_))))
                                  (_%g3528935320%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35186%_
                                    _%L35278%_
                                    _%L35247%_))))
                              _%g3526435275%_))))
                     (_%g3526235324%_ (gx#genident _%L35249%_))))))
            (let* ((_%__match3936639367%_
                    (lambda (_%e3520935227%_
                             _%hd3521035231%_
                             _%tl3521135234%_
                             _%e3521235237%_
                             _%hd3521335241%_
                             _%tl3521435244%_)
                      (let ((_%L35247%_ _%tl3521435244%_)
                            (_%L35249%_ _%hd3521335241%_))
                        (if (gx#stx-list? _%L35247%_)
                            (_%__kont3932039321%_ _%L35247%_ _%L35249%_)
                            (let () (declare (not safe)) (_%g3519135220%_))))))
                   (_%__match3935439355%_
                    (lambda (_%e3520135335%_
                             _%hd3520235339%_
                             _%tl3520335342%_
                             _%e3520435345%_
                             _%hd3520535349%_
                             _%tl3520635352%_)
                      (let ((_%L35355%_ _%tl3520635352%_))
                        (if (gx#stx-list? _%L35355%_)
                            (_%__kont3931839319%_ _%L35355%_)
                            (_%__match3936639367%_
                             _%e3520135335%_
                             _%hd3520235339%_
                             _%tl3520335342%_
                             _%e3520435345%_
                             _%hd3520535349%_
                             _%tl3520635352%_)))))
                   (_%__match3933839339%_
                    (lambda (_%e3519435440%_
                             _%hd3519535444%_
                             _%tl3519635447%_
                             _%e3519735450%_
                             _%hd3519835454%_
                             _%tl3519935457%_)
                      (let ((_%L35460%_ _%tl3519935457%_))
                        (if (gx#stx-list? _%L35460%_)
                            (_%__kont3931639317%_ _%L35460%_)
                            (_%__match3936639367%_
                             _%e3519435440%_
                             _%hd3519535444%_
                             _%tl3519635447%_
                             _%e3519735450%_
                             _%hd3519835454%_
                             _%tl3519935457%_))))))
              (if (gx#stx-pair? _%__stx3931339314%_)
                  (let ((_%e3519435440%_ (gx#syntax-e _%__stx3931339314%_)))
                    (let ((_%tl3519635447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3519435440%_)))
                          (_%hd3519535444%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3519435440%_))))
                      (if (gx#stx-pair? _%tl3519635447%_)
                          (let ((_%e3519735450%_
                                 (gx#syntax-e _%tl3519635447%_)))
                            (let ((_%tl3519935457%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3519735450%_)))
                                  (_%hd3519835454%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3519735450%_))))
                              (if (gx#identifier? _%hd3519835454%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39910_|
                                       _%hd3519835454%_)
                                      (_%__match3933839339%_
                                       _%e3519435440%_
                                       _%hd3519535444%_
                                       _%tl3519635447%_
                                       _%e3519735450%_
                                       _%hd3519835454%_
                                       _%tl3519935457%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39911_|
                                           _%hd3519835454%_)
                                          (_%__match3935439355%_
                                           _%e3519435440%_
                                           _%hd3519535444%_
                                           _%tl3519635447%_
                                           _%e3519735450%_
                                           _%hd3519835454%_
                                           _%tl3519935457%_)
                                          (_%__match3936639367%_
                                           _%e3519435440%_
                                           _%hd3519535444%_
                                           _%tl3519635447%_
                                           _%e3519735450%_
                                           _%hd3519835454%_
                                           _%tl3519935457%_)))
                                  (_%__match3936639367%_
                                   _%e3519435440%_
                                   _%hd3519535444%_
                                   _%tl3519635447%_
                                   _%e3519735450%_
                                   _%hd3519835454%_
                                   _%tl3519935457%_))))
                          (let () (declare (not safe)) (_%g3519135220%_)))))
                  (let () (declare (not safe)) (_%g3519135220%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35542%_)
        (let* ((_%g3554535569%_
                (lambda (_%g3554635565%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3554635565%_)))
               (_%g3554435781%_
                (lambda (_%g3554635573%_)
                  (if (gx#stx-pair? _%g3554635573%_)
                      (let ((_%e3554935576%_ (gx#syntax-e _%g3554635573%_)))
                        (let ((_%hd3555035580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3554935576%_)))
                              (_%tl3555135583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3554935576%_))))
                          (if (gx#stx-pair? _%tl3555135583%_)
                              (let ((_%e3555235586%_
                                     (gx#syntax-e _%tl3555135583%_)))
                                (let ((_%hd3555335590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3555235586%_)))
                                      (_%tl3555435593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3555235586%_))))
                                  (if (gx#stx-pair/null? _%hd3555335590%_)
                                      (let ((_g39912_
                                             (gx#syntax-split-splice
                                              _%hd3555335590%_
                                              '0)))
                                        (begin
                                          (let ((_g39913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39912_)
                                                       (##vector-length
                                                        _g39912_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39913_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39913_)))
                                          (let ((_%target3555535596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39912_ 0)))
                                                (_%tl3555735599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39912_ 1))))
                                            (if (gx#stx-null? _%tl3555735599%_)
                                                (letrec ((_%loop3555835602%_
                                                          (lambda (_%hd3555635606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3556235609%_)
                    (if (gx#stx-pair? _%hd3555635606%_)
                        (let ((_%e3555935612%_ (gx#syntax-e _%hd3555635606%_)))
                          (let ((_%lp-hd3556035616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3555935612%_)))
                                (_%lp-tl3556135619%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3555935612%_))))
                            (_%loop3555835602%_
                             _%lp-tl3556135619%_
                             (cons _%lp-hd3556035616%_ _%e3556235609%_))))
                        (let ((_%e3556335622%_ (reverse _%e3556235609%_)))
                          ((lambda (_%L35626%_ _%L35628%_)
                             (if (gx#stx-list? _%L35626%_)
                                 (let* ((_%g3564635663%_
                                         (lambda (_%g3564735659%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3564735659%_)))
                                        (_%g3564535769%_
                                         (lambda (_%g3564735667%_)
                                           (if (gx#stx-pair/null?
                                                _%g3564735667%_)
                                               (let ((_g39914_
                                                      (gx#syntax-split-splice
                                                       _%g3564735667%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39915_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39914_)
                        (##vector-length _g39914_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39915_ 2)))
                 (error "Context expects 2 values" _g39915_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3564935670%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39914_
                                                             0)))
                                                         (_%tl3565135673%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39914_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3565135673%_)
                                                         (letrec ((_%loop3565235676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3565035680%_ _%$e3565635683%_)
                             (if (gx#stx-pair? _%hd3565035680%_)
                                 (let ((_%e3565335686%_
                                        (gx#syntax-e _%hd3565035680%_)))
                                   (let ((_%lp-hd3565435690%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3565335686%_)))
                                         (_%lp-tl3565535693%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3565335686%_))))
                                     (_%loop3565235676%_
                                      _%lp-tl3565535693%_
                                      (cons _%lp-hd3565435690%_
                                            _%$e3565635683%_))))
                                 (let ((_%$e3565735696%_
                                        (reverse _%$e3565635683%_)))
                                   ((lambda (_%L35700%_)
                                      (let* ((_%g3571635724%_
                                              (lambda (_%g3571735720%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3571735720%_)))
                                             (_%g3571535757%_
                                              (lambda (_%g3571735728%_)
                                                ((lambda (_%L35731%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35628%_ _%L35700%_)
                         (foldr (lambda (_%g3574535749%_
                                         _%g3574635752%_
                                         _%g3574735754%_)
                                  (cons (cons _%g3574635752%_
                                              (cons _%g3574535749%_ '()))
                                        _%g3574735754%_))
                                '()
                                _%L35628%_
                                _%L35700%_))
                       (cons _%L35731%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3571735728%_))))
                                        (_%g3571535757%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35542%_
                                          (foldr (lambda (_%g3576035763%_
                                                          _%g3576135766%_)
                                                   (cons _%g3576035763%_
                                                         _%g3576135766%_))
                                                 '()
                                                 _%L35700%_)
                                          _%L35626%_))))
                                    _%$e3565735696%_))))))
                   (_%loop3565235676%_ _%target3564935670%_ '()))
                 (_%g3564635663%_ _%g3564735667%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3564635663%_
                                                _%g3564735667%_)))))
                                   (_%g3564535769%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3577235775%_
                                                     _%g3577335778%_)
                                              (cons _%g3577235775%_
                                                    _%g3577335778%_))
                                            '()
                                            _%L35628%_))))
                                 (_%g3554535569%_ _%g3554635573%_)))
                           _%tl3555435593%_
                           _%e3556335622%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3555835602%_
                                                   _%target3555535596%_
                                                   '()))
                                                (_%g3554535569%_
                                                 _%g3554635573%_)))))
                                      (_%g3554535569%_ _%g3554635573%_))))
                              (_%g3554535569%_ _%g3554635573%_))))
                      (_%g3554535569%_ _%g3554635573%_)))))
          (_%g3554435781%_ _%stx35542%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35787%_)
        (let* ((_%__stx3936939370%_ _%$stx35787%_)
               (_%g3579335876%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3936939370%_))))
          (let ((_%__kont3937239373%_
                 (lambda (_%L36206%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3622236225%_ _%g3622336228%_)
                                        (cons _%g3622236225%_ _%g3622336228%_))
                                      '()
                                      _%L36206%_)))))
                (_%__kont3937639377%_
                 (lambda (_%L36114%_ _%L36116%_ _%L36117%_ _%L36118%_)
                   (cons _%L36118%_
                         (cons (cons (cons _%L36117%_ (cons _%L36116%_ '()))
                                     '())
                               (foldr (lambda (_%g3614036143%_ _%g3614136146%_)
                                        (cons _%g3614036143%_ _%g3614136146%_))
                                      '()
                                      _%L36114%_)))))
                (_%__kont3938039381%_
                 (lambda (_%L35987%_ _%L35989%_ _%L35990%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3601636019%_ _%g3601736022%_)
                                        (cons _%g3601636019%_ _%g3601736022%_))
                                      '()
                                      _%L35989%_)
                               (cons (cons (foldr (lambda (_%g3601436025%_
                                                           _%g3601536028%_)
                                                    (cons _%g3601436025%_
                                                          _%g3601536028%_))
                                                  '()
                                                  _%L35990%_)
                                           (foldr (lambda (_%g3601236031%_
                                                           _%g3601336034%_)
                                                    (cons _%g3601236031%_
                                                          _%g3601336034%_))
                                                  '()
                                                  _%L35987%_))
                                     '()))))))
            (let* ((_%__match3946239463%_
                    (lambda (_%e3583935883%_
                             _%hd3584035887%_
                             _%tl3584135890%_
                             _%e3584235893%_
                             _%hd3584335897%_
                             _%tl3584435900%_
                             _%__splice3938239383%_
                             _%target3584535903%_
                             _%tl3584735906%_)
                      (letrec ((_%loop3584835909%_
                                (lambda (_%hd3584635913%_
                                         _%expr3585235916%_
                                         _%hd3585335918%_)
                                  (if (gx#stx-pair? _%hd3584635913%_)
                                      (let ((_%e3584935921%_
                                             (gx#syntax-e _%hd3584635913%_)))
                                        (let ((_%lp-tl3585135928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3584935921%_)))
                                              (_%lp-hd3585035925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3584935921%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3585035925%_)
                                              (let ((_%e3586535931%_
                                                     (gx#syntax-e
                                                      _%lp-hd3585035925%_)))
                                                (let ((_%tl3586735938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3586535931%_)))
                                                      (_%hd3586635935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3586535931%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3586735938%_)
                                                      (let ((_%e3586835941%_
                                                             (gx#syntax-e
                                                              _%tl3586735938%_)))
                                                        (let ((_%tl3587035948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3586835941%_)))
                      (_%hd3586935945%_
                       (let () (declare (not safe)) (##car _%e3586835941%_))))
                  (if (gx#stx-null? _%tl3587035948%_)
                      (_%loop3584835909%_
                       _%lp-tl3585135928%_
                       (cons _%hd3586935945%_ _%expr3585235916%_)
                       (cons _%hd3586635935%_ _%hd3585335918%_))
                      (let () (declare (not safe)) (_%g3579335876%_)))))
              (let () (declare (not safe)) (_%g3579335876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3579335876%_)))))
                                      (let ((_%hd3585535954%_
                                             (reverse _%hd3585335918%_))
                                            (_%expr3585435951%_
                                             (reverse _%expr3585235916%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3584435900%_)
                                            (let ((_%__splice3938439385%_
                                                   (gx#syntax-split-splice
                                                    _%tl3584435900%_
                                                    '0)))
                                              (let ((_%tl3585835960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3938439385%_
                                                        '1)))
                                                    (_%target3585635957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3938439385%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3585835960%_)
                                                    (letrec ((_%loop3585935963%_
                                                              (lambda (_%hd3585735967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3586335970%_)
                        (if (gx#stx-pair? _%hd3585735967%_)
                            (let ((_%e3586035973%_
                                   (gx#syntax-e _%hd3585735967%_)))
                              (let ((_%lp-tl3586235980%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3586035973%_)))
                                    (_%lp-hd3586135977%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3586035973%_))))
                                (_%loop3585935963%_
                                 _%lp-tl3586235980%_
                                 (cons _%lp-hd3586135977%_
                                       _%body3586335970%_))))
                            (let ((_%body3586435983%_
                                   (reverse _%body3586335970%_)))
                              (_%__kont3938039381%_
                               _%body3586435983%_
                               _%expr3585435951%_
                               _%hd3585535954%_))))))
              (_%loop3585935963%_ _%target3585635957%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3579335876%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3579335876%_))))))))
                        (_%loop3584835909%_ _%target3584535903%_ '() '()))))
                   (_%__match3945439455%_
                    (lambda (_%e3583935883%_
                             _%hd3584035887%_
                             _%tl3584135890%_
                             _%e3584235893%_
                             _%hd3584335897%_
                             _%tl3584435900%_)
                      (if (gx#stx-pair/null? _%hd3584335897%_)
                          (let ((_%__splice3938239383%_
                                 (gx#syntax-split-splice _%hd3584335897%_ '0)))
                            (let ((_%tl3584735906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3938239383%_ '1)))
                                  (_%target3584535903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3938239383%_
                                      '0))))
                              (if (gx#stx-null? _%tl3584735906%_)
                                  (_%__match3946239463%_
                                   _%e3583935883%_
                                   _%hd3584035887%_
                                   _%tl3584135890%_
                                   _%e3584235893%_
                                   _%hd3584335897%_
                                   _%tl3584435900%_
                                   _%__splice3938239383%_
                                   _%target3584535903%_
                                   _%tl3584735906%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3579335876%_)))))
                          (let () (declare (not safe)) (_%g3579335876%_)))))
                   (_%__match3944239443%_
                    (lambda (_%e3581536044%_
                             _%hd3581636048%_
                             _%tl3581736051%_
                             _%e3581836054%_
                             _%hd3581936058%_
                             _%tl3582036061%_
                             _%e3582136064%_
                             _%hd3582236068%_
                             _%tl3582336071%_
                             _%e3582436074%_
                             _%hd3582536078%_
                             _%tl3582636081%_
                             _%__splice3937839379%_
                             _%target3582736084%_
                             _%tl3582936087%_)
                      (letrec ((_%loop3583036090%_
                                (lambda (_%hd3582836094%_ _%body3583436097%_)
                                  (if (gx#stx-pair? _%hd3582836094%_)
                                      (let ((_%e3583136100%_
                                             (gx#syntax-e _%hd3582836094%_)))
                                        (let ((_%lp-tl3583336107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3583136100%_)))
                                              (_%lp-hd3583236104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3583136100%_))))
                                          (_%loop3583036090%_
                                           _%lp-tl3583336107%_
                                           (cons _%lp-hd3583236104%_
                                                 _%body3583436097%_))))
                                      (let ((_%body3583536110%_
                                             (reverse _%body3583436097%_)))
                                        (let ((_%L36114%_ _%body3583536110%_)
                                              (_%L36116%_ _%hd3582536078%_)
                                              (_%L36117%_ _%hd3582236068%_)
                                              (_%L36118%_ _%hd3581636048%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36117%_)
                                              (_%__kont3937639377%_
                                               _%L36114%_
                                               _%L36116%_
                                               _%L36117%_
                                               _%L36118%_)
                                              (_%__match3945439455%_
                                               _%e3581536044%_
                                               _%hd3581636048%_
                                               _%tl3581736051%_
                                               _%e3581836054%_
                                               _%hd3581936058%_
                                               _%tl3582036061%_))))))))
                        (_%loop3583036090%_ _%target3582736084%_ '()))))
                   (_%__match3940839409%_
                    (lambda (_%e3579636156%_
                             _%hd3579736160%_
                             _%tl3579836163%_
                             _%e3579936166%_
                             _%hd3580036170%_
                             _%tl3580136173%_
                             _%__splice3937439375%_
                             _%target3580236176%_
                             _%tl3580436179%_)
                      (letrec ((_%loop3580536182%_
                                (lambda (_%hd3580336186%_ _%body3580936189%_)
                                  (if (gx#stx-pair? _%hd3580336186%_)
                                      (let ((_%e3580636192%_
                                             (gx#syntax-e _%hd3580336186%_)))
                                        (let ((_%lp-tl3580836199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3580636192%_)))
                                              (_%lp-hd3580736196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3580636192%_))))
                                          (_%loop3580536182%_
                                           _%lp-tl3580836199%_
                                           (cons _%lp-hd3580736196%_
                                                 _%body3580936189%_))))
                                      (let ((_%body3581036202%_
                                             (reverse _%body3580936189%_)))
                                        (_%__kont3937239373%_
                                         _%body3581036202%_))))))
                        (_%loop3580536182%_ _%target3580236176%_ '())))))
              (if (gx#stx-pair? _%__stx3936939370%_)
                  (let ((_%e3579636156%_ (gx#syntax-e _%__stx3936939370%_)))
                    (let ((_%tl3579836163%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3579636156%_)))
                          (_%hd3579736160%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3579636156%_))))
                      (if (gx#stx-pair? _%tl3579836163%_)
                          (let ((_%e3579936166%_
                                 (gx#syntax-e _%tl3579836163%_)))
                            (let ((_%tl3580136173%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3579936166%_)))
                                  (_%hd3580036170%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3579936166%_))))
                              (if (gx#stx-null? _%hd3580036170%_)
                                  (if (gx#stx-pair/null? _%tl3580136173%_)
                                      (let ((_%__splice3937439375%_
                                             (gx#syntax-split-splice
                                              _%tl3580136173%_
                                              '0)))
                                        (let ((_%tl3580436179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3937439375%_
                                                  '1)))
                                              (_%target3580236176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3937439375%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3580436179%_)
                                              (_%__match3940839409%_
                                               _%e3579636156%_
                                               _%hd3579736160%_
                                               _%tl3579836163%_
                                               _%e3579936166%_
                                               _%hd3580036170%_
                                               _%tl3580136173%_
                                               _%__splice3937439375%_
                                               _%target3580236176%_
                                               _%tl3580436179%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3580036170%_)
                                                  (let ((_%__splice3938239383%_
                                                         (gx#syntax-split-splice
                                                          _%hd3580036170%_
                                                          '0)))
                                                    (let ((_%tl3584735906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3938239383%_
                                                              '1)))
                                                          (_%target3584535903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3938239383%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3584735906%_)
                                                          (_%__match3946239463%_
                                                           _%e3579636156%_
                                                           _%hd3579736160%_
                                                           _%tl3579836163%_
                                                           _%e3579936166%_
                                                           _%hd3580036170%_
                                                           _%tl3580136173%_
                                                           _%__splice3938239383%_
                                                           _%target3584535903%_
                                                           _%tl3584735906%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3579335876%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3579335876%_))))))
                                      (if (gx#stx-pair/null? _%hd3580036170%_)
                                          (let ((_%__splice3938239383%_
                                                 (gx#syntax-split-splice
                                                  _%hd3580036170%_
                                                  '0)))
                                            (let ((_%tl3584735906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3938239383%_
                                                      '1)))
                                                  (_%target3584535903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3938239383%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3584735906%_)
                                                  (_%__match3946239463%_
                                                   _%e3579636156%_
                                                   _%hd3579736160%_
                                                   _%tl3579836163%_
                                                   _%e3579936166%_
                                                   _%hd3580036170%_
                                                   _%tl3580136173%_
                                                   _%__splice3938239383%_
                                                   _%target3584535903%_
                                                   _%tl3584735906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3579335876%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3579335876%_))))
                                  (if (gx#stx-pair? _%hd3580036170%_)
                                      (let ((_%e3582136064%_
                                             (gx#syntax-e _%hd3580036170%_)))
                                        (let ((_%tl3582336071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3582136064%_)))
                                              (_%hd3582236068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3582136064%_))))
                                          (if (gx#stx-pair? _%tl3582336071%_)
                                              (let ((_%e3582436074%_
                                                     (gx#syntax-e
                                                      _%tl3582336071%_)))
                                                (let ((_%tl3582636081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3582436074%_)))
                                                      (_%hd3582536078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3582436074%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3582636081%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3580136173%_)
                                                          (let ((_%__splice3937839379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl3580136173%_ '0)))
                    (let ((_%tl3582936087%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3937839379%_ '1)))
                          (_%target3582736084%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3937839379%_ '0))))
                      (if (gx#stx-null? _%tl3582936087%_)
                          (_%__match3944239443%_
                           _%e3579636156%_
                           _%hd3579736160%_
                           _%tl3579836163%_
                           _%e3579936166%_
                           _%hd3580036170%_
                           _%tl3580136173%_
                           _%e3582136064%_
                           _%hd3582236068%_
                           _%tl3582336071%_
                           _%e3582436074%_
                           _%hd3582536078%_
                           _%tl3582636081%_
                           _%__splice3937839379%_
                           _%target3582736084%_
                           _%tl3582936087%_)
                          (if (gx#stx-pair/null? _%hd3580036170%_)
                              (let ((_%__splice3938239383%_
                                     (gx#syntax-split-splice
                                      _%hd3580036170%_
                                      '0)))
                                (let ((_%tl3584735906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3938239383%_
                                          '1)))
                                      (_%target3584535903%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3938239383%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3584735906%_)
                                      (_%__match3946239463%_
                                       _%e3579636156%_
                                       _%hd3579736160%_
                                       _%tl3579836163%_
                                       _%e3579936166%_
                                       _%hd3580036170%_
                                       _%tl3580136173%_
                                       _%__splice3938239383%_
                                       _%target3584535903%_
                                       _%tl3584735906%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3579335876%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3579335876%_))))))
                  (if (gx#stx-pair/null? _%hd3580036170%_)
                      (let ((_%__splice3938239383%_
                             (gx#syntax-split-splice _%hd3580036170%_ '0)))
                        (let ((_%tl3584735906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3938239383%_ '1)))
                              (_%target3584535903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3938239383%_ '0))))
                          (if (gx#stx-null? _%tl3584735906%_)
                              (_%__match3946239463%_
                               _%e3579636156%_
                               _%hd3579736160%_
                               _%tl3579836163%_
                               _%e3579936166%_
                               _%hd3580036170%_
                               _%tl3580136173%_
                               _%__splice3938239383%_
                               _%target3584535903%_
                               _%tl3584735906%_)
                              (let ()
                                (declare (not safe))
                                (_%g3579335876%_)))))
                      (let () (declare (not safe)) (_%g3579335876%_))))
              (if (gx#stx-pair/null? _%hd3580036170%_)
                  (let ((_%__splice3938239383%_
                         (gx#syntax-split-splice _%hd3580036170%_ '0)))
                    (let ((_%tl3584735906%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3938239383%_ '1)))
                          (_%target3584535903%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3938239383%_ '0))))
                      (if (gx#stx-null? _%tl3584735906%_)
                          (_%__match3946239463%_
                           _%e3579636156%_
                           _%hd3579736160%_
                           _%tl3579836163%_
                           _%e3579936166%_
                           _%hd3580036170%_
                           _%tl3580136173%_
                           _%__splice3938239383%_
                           _%target3584535903%_
                           _%tl3584735906%_)
                          (let () (declare (not safe)) (_%g3579335876%_)))))
                  (let () (declare (not safe)) (_%g3579335876%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3580036170%_)
                                                  (let ((_%__splice3938239383%_
                                                         (gx#syntax-split-splice
                                                          _%hd3580036170%_
                                                          '0)))
                                                    (let ((_%tl3584735906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3938239383%_
                                                              '1)))
                                                          (_%target3584535903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3938239383%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3584735906%_)
                                                          (_%__match3946239463%_
                                                           _%e3579636156%_
                                                           _%hd3579736160%_
                                                           _%tl3579836163%_
                                                           _%e3579936166%_
                                                           _%hd3580036170%_
                                                           _%tl3580136173%_
                                                           _%__splice3938239383%_
                                                           _%target3584535903%_
                                                           _%tl3584735906%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3579335876%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3579335876%_))))))
                                      (if (gx#stx-pair/null? _%hd3580036170%_)
                                          (let ((_%__splice3938239383%_
                                                 (gx#syntax-split-splice
                                                  _%hd3580036170%_
                                                  '0)))
                                            (let ((_%tl3584735906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3938239383%_
                                                      '1)))
                                                  (_%target3584535903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3938239383%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3584735906%_)
                                                  (_%__match3946239463%_
                                                   _%e3579636156%_
                                                   _%hd3579736160%_
                                                   _%tl3579836163%_
                                                   _%e3579936166%_
                                                   _%hd3580036170%_
                                                   _%tl3580136173%_
                                                   _%__splice3938239383%_
                                                   _%target3584535903%_
                                                   _%tl3584735906%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3579335876%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3579335876%_)))))))
                          (let () (declare (not safe)) (_%g3579335876%_)))))
                  (let () (declare (not safe)) (_%g3579335876%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36239%_)
        (let* ((_%__stx3946539466%_ _%$stx36239%_)
               (_%g3624436296%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3946539466%_))))
          (let ((_%__kont3946839469%_
                 (lambda (_%L36466%_
                          _%L36468%_
                          _%L36469%_
                          _%L36470%_
                          _%L36471%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36470%_ (cons _%L36469%_ '()))
                                     '())
                               (cons (cons _%L36471%_
                                           (cons _%L36468%_
                                                 (foldr (lambda (_%g3649636499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3649736502%_)
                  (cons _%g3649636499%_ _%g3649736502%_))
                '()
                _%L36466%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3947239473%_
                 (lambda (_%L36353%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3637036373%_ _%g3637136376%_)
                                        (cons _%g3637036373%_ _%g3637136376%_))
                                      '()
                                      _%L36353%_))))))
            (let* ((_%__match3953839539%_
                    (lambda (_%e3627636303%_
                             _%hd3627736307%_
                             _%tl3627836310%_
                             _%e3627936313%_
                             _%hd3628036317%_
                             _%tl3628136320%_
                             _%__splice3947439475%_
                             _%target3628236323%_
                             _%tl3628436326%_)
                      (letrec ((_%loop3628536329%_
                                (lambda (_%hd3628336333%_ _%body3628936336%_)
                                  (if (gx#stx-pair? _%hd3628336333%_)
                                      (let ((_%e3628636339%_
                                             (gx#syntax-e _%hd3628336333%_)))
                                        (let ((_%lp-tl3628836346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3628636339%_)))
                                              (_%lp-hd3628736343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3628636339%_))))
                                          (_%loop3628536329%_
                                           _%lp-tl3628836346%_
                                           (cons _%lp-hd3628736343%_
                                                 _%body3628936336%_))))
                                      (let ((_%body3629036349%_
                                             (reverse _%body3628936336%_)))
                                        (_%__kont3947239473%_
                                         _%body3629036349%_))))))
                        (_%loop3628536329%_ _%target3628236323%_ '()))))
                   (_%__match3951639517%_
                    (lambda (_%e3625136386%_
                             _%hd3625236390%_
                             _%tl3625336393%_
                             _%e3625436396%_
                             _%hd3625536400%_
                             _%tl3625636403%_
                             _%e3625736406%_
                             _%hd3625836410%_
                             _%tl3625936413%_
                             _%e3626036416%_
                             _%hd3626136420%_
                             _%tl3626236423%_
                             _%e3626336426%_
                             _%hd3626436430%_
                             _%tl3626536433%_
                             _%__splice3947039471%_
                             _%target3626636436%_
                             _%tl3626836439%_)
                      (letrec ((_%loop3626936442%_
                                (lambda (_%hd3626736446%_ _%body3627336449%_)
                                  (if (gx#stx-pair? _%hd3626736446%_)
                                      (let ((_%e3627036452%_
                                             (gx#syntax-e _%hd3626736446%_)))
                                        (let ((_%lp-tl3627236459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3627036452%_)))
                                              (_%lp-hd3627136456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3627036452%_))))
                                          (_%loop3626936442%_
                                           _%lp-tl3627236459%_
                                           (cons _%lp-hd3627136456%_
                                                 _%body3627336449%_))))
                                      (let ((_%body3627436462%_
                                             (reverse _%body3627336449%_)))
                                        (_%__kont3946839469%_
                                         _%body3627436462%_
                                         _%tl3625936413%_
                                         _%hd3626436430%_
                                         _%hd3626136420%_
                                         _%hd3625236390%_))))))
                        (_%loop3626936442%_ _%target3626636436%_ '())))))
              (if (gx#stx-pair? _%__stx3946539466%_)
                  (let ((_%e3625136386%_ (gx#syntax-e _%__stx3946539466%_)))
                    (let ((_%tl3625336393%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3625136386%_)))
                          (_%hd3625236390%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3625136386%_))))
                      (if (gx#stx-pair? _%tl3625336393%_)
                          (let ((_%e3625436396%_
                                 (gx#syntax-e _%tl3625336393%_)))
                            (let ((_%tl3625636403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3625436396%_)))
                                  (_%hd3625536400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3625436396%_))))
                              (if (gx#stx-pair? _%hd3625536400%_)
                                  (let ((_%e3625736406%_
                                         (gx#syntax-e _%hd3625536400%_)))
                                    (let ((_%tl3625936413%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3625736406%_)))
                                          (_%hd3625836410%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3625736406%_))))
                                      (if (gx#stx-pair? _%hd3625836410%_)
                                          (let ((_%e3626036416%_
                                                 (gx#syntax-e
                                                  _%hd3625836410%_)))
                                            (let ((_%tl3626236423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3626036416%_)))
                                                  (_%hd3626136420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3626036416%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3626236423%_)
                                                  (let ((_%e3626336426%_
                                                         (gx#syntax-e
                                                          _%tl3626236423%_)))
                                                    (let ((_%tl3626536433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3626336426%_)))
                                                          (_%hd3626436430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3626336426%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3626536433%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3625636403%_)
                                                              (let ((_%__splice3947039471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl3625636403%_ '0)))
                        (let ((_%tl3626836439%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3947039471%_ '1)))
                              (_%target3626636436%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3947039471%_ '0))))
                          (if (gx#stx-null? _%tl3626836439%_)
                              (_%__match3951639517%_
                               _%e3625136386%_
                               _%hd3625236390%_
                               _%tl3625336393%_
                               _%e3625436396%_
                               _%hd3625536400%_
                               _%tl3625636403%_
                               _%e3625736406%_
                               _%hd3625836410%_
                               _%tl3625936413%_
                               _%e3626036416%_
                               _%hd3626136420%_
                               _%tl3626236423%_
                               _%e3626336426%_
                               _%hd3626436430%_
                               _%tl3626536433%_
                               _%__splice3947039471%_
                               _%target3626636436%_
                               _%tl3626836439%_)
                              (let ()
                                (declare (not safe))
                                (_%g3624436296%_)))))
                      (let () (declare (not safe)) (_%g3624436296%_)))
                  (let () (declare (not safe)) (_%g3624436296%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3624436296%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3624436296%_)))))
                                  (if (gx#stx-null? _%hd3625536400%_)
                                      (if (gx#stx-pair/null? _%tl3625636403%_)
                                          (let ((_%__splice3947439475%_
                                                 (gx#syntax-split-splice
                                                  _%tl3625636403%_
                                                  '0)))
                                            (let ((_%tl3628436326%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3947439475%_
                                                      '1)))
                                                  (_%target3628236323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3947439475%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3628436326%_)
                                                  (_%__match3953839539%_
                                                   _%e3625136386%_
                                                   _%hd3625236390%_
                                                   _%tl3625336393%_
                                                   _%e3625436396%_
                                                   _%hd3625536400%_
                                                   _%tl3625636403%_
                                                   _%__splice3947439475%_
                                                   _%target3628236323%_
                                                   _%tl3628436326%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3624436296%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3624436296%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3624436296%_))))))
                          (let () (declare (not safe)) (_%g3624436296%_)))))
                  (let () (declare (not safe)) (_%g3624436296%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36511%_)
        (let* ((_%__stx3954139542%_ _%$stx36511%_)
               (_%g3652236668%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3954139542%_))))
          (let ((_%__kont3954439545%_
                 (lambda (_%L37272%_ _%L37274%_ _%L37275%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3729637299%_ _%g3729737302%_)
                                  (cons (cons _%L37275%_
                                              (cons _%g3729637299%_
                                                    (cons _%L37272%_ '())))
                                        _%g3729737302%_))
                                '()
                                _%L37274%_))))
                (_%__kont3954839549%_
                 (lambda (_%L37162%_ _%L37164%_ _%L37165%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3718637189%_ _%g3718737192%_)
                                  (cons (cons _%L37165%_
                                              (cons _%g3718637189%_
                                                    (cons _%L37162%_ '())))
                                        _%g3718737192%_))
                                '()
                                _%L37164%_))))
                (_%__kont3955239553%_
                 (lambda (_%L37062%_ _%L37064%_ _%L37065%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37065%_
                                     (cons _%L37064%_ (cons _%L37062%_ '())))
                               '()))))
                (_%__kont3955439555%_
                 (lambda (_%L36988%_ _%L36990%_)
                   (cons _%L36990%_ (cons _%L36988%_ '()))))
                (_%__kont3955639557%_
                 (lambda (_%L36936%_ _%L36938%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L36938%_
                                           (cons _%L36936%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3955839559%_
                 (lambda (_%L36888%_ _%L36890%_ _%L36891%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36890%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36888%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3956039561%_
                 (lambda (_%L36819%_ _%L36821%_ _%L36822%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36822%_
                                                       (cons _%L36821%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36819%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3956239563%_
                 (lambda (_%L36739%_ _%L36741%_ _%L36742%_ _%L36743%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36743%_
                                                       (cons _%L36742%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36739%_
                                                             (cons (cons _%L36741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3971439715%_
                    (lambda (_%e3661236848%_
                             _%hd3661336852%_
                             _%tl3661436855%_
                             _%e3661536858%_
                             _%hd3661636862%_
                             _%tl3661736865%_
                             _%e3661836868%_
                             _%hd3661936872%_
                             _%tl3662036875%_)
                      (if (gx#identifier? _%hd3661936872%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39916_|
                               _%hd3661936872%_)
                              (if (gx#stx-pair? _%tl3662036875%_)
                                  (let ((_%e3662136878%_
                                         (gx#syntax-e _%tl3662036875%_)))
                                    (let ((_%tl3662336885%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3662136878%_)))
                                          (_%hd3662236882%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3662136878%_))))
                                      (if (gx#stx-null? _%tl3662336885%_)
                                          (_%__kont3955839559%_
                                           _%hd3662236882%_
                                           _%hd3661636862%_
                                           _%hd3661336852%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3652236668%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3652236668%_)))
                              (let () (declare (not safe)) (_%g3652236668%_)))
                          (if (gx#stx-datum? _%hd3661936872%_)
                              (let ((_%e3663636805%_
                                     (gx#stx-e _%hd3661936872%_)))
                                (if (equal? _%e3663636805%_ '::)
                                    (if (gx#stx-pair? _%tl3662036875%_)
                                        (let ((_%e3663736809%_
                                               (gx#syntax-e _%tl3662036875%_)))
                                          (let ((_%tl3663936816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3663736809%_)))
                                                (_%hd3663836813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3663736809%_))))
                                            (if (gx#stx-null? _%tl3663936816%_)
                                                (_%__kont3956039561%_
                                                 _%hd3663836813%_
                                                 _%hd3661636862%_
                                                 _%hd3661336852%_)
                                                (if (gx#stx-pair?
                                                     _%tl3663936816%_)
                                                    (let ((_%e3665736719%_
                                                           (gx#syntax-e
                                                            _%tl3663936816%_)))
                                                      (let ((_%tl3665936726%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3665736719%_)))
                    (_%hd3665836723%_
                     (let () (declare (not safe)) (##car _%e3665736719%_))))
                (if (gx#identifier? _%hd3665836723%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39917_|
                         _%hd3665836723%_)
                        (if (gx#stx-pair? _%tl3665936726%_)
                            (let ((_%e3666036729%_
                                   (gx#syntax-e _%tl3665936726%_)))
                              (let ((_%tl3666236736%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3666036729%_)))
                                    (_%hd3666136733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3666036729%_))))
                                (if (gx#stx-null? _%tl3666236736%_)
                                    (_%__kont3956239563%_
                                     _%hd3666136733%_
                                     _%hd3663836813%_
                                     _%hd3661636862%_
                                     _%hd3661336852%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_)))))
                            (let () (declare (not safe)) (_%g3652236668%_)))
                        (let () (declare (not safe)) (_%g3652236668%_)))
                    (let () (declare (not safe)) (_%g3652236668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3652236668%_))))))
                   (_%__match3969439695%_
                    (lambda (_%e3660336916%_
                             _%hd3660436920%_
                             _%tl3660536923%_
                             _%e3660636926%_
                             _%hd3660736930%_
                             _%tl3660836933%_)
                      (if (gx#stx-null? _%tl3660836933%_)
                          (_%__kont3955639557%_
                           _%hd3660736930%_
                           _%hd3660436920%_)
                          (if (gx#stx-pair? _%tl3660836933%_)
                              (let ((_%e3661836868%_
                                     (gx#syntax-e _%tl3660836933%_)))
                                (let ((_%tl3662036875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3661836868%_)))
                                      (_%hd3661936872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3661836868%_))))
                                  (if (gx#identifier? _%hd3661936872%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39916_|
                                           _%hd3661936872%_)
                                          (if (gx#stx-pair? _%tl3662036875%_)
                                              (let ((_%e3662136878%_
                                                     (gx#syntax-e
                                                      _%tl3662036875%_)))
                                                (let ((_%tl3662336885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3662136878%_)))
                                                      (_%hd3662236882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3662136878%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3662336885%_)
                                                      (_%__kont3955839559%_
                                                       _%hd3662236882%_
                                                       _%hd3660736930%_
                                                       _%hd3660436920%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3652236668%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3652236668%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3652236668%_)))
                                      (if (gx#stx-datum? _%hd3661936872%_)
                                          (let ((_%e3663636805%_
                                                 (gx#stx-e _%hd3661936872%_)))
                                            (if (equal? _%e3663636805%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3662036875%_)
                                                    (let ((_%e3663736809%_
                                                           (gx#syntax-e
                                                            _%tl3662036875%_)))
                                                      (let ((_%tl3663936816%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3663736809%_)))
                    (_%hd3663836813%_
                     (let () (declare (not safe)) (##car _%e3663736809%_))))
                (if (gx#stx-null? _%tl3663936816%_)
                    (_%__kont3956039561%_
                     _%hd3663836813%_
                     _%hd3660736930%_
                     _%hd3660436920%_)
                    (if (gx#stx-pair? _%tl3663936816%_)
                        (let ((_%e3665736719%_ (gx#syntax-e _%tl3663936816%_)))
                          (let ((_%tl3665936726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3665736719%_)))
                                (_%hd3665836723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3665736719%_))))
                            (if (gx#identifier? _%hd3665836723%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39917_|
                                     _%hd3665836723%_)
                                    (if (gx#stx-pair? _%tl3665936726%_)
                                        (let ((_%e3666036729%_
                                               (gx#syntax-e _%tl3665936726%_)))
                                          (let ((_%tl3666236736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3666036729%_)))
                                                (_%hd3666136733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3666036729%_))))
                                            (if (gx#stx-null? _%tl3666236736%_)
                                                (_%__kont3956239563%_
                                                 _%hd3666136733%_
                                                 _%hd3663836813%_
                                                 _%hd3660736930%_
                                                 _%hd3660436920%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3652236668%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3652236668%_)))))
                        (let () (declare (not safe)) (_%g3652236668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3652236668%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3652236668%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3652236668%_))))))
                   (_%__match3962439625%_
                    (lambda (_%e3655137092%_
                             _%hd3655237096%_
                             _%tl3655337099%_
                             _%e3655437102%_
                             _%hd3655537106%_
                             _%tl3655637109%_
                             _%e3655737112%_
                             _%hd3655837116%_
                             _%tl3655937119%_
                             _%__splice3955039551%_
                             _%target3656037122%_
                             _%tl3656237125%_)
                      (letrec ((_%loop3656337128%_
                                (lambda (_%hd3656137132%_ _%pred3656737135%_)
                                  (if (gx#stx-pair? _%hd3656137132%_)
                                      (let ((_%e3656437138%_
                                             (gx#syntax-e _%hd3656137132%_)))
                                        (let ((_%lp-tl3656637145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3656437138%_)))
                                              (_%lp-hd3656537142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3656437138%_))))
                                          (_%loop3656337128%_
                                           _%lp-tl3656637145%_
                                           (cons _%lp-hd3656537142%_
                                                 _%pred3656737135%_))))
                                      (let ((_%pred3656837148%_
                                             (reverse _%pred3656737135%_)))
                                        (if (gx#stx-pair? _%tl3655637109%_)
                                            (let ((_%e3656937152%_
                                                   (gx#syntax-e
                                                    _%tl3655637109%_)))
                                              (let ((_%tl3657137159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3656937152%_)))
                                                    (_%hd3657037156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3656937152%_))))
                                                (if (gx#stx-null?
                                                     _%tl3657137159%_)
                                                    (_%__kont3954839549%_
                                                     _%hd3657037156%_
                                                     _%pred3656837148%_
                                                     _%hd3655237096%_)
                                                    (_%__match3971439715%_
                                                     _%e3655137092%_
                                                     _%hd3655237096%_
                                                     _%tl3655337099%_
                                                     _%e3655437102%_
                                                     _%hd3655537106%_
                                                     _%tl3655637109%_
                                                     _%e3656937152%_
                                                     _%hd3657037156%_
                                                     _%tl3657137159%_))))
                                            (_%__match3969439695%_
                                             _%e3655137092%_
                                             _%hd3655237096%_
                                             _%tl3655337099%_
                                             _%e3655437102%_
                                             _%hd3655537106%_
                                             _%tl3655637109%_)))))))
                        (_%loop3656337128%_ _%target3656037122%_ '()))))
                   (_%__match3959439595%_
                    (lambda (_%e3652737202%_
                             _%hd3652837206%_
                             _%tl3652937209%_
                             _%e3653037212%_
                             _%hd3653137216%_
                             _%tl3653237219%_
                             _%e3653337222%_
                             _%hd3653437226%_
                             _%tl3653537229%_
                             _%__splice3954639547%_
                             _%target3653637232%_
                             _%tl3653837235%_)
                      (letrec ((_%loop3653937238%_
                                (lambda (_%hd3653737242%_ _%pred3654337245%_)
                                  (if (gx#stx-pair? _%hd3653737242%_)
                                      (let ((_%e3654037248%_
                                             (gx#syntax-e _%hd3653737242%_)))
                                        (let ((_%lp-tl3654237255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3654037248%_)))
                                              (_%lp-hd3654137252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3654037248%_))))
                                          (_%loop3653937238%_
                                           _%lp-tl3654237255%_
                                           (cons _%lp-hd3654137252%_
                                                 _%pred3654337245%_))))
                                      (let ((_%pred3654437258%_
                                             (reverse _%pred3654337245%_)))
                                        (if (gx#stx-pair? _%tl3653237219%_)
                                            (let ((_%e3654537262%_
                                                   (gx#syntax-e
                                                    _%tl3653237219%_)))
                                              (let ((_%tl3654737269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3654537262%_)))
                                                    (_%hd3654637266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3654537262%_))))
                                                (if (gx#stx-null?
                                                     _%tl3654737269%_)
                                                    (_%__kont3954439545%_
                                                     _%hd3654637266%_
                                                     _%pred3654437258%_
                                                     _%hd3652837206%_)
                                                    (_%__match3971439715%_
                                                     _%e3652737202%_
                                                     _%hd3652837206%_
                                                     _%tl3652937209%_
                                                     _%e3653037212%_
                                                     _%hd3653137216%_
                                                     _%tl3653237219%_
                                                     _%e3654537262%_
                                                     _%hd3654637266%_
                                                     _%tl3654737269%_))))
                                            (_%__match3969439695%_
                                             _%e3652737202%_
                                             _%hd3652837206%_
                                             _%tl3652937209%_
                                             _%e3653037212%_
                                             _%hd3653137216%_
                                             _%tl3653237219%_)))))))
                        (_%loop3653937238%_ _%target3653637232%_ '())))))
              (if (gx#stx-pair? _%__stx3954139542%_)
                  (let ((_%e3652737202%_ (gx#syntax-e _%__stx3954139542%_)))
                    (let ((_%tl3652937209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3652737202%_)))
                          (_%hd3652837206%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3652737202%_))))
                      (if (gx#stx-pair? _%tl3652937209%_)
                          (let ((_%e3653037212%_
                                 (gx#syntax-e _%tl3652937209%_)))
                            (let ((_%tl3653237219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3653037212%_)))
                                  (_%hd3653137216%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3653037212%_))))
                              (if (gx#stx-pair? _%hd3653137216%_)
                                  (let ((_%e3653337222%_
                                         (gx#syntax-e _%hd3653137216%_)))
                                    (let ((_%tl3653537229%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3653337222%_)))
                                          (_%hd3653437226%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3653337222%_))))
                                      (if (gx#identifier? _%hd3653437226%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39918_|
                                               _%hd3653437226%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3653537229%_)
                                                  (let ((_%__splice3954639547%_
                                                         (gx#syntax-split-splice
                                                          _%tl3653537229%_
                                                          '0)))
                                                    (let ((_%tl3653837235%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3954639547%_
                                                              '1)))
                                                          (_%target3653637232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3954639547%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3653837235%_)
                                                          (_%__match3959439595%_
                                                           _%e3652737202%_
                                                           _%hd3652837206%_
                                                           _%tl3652937209%_
                                                           _%e3653037212%_
                                                           _%hd3653137216%_
                                                           _%tl3653237219%_
                                                           _%e3653337222%_
                                                           _%hd3653437226%_
                                                           _%tl3653537229%_
                                                           _%__splice3954639547%_
                                                           _%target3653637232%_
                                                           _%tl3653837235%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3653237219%_)
                                                              (let ((_%e3659836978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3653237219%_)))
                        (let ((_%tl3660036985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3659836978%_)))
                              (_%hd3659936982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3659836978%_))))
                          (if (gx#stx-null? _%tl3660036985%_)
                              (_%__kont3955439555%_
                               _%hd3659936982%_
                               _%hd3653137216%_)
                              (if (gx#identifier? _%hd3659936982%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39916_|
                                       _%hd3659936982%_)
                                      (if (gx#stx-pair? _%tl3660036985%_)
                                          (let ((_%e3662136878%_
                                                 (gx#syntax-e
                                                  _%tl3660036985%_)))
                                            (let ((_%tl3662336885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3662136878%_)))
                                                  (_%hd3662236882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3662136878%_))))
                                              (if (gx#stx-null?
                                                   _%tl3662336885%_)
                                                  (_%__kont3955839559%_
                                                   _%hd3662236882%_
                                                   _%hd3653137216%_
                                                   _%hd3652837206%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3652236668%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3652236668%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3652236668%_)))
                                  (if (gx#stx-datum? _%hd3659936982%_)
                                      (let ((_%e3663636805%_
                                             (gx#stx-e _%hd3659936982%_)))
                                        (if (equal? _%e3663636805%_ '::)
                                            (if (gx#stx-pair? _%tl3660036985%_)
                                                (let ((_%e3663736809%_
                                                       (gx#syntax-e
                                                        _%tl3660036985%_)))
                                                  (let ((_%tl3663936816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3663736809%_)))
                                                        (_%hd3663836813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3663736809%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3663936816%_)
                                                        (_%__kont3956039561%_
                                                         _%hd3663836813%_
                                                         _%hd3653137216%_
                                                         _%hd3652837206%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3663936816%_)
                                                            (let ((_%e3665736719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3663936816%_)))
                      (let ((_%tl3665936726%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3665736719%_)))
                            (_%hd3665836723%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3665736719%_))))
                        (if (gx#identifier? _%hd3665836723%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39917_|
                                 _%hd3665836723%_)
                                (if (gx#stx-pair? _%tl3665936726%_)
                                    (let ((_%e3666036729%_
                                           (gx#syntax-e _%tl3665936726%_)))
                                      (let ((_%tl3666236736%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3666036729%_)))
                                            (_%hd3666136733%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3666036729%_))))
                                        (if (gx#stx-null? _%tl3666236736%_)
                                            (_%__kont3956239563%_
                                             _%hd3666136733%_
                                             _%hd3663836813%_
                                             _%hd3653137216%_
                                             _%hd3652837206%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3652236668%_)))
                            (let () (declare (not safe)) (_%g3652236668%_)))))
                    (let () (declare (not safe)) (_%g3652236668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3652236668%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3652236668%_)))))))
                      (if (gx#stx-null? _%tl3653237219%_)
                          (_%__kont3955639557%_
                           _%hd3653137216%_
                           _%hd3652837206%_)
                          (let () (declare (not safe)) (_%g3652236668%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3653237219%_)
                                                      (let ((_%e3659836978%_
                                                             (gx#syntax-e
                                                              _%tl3653237219%_)))
                                                        (let ((_%tl3660036985%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3659836978%_)))
                      (_%hd3659936982%_
                       (let () (declare (not safe)) (##car _%e3659836978%_))))
                  (if (gx#stx-null? _%tl3660036985%_)
                      (_%__kont3955439555%_ _%hd3659936982%_ _%hd3653137216%_)
                      (if (gx#identifier? _%hd3659936982%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39916_|
                               _%hd3659936982%_)
                              (if (gx#stx-pair? _%tl3660036985%_)
                                  (let ((_%e3662136878%_
                                         (gx#syntax-e _%tl3660036985%_)))
                                    (let ((_%tl3662336885%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3662136878%_)))
                                          (_%hd3662236882%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3662136878%_))))
                                      (if (gx#stx-null? _%tl3662336885%_)
                                          (_%__kont3955839559%_
                                           _%hd3662236882%_
                                           _%hd3653137216%_
                                           _%hd3652837206%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3652236668%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3652236668%_)))
                              (let () (declare (not safe)) (_%g3652236668%_)))
                          (if (gx#stx-datum? _%hd3659936982%_)
                              (let ((_%e3663636805%_
                                     (gx#stx-e _%hd3659936982%_)))
                                (if (equal? _%e3663636805%_ '::)
                                    (if (gx#stx-pair? _%tl3660036985%_)
                                        (let ((_%e3663736809%_
                                               (gx#syntax-e _%tl3660036985%_)))
                                          (let ((_%tl3663936816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3663736809%_)))
                                                (_%hd3663836813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3663736809%_))))
                                            (if (gx#stx-null? _%tl3663936816%_)
                                                (_%__kont3956039561%_
                                                 _%hd3663836813%_
                                                 _%hd3653137216%_
                                                 _%hd3652837206%_)
                                                (if (gx#stx-pair?
                                                     _%tl3663936816%_)
                                                    (let ((_%e3665736719%_
                                                           (gx#syntax-e
                                                            _%tl3663936816%_)))
                                                      (let ((_%tl3665936726%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3665736719%_)))
                    (_%hd3665836723%_
                     (let () (declare (not safe)) (##car _%e3665736719%_))))
                (if (gx#identifier? _%hd3665836723%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39917_|
                         _%hd3665836723%_)
                        (if (gx#stx-pair? _%tl3665936726%_)
                            (let ((_%e3666036729%_
                                   (gx#syntax-e _%tl3665936726%_)))
                              (let ((_%tl3666236736%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3666036729%_)))
                                    (_%hd3666136733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3666036729%_))))
                                (if (gx#stx-null? _%tl3666236736%_)
                                    (_%__kont3956239563%_
                                     _%hd3666136733%_
                                     _%hd3663836813%_
                                     _%hd3653137216%_
                                     _%hd3652837206%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_)))))
                            (let () (declare (not safe)) (_%g3652236668%_)))
                        (let () (declare (not safe)) (_%g3652236668%_)))
                    (let () (declare (not safe)) (_%g3652236668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3652236668%_)))))))
              (if (gx#stx-null? _%tl3653237219%_)
                  (_%__kont3955639557%_ _%hd3653137216%_ _%hd3652837206%_)
                  (let () (declare (not safe)) (_%g3652236668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39919_|
                                                   _%hd3653437226%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3653537229%_)
                                                      (let ((_%__splice3955039551%_
                                                             (gx#syntax-split-splice
                                                              _%tl3653537229%_
                                                              '0)))
                                                        (let ((_%tl3656237125%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3955039551%_ '1)))
                      (_%target3656037122%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3955039551%_ '0))))
                  (if (gx#stx-null? _%tl3656237125%_)
                      (_%__match3962439625%_
                       _%e3652737202%_
                       _%hd3652837206%_
                       _%tl3652937209%_
                       _%e3653037212%_
                       _%hd3653137216%_
                       _%tl3653237219%_
                       _%e3653337222%_
                       _%hd3653437226%_
                       _%tl3653537229%_
                       _%__splice3955039551%_
                       _%target3656037122%_
                       _%tl3656237125%_)
                      (if (gx#stx-pair? _%tl3653237219%_)
                          (let ((_%e3659836978%_
                                 (gx#syntax-e _%tl3653237219%_)))
                            (let ((_%tl3660036985%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3659836978%_)))
                                  (_%hd3659936982%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3659836978%_))))
                              (if (gx#stx-null? _%tl3660036985%_)
                                  (_%__kont3955439555%_
                                   _%hd3659936982%_
                                   _%hd3653137216%_)
                                  (if (gx#identifier? _%hd3659936982%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39916_|
                                           _%hd3659936982%_)
                                          (if (gx#stx-pair? _%tl3660036985%_)
                                              (let ((_%e3662136878%_
                                                     (gx#syntax-e
                                                      _%tl3660036985%_)))
                                                (let ((_%tl3662336885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3662136878%_)))
                                                      (_%hd3662236882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3662136878%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3662336885%_)
                                                      (_%__kont3955839559%_
                                                       _%hd3662236882%_
                                                       _%hd3653137216%_
                                                       _%hd3652837206%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3652236668%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3652236668%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3652236668%_)))
                                      (if (gx#stx-datum? _%hd3659936982%_)
                                          (let ((_%e3663636805%_
                                                 (gx#stx-e _%hd3659936982%_)))
                                            (if (equal? _%e3663636805%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3660036985%_)
                                                    (let ((_%e3663736809%_
                                                           (gx#syntax-e
                                                            _%tl3660036985%_)))
                                                      (let ((_%tl3663936816%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3663736809%_)))
                    (_%hd3663836813%_
                     (let () (declare (not safe)) (##car _%e3663736809%_))))
                (if (gx#stx-null? _%tl3663936816%_)
                    (_%__kont3956039561%_
                     _%hd3663836813%_
                     _%hd3653137216%_
                     _%hd3652837206%_)
                    (if (gx#stx-pair? _%tl3663936816%_)
                        (let ((_%e3665736719%_ (gx#syntax-e _%tl3663936816%_)))
                          (let ((_%tl3665936726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3665736719%_)))
                                (_%hd3665836723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3665736719%_))))
                            (if (gx#identifier? _%hd3665836723%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39917_|
                                     _%hd3665836723%_)
                                    (if (gx#stx-pair? _%tl3665936726%_)
                                        (let ((_%e3666036729%_
                                               (gx#syntax-e _%tl3665936726%_)))
                                          (let ((_%tl3666236736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3666036729%_)))
                                                (_%hd3666136733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3666036729%_))))
                                            (if (gx#stx-null? _%tl3666236736%_)
                                                (_%__kont3956239563%_
                                                 _%hd3666136733%_
                                                 _%hd3663836813%_
                                                 _%hd3653137216%_
                                                 _%hd3652837206%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3652236668%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3652236668%_)))))
                        (let () (declare (not safe)) (_%g3652236668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3652236668%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3652236668%_)))))))
                          (if (gx#stx-null? _%tl3653237219%_)
                              (_%__kont3955639557%_
                               _%hd3653137216%_
                               _%hd3652837206%_)
                              (let ()
                                (declare (not safe))
                                (_%g3652236668%_)))))))
              (if (gx#stx-pair? _%tl3653237219%_)
                  (let ((_%e3659836978%_ (gx#syntax-e _%tl3653237219%_)))
                    (let ((_%tl3660036985%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3659836978%_)))
                          (_%hd3659936982%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3659836978%_))))
                      (if (gx#stx-null? _%tl3660036985%_)
                          (_%__kont3955439555%_
                           _%hd3659936982%_
                           _%hd3653137216%_)
                          (if (gx#identifier? _%hd3659936982%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39916_|
                                   _%hd3659936982%_)
                                  (if (gx#stx-pair? _%tl3660036985%_)
                                      (let ((_%e3662136878%_
                                             (gx#syntax-e _%tl3660036985%_)))
                                        (let ((_%tl3662336885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3662136878%_)))
                                              (_%hd3662236882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3662136878%_))))
                                          (if (gx#stx-null? _%tl3662336885%_)
                                              (_%__kont3955839559%_
                                               _%hd3662236882%_
                                               _%hd3653137216%_
                                               _%hd3652837206%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3652236668%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3652236668%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3652236668%_)))
                              (if (gx#stx-datum? _%hd3659936982%_)
                                  (let ((_%e3663636805%_
                                         (gx#stx-e _%hd3659936982%_)))
                                    (if (equal? _%e3663636805%_ '::)
                                        (if (gx#stx-pair? _%tl3660036985%_)
                                            (let ((_%e3663736809%_
                                                   (gx#syntax-e
                                                    _%tl3660036985%_)))
                                              (let ((_%tl3663936816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3663736809%_)))
                                                    (_%hd3663836813%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3663736809%_))))
                                                (if (gx#stx-null?
                                                     _%tl3663936816%_)
                                                    (_%__kont3956039561%_
                                                     _%hd3663836813%_
                                                     _%hd3653137216%_
                                                     _%hd3652837206%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3663936816%_)
                                                        (let ((_%e3665736719%_
                                                               (gx#syntax-e
                                                                _%tl3663936816%_)))
                                                          (let ((_%tl3665936726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3665736719%_)))
                        (_%hd3665836723%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3665736719%_))))
                    (if (gx#identifier? _%hd3665836723%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39917_|
                             _%hd3665836723%_)
                            (if (gx#stx-pair? _%tl3665936726%_)
                                (let ((_%e3666036729%_
                                       (gx#syntax-e _%tl3665936726%_)))
                                  (let ((_%tl3666236736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3666036729%_)))
                                        (_%hd3666136733%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3666036729%_))))
                                    (if (gx#stx-null? _%tl3666236736%_)
                                        (_%__kont3956239563%_
                                         _%hd3666136733%_
                                         _%hd3663836813%_
                                         _%hd3653137216%_
                                         _%hd3652837206%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3652236668%_)))
                            (let () (declare (not safe)) (_%g3652236668%_)))
                        (let () (declare (not safe)) (_%g3652236668%_)))))
                (let () (declare (not safe)) (_%g3652236668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3652236668%_)))))))
                  (if (gx#stx-null? _%tl3653237219%_)
                      (_%__kont3955639557%_ _%hd3653137216%_ _%hd3652837206%_)
                      (let () (declare (not safe)) (_%g3652236668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39920_|
                                                       _%hd3653437226%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3653537229%_)
                                                          (let ((_%e3658437042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3653537229%_)))
                    (let ((_%tl3658637049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3658437042%_)))
                          (_%hd3658537046%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3658437042%_))))
                      (if (gx#stx-null? _%tl3658637049%_)
                          (if (gx#stx-pair? _%tl3653237219%_)
                              (let ((_%e3658737052%_
                                     (gx#syntax-e _%tl3653237219%_)))
                                (let ((_%tl3658937059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3658737052%_)))
                                      (_%hd3658837056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3658737052%_))))
                                  (if (gx#stx-null? _%tl3658937059%_)
                                      (_%__kont3955239553%_
                                       _%hd3658837056%_
                                       _%hd3658537046%_
                                       _%hd3652837206%_)
                                      (if (gx#identifier? _%hd3658837056%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39916_|
                                               _%hd3658837056%_)
                                              (if (gx#stx-pair?
                                                   _%tl3658937059%_)
                                                  (let ((_%e3662136878%_
                                                         (gx#syntax-e
                                                          _%tl3658937059%_)))
                                                    (let ((_%tl3662336885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3662136878%_)))
                                                          (_%hd3662236882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3662136878%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3662336885%_)
                                                          (_%__kont3955839559%_
                                                           _%hd3662236882%_
                                                           _%hd3653137216%_
                                                           _%hd3652837206%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3652236668%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3652236668%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3652236668%_)))
                                          (if (gx#stx-datum? _%hd3658837056%_)
                                              (let ((_%e3663636805%_
                                                     (gx#stx-e
                                                      _%hd3658837056%_)))
                                                (if (equal? _%e3663636805%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3658937059%_)
                                                        (let ((_%e3663736809%_
                                                               (gx#syntax-e
                                                                _%tl3658937059%_)))
                                                          (let ((_%tl3663936816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3663736809%_)))
                        (_%hd3663836813%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3663736809%_))))
                    (if (gx#stx-null? _%tl3663936816%_)
                        (_%__kont3956039561%_
                         _%hd3663836813%_
                         _%hd3653137216%_
                         _%hd3652837206%_)
                        (if (gx#stx-pair? _%tl3663936816%_)
                            (let ((_%e3665736719%_
                                   (gx#syntax-e _%tl3663936816%_)))
                              (let ((_%tl3665936726%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3665736719%_)))
                                    (_%hd3665836723%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3665736719%_))))
                                (if (gx#identifier? _%hd3665836723%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39917_|
                                         _%hd3665836723%_)
                                        (if (gx#stx-pair? _%tl3665936726%_)
                                            (let ((_%e3666036729%_
                                                   (gx#syntax-e
                                                    _%tl3665936726%_)))
                                              (let ((_%tl3666236736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3666036729%_)))
                                                    (_%hd3666136733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3666036729%_))))
                                                (if (gx#stx-null?
                                                     _%tl3666236736%_)
                                                    (_%__kont3956239563%_
                                                     _%hd3666136733%_
                                                     _%hd3663836813%_
                                                     _%hd3653137216%_
                                                     _%hd3652837206%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_)))))
                            (let () (declare (not safe)) (_%g3652236668%_))))))
                (let () (declare (not safe)) (_%g3652236668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3652236668%_)))))))
                              (if (gx#stx-null? _%tl3653237219%_)
                                  (_%__kont3955639557%_
                                   _%hd3653137216%_
                                   _%hd3652837206%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3652236668%_))))
                          (if (gx#stx-pair? _%tl3653237219%_)
                              (let ((_%e3659836978%_
                                     (gx#syntax-e _%tl3653237219%_)))
                                (let ((_%tl3660036985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3659836978%_)))
                                      (_%hd3659936982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3659836978%_))))
                                  (if (gx#stx-null? _%tl3660036985%_)
                                      (_%__kont3955439555%_
                                       _%hd3659936982%_
                                       _%hd3653137216%_)
                                      (if (gx#identifier? _%hd3659936982%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39916_|
                                               _%hd3659936982%_)
                                              (if (gx#stx-pair?
                                                   _%tl3660036985%_)
                                                  (let ((_%e3662136878%_
                                                         (gx#syntax-e
                                                          _%tl3660036985%_)))
                                                    (let ((_%tl3662336885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3662136878%_)))
                                                          (_%hd3662236882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3662136878%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3662336885%_)
                                                          (_%__kont3955839559%_
                                                           _%hd3662236882%_
                                                           _%hd3653137216%_
                                                           _%hd3652837206%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3652236668%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3652236668%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3652236668%_)))
                                          (if (gx#stx-datum? _%hd3659936982%_)
                                              (let ((_%e3663636805%_
                                                     (gx#stx-e
                                                      _%hd3659936982%_)))
                                                (if (equal? _%e3663636805%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3660036985%_)
                                                        (let ((_%e3663736809%_
                                                               (gx#syntax-e
                                                                _%tl3660036985%_)))
                                                          (let ((_%tl3663936816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3663736809%_)))
                        (_%hd3663836813%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3663736809%_))))
                    (if (gx#stx-null? _%tl3663936816%_)
                        (_%__kont3956039561%_
                         _%hd3663836813%_
                         _%hd3653137216%_
                         _%hd3652837206%_)
                        (if (gx#stx-pair? _%tl3663936816%_)
                            (let ((_%e3665736719%_
                                   (gx#syntax-e _%tl3663936816%_)))
                              (let ((_%tl3665936726%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3665736719%_)))
                                    (_%hd3665836723%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3665736719%_))))
                                (if (gx#identifier? _%hd3665836723%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39917_|
                                         _%hd3665836723%_)
                                        (if (gx#stx-pair? _%tl3665936726%_)
                                            (let ((_%e3666036729%_
                                                   (gx#syntax-e
                                                    _%tl3665936726%_)))
                                              (let ((_%tl3666236736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3666036729%_)))
                                                    (_%hd3666136733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3666036729%_))))
                                                (if (gx#stx-null?
                                                     _%tl3666236736%_)
                                                    (_%__kont3956239563%_
                                                     _%hd3666136733%_
                                                     _%hd3663836813%_
                                                     _%hd3653137216%_
                                                     _%hd3652837206%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_)))))
                            (let () (declare (not safe)) (_%g3652236668%_))))))
                (let () (declare (not safe)) (_%g3652236668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3652236668%_)))))))
                              (if (gx#stx-null? _%tl3653237219%_)
                                  (_%__kont3955639557%_
                                   _%hd3653137216%_
                                   _%hd3652837206%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3652236668%_)))))))
                  (if (gx#stx-pair? _%tl3653237219%_)
                      (let ((_%e3659836978%_ (gx#syntax-e _%tl3653237219%_)))
                        (let ((_%tl3660036985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3659836978%_)))
                              (_%hd3659936982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3659836978%_))))
                          (if (gx#stx-null? _%tl3660036985%_)
                              (_%__kont3955439555%_
                               _%hd3659936982%_
                               _%hd3653137216%_)
                              (if (gx#identifier? _%hd3659936982%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39916_|
                                       _%hd3659936982%_)
                                      (if (gx#stx-pair? _%tl3660036985%_)
                                          (let ((_%e3662136878%_
                                                 (gx#syntax-e
                                                  _%tl3660036985%_)))
                                            (let ((_%tl3662336885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3662136878%_)))
                                                  (_%hd3662236882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3662136878%_))))
                                              (if (gx#stx-null?
                                                   _%tl3662336885%_)
                                                  (_%__kont3955839559%_
                                                   _%hd3662236882%_
                                                   _%hd3653137216%_
                                                   _%hd3652837206%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3652236668%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3652236668%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3652236668%_)))
                                  (if (gx#stx-datum? _%hd3659936982%_)
                                      (let ((_%e3663636805%_
                                             (gx#stx-e _%hd3659936982%_)))
                                        (if (equal? _%e3663636805%_ '::)
                                            (if (gx#stx-pair? _%tl3660036985%_)
                                                (let ((_%e3663736809%_
                                                       (gx#syntax-e
                                                        _%tl3660036985%_)))
                                                  (let ((_%tl3663936816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3663736809%_)))
                                                        (_%hd3663836813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3663736809%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3663936816%_)
                                                        (_%__kont3956039561%_
                                                         _%hd3663836813%_
                                                         _%hd3653137216%_
                                                         _%hd3652837206%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3663936816%_)
                                                            (let ((_%e3665736719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3663936816%_)))
                      (let ((_%tl3665936726%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3665736719%_)))
                            (_%hd3665836723%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3665736719%_))))
                        (if (gx#identifier? _%hd3665836723%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39917_|
                                 _%hd3665836723%_)
                                (if (gx#stx-pair? _%tl3665936726%_)
                                    (let ((_%e3666036729%_
                                           (gx#syntax-e _%tl3665936726%_)))
                                      (let ((_%tl3666236736%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3666036729%_)))
                                            (_%hd3666136733%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3666036729%_))))
                                        (if (gx#stx-null? _%tl3666236736%_)
                                            (_%__kont3956239563%_
                                             _%hd3666136733%_
                                             _%hd3663836813%_
                                             _%hd3653137216%_
                                             _%hd3652837206%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3652236668%_)))
                            (let () (declare (not safe)) (_%g3652236668%_)))))
                    (let () (declare (not safe)) (_%g3652236668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3652236668%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3652236668%_)))))))
                      (if (gx#stx-null? _%tl3653237219%_)
                          (_%__kont3955639557%_
                           _%hd3653137216%_
                           _%hd3652837206%_)
                          (let () (declare (not safe)) (_%g3652236668%_)))))
              (if (gx#stx-pair? _%tl3653237219%_)
                  (let ((_%e3659836978%_ (gx#syntax-e _%tl3653237219%_)))
                    (let ((_%tl3660036985%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3659836978%_)))
                          (_%hd3659936982%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3659836978%_))))
                      (if (gx#stx-null? _%tl3660036985%_)
                          (_%__kont3955439555%_
                           _%hd3659936982%_
                           _%hd3653137216%_)
                          (if (gx#identifier? _%hd3659936982%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39916_|
                                   _%hd3659936982%_)
                                  (if (gx#stx-pair? _%tl3660036985%_)
                                      (let ((_%e3662136878%_
                                             (gx#syntax-e _%tl3660036985%_)))
                                        (let ((_%tl3662336885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3662136878%_)))
                                              (_%hd3662236882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3662136878%_))))
                                          (if (gx#stx-null? _%tl3662336885%_)
                                              (_%__kont3955839559%_
                                               _%hd3662236882%_
                                               _%hd3653137216%_
                                               _%hd3652837206%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3652236668%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3652236668%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3652236668%_)))
                              (if (gx#stx-datum? _%hd3659936982%_)
                                  (let ((_%e3663636805%_
                                         (gx#stx-e _%hd3659936982%_)))
                                    (if (equal? _%e3663636805%_ '::)
                                        (if (gx#stx-pair? _%tl3660036985%_)
                                            (let ((_%e3663736809%_
                                                   (gx#syntax-e
                                                    _%tl3660036985%_)))
                                              (let ((_%tl3663936816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3663736809%_)))
                                                    (_%hd3663836813%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3663736809%_))))
                                                (if (gx#stx-null?
                                                     _%tl3663936816%_)
                                                    (_%__kont3956039561%_
                                                     _%hd3663836813%_
                                                     _%hd3653137216%_
                                                     _%hd3652837206%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3663936816%_)
                                                        (let ((_%e3665736719%_
                                                               (gx#syntax-e
                                                                _%tl3663936816%_)))
                                                          (let ((_%tl3665936726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3665736719%_)))
                        (_%hd3665836723%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3665736719%_))))
                    (if (gx#identifier? _%hd3665836723%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39917_|
                             _%hd3665836723%_)
                            (if (gx#stx-pair? _%tl3665936726%_)
                                (let ((_%e3666036729%_
                                       (gx#syntax-e _%tl3665936726%_)))
                                  (let ((_%tl3666236736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3666036729%_)))
                                        (_%hd3666136733%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3666036729%_))))
                                    (if (gx#stx-null? _%tl3666236736%_)
                                        (_%__kont3956239563%_
                                         _%hd3666136733%_
                                         _%hd3663836813%_
                                         _%hd3653137216%_
                                         _%hd3652837206%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3652236668%_)))
                            (let () (declare (not safe)) (_%g3652236668%_)))
                        (let () (declare (not safe)) (_%g3652236668%_)))))
                (let () (declare (not safe)) (_%g3652236668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3652236668%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3652236668%_)))))))
                  (if (gx#stx-null? _%tl3653237219%_)
                      (_%__kont3955639557%_ _%hd3653137216%_ _%hd3652837206%_)
                      (let () (declare (not safe)) (_%g3652236668%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3653237219%_)
                                              (let ((_%e3659836978%_
                                                     (gx#syntax-e
                                                      _%tl3653237219%_)))
                                                (let ((_%tl3660036985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3659836978%_)))
                                                      (_%hd3659936982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3659836978%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3660036985%_)
                                                      (_%__kont3955439555%_
                                                       _%hd3659936982%_
                                                       _%hd3653137216%_)
                                                      (if (gx#identifier?
                                                           _%hd3659936982%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39916_|
                                                               _%hd3659936982%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3660036985%_)
                          (let ((_%e3662136878%_
                                 (gx#syntax-e _%tl3660036985%_)))
                            (let ((_%tl3662336885%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3662136878%_)))
                                  (_%hd3662236882%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3662136878%_))))
                              (if (gx#stx-null? _%tl3662336885%_)
                                  (_%__kont3955839559%_
                                   _%hd3662236882%_
                                   _%hd3653137216%_
                                   _%hd3652837206%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3652236668%_)))))
                          (let () (declare (not safe)) (_%g3652236668%_)))
                      (let () (declare (not safe)) (_%g3652236668%_)))
                  (if (gx#stx-datum? _%hd3659936982%_)
                      (let ((_%e3663636805%_ (gx#stx-e _%hd3659936982%_)))
                        (if (equal? _%e3663636805%_ '::)
                            (if (gx#stx-pair? _%tl3660036985%_)
                                (let ((_%e3663736809%_
                                       (gx#syntax-e _%tl3660036985%_)))
                                  (let ((_%tl3663936816%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3663736809%_)))
                                        (_%hd3663836813%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3663736809%_))))
                                    (if (gx#stx-null? _%tl3663936816%_)
                                        (_%__kont3956039561%_
                                         _%hd3663836813%_
                                         _%hd3653137216%_
                                         _%hd3652837206%_)
                                        (if (gx#stx-pair? _%tl3663936816%_)
                                            (let ((_%e3665736719%_
                                                   (gx#syntax-e
                                                    _%tl3663936816%_)))
                                              (let ((_%tl3665936726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3665736719%_)))
                                                    (_%hd3665836723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3665736719%_))))
                                                (if (gx#identifier?
                                                     _%hd3665836723%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39917_|
                                                         _%hd3665836723%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3665936726%_)
                                                            (let ((_%e3666036729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3665936726%_)))
                      (let ((_%tl3666236736%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3666036729%_)))
                            (_%hd3666136733%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3666036729%_))))
                        (if (gx#stx-null? _%tl3666236736%_)
                            (_%__kont3956239563%_
                             _%hd3666136733%_
                             _%hd3663836813%_
                             _%hd3653137216%_
                             _%hd3652837206%_)
                            (let () (declare (not safe)) (_%g3652236668%_)))))
                    (let () (declare (not safe)) (_%g3652236668%_)))
                (let () (declare (not safe)) (_%g3652236668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3652236668%_)))
                            (let () (declare (not safe)) (_%g3652236668%_))))
                      (let () (declare (not safe)) (_%g3652236668%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3653237219%_)
                                                  (_%__kont3955639557%_
                                                   _%hd3653137216%_
                                                   _%hd3652837206%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3652236668%_)))))))
                                  (if (gx#stx-pair? _%tl3653237219%_)
                                      (let ((_%e3659836978%_
                                             (gx#syntax-e _%tl3653237219%_)))
                                        (let ((_%tl3660036985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3659836978%_)))
                                              (_%hd3659936982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3659836978%_))))
                                          (if (gx#stx-null? _%tl3660036985%_)
                                              (_%__kont3955439555%_
                                               _%hd3659936982%_
                                               _%hd3653137216%_)
                                              (if (gx#identifier?
                                                   _%hd3659936982%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39916_|
                                                       _%hd3659936982%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3660036985%_)
                                                          (let ((_%e3662136878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3660036985%_)))
                    (let ((_%tl3662336885%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3662136878%_)))
                          (_%hd3662236882%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3662136878%_))))
                      (if (gx#stx-null? _%tl3662336885%_)
                          (_%__kont3955839559%_
                           _%hd3662236882%_
                           _%hd3653137216%_
                           _%hd3652837206%_)
                          (let () (declare (not safe)) (_%g3652236668%_)))))
                  (let () (declare (not safe)) (_%g3652236668%_)))
              (let () (declare (not safe)) (_%g3652236668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3659936982%_)
                                                      (let ((_%e3663636805%_
                                                             (gx#stx-e
                                                              _%hd3659936982%_)))
                                                        (if (equal? _%e3663636805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3660036985%_)
                        (let ((_%e3663736809%_ (gx#syntax-e _%tl3660036985%_)))
                          (let ((_%tl3663936816%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3663736809%_)))
                                (_%hd3663836813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3663736809%_))))
                            (if (gx#stx-null? _%tl3663936816%_)
                                (_%__kont3956039561%_
                                 _%hd3663836813%_
                                 _%hd3653137216%_
                                 _%hd3652837206%_)
                                (if (gx#stx-pair? _%tl3663936816%_)
                                    (let ((_%e3665736719%_
                                           (gx#syntax-e _%tl3663936816%_)))
                                      (let ((_%tl3665936726%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3665736719%_)))
                                            (_%hd3665836723%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3665736719%_))))
                                        (if (gx#identifier? _%hd3665836723%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39917_|
                                                 _%hd3665836723%_)
                                                (if (gx#stx-pair?
                                                     _%tl3665936726%_)
                                                    (let ((_%e3666036729%_
                                                           (gx#syntax-e
                                                            _%tl3665936726%_)))
                                                      (let ((_%tl3666236736%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3666036729%_)))
                    (_%hd3666136733%_
                     (let () (declare (not safe)) (##car _%e3666036729%_))))
                (if (gx#stx-null? _%tl3666236736%_)
                    (_%__kont3956239563%_
                     _%hd3666136733%_
                     _%hd3663836813%_
                     _%hd3653137216%_
                     _%hd3652837206%_)
                    (let () (declare (not safe)) (_%g3652236668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3652236668%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3652236668%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3652236668%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3652236668%_))))))
                        (let () (declare (not safe)) (_%g3652236668%_)))
                    (let () (declare (not safe)) (_%g3652236668%_))))
              (let () (declare (not safe)) (_%g3652236668%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3653237219%_)
                                          (_%__kont3955639557%_
                                           _%hd3653137216%_
                                           _%hd3652837206%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3652236668%_)))))))
                          (let () (declare (not safe)) (_%g3652236668%_)))))
                  (let () (declare (not safe)) (_%g3652236668%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37311%_)
        (let* ((_%__stx3980939810%_ _%$stx37311%_)
               (_%g3731637350%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3980939810%_))))
          (let ((_%__kont3981239813%_
                 (lambda (_%L37454%_ _%L37456%_ _%L37457%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37457%_
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
                                       (cons _%L37456%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37454%_ '()))
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
                (_%__kont3981439815%_
                 (lambda (_%L37387%_ _%L37389%_ _%L37390%_)
                   (cons _%L37390%_
                         (cons _%L37389%_
                               (cons _%L37387%_
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
            (let ((_%__match3984239843%_
                   (lambda (_%e3732137414%_
                            _%hd3732237418%_
                            _%tl3732337421%_
                            _%e3732437424%_
                            _%hd3732537428%_
                            _%tl3732637431%_
                            _%e3732737434%_
                            _%hd3732837438%_
                            _%tl3732937441%_
                            _%e3733037444%_
                            _%hd3733137448%_
                            _%tl3733237451%_)
                     (let ((_%L37454%_ _%hd3733137448%_)
                           (_%L37456%_ _%hd3732837438%_)
                           (_%L37457%_ _%hd3732537428%_))
                       (if (gx#identifier? _%L37457%_)
                           (_%__kont3981239813%_
                            _%L37454%_
                            _%L37456%_
                            _%L37457%_)
                           (let () (declare (not safe)) (_%g3731637350%_)))))))
              (if (gx#stx-pair? _%__stx3980939810%_)
                  (let ((_%e3732137414%_ (gx#syntax-e _%__stx3980939810%_)))
                    (let ((_%tl3732337421%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3732137414%_)))
                          (_%hd3732237418%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3732137414%_))))
                      (if (gx#stx-pair? _%tl3732337421%_)
                          (let ((_%e3732437424%_
                                 (gx#syntax-e _%tl3732337421%_)))
                            (let ((_%tl3732637431%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3732437424%_)))
                                  (_%hd3732537428%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3732437424%_))))
                              (if (gx#stx-pair? _%tl3732637431%_)
                                  (let ((_%e3732737434%_
                                         (gx#syntax-e _%tl3732637431%_)))
                                    (let ((_%tl3732937441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3732737434%_)))
                                          (_%hd3732837438%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3732737434%_))))
                                      (if (gx#stx-pair? _%tl3732937441%_)
                                          (let ((_%e3733037444%_
                                                 (gx#syntax-e
                                                  _%tl3732937441%_)))
                                            (let ((_%tl3733237451%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3733037444%_)))
                                                  (_%hd3733137448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3733037444%_))))
                                              (if (gx#stx-null?
                                                   _%tl3733237451%_)
                                                  (_%__match3984239843%_
                                                   _%e3732137414%_
                                                   _%hd3732237418%_
                                                   _%tl3732337421%_
                                                   _%e3732437424%_
                                                   _%hd3732537428%_
                                                   _%tl3732637431%_
                                                   _%e3732737434%_
                                                   _%hd3732837438%_
                                                   _%tl3732937441%_
                                                   _%e3733037444%_
                                                   _%hd3733137448%_
                                                   _%tl3733237451%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3731637350%_)))))
                                          (if (gx#stx-null? _%tl3732937441%_)
                                              (_%__kont3981439815%_
                                               _%hd3732837438%_
                                               _%hd3732537428%_
                                               _%hd3732237418%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3731637350%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3731637350%_)))))
                          (let () (declare (not safe)) (_%g3731637350%_)))))
                  (let () (declare (not safe)) (_%g3731637350%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37479%_)
        (let* ((_%g3748337498%_
                (lambda (_%g3748437494%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3748437494%_)))
               (_%g3748237541%_
                (lambda (_%g3748437502%_)
                  (if (gx#stx-pair? _%g3748437502%_)
                      (let ((_%e3748737505%_ (gx#syntax-e _%g3748437502%_)))
                        (let ((_%hd3748837509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3748737505%_)))
                              (_%tl3748937512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3748737505%_))))
                          (if (gx#stx-pair? _%tl3748937512%_)
                              (let ((_%e3749037515%_
                                     (gx#syntax-e _%tl3748937512%_)))
                                (let ((_%hd3749137519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3749037515%_)))
                                      (_%tl3749237522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3749037515%_))))
                                  ((lambda (_%L37525%_ _%L37527%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37527%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37525%_)
                                                       '()))))
                                   _%tl3749237522%_
                                   _%hd3749137519%_)))
                              (_%g3748337498%_ _%g3748437502%_))))
                      (_%g3748337498%_ _%g3748437502%_)))))
          (_%g3748237541%_ _%$stx37479%_))))))
