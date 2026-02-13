(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39977_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39978_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39979_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39980_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39981_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39982_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39983_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39984_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39985_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39986_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39987_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39988_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39989_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39990_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39991_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40004_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40012_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40013_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40014_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40019_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40020_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40021_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40022_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40023_|
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
      (lambda _%$args35298%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35298%_)))
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
      (lambda (_%stx35295%_)
        (if (gx#identifier? _%stx35295%_)
            (let ((__tmp39976 (gx#syntax-local-value _%stx35295%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39976))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33597%_ _%match-stx33599%_)
        (letrec ((_%parse133601%_
                  (lambda (_%hd33960%_)
                    (let* ((_%__stx3776437765%_ _%hd33960%_)
                           (_%g3398634128%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3776437765%_))))
                      (let ((_%__kont3776737768%_
                             (lambda (_%g3398835058%_ _%g3398935060%_)
                               (let* ((_%__stx3768437685%_ _%g3398835058%_)
                                      (_%g3507735110%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3768437685%_))))
                                 (let ((_%__kont3768737688%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3398935060%_ '()))))
                                       (_%__kont3768937690%_
                                        (lambda (_%g3507935251%_)
                                          (cons '?:
                                                (cons _%g3398935060%_
                                                      (cons (_%parse133601%_
                                                             _%g3507935251%_)
                                                            '())))))
                                       (_%__kont3769137692%_
                                        (lambda (_%g3508335221%_)
                                          (cons '?:
                                                (cons _%g3398935060%_
                                                      (cons '=>:
                                                            (cons (_%parse133601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3508335221%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3769337694%_
                                        (lambda (_%g3509035172%_
                                                 _%g3509135174%_)
                                          (cons '?:
                                                (cons _%g3398935060%_
                                                      (cons '::
                                                            (cons _%g3509135174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133601%_ _%g3509035172%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3769537696%_
                                        (lambda ()
                                          (_%parse-error33608%_ _%hd33960%_))))
                                   (let ((_%g3507335262%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3768437685%_)
                                                (let ((_%e3508035241%_
                                                       (gx#syntax-e
                                                        _%__stx3768437685%_)))
                                                  (let ((_%tl3508235248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3508035241%_)))
                                                        (_%hd3508135245%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3508035241%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3508235248%_)
                                                        (_%__kont3768937690%_
                                                         _%hd3508135245%_)
                                                        (if (gx#identifier?
                                                             _%hd3508135245%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39977_|
                         _%hd3508135245%_)
                        (if (gx#stx-pair? _%tl3508235248%_)
                            (let ((_%e3508735211%_
                                   (gx#syntax-e _%tl3508235248%_)))
                              (let ((_%tl3508935218%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3508735211%_)))
                                    (_%hd3508835215%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3508735211%_))))
                                (if (gx#stx-null? _%tl3508935218%_)
                                    (_%__kont3769137692%_ _%hd3508835215%_)
                                    (_%__kont3769537696%_))))
                            (_%__kont3769537696%_))
                        (_%__kont3769537696%_))
                    (if (gx#stx-datum? _%hd3508135245%_)
                        (let ((_%e3509535138%_ (gx#stx-e _%hd3508135245%_)))
                          (if (equal? _%e3509535138%_ '::)
                              (if (gx#stx-pair? _%tl3508235248%_)
                                  (let ((_%e3509635142%_
                                         (gx#syntax-e _%tl3508235248%_)))
                                    (let ((_%tl3509835149%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3509635142%_)))
                                          (_%hd3509735146%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3509635142%_))))
                                      (if (gx#stx-pair? _%tl3509835149%_)
                                          (let ((_%e3509935152%_
                                                 (gx#syntax-e
                                                  _%tl3509835149%_)))
                                            (let ((_%tl3510135159%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3509935152%_)))
                                                  (_%hd3510035156%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3509935152%_))))
                                              (if (gx#identifier?
                                                   _%hd3510035156%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39978_|
                                                       _%hd3510035156%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3510135159%_)
                                                          (let ((_%e3510235162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3510135159%_)))
                    (let ((_%tl3510435169%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3510235162%_)))
                          (_%hd3510335166%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3510235162%_))))
                      (if (gx#stx-null? _%tl3510435169%_)
                          (_%__kont3769337694%_
                           _%hd3510335166%_
                           _%hd3509735146%_)
                          (_%__kont3769537696%_))))
                  (_%__kont3769537696%_))
              (_%__kont3769537696%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3769537696%_))))
                                          (_%__kont3769537696%_))))
                                  (_%__kont3769537696%_))
                              (_%__kont3769537696%_)))
                        (_%__kont3769537696%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3769537696%_)))))
                                     (if (gx#stx-null? _%__stx3768437685%_)
                                         (_%__kont3768737688%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3507335262%_))))))))
                            (_%__kont3776937770%_
                             (lambda (_%g3399634963%_)
                               (let* ((_%__stx3766637667%_ _%g3399634963%_)
                                      (_%g3497534986%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3766637667%_))))
                                 (let ((_%__kont3766937670%_
                                        (lambda (_%g3497735014%_)
                                          (_%parse133601%_ _%g3497735014%_)))
                                       (_%__kont3767137672%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133601%_
                                                 _%g3399634963%_)))))
                                   (if (gx#stx-pair? _%__stx3766637667%_)
                                       (let ((_%e3497835004%_
                                              (gx#syntax-e
                                               _%__stx3766637667%_)))
                                         (let ((_%tl3498035011%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3497835004%_)))
                                               (_%hd3497935008%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3497835004%_))))
                                           (if (gx#stx-null? _%tl3498035011%_)
                                               (_%__kont3766937670%_
                                                _%hd3497935008%_)
                                               (_%__kont3767137672%_))))
                                       (_%__kont3767137672%_))))))
                            (_%__kont3777137772%_
                             (lambda (_%g3400034878%_)
                               (let* ((_%__stx3764837649%_ _%g3400034878%_)
                                      (_%g3489034901%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3764837649%_))))
                                 (let ((_%__kont3765137652%_
                                        (lambda (_%g3489234929%_)
                                          (_%parse133601%_ _%g3489234929%_)))
                                       (_%__kont3765337654%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133601%_
                                                 _%g3400034878%_)))))
                                   (if (gx#stx-pair? _%__stx3764837649%_)
                                       (let ((_%e3489334919%_
                                              (gx#syntax-e
                                               _%__stx3764837649%_)))
                                         (let ((_%tl3489534926%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3489334919%_)))
                                               (_%hd3489434923%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3489334919%_))))
                                           (if (gx#stx-null? _%tl3489534926%_)
                                               (_%__kont3765137652%_
                                                _%hd3489434923%_)
                                               (_%__kont3765337654%_))))
                                       (_%__kont3765337654%_))))))
                            (_%__kont3777337774%_
                             (lambda (_%g3400434848%_)
                               (cons 'not:
                                     (cons (_%parse133601%_ _%g3400434848%_)
                                           '()))))
                            (_%__kont3777537776%_
                             (lambda (_%g3401134804%_ _%g3401234806%_)
                               (cons 'cons:
                                     (cons (_%parse133601%_ _%g3401234806%_)
                                           (cons (_%parse133601%_
                                                  _%g3401134804%_)
                                                 '())))))
                            (_%__kont3777737778%_
                             (lambda (_%g3402234748%_
                                      _%g3402334750%_
                                      _%g3402434751%_)
                               (if (gx#stx-null? _%g3402234748%_)
                                   (cons 'cons:
                                         (cons (_%parse133601%_
                                                _%g3402434751%_)
                                               (cons (_%parse133601%_
                                                      _%g3402334750%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133601%_
                                                _%g3402434751%_)
                                               (cons (_%parse133601%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3402334750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3402234748%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3777937780%_
                             (lambda (_%g3403434700%_)
                               (_%parse-list33603%_ _%g3403434700%_)))
                            (_%__kont3778137782%_
                             (lambda (_%g3403834670%_)
                               (cons 'box:
                                     (cons (_%parse133601%_ _%g3403834670%_)
                                           '()))))
                            (_%__kont3778337784%_
                             (lambda (_%g3404534633%_)
                               (cons 'box:
                                     (cons (_%parse133601%_ _%g3404534633%_)
                                           '()))))
                            (_%__kont3778537786%_
                             (lambda (_%g3404734609%_)
                               (_%parse133601%_ _%g3404734609%_)))
                            (_%__kont3778737788%_
                             (lambda (_%g3405434571%_)
                               (cons 'values:
                                     (cons (_%parse-vector33604%_
                                            _%g3405434571%_)
                                           '()))))
                            (_%__kont3778937790%_
                             (lambda (_%g3405834543%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33604%_
                                            _%g3405834543%_)
                                           '()))))
                            (_%__kont3779137792%_
                             (lambda (_%g3406234504%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33604%_
                                            (foldr (lambda (_%g3451734520%_
                                                            _%g3451834523%_)
                                                     (cons _%g3451734520%_
                                                           _%g3451834523%_))
                                                   '()
                                                   _%g3406234504%_))
                                           '()))))
                            (_%__kont3779537796%_
                             (lambda (_%g3407334452%_ _%g3407434454%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3407434454%_)
                                           (cons (_%parse-vector33604%_
                                                  _%g3407334452%_)
                                                 '())))))
                            (_%__kont3779737798%_
                             (lambda (_%g3407834422%_ _%g3407934424%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3407934424%_)
                                           (cons (_%parse-class-body33606%_
                                                  _%g3407834422%_)
                                                 '())))))
                            (_%__kont3779937800%_
                             (lambda (_%g3408334382%_ _%g3408434384%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3408434384%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3408334382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3780137802%_
                             (lambda (_%g3409134342%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3409134342%_) '()))))
                            (_%__kont3780337804%_
                             (lambda (_%g3409834302%_)
                               (_%parse-qq33607%_ _%g3409834302%_)))
                            (_%__kont3780537806%_
                             (lambda (_%g3410534258%_ _%g3410634260%_)
                               (cons 'apply:
                                     (cons _%g3410634260%_
                                           (cons (_%parse133601%_
                                                  _%g3410534258%_)
                                                 '())))))
                            (_%__kont3780737808%_
                             (lambda (_%g3411634206%_)
                               (_%parse133601%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3411634206%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33960%_)
                                  (let ((_%$e34217%_
                                         (gx#stx-source _%hd33960%_)))
                                    (if _%$e34217%_
                                        _%$e34217%_
                                        (gx#stx-source _%stx33597%_))))))))
                            (_%__kont3780937810%_
                             (lambda (_%g3412034180%_) (cons 'any: '())))
                            (_%__kont3781137812%_
                             (lambda (_%g3412134164%_)
                               (cons 'var: (cons _%g3412134164%_ '()))))
                            (_%__kont3781337814%_
                             (lambda (_%g3412234146%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3412234146%_) '()))))
                            (_%__kont3781537816%_
                             (lambda () (_%parse-error33608%_ _%hd33960%_))))
                        (let* ((_%g3398434157%_
                                (lambda ()
                                  (let ((_%g3412234146%_ _%__stx3776437765%_))
                                    (if (gx#stx-datum? _%g3412234146%_)
                                        (_%__kont3781337814%_ _%g3412234146%_)
                                        (_%__kont3781537816%_)))))
                               (_%g3398334173%_
                                (lambda ()
                                  (let ((_%g3412134164%_ _%__stx3776437765%_))
                                    (if (and (gx#identifier? _%g3412134164%_)
                                             (not (gx#ellipsis?
                                                   _%g3412134164%_)))
                                        (_%__kont3781137812%_ _%g3412134164%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3398434157%_))))))
                               (_%g3398234189%_
                                (lambda ()
                                  (let ((_%g3412034180%_ _%__stx3776437765%_))
                                    (if (gx#underscore? _%g3412034180%_)
                                        (_%__kont3780937810%_ _%g3412034180%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3398334173%_))))))
                               (_%__match3809138092%_
                                (lambda (_%e3411734196%_
                                         _%hd3411834200%_
                                         _%tl3411934203%_)
                                  (let ((_%g3411634206%_ _%hd3411834200%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3411634206%_)
                                        (_%__kont3780737808%_ _%g3411634206%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3398234189%_))))))
                               (_%__match3802538026%_
                                (lambda (_%e3408534362%_
                                         _%hd3408634366%_
                                         _%tl3408734369%_
                                         _%e3408834372%_
                                         _%hd3408934376%_
                                         _%tl3409034379%_)
                                  (let ((_%g3408334382%_ _%hd3408934376%_)
                                        (_%g3408434384%_ _%hd3408634366%_))
                                    (if (and (gx#identifier? _%g3408434384%_)
                                             (or (gx#free-identifier=?
                                                  _%g3408434384%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3408434384%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3408434384%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3779937800%_
                                         _%g3408334382%_
                                         _%g3408434384%_)
                                        (if (gx#identifier? _%hd3408634366%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39979_|
                                                 _%hd3408634366%_)
                                                (_%__kont3780137802%_
                                                 _%hd3408934376%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39980_|
                                                     _%hd3408634366%_)
                                                    (_%__kont3780337804%_
                                                     _%hd3408934376%_)
                                                    (_%__match3809138092%_
                                                     _%e3408534362%_
                                                     _%hd3408634366%_
                                                     _%tl3408734369%_)))
                                            (_%__match3809138092%_
                                             _%e3408534362%_
                                             _%hd3408634366%_
                                             _%tl3408734369%_))))))
                               (_%__match3801138012%_
                                (lambda (_%e3408034412%_
                                         _%hd3408134416%_
                                         _%tl3408234419%_)
                                  (let ((_%g3407834422%_ _%tl3408234419%_)
                                        (_%g3407934424%_ _%hd3408134416%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3407934424%_))
                                        (_%__kont3779737798%_
                                         _%g3407834422%_
                                         _%g3407934424%_)
                                        (if (gx#stx-pair? _%tl3408234419%_)
                                            (let ((_%e3408834372%_
                                                   (gx#syntax-e
                                                    _%tl3408234419%_)))
                                              (let ((_%tl3409034379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3408834372%_)))
                                                    (_%hd3408934376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3408834372%_))))
                                                (if (gx#stx-null?
                                                     _%tl3409034379%_)
                                                    (_%__match3802538026%_
                                                     _%e3408034412%_
                                                     _%hd3408134416%_
                                                     _%tl3408234419%_
                                                     _%e3408834372%_
                                                     _%hd3408934376%_
                                                     _%tl3409034379%_)
                                                    (if (gx#identifier?
                                                         _%hd3408134416%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39979_|
                                                             _%hd3408134416%_)
                                                            (_%__match3809138092%_
                                                             _%e3408034412%_
                                                             _%hd3408134416%_
                                                             _%tl3408234419%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39980_|
                         _%hd3408134416%_)
                        (_%__match3809138092%_
                         _%e3408034412%_
                         _%hd3408134416%_
                         _%tl3408234419%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39981_|
                             _%hd3408134416%_)
                            (if (gx#stx-pair? _%tl3409034379%_)
                                (let ((_%e3411334248%_
                                       (gx#syntax-e _%tl3409034379%_)))
                                  (let ((_%tl3411534255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3411334248%_)))
                                        (_%hd3411434252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3411334248%_))))
                                    (if (gx#stx-null? _%tl3411534255%_)
                                        (_%__kont3780537806%_
                                         _%hd3411434252%_
                                         _%hd3408934376%_)
                                        (_%__match3809138092%_
                                         _%e3408034412%_
                                         _%hd3408134416%_
                                         _%tl3408234419%_))))
                                (_%__match3809138092%_
                                 _%e3408034412%_
                                 _%hd3408134416%_
                                 _%tl3408234419%_))
                            (_%__match3809138092%_
                             _%e3408034412%_
                             _%hd3408134416%_
                             _%tl3408234419%_))))
                (_%__match3809138092%_
                 _%e3408034412%_
                 _%hd3408134416%_
                 _%tl3408234419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3809138092%_
                                             _%e3408034412%_
                                             _%hd3408134416%_
                                             _%tl3408234419%_))))))
                               (_%__match3800538006%_
                                (lambda (_%e3407534442%_
                                         _%hd3407634446%_
                                         _%tl3407734449%_)
                                  (let ((_%g3407334452%_ _%tl3407734449%_)
                                        (_%g3407434454%_ _%hd3407634446%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3407434454%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3779537796%_
                                         _%g3407334452%_
                                         _%g3407434454%_)
                                        (_%__match3801138012%_
                                         _%e3407534442%_
                                         _%hd3407634446%_
                                         _%tl3407734449%_)))))
                               (_%__match3799938000%_
                                (lambda (_%e3406334472%_
                                         _%__splice3779337794%_
                                         _%target3406434476%_
                                         _%tl3406634479%_)
                                  (letrec ((_%loop3406734482%_
                                            (lambda (_%hd3406534486%_
                                                     _%body3407134489%_)
                                              (if (gx#stx-pair?
                                                   _%hd3406534486%_)
                                                  (let ((_%e3406834491%_
                                                         (gx#syntax-e
                                                          _%hd3406534486%_)))
                                                    (let ((_%lp-tl3407034498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3406834491%_)))
                                                          (_%lp-hd3406934495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3406834491%_))))
                                                      (_%loop3406734482%_
                                                       _%lp-tl3407034498%_
                                                       (cons _%lp-hd3406934495%_
                                                             _%body3407134489%_))))
                                                  (let ((_%body3407234501%_
                                                         (reverse _%body3407134489%_)))
                                                    (_%__kont3779137792%_
                                                     _%body3407234501%_))))))
                                    (_%loop3406734482%_
                                     _%target3406434476%_
                                     '()))))
                               (_%g3397434526%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3776437765%_)
                                      (let ((_%e3406334472%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3776437765%_))))
                                        (if (gx#stx-pair/null? _%e3406334472%_)
                                            (let ((_%__splice3779337794%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3406334472%_
                                                    '0)))
                                              (let ((_%tl3406634479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3779337794%_
                                                        '1)))
                                                    (_%target3406434476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3779337794%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3406634479%_)
                                                    (_%__match3799938000%_
                                                     _%e3406334472%_
                                                     _%__splice3779337794%_
                                                     _%target3406434476%_
                                                     _%tl3406634479%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3398234189%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3398234189%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3398234189%_)))))
                               (_%g3397034643%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3776437765%_)
                                      (let ((_%e3404634629%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3776437765%_))))
                                        (_%__kont3778337784%_ _%e3404634629%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3397434526%_)))))
                               (_%__match3785337854%_
                                (lambda (_%e3400134868%_
                                         _%hd3400234872%_
                                         _%tl3400334875%_)
                                  (let ((_%g3400034878%_ _%tl3400334875%_))
                                    (if (gx#stx-list? _%g3400034878%_)
                                        (_%__kont3777137772%_ _%g3400034878%_)
                                        (_%__match3800538006%_
                                         _%e3400134868%_
                                         _%hd3400234872%_
                                         _%tl3400334875%_)))))
                               (_%__match3784337844%_
                                (lambda (_%e3399734953%_
                                         _%hd3399834957%_
                                         _%tl3399934960%_)
                                  (let ((_%g3399634963%_ _%tl3399934960%_))
                                    (if (gx#stx-list? _%g3399634963%_)
                                        (_%__kont3776937770%_ _%g3399634963%_)
                                        (_%__match3800538006%_
                                         _%e3399734953%_
                                         _%hd3399834957%_
                                         _%tl3399934960%_))))))
                          (if (gx#stx-pair? _%__stx3776437765%_)
                              (let ((_%e3399035038%_
                                     (gx#syntax-e _%__stx3776437765%_)))
                                (let ((_%tl3399235045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3399035038%_)))
                                      (_%hd3399135042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3399035038%_))))
                                  (if (gx#identifier? _%hd3399135042%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39982_|
                                           _%hd3399135042%_)
                                          (if (gx#stx-pair? _%tl3399235045%_)
                                              (let ((_%e3399335048%_
                                                     (gx#syntax-e
                                                      _%tl3399235045%_)))
                                                (let ((_%tl3399535055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3399335048%_)))
                                                      (_%hd3399435052%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3399335048%_))))
                                                  (_%__kont3776737768%_
                                                   _%tl3399535055%_
                                                   _%hd3399435052%_)))
                                              (_%__match3800538006%_
                                               _%e3399035038%_
                                               _%hd3399135042%_
                                               _%tl3399235045%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39983_|
                                               _%hd3399135042%_)
                                              (_%__match3784337844%_
                                               _%e3399035038%_
                                               _%hd3399135042%_
                                               _%tl3399235045%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39984_|
                                                   _%hd3399135042%_)
                                                  (_%__match3785337854%_
                                                   _%e3399035038%_
                                                   _%hd3399135042%_
                                                   _%tl3399235045%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39985_|
                                                       _%hd3399135042%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3399235045%_)
                                                          (let ((_%e3400834838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3399235045%_)))
                    (let ((_%tl3401034845%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3400834838%_)))
                          (_%hd3400934842%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3400834838%_))))
                      (if (gx#stx-null? _%tl3401034845%_)
                          (_%__kont3777337774%_ _%hd3400934842%_)
                          (_%__match3800538006%_
                           _%e3399035038%_
                           _%hd3399135042%_
                           _%tl3399235045%_))))
                  (_%__match3800538006%_
                   _%e3399035038%_
                   _%hd3399135042%_
                   _%tl3399235045%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39986_|
                   _%hd3399135042%_)
                  (if (gx#stx-pair? _%tl3399235045%_)
                      (let ((_%e3401634784%_ (gx#syntax-e _%tl3399235045%_)))
                        (let ((_%tl3401834791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3401634784%_)))
                              (_%hd3401734788%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3401634784%_))))
                          (if (gx#stx-pair? _%tl3401834791%_)
                              (let ((_%e3401934794%_
                                     (gx#syntax-e _%tl3401834791%_)))
                                (let ((_%tl3402134801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3401934794%_)))
                                      (_%hd3402034798%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3401934794%_))))
                                  (if (gx#stx-null? _%tl3402134801%_)
                                      (_%__kont3777537776%_
                                       _%hd3402034798%_
                                       _%hd3401734788%_)
                                      (_%__match3800538006%_
                                       _%e3399035038%_
                                       _%hd3399135042%_
                                       _%tl3399235045%_))))
                              (_%__match3800538006%_
                               _%e3399035038%_
                               _%hd3399135042%_
                               _%tl3399235045%_))))
                      (_%__match3800538006%_
                       _%e3399035038%_
                       _%hd3399135042%_
                       _%tl3399235045%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39987_|
                       _%hd3399135042%_)
                      (if (gx#stx-pair? _%tl3399235045%_)
                          (let ((_%e3402834728%_
                                 (gx#syntax-e _%tl3399235045%_)))
                            (let ((_%tl3403034735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3402834728%_)))
                                  (_%hd3402934732%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3402834728%_))))
                              (if (gx#stx-pair? _%tl3403034735%_)
                                  (let ((_%e3403134738%_
                                         (gx#syntax-e _%tl3403034735%_)))
                                    (let ((_%tl3403334745%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3403134738%_)))
                                          (_%hd3403234742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3403134738%_))))
                                      (_%__kont3777737778%_
                                       _%tl3403334745%_
                                       _%hd3403234742%_
                                       _%hd3402934732%_)))
                                  (_%__match3800538006%_
                                   _%e3399035038%_
                                   _%hd3399135042%_
                                   _%tl3399235045%_))))
                          (_%__match3800538006%_
                           _%e3399035038%_
                           _%hd3399135042%_
                           _%tl3399235045%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39988_|
                           _%hd3399135042%_)
                          (_%__kont3777937780%_ _%tl3399235045%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39989_|
                               _%hd3399135042%_)
                              (if (gx#stx-pair? _%tl3399235045%_)
                                  (let ((_%e3404234660%_
                                         (gx#syntax-e _%tl3399235045%_)))
                                    (let ((_%tl3404434667%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3404234660%_)))
                                          (_%hd3404334664%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3404234660%_))))
                                      (if (gx#stx-null? _%tl3404434667%_)
                                          (_%__kont3778137782%_
                                           _%hd3404334664%_)
                                          (_%__match3800538006%_
                                           _%e3399035038%_
                                           _%hd3399135042%_
                                           _%tl3399235045%_))))
                                  (_%__match3800538006%_
                                   _%e3399035038%_
                                   _%hd3399135042%_
                                   _%tl3399235045%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39990_|
                                   _%hd3399135042%_)
                                  (if (gx#stx-pair? _%tl3399235045%_)
                                      (let ((_%e3405134599%_
                                             (gx#syntax-e _%tl3399235045%_)))
                                        (let ((_%tl3405334606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3405134599%_)))
                                              (_%hd3405234603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3405134599%_))))
                                          (if (gx#stx-null? _%tl3405334606%_)
                                              (_%__kont3778537786%_
                                               _%hd3405234603%_)
                                              (_%__kont3778737788%_
                                               _%tl3399235045%_))))
                                      (_%__kont3778737788%_ _%tl3399235045%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39991_|
                                       _%hd3399135042%_)
                                      (_%__kont3778937790%_ _%tl3399235045%_)
                                      (_%__match3800538006%_
                                       _%e3399035038%_
                                       _%hd3399135042%_
                                       _%tl3399235045%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3800538006%_
                                       _%e3399035038%_
                                       _%hd3399135042%_
                                       _%tl3399235045%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3397034643%_))))))))
                 (_%parse-list33603%_
                  (lambda (_%body33783%_)
                    (let* ((_%__stx3809438095%_ _%body33783%_)
                           (_%g3378933818%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3809438095%_))))
                      (let ((_%__kont3809738098%_
                             (lambda (_%g3379133942%_)
                               (_%parse133601%_ _%g3379133942%_)))
                            (_%__kont3809938100%_
                             (lambda (_%g3379933894%_
                                      _%g3380033896%_
                                      _%g3380133897%_)
                               (cons 'splice:
                                     (cons (_%parse133601%_ _%g3380133897%_)
                                           (cons (_%parse-list33603%_
                                                  _%g3379933894%_)
                                                 '())))))
                            (_%__kont3810138102%_
                             (lambda (_%g3380833852%_ _%g3380933854%_)
                               (cons 'cons:
                                     (cons (_%parse133601%_ _%g3380933854%_)
                                           (cons (_%parse-list33603%_
                                                  _%g3380833852%_)
                                                 '())))))
                            (_%__kont3810338104%_
                             (lambda ()
                               (if (gx#stx-null? _%body33783%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33783%_)
                                       (_%parse-error33608%_ _%body33783%_)
                                       (_%parse133601%_ _%body33783%_))))))
                        (let* ((_%__match3814338144%_
                                (lambda (_%e3381033842%_
                                         _%hd3381133846%_
                                         _%tl3381233849%_)
                                  (let ((_%g3380833852%_ _%tl3381233849%_)
                                        (_%g3380933854%_ _%hd3381133846%_))
                                    (if (gx#ellipsis? _%g3380933854%_)
                                        (_%__kont3810338104%_)
                                        (_%__kont3810138102%_
                                         _%g3380833852%_
                                         _%g3380933854%_)))))
                               (_%__match3813738138%_
                                (lambda (_%e3380233874%_
                                         _%hd3380333878%_
                                         _%tl3380433881%_
                                         _%e3380533884%_
                                         _%hd3380633888%_
                                         _%tl3380733891%_)
                                  (let ((_%g3379933894%_ _%tl3380733891%_)
                                        (_%g3380033896%_ _%hd3380633888%_)
                                        (_%g3380133897%_ _%hd3380333878%_))
                                    (if (gx#ellipsis? _%g3380033896%_)
                                        (_%__kont3809938100%_
                                         _%g3379933894%_
                                         _%g3380033896%_
                                         _%g3380133897%_)
                                        (_%__match3814338144%_
                                         _%e3380233874%_
                                         _%hd3380333878%_
                                         _%tl3380433881%_))))))
                          (if (gx#stx-pair? _%__stx3809438095%_)
                              (let ((_%e3379233918%_
                                     (gx#syntax-e _%__stx3809438095%_)))
                                (let ((_%tl3379433925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3379233918%_)))
                                      (_%hd3379333922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3379233918%_))))
                                  (if (gx#stx-datum? _%hd3379333922%_)
                                      (let ((_%e3379533928%_
                                             (gx#stx-e _%hd3379333922%_)))
                                        (if (equal? _%e3379533928%_ '::)
                                            (if (gx#stx-pair? _%tl3379433925%_)
                                                (let ((_%e3379633932%_
                                                       (gx#syntax-e
                                                        _%tl3379433925%_)))
                                                  (let ((_%tl3379833939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3379633932%_)))
                                                        (_%hd3379733936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3379633932%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3379833939%_)
                                                        (_%__kont3809738098%_
                                                         _%hd3379733936%_)
                                                        (_%__match3813738138%_
                                                         _%e3379233918%_
                                                         _%hd3379333922%_
                                                         _%tl3379433925%_
                                                         _%e3379633932%_
                                                         _%hd3379733936%_
                                                         _%tl3379833939%_))))
                                                (_%__match3814338144%_
                                                 _%e3379233918%_
                                                 _%hd3379333922%_
                                                 _%tl3379433925%_))
                                            (if (gx#stx-pair? _%tl3379433925%_)
                                                (let ((_%e3380533884%_
                                                       (gx#syntax-e
                                                        _%tl3379433925%_)))
                                                  (let ((_%tl3380733891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3380533884%_)))
                                                        (_%hd3380633888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3380533884%_))))
                                                    (_%__match3813738138%_
                                                     _%e3379233918%_
                                                     _%hd3379333922%_
                                                     _%tl3379433925%_
                                                     _%e3380533884%_
                                                     _%hd3380633888%_
                                                     _%tl3380733891%_)))
                                                (_%__match3814338144%_
                                                 _%e3379233918%_
                                                 _%hd3379333922%_
                                                 _%tl3379433925%_))))
                                      (if (gx#stx-pair? _%tl3379433925%_)
                                          (let ((_%e3380533884%_
                                                 (gx#syntax-e
                                                  _%tl3379433925%_)))
                                            (let ((_%tl3380733891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3380533884%_)))
                                                  (_%hd3380633888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3380533884%_))))
                                              (_%__match3813738138%_
                                               _%e3379233918%_
                                               _%hd3379333922%_
                                               _%tl3379433925%_
                                               _%e3380533884%_
                                               _%hd3380633888%_
                                               _%tl3380733891%_)))
                                          (_%__match3814338144%_
                                           _%e3379233918%_
                                           _%hd3379333922%_
                                           _%tl3379433925%_)))))
                              (_%__kont3810338104%_)))))))
                 (_%parse-vector33604%_
                  (lambda (_%body33780%_)
                    (if (_%simple-vector?33605%_ _%body33780%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133601%_ _%body33780%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33603%_ _%body33780%_)
                                    '())))))
                 (_%simple-vector?33605%_
                  (lambda (_%body33717%_)
                    (let* ((_%__stx3814638147%_ _%body33717%_)
                           (_%g3372133733%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3814638147%_))))
                      (let ((_%__kont3814938150%_
                             (lambda (_%g3372333761%_ _%g3372433763%_)
                               (if (gx#ellipsis? _%g3372433763%_)
                                   '#f
                                   (_%simple-vector?33605%_ _%g3372333761%_))))
                            (_%__kont3815138152%_
                             (lambda () (gx#stx-null? _%body33717%_))))
                        (if (gx#stx-pair? _%__stx3814638147%_)
                            (let ((_%e3372533751%_
                                   (gx#syntax-e _%__stx3814638147%_)))
                              (let ((_%tl3372733758%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3372533751%_)))
                                    (_%hd3372633755%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3372533751%_))))
                                (_%__kont3814938150%_
                                 _%tl3372733758%_
                                 _%hd3372633755%_)))
                            (_%__kont3815138152%_))))))
                 (_%parse-class-body33606%_
                  (lambda (_%body33626%_)
                    (let _%recur33629%_ ((_%rest33632%_ _%body33626%_))
                      (let* ((_%__stx3816238163%_ _%rest33632%_)
                             (_%g3363633652%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3816238163%_))))
                        (let ((_%__kont3816538166%_
                               (lambda (_%g3363833690%_
                                        _%g3363933692%_
                                        _%g3364033693%_)
                                 (cons _%g3364033693%_
                                       (cons (_%parse133601%_ _%g3363933692%_)
                                             (_%recur33629%_
                                              _%g3363833690%_)))))
                              (_%__kont3816738168%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33632%_)
                                     '()
                                     (_%parse-error33608%_ _%rest33632%_)))))
                          (let ((_%__match3818138182%_
                                 (lambda (_%e3364133670%_
                                          _%hd3364233674%_
                                          _%tl3364333677%_
                                          _%e3364433680%_
                                          _%hd3364533684%_
                                          _%tl3364633687%_)
                                   (let ((_%g3363833690%_ _%tl3364633687%_)
                                         (_%g3363933692%_ _%hd3364533684%_)
                                         (_%g3364033693%_ _%hd3364233674%_))
                                     (if (gx#stx-keyword? _%g3364033693%_)
                                         (_%__kont3816538166%_
                                          _%g3363833690%_
                                          _%g3363933692%_
                                          _%g3364033693%_)
                                         (_%__kont3816738168%_))))))
                            (if (gx#stx-pair? _%__stx3816238163%_)
                                (let ((_%e3364133670%_
                                       (gx#syntax-e _%__stx3816238163%_)))
                                  (let ((_%tl3364333677%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3364133670%_)))
                                        (_%hd3364233674%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3364133670%_))))
                                    (if (gx#stx-pair? _%tl3364333677%_)
                                        (let ((_%e3364433680%_
                                               (gx#syntax-e _%tl3364333677%_)))
                                          (let ((_%tl3364633687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3364433680%_)))
                                                (_%hd3364533684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3364433680%_))))
                                            (_%__match3818138182%_
                                             _%e3364133670%_
                                             _%hd3364233674%_
                                             _%tl3364333677%_
                                             _%e3364433680%_
                                             _%hd3364533684%_
                                             _%tl3364633687%_)))
                                        (_%__kont3816738168%_))))
                                (_%__kont3816738168%_))))))))
                 (_%parse-qq33607%_
                  (lambda (_%hd33613%_)
                    (let ((_%g3361533622%_
                           (lambda (_%g3361633618%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3361633618%_))))
                      (_%g3361533622%_ _%hd33613%_))))
                 (_%parse-error33608%_
                  (lambda (_%hd33610%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33599%_
                               (cons _%match-stx33599%_
                                     (cons _%stx33597%_
                                           (cons _%hd33610%_ '())))
                               (cons _%stx33597%_ (cons _%hd33610%_ '())))))))
          (_%parse133601%_ _%stx33597%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35285%_)
        (let ((_%match-stx35288%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35285%_
           _%match-stx35288%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39992_
        (let ((_g39993_ (let () (declare (not safe)) (##length _g39992_))))
          (cond ((let () (declare (not safe)) (##fx= _g39993_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39992_))
                ((let () (declare (not safe)) (##fx= _g39993_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39992_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33582%_)
        (let ((__tmp39994
               (lambda (_%E33585%_)
                 (with-exception-handler
                  (let ((_%E!33588%_ (current-exception-handler)))
                    (lambda (_%e33591%_)
                      (if (syntax-error? _%e33591%_)
                          (_%E33585%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33588%_ _%e33591%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33582%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39994))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32317%_)
        (letrec ((_%loop32320%_
                  (lambda (_%ptree32607%_ _%vars32609%_ _%K32610%_)
                    (let* ((_%__stx3828038281%_ _%ptree32607%_)
                           (_%g3262332733%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3828038281%_))))
                      (let ((_%__kont3828338284%_
                             (lambda (_%g3262533363%_)
                               (let* ((_%__stx3820038201%_ _%g3262533363%_)
                                      (_%g3338033414%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3820038201%_))))
                                 (let ((_%__kont3820338204%_
                                        (lambda (_%g3338233563%_)
                                          (_%loop32320%_
                                           _%g3338233563%_
                                           _%vars32609%_
                                           _%K32610%_)))
                                       (_%__kont3820538206%_
                                        (lambda (_%g3338633532%_)
                                          (_%loop32320%_
                                           _%g3338633532%_
                                           _%vars32609%_
                                           _%K32610%_)))
                                       (_%__kont3820738208%_
                                        (lambda (_%g3339433480%_)
                                          (_%loop32320%_
                                           _%g3339433480%_
                                           _%vars32609%_
                                           _%K32610%_)))
                                       (_%__kont3820938210%_
                                        (lambda ()
                                          (_%K32610%_ _%vars32609%_))))
                                   (if (gx#stx-pair? _%__stx3820038201%_)
                                       (let ((_%e3338333553%_
                                              (gx#syntax-e
                                               _%__stx3820038201%_)))
                                         (let ((_%tl3338533560%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3338333553%_)))
                                               (_%hd3338433557%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3338333553%_))))
                                           (if (gx#stx-null? _%tl3338533560%_)
                                               (_%__kont3820338204%_
                                                _%hd3338433557%_)
                                               (if (gx#stx-datum?
                                                    _%hd3338433557%_)
                                                   (let ((_%e3339033518%_
                                                          (gx#stx-e
                                                           _%hd3338433557%_)))
                                                     (if (equal? _%e3339033518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3338533560%_)
                     (let ((_%e3339133522%_ (gx#syntax-e _%tl3338533560%_)))
                       (let ((_%tl3339333529%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3339133522%_)))
                             (_%hd3339233526%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3339133522%_))))
                         (if (gx#stx-null? _%tl3339333529%_)
                             (_%__kont3820538206%_ _%hd3339233526%_)
                             (_%__kont3820938210%_))))
                     (_%__kont3820938210%_))
                 (if (equal? _%e3339033518%_ '::)
                     (if (gx#stx-pair? _%tl3338533560%_)
                         (let ((_%e3339933446%_
                                (gx#syntax-e _%tl3338533560%_)))
                           (let ((_%tl3340133453%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3339933446%_)))
                                 (_%hd3340033450%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3339933446%_))))
                             (if (gx#stx-pair? _%tl3340133453%_)
                                 (let ((_%e3340233456%_
                                        (gx#syntax-e _%tl3340133453%_)))
                                   (let ((_%tl3340433463%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3340233456%_)))
                                         (_%hd3340333460%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3340233456%_))))
                                     (if (gx#stx-datum? _%hd3340333460%_)
                                         (let ((_%e3340533466%_
                                                (gx#stx-e _%hd3340333460%_)))
                                           (if (equal? _%e3340533466%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3340433463%_)
                                                   (let ((_%e3340633470%_
                                                          (gx#syntax-e
                                                           _%tl3340433463%_)))
                                                     (let ((_%tl3340833477%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3340633470%_)))
                                                           (_%hd3340733474%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3340633470%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3340833477%_)
                                                           (_%__kont3820738208%_
                                                            _%hd3340733474%_)
                                                           (_%__kont3820938210%_))))
                                                   (_%__kont3820938210%_))
                                               (_%__kont3820938210%_)))
                                         (_%__kont3820938210%_))))
                                 (_%__kont3820938210%_))))
                         (_%__kont3820938210%_))
                     (_%__kont3820938210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3820938210%_)))))
                                       (_%__kont3820938210%_))))))
                            (_%__kont3828538286%_
                             (lambda (_%g3263333250%_ _%g3263433252%_)
                               (let* ((_%__stx3818438185%_ _%g3263333250%_)
                                      (_%g3326833280%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3818438185%_))))
                                 (let ((_%__kont3818738188%_
                                        (lambda (_%g3327033308%_
                                                 _%g3327133310%_)
                                          (_%loop32320%_
                                           _%g3327133310%_
                                           _%vars32609%_
                                           (lambda (_%g3332233324%_)
                                             (_%loop32320%_
                                              (cons _%g3263433252%_
                                                    _%g3327033308%_)
                                              _%g3332233324%_
                                              _%K32610%_)))))
                                       (_%__kont3818938190%_
                                        (lambda ()
                                          (_%K32610%_ _%vars32609%_))))
                                   (if (gx#stx-pair? _%__stx3818438185%_)
                                       (let ((_%e3327233298%_
                                              (gx#syntax-e
                                               _%__stx3818438185%_)))
                                         (let ((_%tl3327433305%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3327233298%_)))
                                               (_%hd3327333302%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3327233298%_))))
                                           (_%__kont3818738188%_
                                            _%tl3327433305%_
                                            _%hd3327333302%_)))
                                       (_%__kont3818938190%_))))))
                            (_%__kont3828738288%_
                             (lambda (_%g3263833219%_)
                               (_%loop32320%_
                                _%g3263833219%_
                                _%vars32609%_
                                _%K32610%_)))
                            (_%__kont3828938290%_
                             (lambda (_%g3264633165%_ _%g3264733167%_)
                               (_%loop32320%_
                                _%g3264733167%_
                                _%vars32609%_
                                (lambda (_%g3318233184%_)
                                  (_%loop32320%_
                                   _%g3264633165%_
                                   _%g3318233184%_
                                   _%K32610%_)))))
                            (_%__kont3829138292%_
                             (lambda (_%g3265833101%_ _%g3265933103%_)
                               (_%loop32320%_
                                _%g3265933103%_
                                _%vars32609%_
                                (lambda (_%g3311833120%_)
                                  (_%loop32320%_
                                   _%g3265833101%_
                                   _%g3311833120%_
                                   _%K32610%_)))))
                            (_%__kont3829338294%_
                             (lambda (_%g3267033046%_)
                               (_%loop32320%_
                                _%g3267033046%_
                                _%vars32609%_
                                _%K32610%_)))
                            (_%__kont3829538296%_
                             (lambda (_%g3267832996%_ _%g3267932998%_)
                               (_%loop-vector32322%_
                                _%g3267832996%_
                                _%vars32609%_
                                _%K32610%_)))
                            (_%__kont3829738298%_
                             (lambda (_%g3268632953%_)
                               (_%loop-vector32322%_
                                _%g3268632953%_
                                _%vars32609%_
                                _%K32610%_)))
                            (_%__kont3829938300%_
                             (lambda (_%g3269732896%_)
                               (_%loop-class-list32324%_
                                _%g3269732896%_
                                _%vars32609%_
                                _%K32610%_)))
                            (_%__kont3830138302%_
                             (lambda (_%g3270832837%_ _%g3270932839%_)
                               (_%loop32320%_
                                _%g3270832837%_
                                _%vars32609%_
                                _%K32610%_)))
                            (_%__kont3830338304%_
                             (lambda (_%g3272032775%_)
                               (if (find (lambda (_%g3279032792%_)
                                           (gx#bound-identifier=?
                                            _%g3279032792%_
                                            _%g3272032775%_))
                                         _%vars32609%_)
                                   (_%K32610%_ _%vars32609%_)
                                   (_%K32610%_
                                    (cons _%g3272032775%_ _%vars32609%_)))))
                            (_%__kont3830538306%_
                             (lambda () (_%K32610%_ _%vars32609%_))))
                        (let* ((_%__match3843738438%_
                                (lambda (_%e3268032976%_
                                         _%hd3268132980%_
                                         _%tl3268232983%_
                                         _%e3268332986%_
                                         _%hd3268432990%_
                                         _%tl3268532993%_)
                                  (let ((_%g3267832996%_ _%hd3268432990%_)
                                        (_%g3267932998%_ _%hd3268132980%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3267932998%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3267932998%_))
                                        (_%__kont3829538296%_
                                         _%g3267832996%_
                                         _%g3267932998%_)
                                        (if (gx#stx-datum? _%hd3268132980%_)
                                            (let ((_%e3269032929%_
                                                   (gx#stx-e
                                                    _%hd3268132980%_)))
                                              (if (equal? _%e3269032929%_
                                                          'struct:)
                                                  (_%__kont3830538306%_)
                                                  (if (equal? _%e3269032929%_
                                                              'class:)
                                                      (_%__kont3830538306%_)
                                                      (if (equal? _%e3269032929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3830538306%_)
                  (if (equal? _%e3269032929%_ 'var:)
                      (_%__kont3830338304%_ _%hd3268432990%_)
                      (_%__kont3830538306%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3830538306%_))))))
                               (_%__match3833138332%_
                                (lambda (_%e3263533240%_
                                         _%hd3263633244%_
                                         _%tl3263733247%_)
                                  (let ((_%g3263333250%_ _%tl3263733247%_)
                                        (_%g3263433252%_ _%hd3263633244%_))
                                    (if (or (gx#stx-eq? 'and: _%g3263433252%_)
                                            (gx#stx-eq? 'or: _%g3263433252%_))
                                        (_%__kont3828538286%_
                                         _%g3263333250%_
                                         _%g3263433252%_)
                                        (if (gx#stx-datum? _%hd3263633244%_)
                                            (let ((_%e3264233205%_
                                                   (gx#stx-e
                                                    _%hd3263633244%_)))
                                              (if (equal? _%e3264233205%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3263733247%_)
                                                      (let ((_%e3264333209%_
                                                             (gx#syntax-e
                                                              _%tl3263733247%_)))
                                                        (let ((_%tl3264533216%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3264333209%_)))
                      (_%hd3264433213%_
                       (let () (declare (not safe)) (##car _%e3264333209%_))))
                  (if (gx#stx-null? _%tl3264533216%_)
                      (_%__kont3828738288%_ _%hd3264433213%_)
                      (_%__kont3830538306%_))))
              (_%__kont3830538306%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3264233205%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3263733247%_)
                                                          (let ((_%e3265233145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3263733247%_)))
                    (let ((_%tl3265433152%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3265233145%_)))
                          (_%hd3265333149%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3265233145%_))))
                      (if (gx#stx-pair? _%tl3265433152%_)
                          (let ((_%e3265533155%_
                                 (gx#syntax-e _%tl3265433152%_)))
                            (let ((_%tl3265733162%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3265533155%_)))
                                  (_%hd3265633159%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3265533155%_))))
                              (if (gx#stx-null? _%tl3265733162%_)
                                  (_%__kont3828938290%_
                                   _%hd3265633159%_
                                   _%hd3265333149%_)
                                  (_%__kont3830538306%_))))
                          (if (gx#stx-null? _%tl3265433152%_)
                              (_%__match3843738438%_
                               _%e3263533240%_
                               _%hd3263633244%_
                               _%tl3263733247%_
                               _%e3265233145%_
                               _%hd3265333149%_
                               _%tl3265433152%_)
                              (_%__kont3830538306%_)))))
                  (_%__kont3830538306%_))
              (if (equal? _%e3264233205%_ 'splice:)
                  (if (gx#stx-pair? _%tl3263733247%_)
                      (let ((_%e3266433081%_ (gx#syntax-e _%tl3263733247%_)))
                        (let ((_%tl3266633088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3266433081%_)))
                              (_%hd3266533085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3266433081%_))))
                          (if (gx#stx-pair? _%tl3266633088%_)
                              (let ((_%e3266733091%_
                                     (gx#syntax-e _%tl3266633088%_)))
                                (let ((_%tl3266933098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3266733091%_)))
                                      (_%hd3266833095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3266733091%_))))
                                  (if (gx#stx-null? _%tl3266933098%_)
                                      (_%__kont3829138292%_
                                       _%hd3266833095%_
                                       _%hd3266533085%_)
                                      (_%__kont3830538306%_))))
                              (if (gx#stx-null? _%tl3266633088%_)
                                  (_%__match3843738438%_
                                   _%e3263533240%_
                                   _%hd3263633244%_
                                   _%tl3263733247%_
                                   _%e3266433081%_
                                   _%hd3266533085%_
                                   _%tl3266633088%_)
                                  (_%__kont3830538306%_)))))
                      (_%__kont3830538306%_))
                  (if (equal? _%e3264233205%_ 'box:)
                      (if (gx#stx-pair? _%tl3263733247%_)
                          (let ((_%e3267533036%_
                                 (gx#syntax-e _%tl3263733247%_)))
                            (let ((_%tl3267733043%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3267533036%_)))
                                  (_%hd3267633040%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3267533036%_))))
                              (if (gx#stx-null? _%tl3267733043%_)
                                  (_%__kont3829338294%_ _%hd3267633040%_)
                                  (_%__kont3830538306%_))))
                          (_%__kont3830538306%_))
                      (if (gx#stx-pair? _%tl3263733247%_)
                          (let ((_%e3268332986%_
                                 (gx#syntax-e _%tl3263733247%_)))
                            (let ((_%tl3268532993%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3268332986%_)))
                                  (_%hd3268432990%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3268332986%_))))
                              (if (gx#stx-null? _%tl3268532993%_)
                                  (_%__match3843738438%_
                                   _%e3263533240%_
                                   _%hd3263633244%_
                                   _%tl3263733247%_
                                   _%e3268332986%_
                                   _%hd3268432990%_
                                   _%tl3268532993%_)
                                  (if (equal? _%e3264233205%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3268532993%_)
                                          (let ((_%e3269432943%_
                                                 (gx#syntax-e
                                                  _%tl3268532993%_)))
                                            (let ((_%tl3269632950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3269432943%_)))
                                                  (_%hd3269532947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3269432943%_))))
                                              (if (gx#stx-null?
                                                   _%tl3269632950%_)
                                                  (_%__kont3829738298%_
                                                   _%hd3269532947%_)
                                                  (_%__kont3830538306%_))))
                                          (_%__kont3830538306%_))
                                      (if (equal? _%e3264233205%_ 'class:)
                                          (if (gx#stx-pair? _%tl3268532993%_)
                                              (let ((_%e3270532886%_
                                                     (gx#syntax-e
                                                      _%tl3268532993%_)))
                                                (let ((_%tl3270732893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3270532886%_)))
                                                      (_%hd3270632890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3270532886%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3270732893%_)
                                                      (_%__kont3829938300%_
                                                       _%hd3270632890%_)
                                                      (_%__kont3830538306%_))))
                                              (_%__kont3830538306%_))
                                          (if (equal? _%e3264233205%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3268532993%_)
                                                  (let ((_%e3271732827%_
                                                         (gx#syntax-e
                                                          _%tl3268532993%_)))
                                                    (let ((_%tl3271932834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3271732827%_)))
                                                          (_%hd3271832831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3271732827%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3271932834%_)
                                                          (_%__kont3830138302%_
                                                           _%hd3271832831%_
                                                           _%hd3268432990%_)
                                                          (_%__kont3830538306%_))))
                                                  (_%__kont3830538306%_))
                                              (_%__kont3830538306%_)))))))
                          (_%__kont3830538306%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3263733247%_)
                                                (let ((_%e3268332986%_
                                                       (gx#syntax-e
                                                        _%tl3263733247%_)))
                                                  (let ((_%tl3268532993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3268332986%_)))
                                                        (_%hd3268432990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3268332986%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3268532993%_)
                                                        (_%__match3843738438%_
                                                         _%e3263533240%_
                                                         _%hd3263633244%_
                                                         _%tl3263733247%_
                                                         _%e3268332986%_
                                                         _%hd3268432990%_
                                                         _%tl3268532993%_)
                                                        (_%__kont3830538306%_))))
                                                (_%__kont3830538306%_))))))))
                          (if (gx#stx-pair? _%__stx3828038281%_)
                              (let ((_%e3262633339%_
                                     (gx#syntax-e _%__stx3828038281%_)))
                                (let ((_%tl3262833346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3262633339%_)))
                                      (_%hd3262733343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3262633339%_))))
                                  (if (gx#stx-datum? _%hd3262733343%_)
                                      (let ((_%e3262933349%_
                                             (gx#stx-e _%hd3262733343%_)))
                                        (if (equal? _%e3262933349%_ '?:)
                                            (if (gx#stx-pair? _%tl3262833346%_)
                                                (let ((_%e3263033353%_
                                                       (gx#syntax-e
                                                        _%tl3262833346%_)))
                                                  (let ((_%tl3263233360%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3263033353%_)))
                                                        (_%hd3263133357%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3263033353%_))))
                                                    (_%__kont3828338284%_
                                                     _%tl3263233360%_)))
                                                (_%__match3833138332%_
                                                 _%e3262633339%_
                                                 _%hd3262733343%_
                                                 _%tl3262833346%_))
                                            (_%__match3833138332%_
                                             _%e3262633339%_
                                             _%hd3262733343%_
                                             _%tl3262833346%_)))
                                      (_%__match3833138332%_
                                       _%e3262633339%_
                                       _%hd3262733343%_
                                       _%tl3262833346%_))))
                              (_%__kont3830538306%_)))))))
                 (_%loop-vector32322%_
                  (lambda (_%body32483%_ _%vars32485%_ _%K32486%_)
                    (let* ((_%__stx3853838539%_ _%body32483%_)
                           (_%g3248932512%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3853838539%_))))
                      (let ((_%__kont3854138542%_
                             (lambda (_%g3249132589%_)
                               (_%loop-list32323%_
                                _%g3249132589%_
                                _%vars32485%_
                                _%K32486%_)))
                            (_%__kont3854338544%_
                             (lambda (_%g3249932543%_)
                               (_%loop32320%_
                                _%g3249932543%_
                                _%vars32485%_
                                _%K32486%_))))
                        (if (gx#stx-pair? _%__stx3853838539%_)
                            (let ((_%e3249232565%_
                                   (gx#syntax-e _%__stx3853838539%_)))
                              (let ((_%tl3249432572%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3249232565%_)))
                                    (_%hd3249332569%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3249232565%_))))
                                (if (gx#stx-datum? _%hd3249332569%_)
                                    (let ((_%e3249532575%_
                                           (gx#stx-e _%hd3249332569%_)))
                                      (if (equal? _%e3249532575%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3249432572%_)
                                              (let ((_%e3249632579%_
                                                     (gx#syntax-e
                                                      _%tl3249432572%_)))
                                                (let ((_%tl3249832586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3249632579%_)))
                                                      (_%hd3249732583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3249632579%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3249832586%_)
                                                      (_%__kont3854138542%_
                                                       _%hd3249732583%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3248932512%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3248932512%_)))
                                          (if (equal? _%e3249532575%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3249432572%_)
                                                  (let ((_%e3250432533%_
                                                         (gx#syntax-e
                                                          _%tl3249432572%_)))
                                                    (let ((_%tl3250632540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3250432533%_)))
                                                          (_%hd3250532537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3250432533%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3250632540%_)
                                                          (_%__kont3854338544%_
                                                           _%hd3250532537%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3248932512%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3248932512%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3248932512%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3248932512%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3248932512%_)))))))
                 (_%loop-list32323%_
                  (lambda (_%rest32413%_ _%vars32415%_ _%K32416%_)
                    (let* ((_%__stx3858838589%_ _%rest32413%_)
                           (_%g3241932431%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3858838589%_))))
                      (let ((_%__kont3859138592%_
                             (lambda (_%g3242132459%_ _%g3242232461%_)
                               (_%loop32320%_
                                _%g3242232461%_
                                _%vars32415%_
                                (lambda (_%g3247332475%_)
                                  (_%loop-list32323%_
                                   _%g3242132459%_
                                   _%g3247332475%_
                                   _%K32416%_)))))
                            (_%__kont3859338594%_
                             (lambda () (_%K32416%_ _%vars32415%_))))
                        (if (gx#stx-pair? _%__stx3858838589%_)
                            (let ((_%e3242332449%_
                                   (gx#syntax-e _%__stx3858838589%_)))
                              (let ((_%tl3242532456%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3242332449%_)))
                                    (_%hd3242432453%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3242332449%_))))
                                (_%__kont3859138592%_
                                 _%tl3242532456%_
                                 _%hd3242432453%_)))
                            (_%__kont3859338594%_))))))
                 (_%loop-class-list32324%_
                  (lambda (_%rest32326%_ _%vars32328%_ _%K32329%_)
                    (let* ((_%__stx3860438605%_ _%rest32326%_)
                           (_%g3233232347%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3860438605%_))))
                      (let ((_%__kont3860738608%_
                             (lambda (_%g3233432385%_ _%g3233532387%_)
                               (_%loop32320%_
                                _%g3233532387%_
                                _%vars32328%_
                                (lambda (_%g3240332405%_)
                                  (_%loop-class-list32324%_
                                   _%g3233432385%_
                                   _%g3240332405%_
                                   _%K32329%_)))))
                            (_%__kont3860938610%_
                             (lambda () (_%K32329%_ _%vars32328%_))))
                        (if (gx#stx-pair? _%__stx3860438605%_)
                            (let ((_%e3233632365%_
                                   (gx#syntax-e _%__stx3860438605%_)))
                              (let ((_%tl3233832372%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3233632365%_)))
                                    (_%hd3233732369%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3233632365%_))))
                                (if (gx#stx-pair? _%tl3233832372%_)
                                    (let ((_%e3233932375%_
                                           (gx#syntax-e _%tl3233832372%_)))
                                      (let ((_%tl3234132382%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3233932375%_)))
                                            (_%hd3234032379%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3233932375%_))))
                                        (_%__kont3860738608%_
                                         _%tl3234132382%_
                                         _%hd3234032379%_)))
                                    (_%__kont3860938610%_))))
                            (_%__kont3860938610%_)))))))
          (_%loop32320%_ _%ptree32317%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29249%_ _%tgt29251%_ _%ptree29252%_ _%K29253%_ _%E29254%_)
        (letrec ((_%generate129256%_
                  (lambda (_%tgt30516%_ _%ptree30518%_ _%K30519%_ _%E30520%_)
                    (let* ((_%g3052230530%_
                            (lambda (_%g3052330526%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3052330526%_)))
                           (_%g3052132313%_
                            (lambda (_%g3052330534%_)
                              ((lambda (_%g3052430537%_)
                                 (let* ((_%__stx3884038841%_ _%ptree30518%_)
                                        (_%g3056430706%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3884038841%_))))
                                   (let ((_%__kont3884338844%_
                                          (lambda (_%g3056632028%_
                                                   _%g3056732030%_)
                                            (let* ((_%__stx3875838759%_
                                                    _%g3056632028%_)
                                                   (_%g3204732082%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3875838759%_))))
                                              (let ((_%__kont3876138762%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3056732030%_
                                       (cons _%g3052430537%_ '())))
                           (cons _%K30519%_ (cons _%E30520%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3876338764%_
                                                     (lambda (_%g3204932283%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3056732030%_
                                       (cons _%g3052430537%_ '())))
                           (cons (_%generate129256%_
                                  _%tgt30516%_
                                  _%g3204932283%_
                                  _%K30519%_
                                  _%E30520%_)
                                 (cons _%E30520%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3876538766%_
                                                     (lambda (_%g3205332221%_)
                                                       (let* ((_%g3223532243%_
                                                               (lambda (_%g3223632239%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3223632239%_)))
                      (_%g3223432262%_
                       (lambda (_%g3223632247%_)
                         ((lambda (_%g3223732250%_)
                            (cons 'let
                                  (cons (cons (cons _%g3223732250%_
                                                    (cons (cons _%g3056732030%_
                                                                (cons _%g3052430537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g3223732250%_
                                                          (cons (_%generate129256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3223732250%_
                         _%g3205332221%_
                         _%K30519%_
                         _%E30520%_)
                        (cons _%E30520%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3223632247%_))))
                 (_%g3223432262%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3876738768%_
                                                     (lambda (_%g3206132137%_
                                                              _%g3206232139%_)
                                                       (let* ((_%g3215932167%_
                                                               (lambda (_%g3216032163%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3216032163%_)))
                      (_%g3215832186%_
                       (lambda (_%g3216032171%_)
                         ((lambda (_%g3216132174%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g3056732030%_
                                                    (cons _%g3052430537%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g3216132174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g3206232139%_
                                          (cons _%g3052430537%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129256%_
                         _%g3216132174%_
                         _%g3206132137%_
                         _%K30519%_
                         _%E30520%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30520%_ '())))))
                          _%g3216032171%_))))
                 (_%g3215832186%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3204432294%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3875838759%_)
                                                             (let ((_%e3205032273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3875838759%_)))
                       (let ((_%tl3205232280%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3205032273%_)))
                             (_%hd3205132277%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3205032273%_))))
                         (if (gx#stx-null? _%tl3205232280%_)
                             (_%__kont3876338764%_ _%hd3205132277%_)
                             (if (gx#stx-datum? _%hd3205132277%_)
                                 (let ((_%e3205732207%_
                                        (gx#stx-e _%hd3205132277%_)))
                                   (if (equal? _%e3205732207%_ '=>:)
                                       (if (gx#stx-pair? _%tl3205232280%_)
                                           (let ((_%e3205832211%_
                                                  (gx#syntax-e
                                                   _%tl3205232280%_)))
                                             (let ((_%tl3206032218%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3205832211%_)))
                                                   (_%hd3205932215%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3205832211%_))))
                                               (if (gx#stx-null?
                                                    _%tl3206032218%_)
                                                   (_%__kont3876538766%_
                                                    _%hd3205932215%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3204732082%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3204732082%_)))
                                       (if (equal? _%e3205732207%_ '::)
                                           (if (gx#stx-pair? _%tl3205232280%_)
                                               (let ((_%e3206732103%_
                                                      (gx#syntax-e
                                                       _%tl3205232280%_)))
                                                 (let ((_%tl3206932110%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3206732103%_)))
                                                       (_%hd3206832107%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3206732103%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3206932110%_)
                                                       (let ((_%e3207032113%_
                                                              (gx#syntax-e
                                                               _%tl3206932110%_)))
                                                         (let ((_%tl3207232120%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3207032113%_)))
                       (_%hd3207132117%_
                        (let () (declare (not safe)) (##car _%e3207032113%_))))
                   (if (gx#stx-datum? _%hd3207132117%_)
                       (let ((_%e3207332123%_ (gx#stx-e _%hd3207132117%_)))
                         (if (equal? _%e3207332123%_ '=>:)
                             (if (gx#stx-pair? _%tl3207232120%_)
                                 (let ((_%e3207432127%_
                                        (gx#syntax-e _%tl3207232120%_)))
                                   (let ((_%tl3207632134%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3207432127%_)))
                                         (_%hd3207532131%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3207432127%_))))
                                     (if (gx#stx-null? _%tl3207632134%_)
                                         (_%__kont3876738768%_
                                          _%hd3207532131%_
                                          _%hd3206832107%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3204732082%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3204732082%_)))
                             (let () (declare (not safe)) (_%g3204732082%_))))
                       (let () (declare (not safe)) (_%g3204732082%_)))))
               (let () (declare (not safe)) (_%g3204732082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3204732082%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3204732082%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3204732082%_))))))
                     (let () (declare (not safe)) (_%g3204732082%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3875838759%_)
                                                      (_%__kont3876138762%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3204432294%_))))))))
                                         (_%__kont3884538846%_
                                          (lambda (_%g3057531925%_)
                                            (let* ((_%__stx3874238743%_
                                                    _%g3057531925%_)
                                                   (_%g3193831950%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3874238743%_))))
                                              (let ((_%__kont3874538746%_
                                                     (lambda (_%g3194031978%_
                                                              _%g3194131980%_)
                                                       (_%generate129256%_
                                                        _%tgt30516%_
                                                        _%g3194131980%_
                                                        (_%generate129256%_
                                                         _%tgt30516%_
                                                         (cons 'and:
                                                               _%g3194031978%_)
                                                         _%K30519%_
                                                         _%E30520%_)
                                                        _%E30520%_)))
                                                    (_%__kont3874738748%_
                                                     (lambda () _%K30519%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3874238743%_)
                                                    (let ((_%e3194231968%_
                                                           (gx#syntax-e
                                                            _%__stx3874238743%_)))
                                                      (let ((_%tl3194431975%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3194231968%_)))
                    (_%hd3194331972%_
                     (let () (declare (not safe)) (##car _%e3194231968%_))))
                (_%__kont3874538746%_ _%tl3194431975%_ _%hd3194331972%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3874738748%_))))))
                                         (_%__kont3884738848%_
                                          (lambda (_%g3058031832%_)
                                            (let* ((_%__stx3872638727%_
                                                    _%g3058031832%_)
                                                   (_%g3184531857%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3872638727%_))))
                                              (let ((_%__kont3872938730%_
                                                     (lambda (_%g3184731885%_
                                                              _%g3184831887%_)
                                                       (_%generate129256%_
                                                        _%tgt30516%_
                                                        _%g3184831887%_
                                                        _%K30519%_
                                                        (_%generate129256%_
                                                         _%tgt30516%_
                                                         (cons 'or:
                                                               _%g3184731885%_)
                                                         _%K30519%_
                                                         _%E30520%_))))
                                                    (_%__kont3873138732%_
                                                     (lambda () _%E30520%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3872638727%_)
                                                    (let ((_%e3184931875%_
                                                           (gx#syntax-e
                                                            _%__stx3872638727%_)))
                                                      (let ((_%tl3185131882%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3184931875%_)))
                    (_%hd3185031879%_
                     (let () (declare (not safe)) (##car _%e3184931875%_))))
                (_%__kont3872938730%_ _%tl3185131882%_ _%hd3185031879%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3873138732%_))))))
                                         (_%__kont3884938850%_
                                          (lambda (_%g3058531797%_)
                                            (_%generate129256%_
                                             _%tgt30516%_
                                             _%g3058531797%_
                                             _%E30520%_
                                             _%K30519%_)))
                                         (_%__kont3885138852%_
                                          (lambda (_%g3059331671%_
                                                   _%g3059431673%_)
                                            (let* ((_%g3169031705%_
                                                    (lambda (_%g3169131701%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3169131701%_)))
                                                   (_%g3168931762%_
                                                    (lambda (_%g3169131709%_)
                                                      (if (gx#stx-pair?
                                                           _%g3169131709%_)
                                                          (let ((_%e3169431712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3169131709%_)))
                    (let ((_%hd3169531716%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3169431712%_)))
                          (_%tl3169631719%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3169431712%_))))
                      (if (gx#stx-pair? _%tl3169631719%_)
                          (let ((_%e3169731722%_
                                 (gx#syntax-e _%tl3169631719%_)))
                            (let ((_%hd3169831726%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3169731722%_)))
                                  (_%tl3169931729%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3169731722%_))))
                              (if (gx#stx-null? _%tl3169931729%_)
                                  ((lambda (_%g3169231732%_ _%g3169331734%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g3052430537%_
                                                             '()))
                                                 (cons (let ((_%hd-pat31750%_
                                                              (gx#stx-e
                                                               _%g3059431673%_))
                                                             (_%tl-pat31752%_
                                                              (gx#stx-e
                                                               _%g3059331671%_)))
                                                         (if (and (equal? _%hd-pat31750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31752%_ '(any:)))
                     _%K30519%_
                     (if (equal? _%tl-pat31752%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g3169331734%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3052430537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129256%_
                                            _%g3169331734%_
                                            _%g3059431673%_
                                            _%K30519%_
                                            _%E30520%_)
                                           '())))
                         (if (equal? _%hd-pat31750%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g3169231732%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3052430537%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129256%_
                                                _%g3169231732%_
                                                _%g3059331671%_
                                                _%K30519%_
                                                _%E30520%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g3169331734%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g3052430537%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g3169231732%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3052430537%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129256%_
                                                _%g3169331734%_
                                                _%g3059431673%_
                                                (_%generate129256%_
                                                 _%g3169231732%_
                                                 _%g3059331671%_
                                                 _%K30519%_
                                                 _%E30520%_)
                                                _%E30520%_)
                                               '())))))))
               (cons _%E30520%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3169831726%_
                                   _%hd3169531716%_)
                                  (_%g3169031705%_ _%g3169131709%_))))
                          (_%g3169031705%_ _%g3169131709%_))))
                  (_%g3169031705%_ _%g3169131709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3168931762%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3885338854%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g3052430537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30519%_ (cons _%E30520%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3885538856%_
                                          (lambda (_%g3060931587%_
                                                   _%g3061031589%_)
                                            (_%generate-splice29258%_
                                             _%tgt30516%_
                                             _%g3061031589%_
                                             _%g3060931587%_
                                             _%K30519%_
                                             _%E30520%_)))
                                         (_%__kont3885738858%_
                                          (lambda (_%g3062131501%_)
                                            (let* ((_%g3151531523%_
                                                    (lambda (_%g3151631519%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3151631519%_)))
                                                   (_%g3151431542%_
                                                    (lambda (_%g3151631527%_)
                                                      ((lambda (_%g3151731530%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g3052430537%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g3151731530%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g3052430537%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129256%_
                                                      _%g3151731530%_
                                                      _%g3062131501%_
                                                      _%K30519%_
                                                      _%E30520%_)
                                                     '())))
                                   (cons _%E30520%_ '())))))
               _%g3151631527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3151431542%_
                                               (gx#genident 'e)))))
                                         (_%__kont3885938860%_
                                          (lambda (_%g3062931306%_)
                                            (let* ((_%__stx3867638677%_
                                                    _%g3062931306%_)
                                                   (_%g3132131344%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3867638677%_))))
                                              (let ((_%__kont3867938680%_
                                                     (lambda (_%g3132331421%_)
                                                       (let* ((_%g3143531443%_
                                                               (lambda (_%g3143631439%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3143631439%_)))
                      (_%g3143431462%_
                       (lambda (_%g3143631447%_)
                         ((lambda (_%g3143731450%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g3052430537%_
                                                                '()))
                                                    (cons _%g3143731450%_
                                                          '())))
                                        (cons (_%generate-simple-vector29259%_
                                               _%tgt30516%_
                                               _%g3132331421%_
                                               '0
                                               '##values-ref
                                               _%K30519%_
                                               _%E30520%_)
                                              (cons _%E30520%_ '())))))
                          _%g3143631447%_))))
                 (_%g3143431462%_ (gx#stx-length _%g3132331421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3868138682%_
                                                     (lambda (_%g3133131375%_)
                                                       (_%generate-list-vector29260%_
                                                        _%tgt30516%_
                                                        _%g3133131375%_
                                                        'values->list
                                                        _%K30519%_
                                                        _%E30520%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3867638677%_)
                                                    (let ((_%e3132431397%_
                                                           (gx#syntax-e
                                                            _%__stx3867638677%_)))
                                                      (let ((_%tl3132631404%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3132431397%_)))
                    (_%hd3132531401%_
                     (let () (declare (not safe)) (##car _%e3132431397%_))))
                (if (gx#stx-datum? _%hd3132531401%_)
                    (let ((_%e3132731407%_ (gx#stx-e _%hd3132531401%_)))
                      (if (equal? _%e3132731407%_ 'simple:)
                          (if (gx#stx-pair? _%tl3132631404%_)
                              (let ((_%e3132831411%_
                                     (gx#syntax-e _%tl3132631404%_)))
                                (let ((_%tl3133031418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3132831411%_)))
                                      (_%hd3132931415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3132831411%_))))
                                  (if (gx#stx-null? _%tl3133031418%_)
                                      (_%__kont3867938680%_ _%hd3132931415%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3132131344%_)))))
                              (let () (declare (not safe)) (_%g3132131344%_)))
                          (if (equal? _%e3132731407%_ 'list:)
                              (if (gx#stx-pair? _%tl3132631404%_)
                                  (let ((_%e3133631365%_
                                         (gx#syntax-e _%tl3132631404%_)))
                                    (let ((_%tl3133831372%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3133631365%_)))
                                          (_%hd3133731369%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3133631365%_))))
                                      (if (gx#stx-null? _%tl3133831372%_)
                                          (_%__kont3868138682%_
                                           _%hd3133731369%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3132131344%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3132131344%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3132131344%_)))))
                    (let () (declare (not safe)) (_%g3132131344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3132131344%_)))))))
                                         (_%__kont3886138862%_
                                          (lambda (_%g3063731111%_)
                                            (let* ((_%__stx3862638627%_
                                                    _%g3063731111%_)
                                                   (_%g3112631149%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3862638627%_))))
                                              (let ((_%__kont3862938630%_
                                                     (lambda (_%g3112831226%_)
                                                       (let* ((_%g3124031248%_
                                                               (lambda (_%g3124131244%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3124131244%_)))
                      (_%g3123931267%_
                       (lambda (_%g3124131252%_)
                         ((lambda (_%g3124231255%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g3052430537%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g3052430537%_ '()))
                              (cons _%g3124231255%_ '())))
                  (cons (_%generate-simple-vector29259%_
                         _%tgt30516%_
                         _%g3112831226%_
                         '0
                         '##vector-ref
                         _%K30519%_
                         _%E30520%_)
                        (cons _%E30520%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30520%_ '())))))
                          _%g3124131252%_))))
                 (_%g3123931267%_ (gx#stx-length _%g3112831226%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3863138632%_
                                                     (lambda (_%g3113631180%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g3052430537%_ '()))
                           (cons (_%generate-list-vector29260%_
                                  _%tgt30516%_
                                  _%g3113631180%_
                                  'vector->list
                                  _%K30519%_
                                  _%E30520%_)
                                 (cons _%E30520%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3862638627%_)
                                                    (let ((_%e3112931202%_
                                                           (gx#syntax-e
                                                            _%__stx3862638627%_)))
                                                      (let ((_%tl3113131209%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3112931202%_)))
                    (_%hd3113031206%_
                     (let () (declare (not safe)) (##car _%e3112931202%_))))
                (if (gx#stx-datum? _%hd3113031206%_)
                    (let ((_%e3113231212%_ (gx#stx-e _%hd3113031206%_)))
                      (if (equal? _%e3113231212%_ 'simple:)
                          (if (gx#stx-pair? _%tl3113131209%_)
                              (let ((_%e3113331216%_
                                     (gx#syntax-e _%tl3113131209%_)))
                                (let ((_%tl3113531223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3113331216%_)))
                                      (_%hd3113431220%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3113331216%_))))
                                  (if (gx#stx-null? _%tl3113531223%_)
                                      (_%__kont3862938630%_ _%hd3113431220%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3112631149%_)))))
                              (let () (declare (not safe)) (_%g3112631149%_)))
                          (if (equal? _%e3113231212%_ 'list:)
                              (if (gx#stx-pair? _%tl3113131209%_)
                                  (let ((_%e3114131170%_
                                         (gx#syntax-e _%tl3113131209%_)))
                                    (let ((_%tl3114331177%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3114131170%_)))
                                          (_%hd3114231174%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3114131170%_))))
                                      (if (gx#stx-null? _%tl3114331177%_)
                                          (_%__kont3863138632%_
                                           _%hd3114231174%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3112631149%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3112631149%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3112631149%_)))))
                    (let () (declare (not safe)) (_%g3112631149%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3112631149%_)))))))
                                         (_%__kont3886338864%_
                                          (lambda (_%g3064531062%_
                                                   _%g3064631064%_)
                                            (_%generate-struct29261%_
                                             (gx#stx-e _%g3064631064%_)
                                             _%tgt30516%_
                                             _%g3064531062%_
                                             _%K30519%_
                                             _%E30520%_)))
                                         (_%__kont3886538866%_
                                          (lambda (_%g3065731003%_
                                                   _%g3065831005%_)
                                            (_%generate-class29264%_
                                             (gx#stx-e _%g3065831005%_)
                                             _%tgt30516%_
                                             _%g3065731003%_
                                             _%K30519%_
                                             _%E30520%_)))
                                         (_%__kont3886738868%_
                                          (lambda (_%g3066930900%_)
                                            (let* ((_%g3091430922%_
                                                    (lambda (_%g3091530918%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3091530918%_)))
                                                   (_%g3091330941%_
                                                    (lambda (_%g3091530926%_)
                                                      ((lambda (_%g3091630929%_)
                                                         (cons 'if
                                                               (cons (cons _%g3091630929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g3052430537%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g3066930900%_
                                                           '()))
                                               '())))
                             (cons _%K30519%_ (cons _%E30520%_ '())))))
               _%g3091530926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3091330941%_
                                               (let ((_%e30945%_
                                                      (gx#stx-e
                                                       _%g3066930900%_)))
                                                 (if (or (symbol? _%e30945%_)
                                                         (keyword? _%e30945%_)
                                                         (immediate?
                                                          _%e30945%_))
                                                     '##eq?
                                                     (if (number? _%e30945%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3886938870%_
                                          (lambda (_%g3067730820%_
                                                   _%g3067830822%_)
                                            (let* ((_%g3083830846%_
                                                    (lambda (_%g3083930842%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3083930842%_)))
                                                   (_%g3083730865%_
                                                    (lambda (_%g3083930850%_)
                                                      ((lambda (_%g3084030853%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g3084030853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g3067830822%_
                                                     (cons _%g3052430537%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate129256%_
                                    _%g3084030853%_
                                    _%g3067730820%_
                                    _%K30519%_
                                    _%E30520%_)
                                   '()))))
               _%g3083930850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3083730865%_
                                               (gx#genident 'e)))))
                                         (_%__kont3887138872%_
                                          (lambda (_%g3068930762%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g3068930762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g3052430537%_ '()))
                      '())
                (cons _%K30519%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3887338874%_
                                          (lambda () _%K30519%_)))
                                     (if (gx#stx-pair? _%__stx3884038841%_)
                                         (let ((_%e3056832004%_
                                                (gx#syntax-e
                                                 _%__stx3884038841%_)))
                                           (let ((_%tl3057032011%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3056832004%_)))
                                                 (_%hd3056932008%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3056832004%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3056932008%_)
                                                 (let ((_%e3057132014%_
                                                        (gx#stx-e
                                                         _%hd3056932008%_)))
                                                   (if (equal? _%e3057132014%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3057032011%_)
                                                           (let ((_%e3057232018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3057032011%_)))
                     (let ((_%tl3057432025%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3057232018%_)))
                           (_%hd3057332022%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3057232018%_))))
                       (_%__kont3884338844%_
                        _%tl3057432025%_
                        _%hd3057332022%_)))
                   (let () (declare (not safe)) (_%g3056430706%_)))
               (if (equal? _%e3057132014%_ 'and:)
                   (_%__kont3884538846%_ _%tl3057032011%_)
                   (if (equal? _%e3057132014%_ 'or:)
                       (_%__kont3884738848%_ _%tl3057032011%_)
                       (if (equal? _%e3057132014%_ 'not:)
                           (if (gx#stx-pair? _%tl3057032011%_)
                               (let ((_%e3059031787%_
                                      (gx#syntax-e _%tl3057032011%_)))
                                 (let ((_%tl3059231794%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3059031787%_)))
                                       (_%hd3059131791%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3059031787%_))))
                                   (if (gx#stx-null? _%tl3059231794%_)
                                       (_%__kont3884938850%_ _%hd3059131791%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3056430706%_)))))
                               (let () (declare (not safe)) (_%g3056430706%_)))
                           (if (equal? _%e3057132014%_ 'cons:)
                               (if (gx#stx-pair? _%tl3057032011%_)
                                   (let ((_%e3059931651%_
                                          (gx#syntax-e _%tl3057032011%_)))
                                     (let ((_%tl3060131658%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3059931651%_)))
                                           (_%hd3060031655%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3059931651%_))))
                                       (if (gx#stx-pair? _%tl3060131658%_)
                                           (let ((_%e3060231661%_
                                                  (gx#syntax-e
                                                   _%tl3060131658%_)))
                                             (let ((_%tl3060431668%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3060231661%_)))
                                                   (_%hd3060331665%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3060231661%_))))
                                               (if (gx#stx-null?
                                                    _%tl3060431668%_)
                                                   (_%__kont3885138852%_
                                                    _%hd3060331665%_
                                                    _%hd3060031655%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3056430706%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3056430706%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3056430706%_)))
                               (if (equal? _%e3057132014%_ 'null:)
                                   (if (gx#stx-null? _%tl3057032011%_)
                                       (_%__kont3885338854%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3056430706%_)))
                                   (if (equal? _%e3057132014%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3057032011%_)
                                           (let ((_%e3061531567%_
                                                  (gx#syntax-e
                                                   _%tl3057032011%_)))
                                             (let ((_%tl3061731574%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3061531567%_)))
                                                   (_%hd3061631571%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3061531567%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3061731574%_)
                                                   (let ((_%e3061831577%_
                                                          (gx#syntax-e
                                                           _%tl3061731574%_)))
                                                     (let ((_%tl3062031584%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3061831577%_)))
                                                           (_%hd3061931581%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3061831577%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3062031584%_)
                                                           (_%__kont3885538856%_
                                                            _%hd3061931581%_
                                                            _%hd3061631571%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3056430706%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3056430706%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3056430706%_)))
                                       (if (equal? _%e3057132014%_ 'box:)
                                           (if (gx#stx-pair? _%tl3057032011%_)
                                               (let ((_%e3062631491%_
                                                      (gx#syntax-e
                                                       _%tl3057032011%_)))
                                                 (let ((_%tl3062831498%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3062631491%_)))
                                                       (_%hd3062731495%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3062631491%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3062831498%_)
                                                       (_%__kont3885738858%_
                                                        _%hd3062731495%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3056430706%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3056430706%_)))
                                           (if (equal? _%e3057132014%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3057032011%_)
                                                   (let ((_%e3063431296%_
                                                          (gx#syntax-e
                                                           _%tl3057032011%_)))
                                                     (let ((_%tl3063631303%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3063431296%_)))
                                                           (_%hd3063531300%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3063431296%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3063631303%_)
                                                           (_%__kont3885938860%_
                                                            _%hd3063531300%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3056430706%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3056430706%_)))
                                               (if (equal? _%e3057132014%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3057032011%_)
                                                       (let ((_%e3064231101%_
                                                              (gx#syntax-e
                                                               _%tl3057032011%_)))
                                                         (let ((_%tl3064431108%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3064231101%_)))
                       (_%hd3064331105%_
                        (let () (declare (not safe)) (##car _%e3064231101%_))))
                   (if (gx#stx-null? _%tl3064431108%_)
                       (_%__kont3886138862%_ _%hd3064331105%_)
                       (let () (declare (not safe)) (_%g3056430706%_)))))
               (let () (declare (not safe)) (_%g3056430706%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3057132014%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3057032011%_)
                                                           (let ((_%e3065131042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3057032011%_)))
                     (let ((_%tl3065331049%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3065131042%_)))
                           (_%hd3065231046%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3065131042%_))))
                       (if (gx#stx-pair? _%tl3065331049%_)
                           (let ((_%e3065431052%_
                                  (gx#syntax-e _%tl3065331049%_)))
                             (let ((_%tl3065631059%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3065431052%_)))
                                   (_%hd3065531056%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3065431052%_))))
                               (if (gx#stx-null? _%tl3065631059%_)
                                   (_%__kont3886338864%_
                                    _%hd3065531056%_
                                    _%hd3065231046%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3056430706%_)))))
                           (let () (declare (not safe)) (_%g3056430706%_)))))
                   (let () (declare (not safe)) (_%g3056430706%_)))
               (if (equal? _%e3057132014%_ 'class:)
                   (if (gx#stx-pair? _%tl3057032011%_)
                       (let ((_%e3066330983%_ (gx#syntax-e _%tl3057032011%_)))
                         (let ((_%tl3066530990%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3066330983%_)))
                               (_%hd3066430987%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3066330983%_))))
                           (if (gx#stx-pair? _%tl3066530990%_)
                               (let ((_%e3066630993%_
                                      (gx#syntax-e _%tl3066530990%_)))
                                 (let ((_%tl3066831000%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3066630993%_)))
                                       (_%hd3066730997%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3066630993%_))))
                                   (if (gx#stx-null? _%tl3066831000%_)
                                       (_%__kont3886538866%_
                                        _%hd3066730997%_
                                        _%hd3066430987%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3056430706%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3056430706%_)))))
                       (let () (declare (not safe)) (_%g3056430706%_)))
                   (if (equal? _%e3057132014%_ 'datum:)
                       (if (gx#stx-pair? _%tl3057032011%_)
                           (let ((_%e3067430890%_
                                  (gx#syntax-e _%tl3057032011%_)))
                             (let ((_%tl3067630897%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3067430890%_)))
                                   (_%hd3067530894%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3067430890%_))))
                               (if (gx#stx-null? _%tl3067630897%_)
                                   (_%__kont3886738868%_ _%hd3067530894%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3056430706%_)))))
                           (let () (declare (not safe)) (_%g3056430706%_)))
                       (if (equal? _%e3057132014%_ 'apply:)
                           (if (gx#stx-pair? _%tl3057032011%_)
                               (let ((_%e3068330800%_
                                      (gx#syntax-e _%tl3057032011%_)))
                                 (let ((_%tl3068530807%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3068330800%_)))
                                       (_%hd3068430804%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3068330800%_))))
                                   (if (gx#stx-pair? _%tl3068530807%_)
                                       (let ((_%e3068630810%_
                                              (gx#syntax-e _%tl3068530807%_)))
                                         (let ((_%tl3068830817%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3068630810%_)))
                                               (_%hd3068730814%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3068630810%_))))
                                           (if (gx#stx-null? _%tl3068830817%_)
                                               (_%__kont3886938870%_
                                                _%hd3068730814%_
                                                _%hd3068430804%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3056430706%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3056430706%_)))))
                               (let () (declare (not safe)) (_%g3056430706%_)))
                           (if (equal? _%e3057132014%_ 'var:)
                               (if (gx#stx-pair? _%tl3057032011%_)
                                   (let ((_%e3069430752%_
                                          (gx#syntax-e _%tl3057032011%_)))
                                     (let ((_%tl3069630759%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3069430752%_)))
                                           (_%hd3069530756%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3069430752%_))))
                                       (if (gx#stx-null? _%tl3069630759%_)
                                           (_%__kont3887138872%_
                                            _%hd3069530756%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3056430706%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3056430706%_)))
                               (if (equal? _%e3057132014%_ 'any:)
                                   (if (gx#stx-null? _%tl3057032011%_)
                                       (_%__kont3887338874%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3056430706%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3056430706%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3056430706%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3056430706%_))))))
                               _%g3052330534%_))))
                      (_%g3052132313%_ _%tgt30516%_))))
                 (_%generate-splice29258%_
                  (lambda (_%tgt29894%_
                           _%hd29896%_
                           _%rest29897%_
                           _%K29898%_
                           _%E29899%_)
                    (let* ((_%g2990129918%_
                            (lambda (_%g2990229914%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2990229914%_)))
                           (_%g2990030512%_
                            (lambda (_%g2990229922%_)
                              (if (gx#stx-pair/null? _%g2990229922%_)
                                  (let ((_g39995_
                                         (gx#syntax-split-splice
                                          _%g2990229922%_
                                          '0)))
                                    (begin
                                      (let ((_g39996_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39995_)
                                                   (##values-length _g39995_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39996_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39996_)))
                                      (let ((_%target2990429925%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39995_ 0)))
                                            (_%tl2990629928%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39995_ 1))))
                                        (if (gx#stx-null? _%tl2990629928%_)
                                            (letrec ((_%loop2990729931%_
                                                      (lambda (_%hd2990529935%_
                                                               _%var2991129938%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2990529935%_)
                                                            (let ((_%e2990829940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2990529935%_)))
                      (let ((_%lp-hd2990929944%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2990829940%_)))
                            (_%lp-tl2991029947%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2990829940%_))))
                        (_%loop2990729931%_
                         _%lp-tl2991029947%_
                         (cons _%lp-hd2990929944%_ _%var2991129938%_))))
                    (let ((_%var2991229950%_ (reverse _%var2991129938%_)))
                      ((lambda (_%g2990329953%_)
                         (let* ((_%g2996929986%_
                                 (lambda (_%g2997029982%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2997029982%_)))
                                (_%g2996830500%_
                                 (lambda (_%g2997029990%_)
                                   (if (gx#stx-pair/null? _%g2997029990%_)
                                       (let ((_g39997_
                                              (gx#syntax-split-splice
                                               _%g2997029990%_
                                               '0)))
                                         (begin
                                           (let ((_g39998_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39997_)
                                                        (##values-length
                                                         _g39997_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39998_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39998_)))
                                           (let ((_%target2997229993%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39997_ 0)))
                                                 (_%tl2997429996%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39997_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2997429996%_)
                                                 (letrec ((_%loop2997529999%_
                                                           (lambda (_%hd2997330003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2997930006%_)
                     (if (gx#stx-pair? _%hd2997330003%_)
                         (let ((_%e2997630008%_
                                (gx#syntax-e _%hd2997330003%_)))
                           (let ((_%lp-hd2997730012%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2997630008%_)))
                                 (_%lp-tl2997830015%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2997630008%_))))
                             (_%loop2997529999%_
                              _%lp-tl2997830015%_
                              (cons _%lp-hd2997730012%_ _%var-r2997930006%_))))
                         (let ((_%var-r2998030018%_
                                (reverse _%var-r2997930006%_)))
                           ((lambda (_%g2997130021%_)
                              (let* ((_%g3003830055%_
                                      (lambda (_%g3003930051%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g3003930051%_)))
                                     (_%g3003730488%_
                                      (lambda (_%g3003930059%_)
                                        (if (gx#stx-pair/null? _%g3003930059%_)
                                            (let ((_g39999_
                                                   (gx#syntax-split-splice
                                                    _%g3003930059%_
                                                    '0)))
                                              (begin
                                                (let ((_g40000_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39999_)
                                                             (##values-length
                                                              _g39999_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g40000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g40000_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target3004130062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39999_
                                                          0)))
                                                      (_%tl3004330065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39999_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl3004330065%_)
                                                      (letrec ((_%loop3004430068%_
                                                                (lambda (_%hd3004230072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init3004830075%_)
                          (if (gx#stx-pair? _%hd3004230072%_)
                              (let ((_%e3004530077%_
                                     (gx#syntax-e _%hd3004230072%_)))
                                (let ((_%lp-hd3004630081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3004530077%_)))
                                      (_%lp-tl3004730084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3004530077%_))))
                                  (_%loop3004430068%_
                                   _%lp-tl3004730084%_
                                   (cons _%lp-hd3004630081%_
                                         _%init3004830075%_))))
                              (let ((_%init3004930087%_
                                     (reverse _%init3004830075%_)))
                                ((lambda (_%g3004030090%_)
                                   (let* ((_%g3010730115%_
                                           (lambda (_%g3010830111%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3010830111%_)))
                                          (_%g3010630484%_
                                           (lambda (_%g3010830119%_)
                                             ((lambda (_%g3010930122%_)
                                                (let* ((_%g3013530143%_
                                                        (lambda (_%g3013630139%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3013630139%_)))
                                                       (_%g3013430480%_
                                                        (lambda (_%g3013630147%_)
                                                          ((lambda (_%g3013730150%_)
                                                             (let* ((_%g3016330171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3016430167%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3016430167%_)))
                            (_%g3016230476%_
                             (lambda (_%g3016430175%_)
                               ((lambda (_%g3016530178%_)
                                  (let* ((_%g3019130199%_
                                          (lambda (_%g3019230195%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3019230195%_)))
                                         (_%g3019030472%_
                                          (lambda (_%g3019230203%_)
                                            ((lambda (_%g3019330206%_)
                                               (let* ((_%g3021930227%_
                                                       (lambda (_%g3022030223%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3022030223%_)))
                                                      (_%g3021830468%_
                                                       (lambda (_%g3022030231%_)
                                                         ((lambda (_%g3022130234%_)
                                                            (let* ((_%g3024730255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3024830251%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3024830251%_)))
                           (_%g3024630464%_
                            (lambda (_%g3024830259%_)
                              ((lambda (_%g3024930262%_)
                                 (let* ((_%g3027530283%_
                                         (lambda (_%g3027630279%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3027630279%_)))
                                        (_%g3027430460%_
                                         (lambda (_%g3027630287%_)
                                           ((lambda (_%g3027730290%_)
                                              (let* ((_%g3030330311%_
                                                      (lambda (_%g3030430307%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3030430307%_)))
                                                     (_%g3030230445%_
                                                      (lambda (_%g3030430315%_)
                                                        ((lambda (_%g3030530318%_)
                                                           (let* ((_%g3033130339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3033230335%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3033230335%_)))
                          (_%g3033030433%_
                           (lambda (_%g3033230343%_)
                             ((lambda (_%g3033330346%_)
                                (let* ((_%g3035930367%_
                                        (lambda (_%g3036030363%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3036030363%_)))
                                       (_%g3035830429%_
                                        (lambda (_%g3036030371%_)
                                          ((lambda (_%g3036130374%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g3013730150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g3024930262%_
                                                     (foldr (lambda (_%g3038830399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3038930402%_)
                      (cons _%g3038830399%_ _%g3038930402%_))
                    '()
                    _%g2990329953%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g3027730290%_ '())))
                                   '()))
                       (cons (cons _%g3019330206%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g3022130234%_
                                                           (cons _%g3024930262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3039030405%_ _%g3039130408%_)
                                  (cons _%g3039030405%_ _%g3039130408%_))
                                '()
                                _%g2997130021%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3036130374%_
                                                           '())))
                                         '()))
                             (cons (cons _%g3016530178%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g3024930262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3039230411%_ _%g3039330414%_)
                                  (cons _%g3039230411%_ _%g3039330414%_))
                                '()
                                _%g2997130021%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g3024930262%_ '()))
                                     (cons (cons _%g3019330206%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3024930262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g3024930262%_
                     (foldr (lambda (_%g3039430417%_ _%g3039530420%_)
                              (cons _%g3039430417%_ _%g3039530420%_))
                            '()
                            _%g2997130021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3033330346%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g3016530178%_
                             (cons _%g3010930122%_
                                   (foldr (lambda (_%g3039630423%_
                                                   _%g3039730426%_)
                                            (cons _%g3039630423%_
                                                  _%g3039730426%_))
                                          '()
                                          _%g3004030090%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3036030371%_))))
                                  (_%g3035830429%_
                                   (_%generate129256%_
                                    _%g3022130234%_
                                    _%hd29896%_
                                    _%g3030530318%_
                                    _%g3033330346%_))))
                              _%g3033230343%_))))
                     (_%g3033030433%_
                      (cons _%g3013730150%_
                            (cons _%g3024930262%_
                                  (foldr (lambda (_%g3043630439%_
                                                  _%g3043730442%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3043630439%_
                                                             '()))
                                                 _%g3043730442%_))
                                         '()
                                         _%g2997130021%_))))))
                 _%g3030430315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3030230445%_
                                                 (cons _%g3016530178%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g3024930262%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g2997130021%_
                        _%g2990329953%_)
                       (foldr (lambda (_%g3044830452%_
                                       _%g3044930455%_
                                       _%g3045030457%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3044930455%_
                                                  (cons _%g3044830452%_ '())))
                                      _%g3045030457%_))
                              '()
                              _%g2997130021%_
                              _%g2990329953%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3027630287%_))))
                                   (_%g3027430460%_
                                    (_%generate129256%_
                                     _%g3024930262%_
                                     _%rest29897%_
                                     _%K29898%_
                                     _%E29899%_))))
                               _%g3024830259%_))))
                      (_%g3024630464%_ (gx#genident 'rest))))
                  _%g3022030231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3021830468%_
                                                  (gx#genident 'hd))))
                                             _%g3019230203%_))))
                                    (_%g3019030472%_
                                     (gx#genident 'splice-try))))
                                _%g3016430175%_))))
                       (_%g3016230476%_ (gx#genident 'splice-loop))))
                   _%g3013630147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3013430480%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3010830119%_))))
                                     (_%g3010630484%_ _%tgt29894%_)))
                                 _%init3004930087%_))))))
                (_%loop3004430068%_ _%target3004130062%_ '()))
              (_%g3003830055%_ _%g3003930059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g3003830055%_
                                             _%g3003930059%_)))))
                                (_%g3003730488%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3049130494%_
                                                   _%g3049230497%_)
                                            (cons _%g3049130494%_
                                                  _%g3049230497%_))
                                          '()
                                          _%g2990329953%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2998030018%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2997529999%_
                                                    _%target2997229993%_
                                                    '()))
                                                 (_%g2996929986%_
                                                  _%g2997029990%_)))))
                                       (_%g2996929986%_ _%g2997029990%_)))))
                           (_%g2996830500%_
                            (gx#gentemps
                             (foldr (lambda (_%g3050330506%_ _%g3050430509%_)
                                      (cons _%g3050330506%_ _%g3050430509%_))
                                    '()
                                    _%g2990329953%_)))))
                       _%var2991229950%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2990729931%_
                                               _%target2990429925%_
                                               '()))
                                            (_%g2990129918%_
                                             _%g2990229922%_)))))
                                  (_%g2990129918%_ _%g2990229922%_)))))
                      (_%g2990030512%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29896%_)))))
                 (_%generate-simple-vector29259%_
                  (lambda (_%tgt29717%_
                           _%body29719%_
                           _%start29720%_
                           _%ref29721%_
                           _%K29722%_
                           _%E29723%_)
                    (let _%recur29725%_ ((_%rest29728%_ _%body29719%_)
                                         (_%off29730%_ _%start29720%_))
                      (let* ((_%__stx3919839199%_ _%rest29728%_)
                             (_%g2973329745%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3919839199%_))))
                        (let ((_%__kont3920139202%_
                               (lambda (_%g2973529773%_ _%g2973629775%_)
                                 (let* ((_%g2979029813%_
                                         (lambda (_%g2979129809%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2979129809%_)))
                                        (_%g2978929886%_
                                         (lambda (_%g2979129817%_)
                                           (if (gx#stx-pair? _%g2979129817%_)
                                               (let ((_%e2979629820%_
                                                      (gx#syntax-e
                                                       _%g2979129817%_)))
                                                 (let ((_%hd2979729824%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2979629820%_)))
                                                       (_%tl2979829827%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2979629820%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2979829827%_)
                                                       (let ((_%e2979929830%_
                                                              (gx#syntax-e
                                                               _%tl2979829827%_)))
                                                         (let ((_%hd2980029834%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2979929830%_)))
                       (_%tl2980129837%_
                        (let () (declare (not safe)) (##cdr _%e2979929830%_))))
                   (if (gx#stx-pair? _%tl2980129837%_)
                       (let ((_%e2980229840%_ (gx#syntax-e _%tl2980129837%_)))
                         (let ((_%hd2980329844%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2980229840%_)))
                               (_%tl2980429847%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2980229840%_))))
                           (if (gx#stx-pair? _%tl2980429847%_)
                               (let ((_%e2980529850%_
                                      (gx#syntax-e _%tl2980429847%_)))
                                 (let ((_%hd2980629854%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2980529850%_)))
                                       (_%tl2980729857%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2980529850%_))))
                                   (if (gx#stx-null? _%tl2980729857%_)
                                       ((lambda (_%g2979229860%_
                                                 _%g2979329862%_
                                                 _%g2979429863%_
                                                 _%g2979529864%_)
                                          (cons 'let
                                                (cons (cons (cons _%g2979529864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g2979229860%_
                                      (cons _%g2979429863%_
                                            (cons _%g2979329862%_ '())))
                                '()))
                    '())
              (cons (_%generate129256%_
                     _%g2979529864%_
                     _%g2973629775%_
                     (_%recur29725%_ _%g2973529773%_ (fx1+ _%off29730%_))
                     _%E29723%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2980629854%_
                                        _%hd2980329844%_
                                        _%hd2980029834%_
                                        _%hd2979729824%_)
                                       (_%g2979029813%_ _%g2979129817%_))))
                               (_%g2979029813%_ _%g2979129817%_))))
                       (_%g2979029813%_ _%g2979129817%_))))
               (_%g2979029813%_ _%g2979129817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2979029813%_
                                                _%g2979129817%_)))))
                                   (_%g2978929886%_
                                    (list (gx#genident 'e)
                                          _%tgt29717%_
                                          _%off29730%_
                                          _%ref29721%_)))))
                              (_%__kont3920339204%_ (lambda () _%K29722%_)))
                          (if (gx#stx-pair? _%__stx3919839199%_)
                              (let ((_%e2973729763%_
                                     (gx#syntax-e _%__stx3919839199%_)))
                                (let ((_%tl2973929770%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2973729763%_)))
                                      (_%hd2973829767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2973729763%_))))
                                  (_%__kont3920139202%_
                                   _%tl2973929770%_
                                   _%hd2973829767%_)))
                              (_%__kont3920339204%_)))))))
                 (_%generate-list-vector29260%_
                  (lambda (_%tgt29609%_
                           _%body29611%_
                           _%->list29612%_
                           _%K29613%_
                           _%E29614%_)
                    (let* ((_%g2961629624%_
                            (lambda (_%g2961729620%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2961729620%_)))
                           (_%g2961529713%_
                            (lambda (_%g2961729628%_)
                              ((lambda (_%g2961829631%_)
                                 (let* ((_%g2964329651%_
                                         (lambda (_%g2964429647%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2964429647%_)))
                                        (_%g2964229709%_
                                         (lambda (_%g2964429655%_)
                                           ((lambda (_%g2964529658%_)
                                              (let* ((_%g2967129679%_
                                                      (lambda (_%g2967229675%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2967229675%_)))
                                                     (_%g2967029701%_
                                                      (lambda (_%g2967229683%_)
                                                        ((lambda (_%g2967329686%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g2961829631%_
                                           (cons _%g2967329686%_ '()))
                                     '())
                               (cons (_%generate129256%_
                                      _%g2961829631%_
                                      _%body29611%_
                                      _%K29613%_
                                      _%E29614%_)
                                     '()))))
                 _%g2967229683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2967029701%_
                                                 (let ((_%$e29705%_
                                                        _%->list29612%_))
                                                   (if (eq? 'values->list
                                                            _%$e29705%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g2964529658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29705%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g2964529658%_ '()))
                   (if (eq? 'struct->list _%$e29705%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g2964529658%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29249%_
                        _%->list29612%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2964429655%_))))
                                   (_%g2964229709%_ _%tgt29609%_)))
                               _%g2961729628%_))))
                      (_%g2961529713%_ (gx#genident 'e)))))
                 (_%generate-struct29261%_
                  (lambda (_%info29480%_
                           _%tgt29482%_
                           _%body29483%_
                           _%K29484%_
                           _%E29485%_)
                    (let* ((_%__stx3921439215%_ _%body29483%_)
                           (_%g2948829511%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3921439215%_))))
                      (let ((_%__kont3921739218%_
                             (lambda (_%g2949029588%_)
                               (let ((_%fields29602%_
                                      (_%struct-field-accessors29263%_
                                       _%info29480%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39968
                                                          _%info29480%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39968
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39968
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39968
                                                          'predicate)))
                                                   (cons _%tgt29482%_ '()))
                                             (cons (_%generate-simple-struct-body29262%_
                                                    _%info29480%_
                                                    _%tgt29482%_
                                                    _%g2949029588%_
                                                    _%K29484%_
                                                    _%E29485%_)
                                                   (cons _%E29485%_ '())))))))
                            (_%__kont3921939220%_
                             (lambda (_%g2949829542%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39969
                                                        _%info29480%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39969
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39969
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39969
                                                        'predicate)))
                                                 (cons _%tgt29482%_ '()))
                                           (cons (_%generate-list-vector29260%_
                                                  _%tgt29482%_
                                                  _%g2949829542%_
                                                  'struct->list
                                                  _%K29484%_
                                                  _%E29485%_)
                                                 (cons _%E29485%_ '())))))))
                        (if (gx#stx-pair? _%__stx3921439215%_)
                            (let ((_%e2949129564%_
                                   (gx#syntax-e _%__stx3921439215%_)))
                              (let ((_%tl2949329571%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2949129564%_)))
                                    (_%hd2949229568%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2949129564%_))))
                                (if (gx#stx-datum? _%hd2949229568%_)
                                    (let ((_%e2949429574%_
                                           (gx#stx-e _%hd2949229568%_)))
                                      (if (equal? _%e2949429574%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2949329571%_)
                                              (let ((_%e2949529578%_
                                                     (gx#syntax-e
                                                      _%tl2949329571%_)))
                                                (let ((_%tl2949729585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2949529578%_)))
                                                      (_%hd2949629582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2949529578%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2949729585%_)
                                                      (_%__kont3921739218%_
                                                       _%hd2949629582%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2948829511%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2948829511%_)))
                                          (if (equal? _%e2949429574%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2949329571%_)
                                                  (let ((_%e2950329532%_
                                                         (gx#syntax-e
                                                          _%tl2949329571%_)))
                                                    (let ((_%tl2950529539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2950329532%_)))
                                                          (_%hd2950429536%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2950329532%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2950529539%_)
                                                          (_%__kont3921939220%_
                                                           _%hd2950429536%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2948829511%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2948829511%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2948829511%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2948829511%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2948829511%_)))))))
                 (_%generate-simple-struct-body29262%_
                  (lambda (_%info29400%_
                           _%tgt29402%_
                           _%body29403%_
                           _%K29404%_
                           _%E29405%_)
                    (let _%recur29407%_ ((_%rest29410%_ _%body29403%_)
                                         (_%fields29412%_
                                          (_%struct-field-accessors29263%_
                                           _%info29400%_)))
                      (let* ((_%__stx3926439265%_ _%rest29410%_)
                             (_%g2941529427%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3926439265%_))))
                        (let ((_%__kont3926739268%_
                               (lambda (_%g2941729455%_ _%g2941829457%_)
                                 (if (null? _%fields29412%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29249%_
                                      _%info29400%_
                                      (let ((__obj39970 _%info29400%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39970
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39970
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39970
                                             'name))))
                                     (let ((_%$tgt29472%_ (gx#genident 'e))
                                           (_%getf29474%_
                                            (car _%fields29412%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29472%_
                                                               (cons (cons _%getf29474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29402%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129256%_
                                                          _%$tgt29472%_
                                                          _%g2941829457%_
                                                          (_%recur29407%_
                                                           _%g2941729455%_
                                                           (cdr _%fields29412%_))
                                                          _%E29405%_)
                                                         '())))))))
                              (_%__kont3926939270%_ (lambda () _%K29404%_)))
                          (if (gx#stx-pair? _%__stx3926439265%_)
                              (let ((_%e2941929445%_
                                     (gx#syntax-e _%__stx3926439265%_)))
                                (let ((_%tl2942129452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2941929445%_)))
                                      (_%hd2942029449%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2941929445%_))))
                                  (_%__kont3926739268%_
                                   _%tl2942129452%_
                                   _%hd2942029449%_)))
                              (_%__kont3926939270%_)))))))
                 (_%struct-field-accessors29263%_
                  (lambda (_%info29381%_)
                    (let _%recur29384%_ ((_%next29387%_
                                          (cons _%info29381%_ '())))
                      (if (null? _%next29387%_)
                          '()
                          (let ((_%ti29390%_ (car _%next29387%_)))
                            (let ((__tmp40002
                                   (_%recur29384%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39971 _%ti29390%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39971
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39971
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39971
                                                'super))))))
                                  (__tmp40001
                                   (map (lambda (_%slot29393%_)
                                          (let ((_%$e29396%_
                                                 (agetq _%slot29393%_
                                                        (let ((__obj39972
                                                               _%ti29390%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39972
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39972 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39972
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29396%_
                                                _%$e29396%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29249%_
                                                 _%info29381%_
                                                 _%slot29393%_))))
                                        (let ((__obj39973 _%ti29390%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39973
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39973
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39973
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40002 __tmp40001)))))))
                 (_%generate-class29264%_
                  (lambda (_%info29374%_
                           _%tgt29376%_
                           _%body29377%_
                           _%K29378%_
                           _%E29379%_)
                    (cons 'if
                          (cons (cons (let ((__obj39974 _%info29374%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39974
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39974
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39974
                                             'predicate)))
                                      (cons _%tgt29376%_ '()))
                                (cons (_%generate-class-body29265%_
                                       _%info29374%_
                                       _%tgt29376%_
                                       _%body29377%_
                                       _%K29378%_
                                       _%E29379%_)
                                      (cons _%E29379%_ '()))))))
                 (_%generate-class-body29265%_
                  (lambda (_%info29267%_
                           _%tgt29269%_
                           _%body29270%_
                           _%K29271%_
                           _%E29272%_)
                    (let _%recur29274%_ ((_%rest29277%_ _%body29270%_))
                      (let* ((_%__stx3928039281%_ _%rest29277%_)
                             (_%g2928129297%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3928039281%_))))
                        (let ((_%__kont3928339284%_
                               (lambda (_%g2928329335%_
                                        _%g2928429337%_
                                        _%g2928529338%_)
                                 (let ((_%$e29358%_
                                        (agetq (let ((__tmp40003
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2928529338%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp40003))
                                               (let ((__obj39975
                                                      _%info29267%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39975
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39975
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39975
                                                      'unchecked-accessors))))))
                                   (if _%$e29358%_
                                       ((lambda (_%getf29362%_)
                                          (let ((_%$tgt29365%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29362%_ (cons _%tgt29269%_ '()))
                                  '()))
                      '())
                (cons (_%generate129256%_
                       _%$tgt29365%_
                       _%g2928429337%_
                       (_%recur29274%_ _%g2928329335%_)
                       _%E29272%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29358%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29249%_
                                        _%info29267%_
                                        _%g2928529338%_)))))
                              (_%__kont3928539286%_ (lambda () _%K29271%_)))
                          (if (gx#stx-pair? _%__stx3928039281%_)
                              (let ((_%e2928629315%_
                                     (gx#syntax-e _%__stx3928039281%_)))
                                (let ((_%tl2928829322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2928629315%_)))
                                      (_%hd2928729319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2928629315%_))))
                                  (if (gx#stx-pair? _%tl2928829322%_)
                                      (let ((_%e2928929325%_
                                             (gx#syntax-e _%tl2928829322%_)))
                                        (let ((_%tl2929129332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2928929325%_)))
                                              (_%hd2929029329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2928929325%_))))
                                          (_%__kont3928339284%_
                                           _%tl2929129332%_
                                           _%hd2929029329%_
                                           _%hd2928729319%_)))
                                      (_%__kont3928539286%_))))
                              (_%__kont3928539286%_))))))))
          (_%generate129256%_
           _%tgt29251%_
           _%ptree29252%_
           _%K29253%_
           _%E29254%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28068%_ _%tgt-lst28070%_ _%clauses28071%_)
        (letrec ((_%parse-body28073%_
                  (lambda (_%hd-len29071%_)
                    (let _%lp29074%_ ((_%rest29077%_ _%clauses28071%_)
                                      (_%r29079%_ '()))
                      (let* ((_%__stx3933039331%_ _%rest29077%_)
                             (_%g2908229094%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3933039331%_))))
                        (let ((_%__kont3933339334%_
                               (lambda (_%g2908429122%_ _%g2908529124%_)
                                 (let* ((_%__stx3930239303%_ _%g2908529124%_)
                                        (_%g2914129157%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3930239303%_))))
                                   (let ((_%__kont3930539306%_
                                          (lambda (_%g2914329226%_)
                                            (if (gx#stx-null? _%g2908429122%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2914329226%_)
                                 (let ((_%$e29237%_
                                        (gx#stx-source _%g2908529124%_)))
                                   (if _%$e29237%_
                                       _%$e29237%_
                                       (gx#stx-source _%stx28068%_))))
                                '())))
              _%r29079%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28068%_
                                                 _%g2908529124%_))))
                                         (_%__kont3930739308%_
                                          (lambda (_%g2914729185%_
                                                   _%g2914829187%_)
                                            (_%lp29074%_
                                             _%g2908429122%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2919929201%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2919929201%_
                           _%stx28068%_))
                        _%g2914829187%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2914729185%_)
                              (let ((_%$e29205%_
                                     (gx#stx-source _%g2908529124%_)))
                                (if _%$e29205%_
                                    _%$e29205%_
                                    (gx#stx-source _%stx28068%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29079%_))))
                                         (_%__kont3930939310%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28068%_
                                             _%g2908529124%_))))
                                     (let* ((_%__match3932739328%_
                                             (lambda (_%e2914929175%_
                                                      _%hd2915029179%_
                                                      _%tl2915129182%_)
                                               (let ((_%g2914729185%_
                                                      _%tl2915129182%_)
                                                     (_%g2914829187%_
                                                      _%hd2915029179%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2914829187%_)
                                                          (fx= (gx#stx-length
                                                                _%g2914829187%_)
                                                               _%hd-len29071%_)
                                                          (gx#stx-list?
                                                           _%g2914729185%_)
                                                          (not (gx#stx-null?
                                                                _%g2914729185%_)))
                                                     (_%__kont3930739308%_
                                                      _%g2914729185%_
                                                      _%g2914829187%_)
                                                     (_%__kont3930939310%_)))))
                                            (_%__match3932139322%_
                                             (lambda (_%e2914429216%_
                                                      _%hd2914529220%_
                                                      _%tl2914629223%_)
                                               (let ((_%g2914329226%_
                                                      _%tl2914629223%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2914329226%_)
                                                          (not (gx#stx-null?
                                                                _%g2914329226%_)))
                                                     (_%__kont3930539306%_
                                                      _%g2914329226%_)
                                                     (_%__match3932739328%_
                                                      _%e2914429216%_
                                                      _%hd2914529220%_
                                                      _%tl2914629223%_))))))
                                       (if (gx#stx-pair? _%__stx3930239303%_)
                                           (let ((_%e2914429216%_
                                                  (gx#syntax-e
                                                   _%__stx3930239303%_)))
                                             (let ((_%tl2914629223%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2914429216%_)))
                                                   (_%hd2914529220%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2914429216%_))))
                                               (if (gx#identifier?
                                                    _%hd2914529220%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40004_|
                                                        _%hd2914529220%_)
                                                       (_%__match3932139322%_
                                                        _%e2914429216%_
                                                        _%hd2914529220%_
                                                        _%tl2914629223%_)
                                                       (_%__match3932739328%_
                                                        _%e2914429216%_
                                                        _%hd2914529220%_
                                                        _%tl2914629223%_))
                                                   (_%__match3932739328%_
                                                    _%e2914429216%_
                                                    _%hd2914529220%_
                                                    _%tl2914629223%_))))
                                           (_%__kont3930939310%_)))))))
                              (_%__kont3933539336%_ (lambda () _%r29079%_)))
                          (if (gx#stx-pair? _%__stx3933039331%_)
                              (let ((_%e2908629112%_
                                     (gx#syntax-e _%__stx3933039331%_)))
                                (let ((_%tl2908829119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2908629112%_)))
                                      (_%hd2908729116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2908629112%_))))
                                  (_%__kont3933339334%_
                                   _%tl2908829119%_
                                   _%hd2908729116%_)))
                              (_%__kont3933539336%_)))))))
                 (_%generate-body28075%_
                  (lambda (_%body28777%_)
                    (let* ((_%g2878028788%_
                            (lambda (_%g2878128784%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2878128784%_)))
                           (_%g2877929067%_
                            (lambda (_%g2878128792%_)
                              ((lambda (_%g2878228795%_)
                                 (let* ((_%g2880728824%_
                                         (lambda (_%g2880828820%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2880828820%_)))
                                        (_%g2880629063%_
                                         (lambda (_%g2880828828%_)
                                           (if (gx#stx-pair/null?
                                                _%g2880828828%_)
                                               (let ((_g40005_
                                                      (gx#syntax-split-splice
                                                       _%g2880828828%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40006_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40005_)
                        (##values-length _g40005_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40006_ 2)))
                 (error "Context expects 2 values" _g40006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2881028831%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40005_
                                                             0)))
                                                         (_%tl2881228834%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40005_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2881228834%_)
                                                         (letrec ((_%loop2881328837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2881128841%_ _%target2881728844%_)
                             (if (gx#stx-pair? _%hd2881128841%_)
                                 (let ((_%e2881428846%_
                                        (gx#syntax-e _%hd2881128841%_)))
                                   (let ((_%lp-hd2881528850%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2881428846%_)))
                                         (_%lp-tl2881628853%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2881428846%_))))
                                     (_%loop2881328837%_
                                      _%lp-tl2881628853%_
                                      (cons _%lp-hd2881528850%_
                                            _%target2881728844%_))))
                                 (let ((_%target2881828856%_
                                        (reverse _%target2881728844%_)))
                                   ((lambda (_%g2880928859%_)
                                      (let* ((_%g2887628893%_
                                              (lambda (_%g2887728889%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2887728889%_)))
                                             (_%g2887529059%_
                                              (lambda (_%g2887728897%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2887728897%_)
                                                    (let ((_g40007_
                                                           (gx#syntax-split-splice
                                                            _%g2887728897%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g40008_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g40007_)
                             (##values-length _g40007_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g40008_ 2)))
                      (error "Context expects 2 values" _g40008_)))
                (let ((_%target2887928900%_
                       (let () (declare (not safe)) (##values-ref _g40007_ 0)))
                      (_%tl2888128903%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g40007_ 1))))
                  (if (gx#stx-null? _%tl2888128903%_)
                      (letrec ((_%loop2888228906%_
                                (lambda (_%hd2888028910%_
                                         _%fail-diagnostic2888628913%_)
                                  (if (gx#stx-pair? _%hd2888028910%_)
                                      (let ((_%e2888328915%_
                                             (gx#syntax-e _%hd2888028910%_)))
                                        (let ((_%lp-hd2888428919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2888328915%_)))
                                              (_%lp-tl2888528922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2888328915%_))))
                                          (_%loop2888228906%_
                                           _%lp-tl2888528922%_
                                           (cons _%lp-hd2888428919%_
                                                 _%fail-diagnostic2888628913%_))))
                                      (let ((_%fail-diagnostic2888728925%_
                                             (reverse _%fail-diagnostic2888628913%_)))
                                        ((lambda (_%g2887828928%_)
                                           (let* ((_%g2894528953%_
                                                   (lambda (_%g2894628949%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2894628949%_)))
                                                  (_%g2894429039%_
                                                   (lambda (_%g2894628957%_)
                                                     ((lambda (_%g2894728960%_)
                                                        (let* ((_%g2897328981%_
                                                                (lambda (_%g2897428977%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2897428977%_)))
                       (_%g2897229035%_
                        (lambda (_%g2897428985%_)
                          ((lambda (_%g2897528988%_)
                             (let* ((_%g2900129009%_
                                     (lambda (_%g2900229005%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2900229005%_)))
                                    (_%g2900029031%_
                                     (lambda (_%g2900229013%_)
                                       ((lambda (_%g2900329016%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g2900329016%_
                                                            '()))))
                                        _%g2900229013%_))))
                               (_%g2900029031%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g2878228795%_
                                                         (cons _%g2894728960%_
                                                               '()))
                                                   '())
                                             (cons _%g2897528988%_ '())))
                                 (gx#stx-source _%stx28068%_)))))
                           _%g2897428985%_))))
                  (_%g2897229035%_
                   (_%generate-clauses28076%_
                    _%body28777%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g2878228795%_ '()) '())))))))
              _%g2894628957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2894429039%_
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
                                     (foldr (lambda (_%g2904229047%_
                                                     _%g2904329050%_)
                                              (cons _%g2904229047%_
                                                    _%g2904329050%_))
                                            (foldr (lambda (_%g2904429053%_
                                                            _%g2904529056%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2904429053%_ '()))
                   _%g2904529056%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g2887828928%_)
                                            _%g2880928859%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28068%_)))))
                                         _%fail-diagnostic2888728925%_))))))
                        (_%loop2888228906%_ _%target2887928900%_ '()))
                      (_%g2887628893%_ _%g2887728897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2887628893%_
                                                     _%g2887728897%_)))))
                                        (_%g2887529059%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28071%_))))
                                    _%target2881828856%_))))))
                   (_%loop2881328837%_ _%target2881028831%_ '()))
                 (_%g2880728824%_ _%g2880828828%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2880728824%_
                                                _%g2880828828%_)))))
                                   (_%g2880629063%_ _%tgt-lst28070%_)))
                               _%g2878128792%_))))
                      (_%g2877929067%_ (gx#genident 'E)))))
                 (_%generate-clauses28076%_
                  (lambda (_%rest28429%_ _%E28431%_)
                    (let* ((_%__stx3934639347%_ _%rest28429%_)
                           (_%g2843528451%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3934639347%_))))
                      (let ((_%__kont3934939350%_
                             (lambda (_%g2843728685%_)
                               (let* ((_%g2869628714%_
                                       (lambda (_%g2869728710%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2869728710%_)))
                                      (_%g2869528769%_
                                       (lambda (_%g2869728718%_)
                                         (if (gx#stx-pair? _%g2869728718%_)
                                             (let ((_%e2870028721%_
                                                    (gx#syntax-e
                                                     _%g2869728718%_)))
                                               (let ((_%hd2870128725%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2870028721%_)))
                                                     (_%tl2870228728%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2870028721%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2870228728%_)
                                                     (let ((_%e2870328731%_
                                                            (gx#syntax-e
                                                             _%tl2870228728%_)))
                                                       (let ((_%hd2870428735%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2870328731%_)))
                     (_%tl2870528738%_
                      (let () (declare (not safe)) (##cdr _%e2870328731%_))))
                 (if (gx#stx-pair? _%tl2870528738%_)
                     (let ((_%e2870628741%_ (gx#syntax-e _%tl2870528738%_)))
                       (let ((_%hd2870728745%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2870628741%_)))
                             (_%tl2870828748%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2870628741%_))))
                         (if (gx#stx-null? _%tl2870828748%_)
                             ((lambda (_%g2869828751%_ _%g2869928753%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g2869928753%_)
                                                      (_%generate128077%_
                                                       _%g2869928753%_
                                                       _%g2869828751%_
                                                       _%E28431%_)
                                                      _%g2869828751%_)
                                                  '()))))
                              _%hd2870728745%_
                              _%hd2870428735%_)
                             (_%g2869628714%_ _%g2869728718%_))))
                     (_%g2869628714%_ _%g2869728718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2869628714%_
                                                      _%g2869728718%_))))
                                             (_%g2869628714%_
                                              _%g2869728718%_)))))
                                 (_%g2869528769%_ _%g2843728685%_))))
                            (_%__kont3935139352%_
                             (lambda (_%g2844128479%_ _%g2844228481%_)
                               (let* ((_%g2849428513%_
                                       (lambda (_%g2849528509%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2849528509%_)))
                                      (_%g2849328664%_
                                       (lambda (_%g2849528517%_)
                                         (if (gx#stx-pair? _%g2849528517%_)
                                             (let ((_%e2849928520%_
                                                    (gx#syntax-e
                                                     _%g2849528517%_)))
                                               (let ((_%hd2850028524%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2849928520%_)))
                                                     (_%tl2850128527%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2849928520%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2850128527%_)
                                                     (let ((_%e2850228530%_
                                                            (gx#syntax-e
                                                             _%tl2850128527%_)))
                                                       (let ((_%hd2850328534%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2850228530%_)))
                     (_%tl2850428537%_
                      (let () (declare (not safe)) (##cdr _%e2850228530%_))))
                 (if (gx#stx-pair? _%tl2850428537%_)
                     (let ((_%e2850528540%_ (gx#syntax-e _%tl2850428537%_)))
                       (let ((_%hd2850628544%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2850528540%_)))
                             (_%tl2850728547%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2850528540%_))))
                         (if (gx#stx-null? _%tl2850728547%_)
                             ((lambda (_%g2849628550%_
                                       _%g2849728552%_
                                       _%g2849828553%_)
                                (if (gx#stx-e _%g2849728552%_)
                                    (let* ((_%g2857028585%_
                                            (lambda (_%g2857128581%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2857128581%_)))
                                           (_%g2856928630%_
                                            (lambda (_%g2857128589%_)
                                              (if (gx#stx-pair?
                                                   _%g2857128589%_)
                                                  (let ((_%e2857428592%_
                                                         (gx#syntax-e
                                                          _%g2857128589%_)))
                                                    (let ((_%hd2857528596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2857428592%_)))
                                                          (_%tl2857628599%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2857428592%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2857628599%_)
                                                          (let ((_%e2857728602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2857628599%_)))
                    (let ((_%hd2857828606%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2857728602%_)))
                          (_%tl2857928609%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2857728602%_))))
                      (if (gx#stx-null? _%tl2857928609%_)
                          ((lambda (_%g2857228612%_ _%g2857328614%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g2849828553%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g2857328614%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g2857228612%_ '()))))
                           _%hd2857828606%_
                           _%hd2857528596%_)
                          (_%g2857028585%_ _%g2857128589%_))))
                  (_%g2857028585%_ _%g2857128589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2857028585%_
                                                   _%g2857128589%_)))))
                                      (_%g2856928630%_
                                       (list (_%generate128077%_
                                              _%g2849728552%_
                                              _%g2849628550%_
                                              _%E28431%_)
                                             (_%generate-clauses28076%_
                                              _%g2844128479%_
                                              (cons _%g2849828553%_ '())))))
                                    (let* ((_%g2863428642%_
                                            (lambda (_%g2863528638%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2863528638%_)))
                                           (_%g2863328660%_
                                            (lambda (_%g2863528646%_)
                                              ((lambda (_%g2863628649%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g2849828553%_
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
                             (cons _%g2849628550%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g2863628649%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2863528646%_))))
                                      (_%g2863328660%_
                                       (_%generate-clauses28076%_
                                        _%g2844128479%_
                                        (cons _%g2849828553%_ '()))))))
                              _%hd2850628544%_
                              _%hd2850328534%_
                              _%hd2850028524%_)
                             (_%g2849428513%_ _%g2849528517%_))))
                     (_%g2849428513%_ _%g2849528517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2849428513%_
                                                      _%g2849528517%_))))
                                             (_%g2849428513%_
                                              _%g2849528517%_)))))
                                 (_%g2849328664%_ _%g2844228481%_))))
                            (_%__kont3935339354%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28431%_ '()))))))
                        (if (gx#stx-pair? _%__stx3934639347%_)
                            (let ((_%e2843828675%_
                                   (gx#syntax-e _%__stx3934639347%_)))
                              (let ((_%tl2844028682%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2843828675%_)))
                                    (_%hd2843928679%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2843828675%_))))
                                (if (gx#stx-null? _%tl2844028682%_)
                                    (_%__kont3934939350%_ _%hd2843928679%_)
                                    (_%__kont3935139352%_
                                     _%tl2844028682%_
                                     _%hd2843928679%_))))
                            (_%__kont3935339354%_))))))
                 (_%generate128077%_
                  (lambda (_%clause28079%_ _%body28081%_ _%E28082%_)
                    (let* ((_%g2808428108%_
                            (lambda (_%g2808528104%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2808528104%_)))
                           (_%g2808328425%_
                            (lambda (_%g2808528112%_)
                              (if (gx#stx-pair? _%g2808528112%_)
                                  (let ((_%e2808828115%_
                                         (gx#syntax-e _%g2808528112%_)))
                                    (let ((_%hd2808928119%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2808828115%_)))
                                          (_%tl2809028122%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2808828115%_))))
                                      (if (gx#stx-pair? _%tl2809028122%_)
                                          (let ((_%e2809128125%_
                                                 (gx#syntax-e
                                                  _%tl2809028122%_)))
                                            (let ((_%hd2809228129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2809128125%_)))
                                                  (_%tl2809328132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2809128125%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2809228129%_)
                                                  (let ((_g40009_
                                                         (gx#syntax-split-splice
                                                          _%hd2809228129%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40010_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40009_)
                           (##values-length _g40009_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40010_ 2)))
                    (error "Context expects 2 values" _g40010_)))
              (let ((_%target2809428135%_
                     (let () (declare (not safe)) (##values-ref _g40009_ 0)))
                    (_%tl2809628138%_
                     (let () (declare (not safe)) (##values-ref _g40009_ 1))))
                (if (gx#stx-null? _%tl2809628138%_)
                    (letrec ((_%loop2809728141%_
                              (lambda (_%hd2809528145%_ _%var2810128148%_)
                                (if (gx#stx-pair? _%hd2809528145%_)
                                    (let ((_%e2809828150%_
                                           (gx#syntax-e _%hd2809528145%_)))
                                      (let ((_%lp-hd2809928154%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2809828150%_)))
                                            (_%lp-tl2810028157%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2809828150%_))))
                                        (_%loop2809728141%_
                                         _%lp-tl2810028157%_
                                         (cons _%lp-hd2809928154%_
                                               _%var2810128148%_))))
                                    (let ((_%var2810228160%_
                                           (reverse _%var2810128148%_)))
                                      (if (gx#stx-null? _%tl2809328132%_)
                                          ((lambda (_%g2808628163%_
                                                    _%g2808728165%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2818628189%_
                                                                _%g2818728192%_)
                                                         (cons _%g2818628189%_
                                                               _%g2818728192%_))
                                                       '()
                                                       _%g2808628163%_)
                                                _%stx28068%_)
                                               (let* ((_%g2819528203%_
                                                       (lambda (_%g2819628199%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2819628199%_)))
                                                      (_%g2819428297%_
                                                       (lambda (_%g2819628207%_)
                                                         ((lambda (_%g2819728210%_)
                                                            (let* ((_%g2822328231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2822428227%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2822428227%_)))
                           (_%g2822228293%_
                            (lambda (_%g2822428235%_)
                              ((lambda (_%g2822528238%_)
                                 (let* ((_%g2825128259%_
                                         (lambda (_%g2825228255%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2825228255%_)))
                                        (_%g2825028281%_
                                         (lambda (_%g2825228263%_)
                                           ((lambda (_%g2825328266%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g2808728165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2825328266%_ '()))
                   (cons _%g2819728210%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28068%_)))
                                            _%g2825228263%_))))
                                   (_%g2825028281%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2828428287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2828528290%_)
                  (cons _%g2828428287%_ _%g2828528290%_))
                '()
                _%g2808628163%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g2822528238%_ '())))
                                     (gx#stx-source _%stx28068%_)))))
                               _%g2822428235%_))))
                      (_%g2822228293%_ _%body28081%_)))
                  _%g2819628207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2819428297%_
                                                  (let _%recur28301%_ ((_%rest28304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28079%_)
                               (_%rest-targets28306%_ _%tgt-lst28070%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3937239373%_
                                                            _%rest28304%_)
                                                           (_%g2830928321%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3937239373%_))))
                                                      (let ((_%__kont3937539376%_
                                                             (lambda (_%g2831128357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2831228359%_)
                       (let* ((_%g2837428386%_
                               (lambda (_%g2837528382%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2837528382%_)))
                              (_%g2837328417%_
                               (lambda (_%g2837528390%_)
                                 (if (gx#stx-pair? _%g2837528390%_)
                                     (let ((_%e2837828393%_
                                            (gx#syntax-e _%g2837528390%_)))
                                       (let ((_%hd2837928397%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2837828393%_)))
                                             (_%tl2838028400%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2837828393%_))))
                                         ((lambda (_%g2837628403%_
                                                   _%g2837728405%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28068%_
                                             _%g2837728405%_
                                             _%g2831228359%_
                                             (_%recur28301%_
                                              _%g2831128357%_
                                              _%g2837628403%_)
                                             _%E28082%_))
                                          _%tl2838028400%_
                                          _%hd2837928397%_)))
                                     (_%g2837428386%_ _%g2837528390%_)))))
                         (_%g2837328417%_ _%rest-targets28306%_))))
                    (_%__kont3937739378%_
                     (lambda ()
                       (cons _%g2808728165%_
                             (foldr (lambda (_%g2833128334%_ _%g2833228337%_)
                                      (cons _%g2833128334%_ _%g2833228337%_))
                                    '()
                                    _%g2808628163%_)))))
                (if (gx#stx-pair? _%__stx3937239373%_)
                    (let ((_%e2831328347%_ (gx#syntax-e _%__stx3937239373%_)))
                      (let ((_%tl2831528354%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2831328347%_)))
                            (_%hd2831428351%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2831328347%_))))
                        (_%__kont3937539376%_
                         _%tl2831528354%_
                         _%hd2831428351%_)))
                    (_%__kont3937739378%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2810228160%_
                                           _%hd2808928119%_)
                                          (_%g2808428108%_
                                           _%g2808528112%_)))))))
                      (_%loop2809728141%_ _%target2809428135%_ '()))
                    (_%g2808428108%_ _%g2808528112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2808428108%_
                                                   _%g2808528112%_))))
                                          (_%g2808428108%_ _%g2808528112%_))))
                                  (_%g2808428108%_ _%g2808528112%_)))))
                      (_%g2808328425%_
                       (list (gx#genident 'K)
                             (let ((__tmp40011
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28079%_)))
                               (declare (not safe))
                               (##apply append __tmp40011))))))))
          (_%generate-body28075%_
           (_%parse-body28073%_ (gx#stx-length _%tgt-lst28070%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27970%_ _%tgt27972%_ _%clauses27973%_)
        (letrec ((_%reclause27975%_
                  (lambda (_%clause27978%_)
                    (let* ((_%__stx3938839389%_ _%clause27978%_)
                           (_%g2798327998%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3938839389%_))))
                      (let ((_%__kont3939139392%_ (lambda () _%clause27978%_))
                            (_%__kont3939339394%_
                             (lambda (_%g2798828026%_ _%g2798928028%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2798928028%_ '())
                                      _%g2798828026%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3939539396%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27970%_
                                _%clause27978%_))))
                        (if (gx#stx-pair? _%__stx3938839389%_)
                            (let ((_%e2798528050%_
                                   (gx#syntax-e _%__stx3938839389%_)))
                              (let ((_%tl2798728057%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2798528050%_)))
                                    (_%hd2798628054%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2798528050%_))))
                                (if (gx#identifier? _%hd2798628054%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40012_|
                                         _%hd2798628054%_)
                                        (_%__kont3939139392%_)
                                        (_%__kont3939339394%_
                                         _%tl2798728057%_
                                         _%hd2798628054%_))
                                    (_%__kont3939339394%_
                                     _%tl2798728057%_
                                     _%hd2798628054%_))))
                            (_%__kont3939539396%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27970%_
           (cons _%tgt27972%_ '())
           (gx#stx-map _%reclause27975%_ _%clauses27973%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35311%_)
        (let* ((_%__stx3941639417%_ _%stx35311%_)
               (_%g3531635345%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3941639417%_))))
          (let ((_%__kont3941939420%_
                 (lambda (_%g3531835585%_)
                   (let* ((_%g3559835606%_
                           (lambda (_%g3559935602%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3559935602%_)))
                          (_%g3559735659%_
                           (lambda (_%g3559935610%_)
                             ((lambda (_%g3560035613%_)
                                (let* ((_%g3562535633%_
                                        (lambda (_%g3562635629%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3562635629%_)))
                                       (_%g3562435655%_
                                        (lambda (_%g3562635637%_)
                                          ((lambda (_%g3562735640%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g3560035613%_
                                                               '())
                                                         (cons _%g3562735640%_
                                                               '()))))
                                           _%g3562635637%_))))
                                  (_%g3562435655%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3560035613%_
                                                _%g3531835585%_))
                                    (gx#stx-source _%stx35311%_)))))
                              _%g3559935610%_))))
                     (_%g3559735659%_ (gx#genident 'e)))))
                (_%__kont3942139422%_
                 (lambda (_%g3532535480%_)
                   (let* ((_%g3549335501%_
                           (lambda (_%g3549435497%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3549435497%_)))
                          (_%g3549235554%_
                           (lambda (_%g3549435505%_)
                             ((lambda (_%g3549535508%_)
                                (let* ((_%g3552035528%_
                                        (lambda (_%g3552135524%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3552135524%_)))
                                       (_%g3551935550%_
                                        (lambda (_%g3552135532%_)
                                          ((lambda (_%g3552235535%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g3549535508%_
                                                         (cons _%g3552235535%_
                                                               '()))))
                                           _%g3552135532%_))))
                                  (_%g3551935550%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3549535508%_
                                                _%g3532535480%_))
                                    (gx#stx-source _%stx35311%_)))))
                              _%g3549435505%_))))
                     (_%g3549235554%_ (gx#genident 'args)))))
                (_%__kont3942339424%_
                 (lambda (_%g3533235372%_ _%g3533335374%_)
                   (let* ((_%g3538835396%_
                           (lambda (_%g3538935392%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3538935392%_)))
                          (_%g3538735449%_
                           (lambda (_%g3538935400%_)
                             ((lambda (_%g3539035403%_)
                                (let* ((_%g3541535423%_
                                        (lambda (_%g3541635419%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3541635419%_)))
                                       (_%g3541435445%_
                                        (lambda (_%g3541635427%_)
                                          ((lambda (_%g3541735430%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g3539035403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3533335374%_ '()))
                       '())
                 (cons _%g3541735430%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3541635427%_))))
                                  (_%g3541435445%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35311%_
                                    _%g3539035403%_
                                    _%g3533235372%_))))
                              _%g3538935400%_))))
                     (_%g3538735449%_ (gx#genident _%g3533335374%_))))))
            (let* ((_%__match3946939470%_
                    (lambda (_%e3533435352%_
                             _%hd3533535356%_
                             _%tl3533635359%_
                             _%e3533735362%_
                             _%hd3533835366%_
                             _%tl3533935369%_)
                      (let ((_%g3533235372%_ _%tl3533935369%_)
                            (_%g3533335374%_ _%hd3533835366%_))
                        (if (gx#stx-list? _%g3533235372%_)
                            (_%__kont3942339424%_
                             _%g3533235372%_
                             _%g3533335374%_)
                            (let () (declare (not safe)) (_%g3531635345%_))))))
                   (_%__match3945739458%_
                    (lambda (_%e3532635460%_
                             _%hd3532735464%_
                             _%tl3532835467%_
                             _%e3532935470%_
                             _%hd3533035474%_
                             _%tl3533135477%_)
                      (let ((_%g3532535480%_ _%tl3533135477%_))
                        (if (gx#stx-list? _%g3532535480%_)
                            (_%__kont3942139422%_ _%g3532535480%_)
                            (_%__match3946939470%_
                             _%e3532635460%_
                             _%hd3532735464%_
                             _%tl3532835467%_
                             _%e3532935470%_
                             _%hd3533035474%_
                             _%tl3533135477%_)))))
                   (_%__match3944139442%_
                    (lambda (_%e3531935565%_
                             _%hd3532035569%_
                             _%tl3532135572%_
                             _%e3532235575%_
                             _%hd3532335579%_
                             _%tl3532435582%_)
                      (let ((_%g3531835585%_ _%tl3532435582%_))
                        (if (gx#stx-list? _%g3531835585%_)
                            (_%__kont3941939420%_ _%g3531835585%_)
                            (_%__match3946939470%_
                             _%e3531935565%_
                             _%hd3532035569%_
                             _%tl3532135572%_
                             _%e3532235575%_
                             _%hd3532335579%_
                             _%tl3532435582%_))))))
              (if (gx#stx-pair? _%__stx3941639417%_)
                  (let ((_%e3531935565%_ (gx#syntax-e _%__stx3941639417%_)))
                    (let ((_%tl3532135572%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3531935565%_)))
                          (_%hd3532035569%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3531935565%_))))
                      (if (gx#stx-pair? _%tl3532135572%_)
                          (let ((_%e3532235575%_
                                 (gx#syntax-e _%tl3532135572%_)))
                            (let ((_%tl3532435582%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3532235575%_)))
                                  (_%hd3532335579%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3532235575%_))))
                              (if (gx#identifier? _%hd3532335579%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40013_|
                                       _%hd3532335579%_)
                                      (_%__match3944139442%_
                                       _%e3531935565%_
                                       _%hd3532035569%_
                                       _%tl3532135572%_
                                       _%e3532235575%_
                                       _%hd3532335579%_
                                       _%tl3532435582%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40014_|
                                           _%hd3532335579%_)
                                          (_%__match3945739458%_
                                           _%e3531935565%_
                                           _%hd3532035569%_
                                           _%tl3532135572%_
                                           _%e3532235575%_
                                           _%hd3532335579%_
                                           _%tl3532435582%_)
                                          (_%__match3946939470%_
                                           _%e3531935565%_
                                           _%hd3532035569%_
                                           _%tl3532135572%_
                                           _%e3532235575%_
                                           _%hd3532335579%_
                                           _%tl3532435582%_)))
                                  (_%__match3946939470%_
                                   _%e3531935565%_
                                   _%hd3532035569%_
                                   _%tl3532135572%_
                                   _%e3532235575%_
                                   _%hd3532335579%_
                                   _%tl3532435582%_))))
                          (let () (declare (not safe)) (_%g3531635345%_)))))
                  (let () (declare (not safe)) (_%g3531635345%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35667%_)
        (let* ((_%g3567035694%_
                (lambda (_%g3567135690%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3567135690%_)))
               (_%g3566935902%_
                (lambda (_%g3567135698%_)
                  (if (gx#stx-pair? _%g3567135698%_)
                      (let ((_%e3567435701%_ (gx#syntax-e _%g3567135698%_)))
                        (let ((_%hd3567535705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3567435701%_)))
                              (_%tl3567635708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3567435701%_))))
                          (if (gx#stx-pair? _%tl3567635708%_)
                              (let ((_%e3567735711%_
                                     (gx#syntax-e _%tl3567635708%_)))
                                (let ((_%hd3567835715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3567735711%_)))
                                      (_%tl3567935718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3567735711%_))))
                                  (if (gx#stx-pair/null? _%hd3567835715%_)
                                      (let ((_g40015_
                                             (gx#syntax-split-splice
                                              _%hd3567835715%_
                                              '0)))
                                        (begin
                                          (let ((_g40016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40015_)
                                                       (##values-length
                                                        _g40015_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40016_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40016_)))
                                          (let ((_%target3568035721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40015_ 0)))
                                                (_%tl3568235724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g40015_ 1))))
                                            (if (gx#stx-null? _%tl3568235724%_)
                                                (letrec ((_%loop3568335727%_
                                                          (lambda (_%hd3568135731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3568735734%_)
                    (if (gx#stx-pair? _%hd3568135731%_)
                        (let ((_%e3568435736%_ (gx#syntax-e _%hd3568135731%_)))
                          (let ((_%lp-hd3568535740%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3568435736%_)))
                                (_%lp-tl3568635743%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3568435736%_))))
                            (_%loop3568335727%_
                             _%lp-tl3568635743%_
                             (cons _%lp-hd3568535740%_ _%e3568735734%_))))
                        (let ((_%e3568835746%_ (reverse _%e3568735734%_)))
                          ((lambda (_%g3567235749%_ _%g3567335751%_)
                             (if (gx#stx-list? _%g3567235749%_)
                                 (let* ((_%g3576935786%_
                                         (lambda (_%g3577035782%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3577035782%_)))
                                        (_%g3576835890%_
                                         (lambda (_%g3577035790%_)
                                           (if (gx#stx-pair/null?
                                                _%g3577035790%_)
                                               (let ((_g40017_
                                                      (gx#syntax-split-splice
                                                       _%g3577035790%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40018_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40017_)
                        (##values-length _g40017_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40018_ 2)))
                 (error "Context expects 2 values" _g40018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3577235793%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40017_
                                                             0)))
                                                         (_%tl3577435796%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g40017_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3577435796%_)
                                                         (letrec ((_%loop3577535799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3577335803%_ _%$e3577935806%_)
                             (if (gx#stx-pair? _%hd3577335803%_)
                                 (let ((_%e3577635808%_
                                        (gx#syntax-e _%hd3577335803%_)))
                                   (let ((_%lp-hd3577735812%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3577635808%_)))
                                         (_%lp-tl3577835815%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3577635808%_))))
                                     (_%loop3577535799%_
                                      _%lp-tl3577835815%_
                                      (cons _%lp-hd3577735812%_
                                            _%$e3577935806%_))))
                                 (let ((_%$e3578035818%_
                                        (reverse _%$e3577935806%_)))
                                   ((lambda (_%g3577135821%_)
                                      (let* ((_%g3583735845%_
                                              (lambda (_%g3583835841%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3583835841%_)))
                                             (_%g3583635878%_
                                              (lambda (_%g3583835849%_)
                                                ((lambda (_%g3583935852%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g3567335751%_
                          _%g3577135821%_)
                         (foldr (lambda (_%g3586635870%_
                                         _%g3586735873%_
                                         _%g3586835875%_)
                                  (cons (cons _%g3586735873%_
                                              (cons _%g3586635870%_ '()))
                                        _%g3586835875%_))
                                '()
                                _%g3567335751%_
                                _%g3577135821%_))
                       (cons _%g3583935852%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3583835849%_))))
                                        (_%g3583635878%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35667%_
                                          (foldr (lambda (_%g3588135884%_
                                                          _%g3588235887%_)
                                                   (cons _%g3588135884%_
                                                         _%g3588235887%_))
                                                 '()
                                                 _%g3577135821%_)
                                          _%g3567235749%_))))
                                    _%$e3578035818%_))))))
                   (_%loop3577535799%_ _%target3577235793%_ '()))
                 (_%g3576935786%_ _%g3577035790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3576935786%_
                                                _%g3577035790%_)))))
                                   (_%g3576835890%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3589335896%_
                                                     _%g3589435899%_)
                                              (cons _%g3589335896%_
                                                    _%g3589435899%_))
                                            '()
                                            _%g3567335751%_))))
                                 (_%g3567035694%_ _%g3567135698%_)))
                           _%tl3567935718%_
                           _%e3568835746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3568335727%_
                                                   _%target3568035721%_
                                                   '()))
                                                (_%g3567035694%_
                                                 _%g3567135698%_)))))
                                      (_%g3567035694%_ _%g3567135698%_))))
                              (_%g3567035694%_ _%g3567135698%_))))
                      (_%g3567035694%_ _%g3567135698%_)))))
          (_%g3566935902%_ _%stx35667%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35908%_)
        (let* ((_%__stx3947239473%_ _%$stx35908%_)
               (_%g3591435997%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3947239473%_))))
          (let ((_%__kont3947539476%_
                 (lambda (_%g3591636317%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3633336336%_ _%g3633436339%_)
                                        (cons _%g3633336336%_ _%g3633436339%_))
                                      '()
                                      _%g3591636317%_)))))
                (_%__kont3947939480%_
                 (lambda (_%g3593236227%_
                          _%g3593336229%_
                          _%g3593436230%_
                          _%g3593536231%_)
                   (cons _%g3593536231%_
                         (cons (cons (cons _%g3593436230%_
                                           (cons _%g3593336229%_ '()))
                                     '())
                               (foldr (lambda (_%g3625336256%_ _%g3625436259%_)
                                        (cons _%g3625336256%_ _%g3625436259%_))
                                      '()
                                      _%g3593236227%_)))))
                (_%__kont3948339484%_
                 (lambda (_%g3595736102%_ _%g3595836104%_ _%g3595936105%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3612736134%_ _%g3612836137%_)
                                        (cons _%g3612736134%_ _%g3612836137%_))
                                      '()
                                      _%g3595836104%_)
                               (cons (cons (foldr (lambda (_%g3612936140%_
                                                           _%g3613036143%_)
                                                    (cons _%g3612936140%_
                                                          _%g3613036143%_))
                                                  '()
                                                  _%g3595936105%_)
                                           (foldr (lambda (_%g3613136146%_
                                                           _%g3613236149%_)
                                                    (cons _%g3613136146%_
                                                          _%g3613236149%_))
                                                  '()
                                                  _%g3595736102%_))
                                     '()))))))
            (let* ((_%__match3956539566%_
                    (lambda (_%e3596036004%_
                             _%hd3596136008%_
                             _%tl3596236011%_
                             _%e3596336014%_
                             _%hd3596436018%_
                             _%tl3596536021%_
                             _%__splice3948539486%_
                             _%target3596636024%_
                             _%tl3596836027%_)
                      (letrec ((_%loop3596936030%_
                                (lambda (_%hd3596736034%_
                                         _%expr3597336037%_
                                         _%hd3597436038%_)
                                  (if (gx#stx-pair? _%hd3596736034%_)
                                      (let ((_%e3597036040%_
                                             (gx#syntax-e _%hd3596736034%_)))
                                        (let ((_%lp-tl3597236047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3597036040%_)))
                                              (_%lp-hd3597136044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3597036040%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3597136044%_)
                                              (let ((_%e3597736050%_
                                                     (gx#syntax-e
                                                      _%lp-hd3597136044%_)))
                                                (let ((_%tl3597936057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3597736050%_)))
                                                      (_%hd3597836054%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3597736050%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3597936057%_)
                                                      (let ((_%e3598036060%_
                                                             (gx#syntax-e
                                                              _%tl3597936057%_)))
                                                        (let ((_%tl3598236067%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3598036060%_)))
                      (_%hd3598136064%_
                       (let () (declare (not safe)) (##car _%e3598036060%_))))
                  (if (gx#stx-null? _%tl3598236067%_)
                      (_%loop3596936030%_
                       _%lp-tl3597236047%_
                       (cons _%hd3598136064%_ _%expr3597336037%_)
                       (cons _%hd3597836054%_ _%hd3597436038%_))
                      (let () (declare (not safe)) (_%g3591435997%_)))))
              (let () (declare (not safe)) (_%g3591435997%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3591435997%_)))))
                                      (let ((_%hd3597636072%_
                                             (reverse _%hd3597436038%_))
                                            (_%expr3597536070%_
                                             (reverse _%expr3597336037%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3596536021%_)
                                            (let ((_%__splice3948739488%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3596536021%_
                                                    '0)))
                                              (let ((_%tl3598536077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3948739488%_
                                                        '1)))
                                                    (_%target3598336074%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3948739488%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3598536077%_)
                                                    (letrec ((_%loop3598636080%_
                                                              (lambda (_%hd3598436084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3599036087%_)
                        (if (gx#stx-pair? _%hd3598436084%_)
                            (let ((_%e3598736089%_
                                   (gx#syntax-e _%hd3598436084%_)))
                              (let ((_%lp-tl3598936096%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3598736089%_)))
                                    (_%lp-hd3598836093%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3598736089%_))))
                                (_%loop3598636080%_
                                 _%lp-tl3598936096%_
                                 (cons _%lp-hd3598836093%_
                                       _%body3599036087%_))))
                            (let ((_%body3599136099%_
                                   (reverse _%body3599036087%_)))
                              (_%__kont3948339484%_
                               _%body3599136099%_
                               _%expr3597536070%_
                               _%hd3597636072%_))))))
              (_%loop3598636080%_ _%target3598336074%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3591435997%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3591435997%_))))))))
                        (_%loop3596936030%_ _%target3596636024%_ '() '()))))
                   (_%__match3955739558%_
                    (lambda (_%e3596036004%_
                             _%hd3596136008%_
                             _%tl3596236011%_
                             _%e3596336014%_
                             _%hd3596436018%_
                             _%tl3596536021%_)
                      (if (gx#stx-pair/null? _%hd3596436018%_)
                          (let ((_%__splice3948539486%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3596436018%_
                                  '0)))
                            (let ((_%tl3596836027%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3948539486%_ '1)))
                                  (_%target3596636024%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3948539486%_
                                      '0))))
                              (if (gx#stx-null? _%tl3596836027%_)
                                  (_%__match3956539566%_
                                   _%e3596036004%_
                                   _%hd3596136008%_
                                   _%tl3596236011%_
                                   _%e3596336014%_
                                   _%hd3596436018%_
                                   _%tl3596536021%_
                                   _%__splice3948539486%_
                                   _%target3596636024%_
                                   _%tl3596836027%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3591435997%_)))))
                          (let () (declare (not safe)) (_%g3591435997%_)))))
                   (_%__match3954539546%_
                    (lambda (_%e3593636159%_
                             _%hd3593736163%_
                             _%tl3593836166%_
                             _%e3593936169%_
                             _%hd3594036173%_
                             _%tl3594136176%_
                             _%e3594236179%_
                             _%hd3594336183%_
                             _%tl3594436186%_
                             _%e3594536189%_
                             _%hd3594636193%_
                             _%tl3594736196%_
                             _%__splice3948139482%_
                             _%target3594836199%_
                             _%tl3595036202%_)
                      (letrec ((_%loop3595136205%_
                                (lambda (_%hd3594936209%_ _%body3595536212%_)
                                  (if (gx#stx-pair? _%hd3594936209%_)
                                      (let ((_%e3595236214%_
                                             (gx#syntax-e _%hd3594936209%_)))
                                        (let ((_%lp-tl3595436221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3595236214%_)))
                                              (_%lp-hd3595336218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3595236214%_))))
                                          (_%loop3595136205%_
                                           _%lp-tl3595436221%_
                                           (cons _%lp-hd3595336218%_
                                                 _%body3595536212%_))))
                                      (let ((_%body3595636224%_
                                             (reverse _%body3595536212%_)))
                                        (let ((_%g3593236227%_
                                               _%body3595636224%_)
                                              (_%g3593336229%_
                                               _%hd3594636193%_)
                                              (_%g3593436230%_
                                               _%hd3594336183%_)
                                              (_%g3593536231%_
                                               _%hd3593736163%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3593436230%_)
                                              (_%__kont3947939480%_
                                               _%g3593236227%_
                                               _%g3593336229%_
                                               _%g3593436230%_
                                               _%g3593536231%_)
                                              (_%__match3955739558%_
                                               _%e3593636159%_
                                               _%hd3593736163%_
                                               _%tl3593836166%_
                                               _%e3593936169%_
                                               _%hd3594036173%_
                                               _%tl3594136176%_))))))))
                        (_%loop3595136205%_ _%target3594836199%_ '()))))
                   (_%__match3951139512%_
                    (lambda (_%e3591736269%_
                             _%hd3591836273%_
                             _%tl3591936276%_
                             _%e3592036279%_
                             _%hd3592136283%_
                             _%tl3592236286%_
                             _%__splice3947739478%_
                             _%target3592336289%_
                             _%tl3592536292%_)
                      (letrec ((_%loop3592636295%_
                                (lambda (_%hd3592436299%_ _%body3593036302%_)
                                  (if (gx#stx-pair? _%hd3592436299%_)
                                      (let ((_%e3592736304%_
                                             (gx#syntax-e _%hd3592436299%_)))
                                        (let ((_%lp-tl3592936311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3592736304%_)))
                                              (_%lp-hd3592836308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3592736304%_))))
                                          (_%loop3592636295%_
                                           _%lp-tl3592936311%_
                                           (cons _%lp-hd3592836308%_
                                                 _%body3593036302%_))))
                                      (let ((_%body3593136314%_
                                             (reverse _%body3593036302%_)))
                                        (_%__kont3947539476%_
                                         _%body3593136314%_))))))
                        (_%loop3592636295%_ _%target3592336289%_ '())))))
              (if (gx#stx-pair? _%__stx3947239473%_)
                  (let ((_%e3591736269%_ (gx#syntax-e _%__stx3947239473%_)))
                    (let ((_%tl3591936276%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3591736269%_)))
                          (_%hd3591836273%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3591736269%_))))
                      (if (gx#stx-pair? _%tl3591936276%_)
                          (let ((_%e3592036279%_
                                 (gx#syntax-e _%tl3591936276%_)))
                            (let ((_%tl3592236286%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3592036279%_)))
                                  (_%hd3592136283%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3592036279%_))))
                              (if (gx#stx-null? _%hd3592136283%_)
                                  (if (gx#stx-pair/null? _%tl3592236286%_)
                                      (let ((_%__splice3947739478%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3592236286%_
                                              '0)))
                                        (let ((_%tl3592536292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3947739478%_
                                                  '1)))
                                              (_%target3592336289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3947739478%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3592536292%_)
                                              (_%__match3951139512%_
                                               _%e3591736269%_
                                               _%hd3591836273%_
                                               _%tl3591936276%_
                                               _%e3592036279%_
                                               _%hd3592136283%_
                                               _%tl3592236286%_
                                               _%__splice3947739478%_
                                               _%target3592336289%_
                                               _%tl3592536292%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3592136283%_)
                                                  (let ((_%__splice3948539486%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3592136283%_
                                                          '0)))
                                                    (let ((_%tl3596836027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3948539486%_
                                                              '1)))
                                                          (_%target3596636024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3948539486%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3596836027%_)
                                                          (_%__match3956539566%_
                                                           _%e3591736269%_
                                                           _%hd3591836273%_
                                                           _%tl3591936276%_
                                                           _%e3592036279%_
                                                           _%hd3592136283%_
                                                           _%tl3592236286%_
                                                           _%__splice3948539486%_
                                                           _%target3596636024%_
                                                           _%tl3596836027%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3591435997%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3591435997%_))))))
                                      (if (gx#stx-pair/null? _%hd3592136283%_)
                                          (let ((_%__splice3948539486%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3592136283%_
                                                  '0)))
                                            (let ((_%tl3596836027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3948539486%_
                                                      '1)))
                                                  (_%target3596636024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3948539486%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3596836027%_)
                                                  (_%__match3956539566%_
                                                   _%e3591736269%_
                                                   _%hd3591836273%_
                                                   _%tl3591936276%_
                                                   _%e3592036279%_
                                                   _%hd3592136283%_
                                                   _%tl3592236286%_
                                                   _%__splice3948539486%_
                                                   _%target3596636024%_
                                                   _%tl3596836027%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3591435997%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3591435997%_))))
                                  (if (gx#stx-pair? _%hd3592136283%_)
                                      (let ((_%e3594236179%_
                                             (gx#syntax-e _%hd3592136283%_)))
                                        (let ((_%tl3594436186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3594236179%_)))
                                              (_%hd3594336183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3594236179%_))))
                                          (if (gx#stx-pair? _%tl3594436186%_)
                                              (let ((_%e3594536189%_
                                                     (gx#syntax-e
                                                      _%tl3594436186%_)))
                                                (let ((_%tl3594736196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3594536189%_)))
                                                      (_%hd3594636193%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3594536189%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3594736196%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3592236286%_)
                                                          (let ((_%__splice3948139482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3592236286%_ '0)))
                    (let ((_%tl3595036202%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3948139482%_ '1)))
                          (_%target3594836199%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3948139482%_ '0))))
                      (if (gx#stx-null? _%tl3595036202%_)
                          (_%__match3954539546%_
                           _%e3591736269%_
                           _%hd3591836273%_
                           _%tl3591936276%_
                           _%e3592036279%_
                           _%hd3592136283%_
                           _%tl3592236286%_
                           _%e3594236179%_
                           _%hd3594336183%_
                           _%tl3594436186%_
                           _%e3594536189%_
                           _%hd3594636193%_
                           _%tl3594736196%_
                           _%__splice3948139482%_
                           _%target3594836199%_
                           _%tl3595036202%_)
                          (if (gx#stx-pair/null? _%hd3592136283%_)
                              (let ((_%__splice3948539486%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3592136283%_
                                      '0)))
                                (let ((_%tl3596836027%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3948539486%_
                                          '1)))
                                      (_%target3596636024%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3948539486%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3596836027%_)
                                      (_%__match3956539566%_
                                       _%e3591736269%_
                                       _%hd3591836273%_
                                       _%tl3591936276%_
                                       _%e3592036279%_
                                       _%hd3592136283%_
                                       _%tl3592236286%_
                                       _%__splice3948539486%_
                                       _%target3596636024%_
                                       _%tl3596836027%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3591435997%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3591435997%_))))))
                  (if (gx#stx-pair/null? _%hd3592136283%_)
                      (let ((_%__splice3948539486%_
                             (gx#syntax-split-splice->vector
                              _%hd3592136283%_
                              '0)))
                        (let ((_%tl3596836027%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3948539486%_ '1)))
                              (_%target3596636024%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3948539486%_ '0))))
                          (if (gx#stx-null? _%tl3596836027%_)
                              (_%__match3956539566%_
                               _%e3591736269%_
                               _%hd3591836273%_
                               _%tl3591936276%_
                               _%e3592036279%_
                               _%hd3592136283%_
                               _%tl3592236286%_
                               _%__splice3948539486%_
                               _%target3596636024%_
                               _%tl3596836027%_)
                              (let ()
                                (declare (not safe))
                                (_%g3591435997%_)))))
                      (let () (declare (not safe)) (_%g3591435997%_))))
              (if (gx#stx-pair/null? _%hd3592136283%_)
                  (let ((_%__splice3948539486%_
                         (gx#syntax-split-splice->vector _%hd3592136283%_ '0)))
                    (let ((_%tl3596836027%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3948539486%_ '1)))
                          (_%target3596636024%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3948539486%_ '0))))
                      (if (gx#stx-null? _%tl3596836027%_)
                          (_%__match3956539566%_
                           _%e3591736269%_
                           _%hd3591836273%_
                           _%tl3591936276%_
                           _%e3592036279%_
                           _%hd3592136283%_
                           _%tl3592236286%_
                           _%__splice3948539486%_
                           _%target3596636024%_
                           _%tl3596836027%_)
                          (let () (declare (not safe)) (_%g3591435997%_)))))
                  (let () (declare (not safe)) (_%g3591435997%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3592136283%_)
                                                  (let ((_%__splice3948539486%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3592136283%_
                                                          '0)))
                                                    (let ((_%tl3596836027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3948539486%_
                                                              '1)))
                                                          (_%target3596636024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3948539486%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3596836027%_)
                                                          (_%__match3956539566%_
                                                           _%e3591736269%_
                                                           _%hd3591836273%_
                                                           _%tl3591936276%_
                                                           _%e3592036279%_
                                                           _%hd3592136283%_
                                                           _%tl3592236286%_
                                                           _%__splice3948539486%_
                                                           _%target3596636024%_
                                                           _%tl3596836027%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3591435997%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3591435997%_))))))
                                      (if (gx#stx-pair/null? _%hd3592136283%_)
                                          (let ((_%__splice3948539486%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3592136283%_
                                                  '0)))
                                            (let ((_%tl3596836027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3948539486%_
                                                      '1)))
                                                  (_%target3596636024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3948539486%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3596836027%_)
                                                  (_%__match3956539566%_
                                                   _%e3591736269%_
                                                   _%hd3591836273%_
                                                   _%tl3591936276%_
                                                   _%e3592036279%_
                                                   _%hd3592136283%_
                                                   _%tl3592236286%_
                                                   _%__splice3948539486%_
                                                   _%target3596636024%_
                                                   _%tl3596836027%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3591435997%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3591435997%_)))))))
                          (let () (declare (not safe)) (_%g3591435997%_)))))
                  (let () (declare (not safe)) (_%g3591435997%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36350%_)
        (let* ((_%__stx3956839569%_ _%$stx36350%_)
               (_%g3635536407%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3956839569%_))))
          (let ((_%__kont3957139572%_
                 (lambda (_%g3635736573%_
                          _%g3635836575%_
                          _%g3635936576%_
                          _%g3636036577%_
                          _%g3636136578%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3636036577%_
                                           (cons _%g3635936576%_ '()))
                                     '())
                               (cons (cons _%g3636136578%_
                                           (cons _%g3635836575%_
                                                 (foldr (lambda (_%g3660336606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3660436609%_)
                  (cons _%g3660336606%_ _%g3660436609%_))
                '()
                _%g3635736573%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3957539576%_
                 (lambda (_%g3638636462%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3647936482%_ _%g3648036485%_)
                                        (cons _%g3647936482%_ _%g3648036485%_))
                                      '()
                                      _%g3638636462%_))))))
            (let* ((_%__match3964139642%_
                    (lambda (_%e3638736414%_
                             _%hd3638836418%_
                             _%tl3638936421%_
                             _%e3639036424%_
                             _%hd3639136428%_
                             _%tl3639236431%_
                             _%__splice3957739578%_
                             _%target3639336434%_
                             _%tl3639536437%_)
                      (letrec ((_%loop3639636440%_
                                (lambda (_%hd3639436444%_ _%body3640036447%_)
                                  (if (gx#stx-pair? _%hd3639436444%_)
                                      (let ((_%e3639736449%_
                                             (gx#syntax-e _%hd3639436444%_)))
                                        (let ((_%lp-tl3639936456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3639736449%_)))
                                              (_%lp-hd3639836453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3639736449%_))))
                                          (_%loop3639636440%_
                                           _%lp-tl3639936456%_
                                           (cons _%lp-hd3639836453%_
                                                 _%body3640036447%_))))
                                      (let ((_%body3640136459%_
                                             (reverse _%body3640036447%_)))
                                        (_%__kont3957539576%_
                                         _%body3640136459%_))))))
                        (_%loop3639636440%_ _%target3639336434%_ '()))))
                   (_%__match3961939620%_
                    (lambda (_%e3636236495%_
                             _%hd3636336499%_
                             _%tl3636436502%_
                             _%e3636536505%_
                             _%hd3636636509%_
                             _%tl3636736512%_
                             _%e3636836515%_
                             _%hd3636936519%_
                             _%tl3637036522%_
                             _%e3637136525%_
                             _%hd3637236529%_
                             _%tl3637336532%_
                             _%e3637436535%_
                             _%hd3637536539%_
                             _%tl3637636542%_
                             _%__splice3957339574%_
                             _%target3637736545%_
                             _%tl3637936548%_)
                      (letrec ((_%loop3638036551%_
                                (lambda (_%hd3637836555%_ _%body3638436558%_)
                                  (if (gx#stx-pair? _%hd3637836555%_)
                                      (let ((_%e3638136560%_
                                             (gx#syntax-e _%hd3637836555%_)))
                                        (let ((_%lp-tl3638336567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3638136560%_)))
                                              (_%lp-hd3638236564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3638136560%_))))
                                          (_%loop3638036551%_
                                           _%lp-tl3638336567%_
                                           (cons _%lp-hd3638236564%_
                                                 _%body3638436558%_))))
                                      (let ((_%body3638536570%_
                                             (reverse _%body3638436558%_)))
                                        (_%__kont3957139572%_
                                         _%body3638536570%_
                                         _%tl3637036522%_
                                         _%hd3637536539%_
                                         _%hd3637236529%_
                                         _%hd3636336499%_))))))
                        (_%loop3638036551%_ _%target3637736545%_ '())))))
              (if (gx#stx-pair? _%__stx3956839569%_)
                  (let ((_%e3636236495%_ (gx#syntax-e _%__stx3956839569%_)))
                    (let ((_%tl3636436502%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3636236495%_)))
                          (_%hd3636336499%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3636236495%_))))
                      (if (gx#stx-pair? _%tl3636436502%_)
                          (let ((_%e3636536505%_
                                 (gx#syntax-e _%tl3636436502%_)))
                            (let ((_%tl3636736512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3636536505%_)))
                                  (_%hd3636636509%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3636536505%_))))
                              (if (gx#stx-pair? _%hd3636636509%_)
                                  (let ((_%e3636836515%_
                                         (gx#syntax-e _%hd3636636509%_)))
                                    (let ((_%tl3637036522%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3636836515%_)))
                                          (_%hd3636936519%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3636836515%_))))
                                      (if (gx#stx-pair? _%hd3636936519%_)
                                          (let ((_%e3637136525%_
                                                 (gx#syntax-e
                                                  _%hd3636936519%_)))
                                            (let ((_%tl3637336532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3637136525%_)))
                                                  (_%hd3637236529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3637136525%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3637336532%_)
                                                  (let ((_%e3637436535%_
                                                         (gx#syntax-e
                                                          _%tl3637336532%_)))
                                                    (let ((_%tl3637636542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3637436535%_)))
                                                          (_%hd3637536539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3637436535%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3637636542%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3636736512%_)
                                                              (let ((_%__splice3957339574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3636736512%_
                              '0)))
                        (let ((_%tl3637936548%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3957339574%_ '1)))
                              (_%target3637736545%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3957339574%_ '0))))
                          (if (gx#stx-null? _%tl3637936548%_)
                              (_%__match3961939620%_
                               _%e3636236495%_
                               _%hd3636336499%_
                               _%tl3636436502%_
                               _%e3636536505%_
                               _%hd3636636509%_
                               _%tl3636736512%_
                               _%e3636836515%_
                               _%hd3636936519%_
                               _%tl3637036522%_
                               _%e3637136525%_
                               _%hd3637236529%_
                               _%tl3637336532%_
                               _%e3637436535%_
                               _%hd3637536539%_
                               _%tl3637636542%_
                               _%__splice3957339574%_
                               _%target3637736545%_
                               _%tl3637936548%_)
                              (let ()
                                (declare (not safe))
                                (_%g3635536407%_)))))
                      (let () (declare (not safe)) (_%g3635536407%_)))
                  (let () (declare (not safe)) (_%g3635536407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3635536407%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3635536407%_)))))
                                  (if (gx#stx-null? _%hd3636636509%_)
                                      (if (gx#stx-pair/null? _%tl3636736512%_)
                                          (let ((_%__splice3957739578%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3636736512%_
                                                  '0)))
                                            (let ((_%tl3639536437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3957739578%_
                                                      '1)))
                                                  (_%target3639336434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3957739578%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3639536437%_)
                                                  (_%__match3964139642%_
                                                   _%e3636236495%_
                                                   _%hd3636336499%_
                                                   _%tl3636436502%_
                                                   _%e3636536505%_
                                                   _%hd3636636509%_
                                                   _%tl3636736512%_
                                                   _%__splice3957739578%_
                                                   _%target3639336434%_
                                                   _%tl3639536437%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3635536407%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3635536407%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3635536407%_))))))
                          (let () (declare (not safe)) (_%g3635536407%_)))))
                  (let () (declare (not safe)) (_%g3635536407%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36618%_)
        (let* ((_%__stx3964439645%_ _%$stx36618%_)
               (_%g3662936775%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3964439645%_))))
          (let ((_%__kont3964739648%_
                 (lambda (_%g3663137375%_ _%g3663237377%_ _%g3663337378%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3739937402%_ _%g3740037405%_)
                                  (cons (cons _%g3663337378%_
                                              (cons _%g3739937402%_
                                                    (cons _%g3663137375%_
                                                          '())))
                                        _%g3740037405%_))
                                '()
                                _%g3663237377%_))))
                (_%__kont3965139652%_
                 (lambda (_%g3665537267%_ _%g3665637269%_ _%g3665737270%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3729137294%_ _%g3729237297%_)
                                  (cons (cons _%g3665737270%_
                                              (cons _%g3729137294%_
                                                    (cons _%g3665537267%_
                                                          '())))
                                        _%g3729237297%_))
                                '()
                                _%g3665637269%_))))
                (_%__kont3965539656%_
                 (lambda (_%g3667937169%_ _%g3668037171%_ _%g3668137172%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3668137172%_
                                     (cons _%g3668037171%_
                                           (cons _%g3667937169%_ '())))
                               '()))))
                (_%__kont3965739658%_
                 (lambda (_%g3669737095%_ _%g3669837097%_)
                   (cons _%g3669837097%_ (cons _%g3669737095%_ '()))))
                (_%__kont3965939660%_
                 (lambda (_%g3670837043%_ _%g3670937045%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3670937045%_
                                           (cons _%g3670837043%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3966139662%_
                 (lambda (_%g3671636995%_ _%g3671736997%_ _%g3671836998%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3671836998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3671736997%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3671636995%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3966339664%_
                 (lambda (_%g3673136926%_ _%g3673236928%_ _%g3673336929%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3673336929%_
                                                       (cons _%g3673236928%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3673136926%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3966539666%_
                 (lambda (_%g3674736846%_
                          _%g3674836848%_
                          _%g3674936849%_
                          _%g3675036850%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3675036850%_
                                                       (cons _%g3674936849%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3674736846%_
                                                             (cons (cons _%g3674836848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3981739818%_
                    (lambda (_%e3671936955%_
                             _%hd3672036959%_
                             _%tl3672136962%_
                             _%e3672236965%_
                             _%hd3672336969%_
                             _%tl3672436972%_
                             _%e3672536975%_
                             _%hd3672636979%_
                             _%tl3672736982%_)
                      (if (gx#identifier? _%hd3672636979%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40019_|
                               _%hd3672636979%_)
                              (if (gx#stx-pair? _%tl3672736982%_)
                                  (let ((_%e3672836985%_
                                         (gx#syntax-e _%tl3672736982%_)))
                                    (let ((_%tl3673036992%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3672836985%_)))
                                          (_%hd3672936989%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3672836985%_))))
                                      (if (gx#stx-null? _%tl3673036992%_)
                                          (_%__kont3966139662%_
                                           _%hd3672936989%_
                                           _%hd3672336969%_
                                           _%hd3672036959%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3662936775%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3662936775%_)))
                              (let () (declare (not safe)) (_%g3662936775%_)))
                          (if (gx#stx-datum? _%hd3672636979%_)
                              (let ((_%e3674336912%_
                                     (gx#stx-e _%hd3672636979%_)))
                                (if (equal? _%e3674336912%_ '::)
                                    (if (gx#stx-pair? _%tl3672736982%_)
                                        (let ((_%e3674436916%_
                                               (gx#syntax-e _%tl3672736982%_)))
                                          (let ((_%tl3674636923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3674436916%_)))
                                                (_%hd3674536920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3674436916%_))))
                                            (if (gx#stx-null? _%tl3674636923%_)
                                                (_%__kont3966339664%_
                                                 _%hd3674536920%_
                                                 _%hd3672336969%_
                                                 _%hd3672036959%_)
                                                (if (gx#stx-pair?
                                                     _%tl3674636923%_)
                                                    (let ((_%e3676436826%_
                                                           (gx#syntax-e
                                                            _%tl3674636923%_)))
                                                      (let ((_%tl3676636833%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3676436826%_)))
                    (_%hd3676536830%_
                     (let () (declare (not safe)) (##car _%e3676436826%_))))
                (if (gx#identifier? _%hd3676536830%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40020_|
                         _%hd3676536830%_)
                        (if (gx#stx-pair? _%tl3676636833%_)
                            (let ((_%e3676736836%_
                                   (gx#syntax-e _%tl3676636833%_)))
                              (let ((_%tl3676936843%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3676736836%_)))
                                    (_%hd3676836840%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3676736836%_))))
                                (if (gx#stx-null? _%tl3676936843%_)
                                    (_%__kont3966539666%_
                                     _%hd3676836840%_
                                     _%hd3674536920%_
                                     _%hd3672336969%_
                                     _%hd3672036959%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_)))))
                            (let () (declare (not safe)) (_%g3662936775%_)))
                        (let () (declare (not safe)) (_%g3662936775%_)))
                    (let () (declare (not safe)) (_%g3662936775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3662936775%_))))))
                   (_%__match3979739798%_
                    (lambda (_%e3671037023%_
                             _%hd3671137027%_
                             _%tl3671237030%_
                             _%e3671337033%_
                             _%hd3671437037%_
                             _%tl3671537040%_)
                      (if (gx#stx-null? _%tl3671537040%_)
                          (_%__kont3965939660%_
                           _%hd3671437037%_
                           _%hd3671137027%_)
                          (if (gx#stx-pair? _%tl3671537040%_)
                              (let ((_%e3672536975%_
                                     (gx#syntax-e _%tl3671537040%_)))
                                (let ((_%tl3672736982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3672536975%_)))
                                      (_%hd3672636979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3672536975%_))))
                                  (if (gx#identifier? _%hd3672636979%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40019_|
                                           _%hd3672636979%_)
                                          (if (gx#stx-pair? _%tl3672736982%_)
                                              (let ((_%e3672836985%_
                                                     (gx#syntax-e
                                                      _%tl3672736982%_)))
                                                (let ((_%tl3673036992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3672836985%_)))
                                                      (_%hd3672936989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3672836985%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3673036992%_)
                                                      (_%__kont3966139662%_
                                                       _%hd3672936989%_
                                                       _%hd3671437037%_
                                                       _%hd3671137027%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3662936775%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3662936775%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3662936775%_)))
                                      (if (gx#stx-datum? _%hd3672636979%_)
                                          (let ((_%e3674336912%_
                                                 (gx#stx-e _%hd3672636979%_)))
                                            (if (equal? _%e3674336912%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3672736982%_)
                                                    (let ((_%e3674436916%_
                                                           (gx#syntax-e
                                                            _%tl3672736982%_)))
                                                      (let ((_%tl3674636923%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3674436916%_)))
                    (_%hd3674536920%_
                     (let () (declare (not safe)) (##car _%e3674436916%_))))
                (if (gx#stx-null? _%tl3674636923%_)
                    (_%__kont3966339664%_
                     _%hd3674536920%_
                     _%hd3671437037%_
                     _%hd3671137027%_)
                    (if (gx#stx-pair? _%tl3674636923%_)
                        (let ((_%e3676436826%_ (gx#syntax-e _%tl3674636923%_)))
                          (let ((_%tl3676636833%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3676436826%_)))
                                (_%hd3676536830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3676436826%_))))
                            (if (gx#identifier? _%hd3676536830%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40020_|
                                     _%hd3676536830%_)
                                    (if (gx#stx-pair? _%tl3676636833%_)
                                        (let ((_%e3676736836%_
                                               (gx#syntax-e _%tl3676636833%_)))
                                          (let ((_%tl3676936843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3676736836%_)))
                                                (_%hd3676836840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3676736836%_))))
                                            (if (gx#stx-null? _%tl3676936843%_)
                                                (_%__kont3966539666%_
                                                 _%hd3676836840%_
                                                 _%hd3674536920%_
                                                 _%hd3671437037%_
                                                 _%hd3671137027%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3662936775%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3662936775%_)))))
                        (let () (declare (not safe)) (_%g3662936775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3662936775%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3662936775%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3662936775%_))))))
                   (_%__match3972739728%_
                    (lambda (_%e3665837199%_
                             _%hd3665937203%_
                             _%tl3666037206%_
                             _%e3666137209%_
                             _%hd3666237213%_
                             _%tl3666337216%_
                             _%e3666437219%_
                             _%hd3666537223%_
                             _%tl3666637226%_
                             _%__splice3965339654%_
                             _%target3666737229%_
                             _%tl3666937232%_)
                      (letrec ((_%loop3667037235%_
                                (lambda (_%hd3666837239%_ _%pred3667437242%_)
                                  (if (gx#stx-pair? _%hd3666837239%_)
                                      (let ((_%e3667137244%_
                                             (gx#syntax-e _%hd3666837239%_)))
                                        (let ((_%lp-tl3667337251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3667137244%_)))
                                              (_%lp-hd3667237248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3667137244%_))))
                                          (_%loop3667037235%_
                                           _%lp-tl3667337251%_
                                           (cons _%lp-hd3667237248%_
                                                 _%pred3667437242%_))))
                                      (let ((_%pred3667537254%_
                                             (reverse _%pred3667437242%_)))
                                        (if (gx#stx-pair? _%tl3666337216%_)
                                            (let ((_%e3667637257%_
                                                   (gx#syntax-e
                                                    _%tl3666337216%_)))
                                              (let ((_%tl3667837264%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3667637257%_)))
                                                    (_%hd3667737261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3667637257%_))))
                                                (if (gx#stx-null?
                                                     _%tl3667837264%_)
                                                    (_%__kont3965139652%_
                                                     _%hd3667737261%_
                                                     _%pred3667537254%_
                                                     _%hd3665937203%_)
                                                    (_%__match3981739818%_
                                                     _%e3665837199%_
                                                     _%hd3665937203%_
                                                     _%tl3666037206%_
                                                     _%e3666137209%_
                                                     _%hd3666237213%_
                                                     _%tl3666337216%_
                                                     _%e3667637257%_
                                                     _%hd3667737261%_
                                                     _%tl3667837264%_))))
                                            (_%__match3979739798%_
                                             _%e3665837199%_
                                             _%hd3665937203%_
                                             _%tl3666037206%_
                                             _%e3666137209%_
                                             _%hd3666237213%_
                                             _%tl3666337216%_)))))))
                        (_%loop3667037235%_ _%target3666737229%_ '()))))
                   (_%__match3969739698%_
                    (lambda (_%e3663437307%_
                             _%hd3663537311%_
                             _%tl3663637314%_
                             _%e3663737317%_
                             _%hd3663837321%_
                             _%tl3663937324%_
                             _%e3664037327%_
                             _%hd3664137331%_
                             _%tl3664237334%_
                             _%__splice3964939650%_
                             _%target3664337337%_
                             _%tl3664537340%_)
                      (letrec ((_%loop3664637343%_
                                (lambda (_%hd3664437347%_ _%pred3665037350%_)
                                  (if (gx#stx-pair? _%hd3664437347%_)
                                      (let ((_%e3664737352%_
                                             (gx#syntax-e _%hd3664437347%_)))
                                        (let ((_%lp-tl3664937359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3664737352%_)))
                                              (_%lp-hd3664837356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3664737352%_))))
                                          (_%loop3664637343%_
                                           _%lp-tl3664937359%_
                                           (cons _%lp-hd3664837356%_
                                                 _%pred3665037350%_))))
                                      (let ((_%pred3665137362%_
                                             (reverse _%pred3665037350%_)))
                                        (if (gx#stx-pair? _%tl3663937324%_)
                                            (let ((_%e3665237365%_
                                                   (gx#syntax-e
                                                    _%tl3663937324%_)))
                                              (let ((_%tl3665437372%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3665237365%_)))
                                                    (_%hd3665337369%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3665237365%_))))
                                                (if (gx#stx-null?
                                                     _%tl3665437372%_)
                                                    (_%__kont3964739648%_
                                                     _%hd3665337369%_
                                                     _%pred3665137362%_
                                                     _%hd3663537311%_)
                                                    (_%__match3981739818%_
                                                     _%e3663437307%_
                                                     _%hd3663537311%_
                                                     _%tl3663637314%_
                                                     _%e3663737317%_
                                                     _%hd3663837321%_
                                                     _%tl3663937324%_
                                                     _%e3665237365%_
                                                     _%hd3665337369%_
                                                     _%tl3665437372%_))))
                                            (_%__match3979739798%_
                                             _%e3663437307%_
                                             _%hd3663537311%_
                                             _%tl3663637314%_
                                             _%e3663737317%_
                                             _%hd3663837321%_
                                             _%tl3663937324%_)))))))
                        (_%loop3664637343%_ _%target3664337337%_ '())))))
              (if (gx#stx-pair? _%__stx3964439645%_)
                  (let ((_%e3663437307%_ (gx#syntax-e _%__stx3964439645%_)))
                    (let ((_%tl3663637314%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3663437307%_)))
                          (_%hd3663537311%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3663437307%_))))
                      (if (gx#stx-pair? _%tl3663637314%_)
                          (let ((_%e3663737317%_
                                 (gx#syntax-e _%tl3663637314%_)))
                            (let ((_%tl3663937324%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3663737317%_)))
                                  (_%hd3663837321%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3663737317%_))))
                              (if (gx#stx-pair? _%hd3663837321%_)
                                  (let ((_%e3664037327%_
                                         (gx#syntax-e _%hd3663837321%_)))
                                    (let ((_%tl3664237334%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3664037327%_)))
                                          (_%hd3664137331%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3664037327%_))))
                                      (if (gx#identifier? _%hd3664137331%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40021_|
                                               _%hd3664137331%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3664237334%_)
                                                  (let ((_%__splice3964939650%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3664237334%_
                                                          '0)))
                                                    (let ((_%tl3664537340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3964939650%_
                                                              '1)))
                                                          (_%target3664337337%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3964939650%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3664537340%_)
                                                          (_%__match3969739698%_
                                                           _%e3663437307%_
                                                           _%hd3663537311%_
                                                           _%tl3663637314%_
                                                           _%e3663737317%_
                                                           _%hd3663837321%_
                                                           _%tl3663937324%_
                                                           _%e3664037327%_
                                                           _%hd3664137331%_
                                                           _%tl3664237334%_
                                                           _%__splice3964939650%_
                                                           _%target3664337337%_
                                                           _%tl3664537340%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3663937324%_)
                                                              (let ((_%e3670537085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3663937324%_)))
                        (let ((_%tl3670737092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3670537085%_)))
                              (_%hd3670637089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3670537085%_))))
                          (if (gx#stx-null? _%tl3670737092%_)
                              (_%__kont3965739658%_
                               _%hd3670637089%_
                               _%hd3663837321%_)
                              (if (gx#identifier? _%hd3670637089%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40019_|
                                       _%hd3670637089%_)
                                      (if (gx#stx-pair? _%tl3670737092%_)
                                          (let ((_%e3672836985%_
                                                 (gx#syntax-e
                                                  _%tl3670737092%_)))
                                            (let ((_%tl3673036992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3672836985%_)))
                                                  (_%hd3672936989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3672836985%_))))
                                              (if (gx#stx-null?
                                                   _%tl3673036992%_)
                                                  (_%__kont3966139662%_
                                                   _%hd3672936989%_
                                                   _%hd3663837321%_
                                                   _%hd3663537311%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3662936775%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3662936775%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3662936775%_)))
                                  (if (gx#stx-datum? _%hd3670637089%_)
                                      (let ((_%e3674336912%_
                                             (gx#stx-e _%hd3670637089%_)))
                                        (if (equal? _%e3674336912%_ '::)
                                            (if (gx#stx-pair? _%tl3670737092%_)
                                                (let ((_%e3674436916%_
                                                       (gx#syntax-e
                                                        _%tl3670737092%_)))
                                                  (let ((_%tl3674636923%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3674436916%_)))
                                                        (_%hd3674536920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3674436916%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3674636923%_)
                                                        (_%__kont3966339664%_
                                                         _%hd3674536920%_
                                                         _%hd3663837321%_
                                                         _%hd3663537311%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3674636923%_)
                                                            (let ((_%e3676436826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3674636923%_)))
                      (let ((_%tl3676636833%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3676436826%_)))
                            (_%hd3676536830%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3676436826%_))))
                        (if (gx#identifier? _%hd3676536830%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40020_|
                                 _%hd3676536830%_)
                                (if (gx#stx-pair? _%tl3676636833%_)
                                    (let ((_%e3676736836%_
                                           (gx#syntax-e _%tl3676636833%_)))
                                      (let ((_%tl3676936843%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3676736836%_)))
                                            (_%hd3676836840%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3676736836%_))))
                                        (if (gx#stx-null? _%tl3676936843%_)
                                            (_%__kont3966539666%_
                                             _%hd3676836840%_
                                             _%hd3674536920%_
                                             _%hd3663837321%_
                                             _%hd3663537311%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3662936775%_)))
                            (let () (declare (not safe)) (_%g3662936775%_)))))
                    (let () (declare (not safe)) (_%g3662936775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3662936775%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3662936775%_)))))))
                      (if (gx#stx-null? _%tl3663937324%_)
                          (_%__kont3965939660%_
                           _%hd3663837321%_
                           _%hd3663537311%_)
                          (let () (declare (not safe)) (_%g3662936775%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3663937324%_)
                                                      (let ((_%e3670537085%_
                                                             (gx#syntax-e
                                                              _%tl3663937324%_)))
                                                        (let ((_%tl3670737092%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3670537085%_)))
                      (_%hd3670637089%_
                       (let () (declare (not safe)) (##car _%e3670537085%_))))
                  (if (gx#stx-null? _%tl3670737092%_)
                      (_%__kont3965739658%_ _%hd3670637089%_ _%hd3663837321%_)
                      (if (gx#identifier? _%hd3670637089%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40019_|
                               _%hd3670637089%_)
                              (if (gx#stx-pair? _%tl3670737092%_)
                                  (let ((_%e3672836985%_
                                         (gx#syntax-e _%tl3670737092%_)))
                                    (let ((_%tl3673036992%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3672836985%_)))
                                          (_%hd3672936989%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3672836985%_))))
                                      (if (gx#stx-null? _%tl3673036992%_)
                                          (_%__kont3966139662%_
                                           _%hd3672936989%_
                                           _%hd3663837321%_
                                           _%hd3663537311%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3662936775%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3662936775%_)))
                              (let () (declare (not safe)) (_%g3662936775%_)))
                          (if (gx#stx-datum? _%hd3670637089%_)
                              (let ((_%e3674336912%_
                                     (gx#stx-e _%hd3670637089%_)))
                                (if (equal? _%e3674336912%_ '::)
                                    (if (gx#stx-pair? _%tl3670737092%_)
                                        (let ((_%e3674436916%_
                                               (gx#syntax-e _%tl3670737092%_)))
                                          (let ((_%tl3674636923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3674436916%_)))
                                                (_%hd3674536920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3674436916%_))))
                                            (if (gx#stx-null? _%tl3674636923%_)
                                                (_%__kont3966339664%_
                                                 _%hd3674536920%_
                                                 _%hd3663837321%_
                                                 _%hd3663537311%_)
                                                (if (gx#stx-pair?
                                                     _%tl3674636923%_)
                                                    (let ((_%e3676436826%_
                                                           (gx#syntax-e
                                                            _%tl3674636923%_)))
                                                      (let ((_%tl3676636833%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3676436826%_)))
                    (_%hd3676536830%_
                     (let () (declare (not safe)) (##car _%e3676436826%_))))
                (if (gx#identifier? _%hd3676536830%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40020_|
                         _%hd3676536830%_)
                        (if (gx#stx-pair? _%tl3676636833%_)
                            (let ((_%e3676736836%_
                                   (gx#syntax-e _%tl3676636833%_)))
                              (let ((_%tl3676936843%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3676736836%_)))
                                    (_%hd3676836840%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3676736836%_))))
                                (if (gx#stx-null? _%tl3676936843%_)
                                    (_%__kont3966539666%_
                                     _%hd3676836840%_
                                     _%hd3674536920%_
                                     _%hd3663837321%_
                                     _%hd3663537311%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_)))))
                            (let () (declare (not safe)) (_%g3662936775%_)))
                        (let () (declare (not safe)) (_%g3662936775%_)))
                    (let () (declare (not safe)) (_%g3662936775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3662936775%_)))))))
              (if (gx#stx-null? _%tl3663937324%_)
                  (_%__kont3965939660%_ _%hd3663837321%_ _%hd3663537311%_)
                  (let () (declare (not safe)) (_%g3662936775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40022_|
                                                   _%hd3664137331%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3664237334%_)
                                                      (let ((_%__splice3965339654%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3664237334%_
                                                              '0)))
                                                        (let ((_%tl3666937232%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3965339654%_ '1)))
                      (_%target3666737229%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3965339654%_ '0))))
                  (if (gx#stx-null? _%tl3666937232%_)
                      (_%__match3972739728%_
                       _%e3663437307%_
                       _%hd3663537311%_
                       _%tl3663637314%_
                       _%e3663737317%_
                       _%hd3663837321%_
                       _%tl3663937324%_
                       _%e3664037327%_
                       _%hd3664137331%_
                       _%tl3664237334%_
                       _%__splice3965339654%_
                       _%target3666737229%_
                       _%tl3666937232%_)
                      (if (gx#stx-pair? _%tl3663937324%_)
                          (let ((_%e3670537085%_
                                 (gx#syntax-e _%tl3663937324%_)))
                            (let ((_%tl3670737092%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3670537085%_)))
                                  (_%hd3670637089%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3670537085%_))))
                              (if (gx#stx-null? _%tl3670737092%_)
                                  (_%__kont3965739658%_
                                   _%hd3670637089%_
                                   _%hd3663837321%_)
                                  (if (gx#identifier? _%hd3670637089%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40019_|
                                           _%hd3670637089%_)
                                          (if (gx#stx-pair? _%tl3670737092%_)
                                              (let ((_%e3672836985%_
                                                     (gx#syntax-e
                                                      _%tl3670737092%_)))
                                                (let ((_%tl3673036992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3672836985%_)))
                                                      (_%hd3672936989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3672836985%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3673036992%_)
                                                      (_%__kont3966139662%_
                                                       _%hd3672936989%_
                                                       _%hd3663837321%_
                                                       _%hd3663537311%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3662936775%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3662936775%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3662936775%_)))
                                      (if (gx#stx-datum? _%hd3670637089%_)
                                          (let ((_%e3674336912%_
                                                 (gx#stx-e _%hd3670637089%_)))
                                            (if (equal? _%e3674336912%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3670737092%_)
                                                    (let ((_%e3674436916%_
                                                           (gx#syntax-e
                                                            _%tl3670737092%_)))
                                                      (let ((_%tl3674636923%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3674436916%_)))
                    (_%hd3674536920%_
                     (let () (declare (not safe)) (##car _%e3674436916%_))))
                (if (gx#stx-null? _%tl3674636923%_)
                    (_%__kont3966339664%_
                     _%hd3674536920%_
                     _%hd3663837321%_
                     _%hd3663537311%_)
                    (if (gx#stx-pair? _%tl3674636923%_)
                        (let ((_%e3676436826%_ (gx#syntax-e _%tl3674636923%_)))
                          (let ((_%tl3676636833%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3676436826%_)))
                                (_%hd3676536830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3676436826%_))))
                            (if (gx#identifier? _%hd3676536830%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40020_|
                                     _%hd3676536830%_)
                                    (if (gx#stx-pair? _%tl3676636833%_)
                                        (let ((_%e3676736836%_
                                               (gx#syntax-e _%tl3676636833%_)))
                                          (let ((_%tl3676936843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3676736836%_)))
                                                (_%hd3676836840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3676736836%_))))
                                            (if (gx#stx-null? _%tl3676936843%_)
                                                (_%__kont3966539666%_
                                                 _%hd3676836840%_
                                                 _%hd3674536920%_
                                                 _%hd3663837321%_
                                                 _%hd3663537311%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3662936775%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3662936775%_)))))
                        (let () (declare (not safe)) (_%g3662936775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3662936775%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3662936775%_)))))))
                          (if (gx#stx-null? _%tl3663937324%_)
                              (_%__kont3965939660%_
                               _%hd3663837321%_
                               _%hd3663537311%_)
                              (let ()
                                (declare (not safe))
                                (_%g3662936775%_)))))))
              (if (gx#stx-pair? _%tl3663937324%_)
                  (let ((_%e3670537085%_ (gx#syntax-e _%tl3663937324%_)))
                    (let ((_%tl3670737092%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3670537085%_)))
                          (_%hd3670637089%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3670537085%_))))
                      (if (gx#stx-null? _%tl3670737092%_)
                          (_%__kont3965739658%_
                           _%hd3670637089%_
                           _%hd3663837321%_)
                          (if (gx#identifier? _%hd3670637089%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40019_|
                                   _%hd3670637089%_)
                                  (if (gx#stx-pair? _%tl3670737092%_)
                                      (let ((_%e3672836985%_
                                             (gx#syntax-e _%tl3670737092%_)))
                                        (let ((_%tl3673036992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3672836985%_)))
                                              (_%hd3672936989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3672836985%_))))
                                          (if (gx#stx-null? _%tl3673036992%_)
                                              (_%__kont3966139662%_
                                               _%hd3672936989%_
                                               _%hd3663837321%_
                                               _%hd3663537311%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3662936775%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3662936775%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3662936775%_)))
                              (if (gx#stx-datum? _%hd3670637089%_)
                                  (let ((_%e3674336912%_
                                         (gx#stx-e _%hd3670637089%_)))
                                    (if (equal? _%e3674336912%_ '::)
                                        (if (gx#stx-pair? _%tl3670737092%_)
                                            (let ((_%e3674436916%_
                                                   (gx#syntax-e
                                                    _%tl3670737092%_)))
                                              (let ((_%tl3674636923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3674436916%_)))
                                                    (_%hd3674536920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3674436916%_))))
                                                (if (gx#stx-null?
                                                     _%tl3674636923%_)
                                                    (_%__kont3966339664%_
                                                     _%hd3674536920%_
                                                     _%hd3663837321%_
                                                     _%hd3663537311%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3674636923%_)
                                                        (let ((_%e3676436826%_
                                                               (gx#syntax-e
                                                                _%tl3674636923%_)))
                                                          (let ((_%tl3676636833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3676436826%_)))
                        (_%hd3676536830%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3676436826%_))))
                    (if (gx#identifier? _%hd3676536830%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40020_|
                             _%hd3676536830%_)
                            (if (gx#stx-pair? _%tl3676636833%_)
                                (let ((_%e3676736836%_
                                       (gx#syntax-e _%tl3676636833%_)))
                                  (let ((_%tl3676936843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3676736836%_)))
                                        (_%hd3676836840%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3676736836%_))))
                                    (if (gx#stx-null? _%tl3676936843%_)
                                        (_%__kont3966539666%_
                                         _%hd3676836840%_
                                         _%hd3674536920%_
                                         _%hd3663837321%_
                                         _%hd3663537311%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3662936775%_)))
                            (let () (declare (not safe)) (_%g3662936775%_)))
                        (let () (declare (not safe)) (_%g3662936775%_)))))
                (let () (declare (not safe)) (_%g3662936775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3662936775%_)))))))
                  (if (gx#stx-null? _%tl3663937324%_)
                      (_%__kont3965939660%_ _%hd3663837321%_ _%hd3663537311%_)
                      (let () (declare (not safe)) (_%g3662936775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40023_|
                                                       _%hd3664137331%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3664237334%_)
                                                          (let ((_%e3669137149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3664237334%_)))
                    (let ((_%tl3669337156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3669137149%_)))
                          (_%hd3669237153%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3669137149%_))))
                      (if (gx#stx-null? _%tl3669337156%_)
                          (if (gx#stx-pair? _%tl3663937324%_)
                              (let ((_%e3669437159%_
                                     (gx#syntax-e _%tl3663937324%_)))
                                (let ((_%tl3669637166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3669437159%_)))
                                      (_%hd3669537163%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3669437159%_))))
                                  (if (gx#stx-null? _%tl3669637166%_)
                                      (_%__kont3965539656%_
                                       _%hd3669537163%_
                                       _%hd3669237153%_
                                       _%hd3663537311%_)
                                      (if (gx#identifier? _%hd3669537163%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40019_|
                                               _%hd3669537163%_)
                                              (if (gx#stx-pair?
                                                   _%tl3669637166%_)
                                                  (let ((_%e3672836985%_
                                                         (gx#syntax-e
                                                          _%tl3669637166%_)))
                                                    (let ((_%tl3673036992%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3672836985%_)))
                                                          (_%hd3672936989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3672836985%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3673036992%_)
                                                          (_%__kont3966139662%_
                                                           _%hd3672936989%_
                                                           _%hd3663837321%_
                                                           _%hd3663537311%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3662936775%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3662936775%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3662936775%_)))
                                          (if (gx#stx-datum? _%hd3669537163%_)
                                              (let ((_%e3674336912%_
                                                     (gx#stx-e
                                                      _%hd3669537163%_)))
                                                (if (equal? _%e3674336912%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3669637166%_)
                                                        (let ((_%e3674436916%_
                                                               (gx#syntax-e
                                                                _%tl3669637166%_)))
                                                          (let ((_%tl3674636923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3674436916%_)))
                        (_%hd3674536920%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3674436916%_))))
                    (if (gx#stx-null? _%tl3674636923%_)
                        (_%__kont3966339664%_
                         _%hd3674536920%_
                         _%hd3663837321%_
                         _%hd3663537311%_)
                        (if (gx#stx-pair? _%tl3674636923%_)
                            (let ((_%e3676436826%_
                                   (gx#syntax-e _%tl3674636923%_)))
                              (let ((_%tl3676636833%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3676436826%_)))
                                    (_%hd3676536830%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3676436826%_))))
                                (if (gx#identifier? _%hd3676536830%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40020_|
                                         _%hd3676536830%_)
                                        (if (gx#stx-pair? _%tl3676636833%_)
                                            (let ((_%e3676736836%_
                                                   (gx#syntax-e
                                                    _%tl3676636833%_)))
                                              (let ((_%tl3676936843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3676736836%_)))
                                                    (_%hd3676836840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3676736836%_))))
                                                (if (gx#stx-null?
                                                     _%tl3676936843%_)
                                                    (_%__kont3966539666%_
                                                     _%hd3676836840%_
                                                     _%hd3674536920%_
                                                     _%hd3663837321%_
                                                     _%hd3663537311%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_)))))
                            (let () (declare (not safe)) (_%g3662936775%_))))))
                (let () (declare (not safe)) (_%g3662936775%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3662936775%_)))))))
                              (if (gx#stx-null? _%tl3663937324%_)
                                  (_%__kont3965939660%_
                                   _%hd3663837321%_
                                   _%hd3663537311%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3662936775%_))))
                          (if (gx#stx-pair? _%tl3663937324%_)
                              (let ((_%e3670537085%_
                                     (gx#syntax-e _%tl3663937324%_)))
                                (let ((_%tl3670737092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3670537085%_)))
                                      (_%hd3670637089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3670537085%_))))
                                  (if (gx#stx-null? _%tl3670737092%_)
                                      (_%__kont3965739658%_
                                       _%hd3670637089%_
                                       _%hd3663837321%_)
                                      (if (gx#identifier? _%hd3670637089%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40019_|
                                               _%hd3670637089%_)
                                              (if (gx#stx-pair?
                                                   _%tl3670737092%_)
                                                  (let ((_%e3672836985%_
                                                         (gx#syntax-e
                                                          _%tl3670737092%_)))
                                                    (let ((_%tl3673036992%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3672836985%_)))
                                                          (_%hd3672936989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3672836985%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3673036992%_)
                                                          (_%__kont3966139662%_
                                                           _%hd3672936989%_
                                                           _%hd3663837321%_
                                                           _%hd3663537311%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3662936775%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3662936775%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3662936775%_)))
                                          (if (gx#stx-datum? _%hd3670637089%_)
                                              (let ((_%e3674336912%_
                                                     (gx#stx-e
                                                      _%hd3670637089%_)))
                                                (if (equal? _%e3674336912%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3670737092%_)
                                                        (let ((_%e3674436916%_
                                                               (gx#syntax-e
                                                                _%tl3670737092%_)))
                                                          (let ((_%tl3674636923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3674436916%_)))
                        (_%hd3674536920%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3674436916%_))))
                    (if (gx#stx-null? _%tl3674636923%_)
                        (_%__kont3966339664%_
                         _%hd3674536920%_
                         _%hd3663837321%_
                         _%hd3663537311%_)
                        (if (gx#stx-pair? _%tl3674636923%_)
                            (let ((_%e3676436826%_
                                   (gx#syntax-e _%tl3674636923%_)))
                              (let ((_%tl3676636833%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3676436826%_)))
                                    (_%hd3676536830%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3676436826%_))))
                                (if (gx#identifier? _%hd3676536830%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40020_|
                                         _%hd3676536830%_)
                                        (if (gx#stx-pair? _%tl3676636833%_)
                                            (let ((_%e3676736836%_
                                                   (gx#syntax-e
                                                    _%tl3676636833%_)))
                                              (let ((_%tl3676936843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3676736836%_)))
                                                    (_%hd3676836840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3676736836%_))))
                                                (if (gx#stx-null?
                                                     _%tl3676936843%_)
                                                    (_%__kont3966539666%_
                                                     _%hd3676836840%_
                                                     _%hd3674536920%_
                                                     _%hd3663837321%_
                                                     _%hd3663537311%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_)))))
                            (let () (declare (not safe)) (_%g3662936775%_))))))
                (let () (declare (not safe)) (_%g3662936775%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3662936775%_)))))))
                              (if (gx#stx-null? _%tl3663937324%_)
                                  (_%__kont3965939660%_
                                   _%hd3663837321%_
                                   _%hd3663537311%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3662936775%_)))))))
                  (if (gx#stx-pair? _%tl3663937324%_)
                      (let ((_%e3670537085%_ (gx#syntax-e _%tl3663937324%_)))
                        (let ((_%tl3670737092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3670537085%_)))
                              (_%hd3670637089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3670537085%_))))
                          (if (gx#stx-null? _%tl3670737092%_)
                              (_%__kont3965739658%_
                               _%hd3670637089%_
                               _%hd3663837321%_)
                              (if (gx#identifier? _%hd3670637089%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40019_|
                                       _%hd3670637089%_)
                                      (if (gx#stx-pair? _%tl3670737092%_)
                                          (let ((_%e3672836985%_
                                                 (gx#syntax-e
                                                  _%tl3670737092%_)))
                                            (let ((_%tl3673036992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3672836985%_)))
                                                  (_%hd3672936989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3672836985%_))))
                                              (if (gx#stx-null?
                                                   _%tl3673036992%_)
                                                  (_%__kont3966139662%_
                                                   _%hd3672936989%_
                                                   _%hd3663837321%_
                                                   _%hd3663537311%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3662936775%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3662936775%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3662936775%_)))
                                  (if (gx#stx-datum? _%hd3670637089%_)
                                      (let ((_%e3674336912%_
                                             (gx#stx-e _%hd3670637089%_)))
                                        (if (equal? _%e3674336912%_ '::)
                                            (if (gx#stx-pair? _%tl3670737092%_)
                                                (let ((_%e3674436916%_
                                                       (gx#syntax-e
                                                        _%tl3670737092%_)))
                                                  (let ((_%tl3674636923%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3674436916%_)))
                                                        (_%hd3674536920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3674436916%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3674636923%_)
                                                        (_%__kont3966339664%_
                                                         _%hd3674536920%_
                                                         _%hd3663837321%_
                                                         _%hd3663537311%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3674636923%_)
                                                            (let ((_%e3676436826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3674636923%_)))
                      (let ((_%tl3676636833%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3676436826%_)))
                            (_%hd3676536830%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3676436826%_))))
                        (if (gx#identifier? _%hd3676536830%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40020_|
                                 _%hd3676536830%_)
                                (if (gx#stx-pair? _%tl3676636833%_)
                                    (let ((_%e3676736836%_
                                           (gx#syntax-e _%tl3676636833%_)))
                                      (let ((_%tl3676936843%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3676736836%_)))
                                            (_%hd3676836840%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3676736836%_))))
                                        (if (gx#stx-null? _%tl3676936843%_)
                                            (_%__kont3966539666%_
                                             _%hd3676836840%_
                                             _%hd3674536920%_
                                             _%hd3663837321%_
                                             _%hd3663537311%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3662936775%_)))
                            (let () (declare (not safe)) (_%g3662936775%_)))))
                    (let () (declare (not safe)) (_%g3662936775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3662936775%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3662936775%_)))))))
                      (if (gx#stx-null? _%tl3663937324%_)
                          (_%__kont3965939660%_
                           _%hd3663837321%_
                           _%hd3663537311%_)
                          (let () (declare (not safe)) (_%g3662936775%_)))))
              (if (gx#stx-pair? _%tl3663937324%_)
                  (let ((_%e3670537085%_ (gx#syntax-e _%tl3663937324%_)))
                    (let ((_%tl3670737092%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3670537085%_)))
                          (_%hd3670637089%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3670537085%_))))
                      (if (gx#stx-null? _%tl3670737092%_)
                          (_%__kont3965739658%_
                           _%hd3670637089%_
                           _%hd3663837321%_)
                          (if (gx#identifier? _%hd3670637089%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40019_|
                                   _%hd3670637089%_)
                                  (if (gx#stx-pair? _%tl3670737092%_)
                                      (let ((_%e3672836985%_
                                             (gx#syntax-e _%tl3670737092%_)))
                                        (let ((_%tl3673036992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3672836985%_)))
                                              (_%hd3672936989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3672836985%_))))
                                          (if (gx#stx-null? _%tl3673036992%_)
                                              (_%__kont3966139662%_
                                               _%hd3672936989%_
                                               _%hd3663837321%_
                                               _%hd3663537311%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3662936775%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3662936775%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3662936775%_)))
                              (if (gx#stx-datum? _%hd3670637089%_)
                                  (let ((_%e3674336912%_
                                         (gx#stx-e _%hd3670637089%_)))
                                    (if (equal? _%e3674336912%_ '::)
                                        (if (gx#stx-pair? _%tl3670737092%_)
                                            (let ((_%e3674436916%_
                                                   (gx#syntax-e
                                                    _%tl3670737092%_)))
                                              (let ((_%tl3674636923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3674436916%_)))
                                                    (_%hd3674536920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3674436916%_))))
                                                (if (gx#stx-null?
                                                     _%tl3674636923%_)
                                                    (_%__kont3966339664%_
                                                     _%hd3674536920%_
                                                     _%hd3663837321%_
                                                     _%hd3663537311%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3674636923%_)
                                                        (let ((_%e3676436826%_
                                                               (gx#syntax-e
                                                                _%tl3674636923%_)))
                                                          (let ((_%tl3676636833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3676436826%_)))
                        (_%hd3676536830%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3676436826%_))))
                    (if (gx#identifier? _%hd3676536830%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40020_|
                             _%hd3676536830%_)
                            (if (gx#stx-pair? _%tl3676636833%_)
                                (let ((_%e3676736836%_
                                       (gx#syntax-e _%tl3676636833%_)))
                                  (let ((_%tl3676936843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3676736836%_)))
                                        (_%hd3676836840%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3676736836%_))))
                                    (if (gx#stx-null? _%tl3676936843%_)
                                        (_%__kont3966539666%_
                                         _%hd3676836840%_
                                         _%hd3674536920%_
                                         _%hd3663837321%_
                                         _%hd3663537311%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3662936775%_)))
                            (let () (declare (not safe)) (_%g3662936775%_)))
                        (let () (declare (not safe)) (_%g3662936775%_)))))
                (let () (declare (not safe)) (_%g3662936775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3662936775%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3662936775%_)))))))
                  (if (gx#stx-null? _%tl3663937324%_)
                      (_%__kont3965939660%_ _%hd3663837321%_ _%hd3663537311%_)
                      (let () (declare (not safe)) (_%g3662936775%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3663937324%_)
                                              (let ((_%e3670537085%_
                                                     (gx#syntax-e
                                                      _%tl3663937324%_)))
                                                (let ((_%tl3670737092%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3670537085%_)))
                                                      (_%hd3670637089%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3670537085%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3670737092%_)
                                                      (_%__kont3965739658%_
                                                       _%hd3670637089%_
                                                       _%hd3663837321%_)
                                                      (if (gx#identifier?
                                                           _%hd3670637089%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40019_|
                                                               _%hd3670637089%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3670737092%_)
                          (let ((_%e3672836985%_
                                 (gx#syntax-e _%tl3670737092%_)))
                            (let ((_%tl3673036992%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3672836985%_)))
                                  (_%hd3672936989%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3672836985%_))))
                              (if (gx#stx-null? _%tl3673036992%_)
                                  (_%__kont3966139662%_
                                   _%hd3672936989%_
                                   _%hd3663837321%_
                                   _%hd3663537311%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3662936775%_)))))
                          (let () (declare (not safe)) (_%g3662936775%_)))
                      (let () (declare (not safe)) (_%g3662936775%_)))
                  (if (gx#stx-datum? _%hd3670637089%_)
                      (let ((_%e3674336912%_ (gx#stx-e _%hd3670637089%_)))
                        (if (equal? _%e3674336912%_ '::)
                            (if (gx#stx-pair? _%tl3670737092%_)
                                (let ((_%e3674436916%_
                                       (gx#syntax-e _%tl3670737092%_)))
                                  (let ((_%tl3674636923%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3674436916%_)))
                                        (_%hd3674536920%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3674436916%_))))
                                    (if (gx#stx-null? _%tl3674636923%_)
                                        (_%__kont3966339664%_
                                         _%hd3674536920%_
                                         _%hd3663837321%_
                                         _%hd3663537311%_)
                                        (if (gx#stx-pair? _%tl3674636923%_)
                                            (let ((_%e3676436826%_
                                                   (gx#syntax-e
                                                    _%tl3674636923%_)))
                                              (let ((_%tl3676636833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3676436826%_)))
                                                    (_%hd3676536830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3676436826%_))))
                                                (if (gx#identifier?
                                                     _%hd3676536830%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40020_|
                                                         _%hd3676536830%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3676636833%_)
                                                            (let ((_%e3676736836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3676636833%_)))
                      (let ((_%tl3676936843%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3676736836%_)))
                            (_%hd3676836840%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3676736836%_))))
                        (if (gx#stx-null? _%tl3676936843%_)
                            (_%__kont3966539666%_
                             _%hd3676836840%_
                             _%hd3674536920%_
                             _%hd3663837321%_
                             _%hd3663537311%_)
                            (let () (declare (not safe)) (_%g3662936775%_)))))
                    (let () (declare (not safe)) (_%g3662936775%_)))
                (let () (declare (not safe)) (_%g3662936775%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3662936775%_)))
                            (let () (declare (not safe)) (_%g3662936775%_))))
                      (let () (declare (not safe)) (_%g3662936775%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3663937324%_)
                                                  (_%__kont3965939660%_
                                                   _%hd3663837321%_
                                                   _%hd3663537311%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3662936775%_)))))))
                                  (if (gx#stx-pair? _%tl3663937324%_)
                                      (let ((_%e3670537085%_
                                             (gx#syntax-e _%tl3663937324%_)))
                                        (let ((_%tl3670737092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3670537085%_)))
                                              (_%hd3670637089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3670537085%_))))
                                          (if (gx#stx-null? _%tl3670737092%_)
                                              (_%__kont3965739658%_
                                               _%hd3670637089%_
                                               _%hd3663837321%_)
                                              (if (gx#identifier?
                                                   _%hd3670637089%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40019_|
                                                       _%hd3670637089%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3670737092%_)
                                                          (let ((_%e3672836985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3670737092%_)))
                    (let ((_%tl3673036992%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3672836985%_)))
                          (_%hd3672936989%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3672836985%_))))
                      (if (gx#stx-null? _%tl3673036992%_)
                          (_%__kont3966139662%_
                           _%hd3672936989%_
                           _%hd3663837321%_
                           _%hd3663537311%_)
                          (let () (declare (not safe)) (_%g3662936775%_)))))
                  (let () (declare (not safe)) (_%g3662936775%_)))
              (let () (declare (not safe)) (_%g3662936775%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3670637089%_)
                                                      (let ((_%e3674336912%_
                                                             (gx#stx-e
                                                              _%hd3670637089%_)))
                                                        (if (equal? _%e3674336912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3670737092%_)
                        (let ((_%e3674436916%_ (gx#syntax-e _%tl3670737092%_)))
                          (let ((_%tl3674636923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3674436916%_)))
                                (_%hd3674536920%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3674436916%_))))
                            (if (gx#stx-null? _%tl3674636923%_)
                                (_%__kont3966339664%_
                                 _%hd3674536920%_
                                 _%hd3663837321%_
                                 _%hd3663537311%_)
                                (if (gx#stx-pair? _%tl3674636923%_)
                                    (let ((_%e3676436826%_
                                           (gx#syntax-e _%tl3674636923%_)))
                                      (let ((_%tl3676636833%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3676436826%_)))
                                            (_%hd3676536830%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3676436826%_))))
                                        (if (gx#identifier? _%hd3676536830%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40020_|
                                                 _%hd3676536830%_)
                                                (if (gx#stx-pair?
                                                     _%tl3676636833%_)
                                                    (let ((_%e3676736836%_
                                                           (gx#syntax-e
                                                            _%tl3676636833%_)))
                                                      (let ((_%tl3676936843%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3676736836%_)))
                    (_%hd3676836840%_
                     (let () (declare (not safe)) (##car _%e3676736836%_))))
                (if (gx#stx-null? _%tl3676936843%_)
                    (_%__kont3966539666%_
                     _%hd3676836840%_
                     _%hd3674536920%_
                     _%hd3663837321%_
                     _%hd3663537311%_)
                    (let () (declare (not safe)) (_%g3662936775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3662936775%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3662936775%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3662936775%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3662936775%_))))))
                        (let () (declare (not safe)) (_%g3662936775%_)))
                    (let () (declare (not safe)) (_%g3662936775%_))))
              (let () (declare (not safe)) (_%g3662936775%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3663937324%_)
                                          (_%__kont3965939660%_
                                           _%hd3663837321%_
                                           _%hd3663537311%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3662936775%_)))))))
                          (let () (declare (not safe)) (_%g3662936775%_)))))
                  (let () (declare (not safe)) (_%g3662936775%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37414%_)
        (let* ((_%__stx3991239913%_ _%$stx37414%_)
               (_%g3741937453%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3991239913%_))))
          (let ((_%__kont3991539916%_
                 (lambda (_%g3742137557%_ _%g3742237559%_ _%g3742337560%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3742337560%_
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
                                       (cons _%g3742237559%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3742137557%_ '()))
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
                (_%__kont3991739918%_
                 (lambda (_%g3743637490%_ _%g3743737492%_ _%g3743837493%_)
                   (cons _%g3743837493%_
                         (cons _%g3743737492%_
                               (cons _%g3743637490%_
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
            (let ((_%__match3994539946%_
                   (lambda (_%e3742437517%_
                            _%hd3742537521%_
                            _%tl3742637524%_
                            _%e3742737527%_
                            _%hd3742837531%_
                            _%tl3742937534%_
                            _%e3743037537%_
                            _%hd3743137541%_
                            _%tl3743237544%_
                            _%e3743337547%_
                            _%hd3743437551%_
                            _%tl3743537554%_)
                     (let ((_%g3742137557%_ _%hd3743437551%_)
                           (_%g3742237559%_ _%hd3743137541%_)
                           (_%g3742337560%_ _%hd3742837531%_))
                       (if (gx#identifier? _%g3742337560%_)
                           (_%__kont3991539916%_
                            _%g3742137557%_
                            _%g3742237559%_
                            _%g3742337560%_)
                           (let () (declare (not safe)) (_%g3741937453%_)))))))
              (if (gx#stx-pair? _%__stx3991239913%_)
                  (let ((_%e3742437517%_ (gx#syntax-e _%__stx3991239913%_)))
                    (let ((_%tl3742637524%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3742437517%_)))
                          (_%hd3742537521%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3742437517%_))))
                      (if (gx#stx-pair? _%tl3742637524%_)
                          (let ((_%e3742737527%_
                                 (gx#syntax-e _%tl3742637524%_)))
                            (let ((_%tl3742937534%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3742737527%_)))
                                  (_%hd3742837531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3742737527%_))))
                              (if (gx#stx-pair? _%tl3742937534%_)
                                  (let ((_%e3743037537%_
                                         (gx#syntax-e _%tl3742937534%_)))
                                    (let ((_%tl3743237544%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3743037537%_)))
                                          (_%hd3743137541%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3743037537%_))))
                                      (if (gx#stx-pair? _%tl3743237544%_)
                                          (let ((_%e3743337547%_
                                                 (gx#syntax-e
                                                  _%tl3743237544%_)))
                                            (let ((_%tl3743537554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3743337547%_)))
                                                  (_%hd3743437551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3743337547%_))))
                                              (if (gx#stx-null?
                                                   _%tl3743537554%_)
                                                  (_%__match3994539946%_
                                                   _%e3742437517%_
                                                   _%hd3742537521%_
                                                   _%tl3742637524%_
                                                   _%e3742737527%_
                                                   _%hd3742837531%_
                                                   _%tl3742937534%_
                                                   _%e3743037537%_
                                                   _%hd3743137541%_
                                                   _%tl3743237544%_
                                                   _%e3743337547%_
                                                   _%hd3743437551%_
                                                   _%tl3743537554%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3741937453%_)))))
                                          (if (gx#stx-null? _%tl3743237544%_)
                                              (_%__kont3991739918%_
                                               _%hd3743137541%_
                                               _%hd3742837531%_
                                               _%hd3742537521%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3741937453%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3741937453%_)))))
                          (let () (declare (not safe)) (_%g3741937453%_)))))
                  (let () (declare (not safe)) (_%g3741937453%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37582%_)
        (let* ((_%g3758637601%_
                (lambda (_%g3758737597%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3758737597%_)))
               (_%g3758537644%_
                (lambda (_%g3758737605%_)
                  (if (gx#stx-pair? _%g3758737605%_)
                      (let ((_%e3759037608%_ (gx#syntax-e _%g3758737605%_)))
                        (let ((_%hd3759137612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3759037608%_)))
                              (_%tl3759237615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3759037608%_))))
                          (if (gx#stx-pair? _%tl3759237615%_)
                              (let ((_%e3759337618%_
                                     (gx#syntax-e _%tl3759237615%_)))
                                (let ((_%hd3759437622%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3759337618%_)))
                                      (_%tl3759537625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3759337618%_))))
                                  ((lambda (_%g3758837628%_ _%g3758937630%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g3758937630%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g3758837628%_)
                                                       '()))))
                                   _%tl3759537625%_
                                   _%hd3759437622%_)))
                              (_%g3758637601%_ _%g3758737605%_))))
                      (_%g3758637601%_ _%g3758737605%_)))))
          (_%g3758537644%_ _%$stx37582%_))))))
