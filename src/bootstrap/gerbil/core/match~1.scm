(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g40013_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40014_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40019_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40020_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40021_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40023_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40024_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40025_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40026_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40027_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40028_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40029_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40030_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40031_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40032_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40099_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40126_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40129_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40130_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g40136_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40137_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40138_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40139_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g40140_|
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
      (lambda _%$args35312%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35312%_)))
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
      (lambda (_%stx35309%_)
        (if (gx#identifier? _%stx35309%_)
            (let ((__tmp40012 (gx#syntax-local-value _%stx35309%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp40012))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33609%_ _%match-stx33611%_)
        (letrec ((_%parse133613%_
                  (lambda (_%hd33972%_)
                    (let* ((_%__stx3780037801%_ _%hd33972%_)
                           (_%g3399834140%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3780037801%_))))
                      (let ((_%__kont3780337804%_
                             (lambda (_%L35072%_ _%L35074%_)
                               (let* ((_%__stx3772037721%_ _%L35072%_)
                                      (_%g3509135124%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3772037721%_))))
                                 (let ((_%__kont3772337724%_
                                        (lambda ()
                                          (cons '?: (cons _%L35074%_ '()))))
                                       (_%__kont3772537726%_
                                        (lambda (_%L35265%_)
                                          (cons '?:
                                                (cons _%L35074%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%parse133613%_
                                                               _%L35265%_))
                                                            '())))))
                                       (_%__kont3772737728%_
                                        (lambda (_%L35235%_)
                                          (cons '?:
                                                (cons _%L35074%_
                                                      (cons '=>:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (_%parse133613%_ _%L35235%_))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3772937730%_
                                        (lambda (_%L35186%_ _%L35188%_)
                                          (cons '?:
                                                (cons _%L35074%_
                                                      (cons '::
                                                            (cons _%L35188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (let ()
                                        (declare (not safe))
                                        (_%parse133613%_ _%L35186%_))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3773137732%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_%parse-error33620%_
                                             _%hd33972%_)))))
                                   (let ((_%g3508735276%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3772037721%_)
                                                (let ((_%e3509635255%_
                                                       (gx#syntax-e
                                                        _%__stx3772037721%_)))
                                                  (let ((_%tl3509435262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3509635255%_)))
                                                        (_%hd3509535259%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3509635255%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3509435262%_)
                                                        (_%__kont3772537726%_
                                                         _%hd3509535259%_)
                                                        (if (gx#identifier?
                                                             _%hd3509535259%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40013_|
                         _%hd3509535259%_)
                        (if (gx#stx-pair? _%tl3509435262%_)
                            (let ((_%e3510335225%_
                                   (gx#syntax-e _%tl3509435262%_)))
                              (let ((_%tl3510135232%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3510335225%_)))
                                    (_%hd3510235229%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3510335225%_))))
                                (if (gx#stx-null? _%tl3510135232%_)
                                    (_%__kont3772737728%_ _%hd3510235229%_)
                                    (_%__kont3773137732%_))))
                            (_%__kont3773137732%_))
                        (_%__kont3773137732%_))
                    (if (gx#stx-datum? _%hd3509535259%_)
                        (let ((_%e3510935152%_ (gx#stx-e _%hd3509535259%_)))
                          (if (equal? _%e3510935152%_ '::)
                              (if (gx#stx-pair? _%tl3509435262%_)
                                  (let ((_%e3511235156%_
                                         (gx#syntax-e _%tl3509435262%_)))
                                    (let ((_%tl3511035163%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3511235156%_)))
                                          (_%hd3511135160%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3511235156%_))))
                                      (if (gx#stx-pair? _%tl3511035163%_)
                                          (let ((_%e3511535166%_
                                                 (gx#syntax-e
                                                  _%tl3511035163%_)))
                                            (let ((_%tl3511335173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3511535166%_)))
                                                  (_%hd3511435170%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3511535166%_))))
                                              (if (gx#identifier?
                                                   _%hd3511435170%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40014_|
                                                       _%hd3511435170%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3511335173%_)
                                                          (let ((_%e3511835176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3511335173%_)))
                    (let ((_%tl3511635183%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3511835176%_)))
                          (_%hd3511735180%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3511835176%_))))
                      (if (gx#stx-null? _%tl3511635183%_)
                          (_%__kont3772937730%_
                           _%hd3511735180%_
                           _%hd3511135160%_)
                          (_%__kont3773137732%_))))
                  (_%__kont3773137732%_))
              (_%__kont3773137732%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3773137732%_))))
                                          (_%__kont3773137732%_))))
                                  (_%__kont3773137732%_))
                              (_%__kont3773137732%_)))
                        (_%__kont3773137732%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3773137732%_)))))
                                     (if (gx#stx-null? _%__stx3772037721%_)
                                         (_%__kont3772337724%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3508735276%_))))))))
                            (_%__kont3780537806%_
                             (lambda (_%L34977%_)
                               (let* ((_%__stx3770237703%_ _%L34977%_)
                                      (_%g3498935000%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3770237703%_))))
                                 (let ((_%__kont3770537706%_
                                        (lambda (_%L35028%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%parse133613%_ _%L35028%_))))
                                       (_%__kont3770737708%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133613%_
                                                 _%L34977%_)))))
                                   (if (gx#stx-pair? _%__stx3770237703%_)
                                       (let ((_%e3499435018%_
                                              (gx#syntax-e
                                               _%__stx3770237703%_)))
                                         (let ((_%tl3499235025%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3499435018%_)))
                                               (_%hd3499335022%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3499435018%_))))
                                           (if (gx#stx-null? _%tl3499235025%_)
                                               (_%__kont3770537706%_
                                                _%hd3499335022%_)
                                               (_%__kont3770737708%_))))
                                       (_%__kont3770737708%_))))))
                            (_%__kont3780737808%_
                             (lambda (_%L34892%_)
                               (let* ((_%__stx3768437685%_ _%L34892%_)
                                      (_%g3490434915%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3768437685%_))))
                                 (let ((_%__kont3768737688%_
                                        (lambda (_%L34943%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%parse133613%_ _%L34943%_))))
                                       (_%__kont3768937690%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133613%_
                                                 _%L34892%_)))))
                                   (if (gx#stx-pair? _%__stx3768437685%_)
                                       (let ((_%e3490934933%_
                                              (gx#syntax-e
                                               _%__stx3768437685%_)))
                                         (let ((_%tl3490734940%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3490934933%_)))
                                               (_%hd3490834937%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3490934933%_))))
                                           (if (gx#stx-null? _%tl3490734940%_)
                                               (_%__kont3768737688%_
                                                _%hd3490834937%_)
                                               (_%__kont3768937690%_))))
                                       (_%__kont3768937690%_))))))
                            (_%__kont3780937810%_
                             (lambda (_%L34862%_)
                               (cons 'not:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133613%_ _%L34862%_))
                                           '()))))
                            (_%__kont3781137812%_
                             (lambda (_%L34818%_ _%L34820%_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133613%_ _%L34820%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse133613%_
                                                    _%L34818%_))
                                                 '())))))
                            (_%__kont3781337814%_
                             (lambda (_%L34762%_ _%L34764%_ _%L34765%_)
                               (if (gx#stx-null? _%L34762%_)
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%parse133613%_ _%L34765%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (_%parse133613%_
                                                        _%L34764%_))
                                                     '())))
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%parse133613%_ _%L34765%_))
                                               (cons (let ((__tmp40015
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons*)
                          (cons _%L34764%_ _%L34762%_))))
               (declare (not safe))
               (_%parse133613%_ __tmp40015))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3781537816%_
                             (lambda (_%L34714%_)
                               (let ()
                                 (declare (not safe))
                                 (_%parse-list33615%_ _%L34714%_))))
                            (_%__kont3781737818%_
                             (lambda (_%L34684%_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133613%_ _%L34684%_))
                                           '()))))
                            (_%__kont3781937820%_
                             (lambda (_%L34647%_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133613%_ _%L34647%_))
                                           '()))))
                            (_%__kont3782137822%_
                             (lambda (_%L34623%_)
                               (let ()
                                 (declare (not safe))
                                 (_%parse133613%_ _%L34623%_))))
                            (_%__kont3782337824%_
                             (lambda (_%L34585%_)
                               (cons 'values:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse-vector33616%_
                                              _%L34585%_))
                                           '()))))
                            (_%__kont3782537826%_
                             (lambda (_%L34557%_)
                               (cons 'vector:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse-vector33616%_
                                              _%L34557%_))
                                           '()))))
                            (_%__kont3782737828%_
                             (lambda (_%L34518%_)
                               (cons 'vector:
                                     (cons (let ((__tmp40016
                                                  (foldr (lambda (_%g3453134534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3453234537%_)
                   (cons _%g3453134534%_ _%g3453234537%_))
                 '()
                 _%L34518%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%parse-vector33616%_
                                              __tmp40016))
                                           '()))))
                            (_%__kont3783137832%_
                             (lambda (_%L34464%_ _%L34466%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34466%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse-vector33616%_
                                                    _%L34464%_))
                                                 '())))))
                            (_%__kont3783337834%_
                             (lambda (_%L34434%_ _%L34436%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34436%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse-class-body33618%_
                                                    _%L34434%_))
                                                 '())))))
                            (_%__kont3783537836%_
                             (lambda (_%L34394%_ _%L34396%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34396%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3783737838%_
                             (lambda (_%L34354%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34354%_) '()))))
                            (_%__kont3783937840%_
                             (lambda (_%L34314%_)
                               (let ()
                                 (declare (not safe))
                                 (_%parse-qq33619%_ _%L34314%_))))
                            (_%__kont3784137842%_
                             (lambda (_%L34270%_ _%L34272%_)
                               (cons 'apply:
                                     (cons _%L34272%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse133613%_
                                                    _%L34270%_))
                                                 '())))))
                            (_%__kont3784337844%_
                             (lambda (_%L34218%_)
                               (let ((__tmp40017
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _%L34218%_)
                                       (gx#stx-wrap-source
                                        (cons 'match: _%hd33972%_)
                                        (let ((_%$e34229%_
                                               (gx#stx-source _%hd33972%_)))
                                          (if _%$e34229%_
                                              _%$e34229%_
                                              (gx#stx-source
                                               _%stx33609%_)))))))
                                 (declare (not safe))
                                 (_%parse133613%_ __tmp40017))))
                            (_%__kont3784537846%_
                             (lambda (_%L34192%_) (cons 'any: '())))
                            (_%__kont3784737848%_
                             (lambda (_%L34176%_)
                               (cons 'var: (cons _%L34176%_ '()))))
                            (_%__kont3784937850%_
                             (lambda (_%L34158%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34158%_) '()))))
                            (_%__kont3785137852%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%parse-error33620%_ _%hd33972%_)))))
                        (let* ((_%g3399634169%_
                                (lambda ()
                                  (let ((_%L34158%_ _%__stx3780037801%_))
                                    (if (gx#stx-datum? _%L34158%_)
                                        (_%__kont3784937850%_ _%L34158%_)
                                        (_%__kont3785137852%_)))))
                               (_%g3399534185%_
                                (lambda ()
                                  (let ((_%L34176%_ _%__stx3780037801%_))
                                    (if (and (gx#identifier? _%L34176%_)
                                             (let ((__tmp40018
                                                    (gx#ellipsis? _%L34176%_)))
                                               (declare (not safe))
                                               (not __tmp40018)))
                                        (_%__kont3784737848%_ _%L34176%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3399634169%_))))))
                               (_%g3399434201%_
                                (lambda ()
                                  (let ((_%L34192%_ _%__stx3780037801%_))
                                    (if (gx#underscore? _%L34192%_)
                                        (_%__kont3784537846%_ _%L34192%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3399534185%_))))))
                               (_%__match3812738128%_
                                (lambda (_%e3413134208%_
                                         _%hd3413034212%_
                                         _%tl3412934215%_)
                                  (let ((_%L34218%_ _%hd3413034212%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core/match[1]#syntax-local-match-macro?|
                                           _%L34218%_))
                                        (_%__kont3784337844%_ _%L34218%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3399434201%_))))))
                               (_%__match3806138062%_
                                (lambda (_%e3409934374%_
                                         _%hd3409834378%_
                                         _%tl3409734381%_
                                         _%e3410234384%_
                                         _%hd3410134388%_
                                         _%tl3410034391%_)
                                  (let ((_%L34394%_ _%hd3410134388%_)
                                        (_%L34396%_ _%hd3409834378%_))
                                    (if (and (gx#identifier? _%L34396%_)
                                             (or (gx#free-identifier=?
                                                  _%L34396%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34396%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34396%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3783537836%_
                                         _%L34394%_
                                         _%L34396%_)
                                        (if (gx#identifier? _%hd3409834378%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40019_|
                                                 _%hd3409834378%_)
                                                (_%__kont3783737838%_
                                                 _%hd3410134388%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g40020_|
                                                     _%hd3409834378%_)
                                                    (_%__kont3783937840%_
                                                     _%hd3410134388%_)
                                                    (_%__match3812738128%_
                                                     _%e3409934374%_
                                                     _%hd3409834378%_
                                                     _%tl3409734381%_)))
                                            (_%__match3812738128%_
                                             _%e3409934374%_
                                             _%hd3409834378%_
                                             _%tl3409734381%_))))))
                               (_%__match3804738048%_
                                (lambda (_%e3409434424%_
                                         _%hd3409334428%_
                                         _%tl3409234431%_)
                                  (let ((_%L34434%_ _%tl3409234431%_)
                                        (_%L34436%_ _%hd3409334428%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34436%_))
                                        (_%__kont3783337834%_
                                         _%L34434%_
                                         _%L34436%_)
                                        (if (gx#stx-pair? _%tl3409234431%_)
                                            (let ((_%e3410234384%_
                                                   (gx#syntax-e
                                                    _%tl3409234431%_)))
                                              (let ((_%tl3410034391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3410234384%_)))
                                                    (_%hd3410134388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3410234384%_))))
                                                (if (gx#stx-null?
                                                     _%tl3410034391%_)
                                                    (_%__match3806138062%_
                                                     _%e3409434424%_
                                                     _%hd3409334428%_
                                                     _%tl3409234431%_
                                                     _%e3410234384%_
                                                     _%hd3410134388%_
                                                     _%tl3410034391%_)
                                                    (if (gx#identifier?
                                                         _%hd3409334428%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g40019_|
                                                             _%hd3409334428%_)
                                                            (_%__match3812738128%_
                                                             _%e3409434424%_
                                                             _%hd3409334428%_
                                                             _%tl3409234431%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g40020_|
                         _%hd3409334428%_)
                        (_%__match3812738128%_
                         _%e3409434424%_
                         _%hd3409334428%_
                         _%tl3409234431%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40021_|
                             _%hd3409334428%_)
                            (if (gx#stx-pair? _%tl3410034391%_)
                                (let ((_%e3412734260%_
                                       (gx#syntax-e _%tl3410034391%_)))
                                  (let ((_%tl3412534267%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3412734260%_)))
                                        (_%hd3412634264%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3412734260%_))))
                                    (if (gx#stx-null? _%tl3412534267%_)
                                        (_%__kont3784137842%_
                                         _%hd3412634264%_
                                         _%hd3410134388%_)
                                        (_%__match3812738128%_
                                         _%e3409434424%_
                                         _%hd3409334428%_
                                         _%tl3409234431%_))))
                                (_%__match3812738128%_
                                 _%e3409434424%_
                                 _%hd3409334428%_
                                 _%tl3409234431%_))
                            (_%__match3812738128%_
                             _%e3409434424%_
                             _%hd3409334428%_
                             _%tl3409234431%_))))
                (_%__match3812738128%_
                 _%e3409434424%_
                 _%hd3409334428%_
                 _%tl3409234431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3812738128%_
                                             _%e3409434424%_
                                             _%hd3409334428%_
                                             _%tl3409234431%_))))))
                               (_%__match3804138042%_
                                (lambda (_%e3408934454%_
                                         _%hd3408834458%_
                                         _%tl3408734461%_)
                                  (let ((_%L34464%_ _%tl3408734461%_)
                                        (_%L34466%_ _%hd3408834458%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34466%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3783137832%_
                                         _%L34464%_
                                         _%L34466%_)
                                        (_%__match3804738048%_
                                         _%e3408934454%_
                                         _%hd3408834458%_
                                         _%tl3408734461%_)))))
                               (_%__match3803538036%_
                                (lambda (_%e3407534484%_
                                         _%__splice3782937830%_
                                         _%target3407634488%_
                                         _%tl3407834491%_)
                                  (letrec ((_%loop3407934494%_
                                            (lambda (_%hd3407734498%_
                                                     _%body3408334501%_)
                                              (if (gx#stx-pair?
                                                   _%hd3407734498%_)
                                                  (let ((_%e3408034504%_
                                                         (gx#syntax-e
                                                          _%hd3407734498%_)))
                                                    (let ((_%lp-tl3408234511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3408034504%_)))
                                                          (_%lp-hd3408134508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3408034504%_))))
                                                      (let ((__tmp40022
                                                             (cons _%lp-hd3408134508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body3408334501%_)))
                (declare (not safe))
                (_%loop3407934494%_ _%lp-tl3408234511%_ __tmp40022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%body3408434514%_
                                                         (reverse _%body3408334501%_)))
                                                    (_%__kont3782737828%_
                                                     _%body3408434514%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%loop3407934494%_
                                       _%target3407634488%_
                                       '())))))
                               (_%g3398634540%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3780037801%_)
                                      (let ((_%e3407534484%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3780037801%_))))
                                        (if (gx#stx-pair/null? _%e3407534484%_)
                                            (let ((_%__splice3782937830%_
                                                   (gx#syntax-split-splice
                                                    _%e3407534484%_
                                                    '0)))
                                              (let ((_%tl3407834491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3782937830%_
                                                        '1)))
                                                    (_%target3407634488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3782937830%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3407834491%_)
                                                    (_%__match3803538036%_
                                                     _%e3407534484%_
                                                     _%__splice3782937830%_
                                                     _%target3407634488%_
                                                     _%tl3407834491%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3399434201%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3399434201%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3399434201%_)))))
                               (_%g3398234657%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3780037801%_)
                                      (let ((_%e3405834643%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3780037801%_))))
                                        (_%__kont3781937820%_ _%e3405834643%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3398634540%_)))))
                               (_%__match3788937890%_
                                (lambda (_%e3401534882%_
                                         _%hd3401434886%_
                                         _%tl3401334889%_)
                                  (let ((_%L34892%_ _%tl3401334889%_))
                                    (if (gx#stx-list? _%L34892%_)
                                        (_%__kont3780737808%_ _%L34892%_)
                                        (_%__match3804138042%_
                                         _%e3401534882%_
                                         _%hd3401434886%_
                                         _%tl3401334889%_)))))
                               (_%__match3787937880%_
                                (lambda (_%e3401134967%_
                                         _%hd3401034971%_
                                         _%tl3400934974%_)
                                  (let ((_%L34977%_ _%tl3400934974%_))
                                    (if (gx#stx-list? _%L34977%_)
                                        (_%__kont3780537806%_ _%L34977%_)
                                        (_%__match3804138042%_
                                         _%e3401134967%_
                                         _%hd3401034971%_
                                         _%tl3400934974%_))))))
                          (if (gx#stx-pair? _%__stx3780037801%_)
                              (let ((_%e3400435052%_
                                     (gx#syntax-e _%__stx3780037801%_)))
                                (let ((_%tl3400235059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3400435052%_)))
                                      (_%hd3400335056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3400435052%_))))
                                  (if (gx#identifier? _%hd3400335056%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40023_|
                                           _%hd3400335056%_)
                                          (if (gx#stx-pair? _%tl3400235059%_)
                                              (let ((_%e3400735062%_
                                                     (gx#syntax-e
                                                      _%tl3400235059%_)))
                                                (let ((_%tl3400535069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3400735062%_)))
                                                      (_%hd3400635066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3400735062%_))))
                                                  (_%__kont3780337804%_
                                                   _%tl3400535069%_
                                                   _%hd3400635066%_)))
                                              (_%__match3804138042%_
                                               _%e3400435052%_
                                               _%hd3400335056%_
                                               _%tl3400235059%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40024_|
                                               _%hd3400335056%_)
                                              (_%__match3787937880%_
                                               _%e3400435052%_
                                               _%hd3400335056%_
                                               _%tl3400235059%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40025_|
                                                   _%hd3400335056%_)
                                                  (_%__match3788937890%_
                                                   _%e3400435052%_
                                                   _%hd3400335056%_
                                                   _%tl3400235059%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40026_|
                                                       _%hd3400335056%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3400235059%_)
                                                          (let ((_%e3402234852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3400235059%_)))
                    (let ((_%tl3402034859%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3402234852%_)))
                          (_%hd3402134856%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3402234852%_))))
                      (if (gx#stx-null? _%tl3402034859%_)
                          (_%__kont3780937810%_ _%hd3402134856%_)
                          (_%__match3804138042%_
                           _%e3400435052%_
                           _%hd3400335056%_
                           _%tl3400235059%_))))
                  (_%__match3804138042%_
                   _%e3400435052%_
                   _%hd3400335056%_
                   _%tl3400235059%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g40027_|
                   _%hd3400335056%_)
                  (if (gx#stx-pair? _%tl3400235059%_)
                      (let ((_%e3403034798%_ (gx#syntax-e _%tl3400235059%_)))
                        (let ((_%tl3402834805%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3403034798%_)))
                              (_%hd3402934802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3403034798%_))))
                          (if (gx#stx-pair? _%tl3402834805%_)
                              (let ((_%e3403334808%_
                                     (gx#syntax-e _%tl3402834805%_)))
                                (let ((_%tl3403134815%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3403334808%_)))
                                      (_%hd3403234812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3403334808%_))))
                                  (if (gx#stx-null? _%tl3403134815%_)
                                      (_%__kont3781137812%_
                                       _%hd3403234812%_
                                       _%hd3402934802%_)
                                      (_%__match3804138042%_
                                       _%e3400435052%_
                                       _%hd3400335056%_
                                       _%tl3400235059%_))))
                              (_%__match3804138042%_
                               _%e3400435052%_
                               _%hd3400335056%_
                               _%tl3400235059%_))))
                      (_%__match3804138042%_
                       _%e3400435052%_
                       _%hd3400335056%_
                       _%tl3400235059%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g40028_|
                       _%hd3400335056%_)
                      (if (gx#stx-pair? _%tl3400235059%_)
                          (let ((_%e3404234742%_
                                 (gx#syntax-e _%tl3400235059%_)))
                            (let ((_%tl3404034749%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3404234742%_)))
                                  (_%hd3404134746%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3404234742%_))))
                              (if (gx#stx-pair? _%tl3404034749%_)
                                  (let ((_%e3404534752%_
                                         (gx#syntax-e _%tl3404034749%_)))
                                    (let ((_%tl3404334759%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3404534752%_)))
                                          (_%hd3404434756%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3404534752%_))))
                                      (_%__kont3781337814%_
                                       _%tl3404334759%_
                                       _%hd3404434756%_
                                       _%hd3404134746%_)))
                                  (_%__match3804138042%_
                                   _%e3400435052%_
                                   _%hd3400335056%_
                                   _%tl3400235059%_))))
                          (_%__match3804138042%_
                           _%e3400435052%_
                           _%hd3400335056%_
                           _%tl3400235059%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g40029_|
                           _%hd3400335056%_)
                          (_%__kont3781537816%_ _%tl3400235059%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40030_|
                               _%hd3400335056%_)
                              (if (gx#stx-pair? _%tl3400235059%_)
                                  (let ((_%e3405634674%_
                                         (gx#syntax-e _%tl3400235059%_)))
                                    (let ((_%tl3405434681%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3405634674%_)))
                                          (_%hd3405534678%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3405634674%_))))
                                      (if (gx#stx-null? _%tl3405434681%_)
                                          (_%__kont3781737818%_
                                           _%hd3405534678%_)
                                          (_%__match3804138042%_
                                           _%e3400435052%_
                                           _%hd3400335056%_
                                           _%tl3400235059%_))))
                                  (_%__match3804138042%_
                                   _%e3400435052%_
                                   _%hd3400335056%_
                                   _%tl3400235059%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40031_|
                                   _%hd3400335056%_)
                                  (if (gx#stx-pair? _%tl3400235059%_)
                                      (let ((_%e3406534613%_
                                             (gx#syntax-e _%tl3400235059%_)))
                                        (let ((_%tl3406334620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3406534613%_)))
                                              (_%hd3406434617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3406534613%_))))
                                          (if (gx#stx-null? _%tl3406334620%_)
                                              (_%__kont3782137822%_
                                               _%hd3406434617%_)
                                              (_%__kont3782337824%_
                                               _%tl3400235059%_))))
                                      (_%__kont3782337824%_ _%tl3400235059%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40032_|
                                       _%hd3400335056%_)
                                      (_%__kont3782537826%_ _%tl3400235059%_)
                                      (_%__match3804138042%_
                                       _%e3400435052%_
                                       _%hd3400335056%_
                                       _%tl3400235059%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3804138042%_
                                       _%e3400435052%_
                                       _%hd3400335056%_
                                       _%tl3400235059%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3398234657%_))))))))
                 (_%parse-list33615%_
                  (lambda (_%body33795%_)
                    (let* ((_%__stx3813038131%_ _%body33795%_)
                           (_%g3380133830%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3813038131%_))))
                      (let ((_%__kont3813338134%_
                             (lambda (_%L33954%_)
                               (let ()
                                 (declare (not safe))
                                 (_%parse133613%_ _%L33954%_))))
                            (_%__kont3813538136%_
                             (lambda (_%L33906%_ _%L33908%_ _%L33909%_)
                               (cons 'splice:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133613%_ _%L33909%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse-list33615%_
                                                    _%L33906%_))
                                                 '())))))
                            (_%__kont3813738138%_
                             (lambda (_%L33864%_ _%L33866%_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%parse133613%_ _%L33866%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%parse-list33615%_
                                                    _%L33864%_))
                                                 '())))))
                            (_%__kont3813938140%_
                             (lambda ()
                               (if (gx#stx-null? _%body33795%_)
                                   (let () (cons 'null: '()))
                                   (if (let ((__tmp40033
                                              (gx#stx-pair? _%body33795%_)))
                                         (declare (not safe))
                                         (not __tmp40033))
                                       (let ()
                                         (declare (not safe))
                                         (_%parse133613%_ _%body33795%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%parse-error33620%_
                                          _%body33795%_)))))))
                        (let* ((_%__match3817938180%_
                                (lambda (_%e3382433854%_
                                         _%hd3382333858%_
                                         _%tl3382233861%_)
                                  (let ((_%L33864%_ _%tl3382233861%_)
                                        (_%L33866%_ _%hd3382333858%_))
                                    (if (let ((__tmp40034
                                               (gx#ellipsis? _%L33866%_)))
                                          (declare (not safe))
                                          (not __tmp40034))
                                        (_%__kont3813738138%_
                                         _%L33864%_
                                         _%L33866%_)
                                        (_%__kont3813938140%_)))))
                               (_%__match3817338174%_
                                (lambda (_%e3381633886%_
                                         _%hd3381533890%_
                                         _%tl3381433893%_
                                         _%e3381933896%_
                                         _%hd3381833900%_
                                         _%tl3381733903%_)
                                  (let ((_%L33906%_ _%tl3381733903%_)
                                        (_%L33908%_ _%hd3381833900%_)
                                        (_%L33909%_ _%hd3381533890%_))
                                    (if (gx#ellipsis? _%L33908%_)
                                        (_%__kont3813538136%_
                                         _%L33906%_
                                         _%L33908%_
                                         _%L33909%_)
                                        (_%__match3817938180%_
                                         _%e3381633886%_
                                         _%hd3381533890%_
                                         _%tl3381433893%_))))))
                          (if (gx#stx-pair? _%__stx3813038131%_)
                              (let ((_%e3380633930%_
                                     (gx#syntax-e _%__stx3813038131%_)))
                                (let ((_%tl3380433937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3380633930%_)))
                                      (_%hd3380533934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3380633930%_))))
                                  (if (gx#stx-datum? _%hd3380533934%_)
                                      (let ((_%e3380733940%_
                                             (gx#stx-e _%hd3380533934%_)))
                                        (if (equal? _%e3380733940%_ '::)
                                            (if (gx#stx-pair? _%tl3380433937%_)
                                                (let ((_%e3381033944%_
                                                       (gx#syntax-e
                                                        _%tl3380433937%_)))
                                                  (let ((_%tl3380833951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3381033944%_)))
                                                        (_%hd3380933948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3381033944%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3380833951%_)
                                                        (_%__kont3813338134%_
                                                         _%hd3380933948%_)
                                                        (_%__match3817338174%_
                                                         _%e3380633930%_
                                                         _%hd3380533934%_
                                                         _%tl3380433937%_
                                                         _%e3381033944%_
                                                         _%hd3380933948%_
                                                         _%tl3380833951%_))))
                                                (_%__match3817938180%_
                                                 _%e3380633930%_
                                                 _%hd3380533934%_
                                                 _%tl3380433937%_))
                                            (if (gx#stx-pair? _%tl3380433937%_)
                                                (let ((_%e3381933896%_
                                                       (gx#syntax-e
                                                        _%tl3380433937%_)))
                                                  (let ((_%tl3381733903%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3381933896%_)))
                                                        (_%hd3381833900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3381933896%_))))
                                                    (_%__match3817338174%_
                                                     _%e3380633930%_
                                                     _%hd3380533934%_
                                                     _%tl3380433937%_
                                                     _%e3381933896%_
                                                     _%hd3381833900%_
                                                     _%tl3381733903%_)))
                                                (_%__match3817938180%_
                                                 _%e3380633930%_
                                                 _%hd3380533934%_
                                                 _%tl3380433937%_))))
                                      (if (gx#stx-pair? _%tl3380433937%_)
                                          (let ((_%e3381933896%_
                                                 (gx#syntax-e
                                                  _%tl3380433937%_)))
                                            (let ((_%tl3381733903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3381933896%_)))
                                                  (_%hd3381833900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3381933896%_))))
                                              (_%__match3817338174%_
                                               _%e3380633930%_
                                               _%hd3380533934%_
                                               _%tl3380433937%_
                                               _%e3381933896%_
                                               _%hd3381833900%_
                                               _%tl3381733903%_)))
                                          (_%__match3817938180%_
                                           _%e3380633930%_
                                           _%hd3380533934%_
                                           _%tl3380433937%_)))))
                              (_%__kont3813938140%_)))))))
                 (_%parse-vector33616%_
                  (lambda (_%body33792%_)
                    (if (let ()
                          (declare (not safe))
                          (_%simple-vector?33617%_ _%body33792%_))
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133613%_ _%body33792%_)
                                    '()))
                        (cons 'list:
                              (cons (let ()
                                      (declare (not safe))
                                      (_%parse-list33615%_ _%body33792%_))
                                    '())))))
                 (_%simple-vector?33617%_
                  (lambda (_%body33729%_)
                    (let* ((_%__stx3818238183%_ _%body33729%_)
                           (_%g3373333745%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3818238183%_))))
                      (let ((_%__kont3818538186%_
                             (lambda (_%L33773%_ _%L33775%_)
                               (if (let ((__tmp40035
                                          (gx#ellipsis? _%L33775%_)))
                                     (declare (not safe))
                                     (not __tmp40035))
                                   (let ()
                                     (declare (not safe))
                                     (_%simple-vector?33617%_ _%L33773%_))
                                   '#f)))
                            (_%__kont3818738188%_
                             (lambda () (gx#stx-null? _%body33729%_))))
                        (if (gx#stx-pair? _%__stx3818238183%_)
                            (let ((_%e3373933763%_
                                   (gx#syntax-e _%__stx3818238183%_)))
                              (let ((_%tl3373733770%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3373933763%_)))
                                    (_%hd3373833767%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3373933763%_))))
                                (_%__kont3818538186%_
                                 _%tl3373733770%_
                                 _%hd3373833767%_)))
                            (_%__kont3818738188%_))))))
                 (_%parse-class-body33618%_
                  (lambda (_%body33638%_)
                    (let _%recur33641%_ ((_%rest33644%_ _%body33638%_))
                      (let* ((_%__stx3819838199%_ _%rest33644%_)
                             (_%g3364833664%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3819838199%_))))
                        (let ((_%__kont3820138202%_
                               (lambda (_%L33702%_ _%L33704%_ _%L33705%_)
                                 (let ((__tmp40036
                                        (let ((__tmp40038
                                               (let ()
                                                 (declare (not safe))
                                                 (_%parse133613%_ _%L33704%_)))
                                              (__tmp40037
                                               (let ()
                                                 (declare (not safe))
                                                 (_%recur33641%_ _%L33702%_))))
                                          (declare (not safe))
                                          (cons __tmp40038 __tmp40037))))
                                   (declare (not safe))
                                   (cons _%L33705%_ __tmp40036))))
                              (_%__kont3820338204%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33644%_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_%parse-error33620%_
                                        _%rest33644%_))))))
                          (let ((_%__match3821738218%_
                                 (lambda (_%e3365533682%_
                                          _%hd3365433686%_
                                          _%tl3365333689%_
                                          _%e3365833692%_
                                          _%hd3365733696%_
                                          _%tl3365633699%_)
                                   (let ((_%L33702%_ _%tl3365633699%_)
                                         (_%L33704%_ _%hd3365733696%_)
                                         (_%L33705%_ _%hd3365433686%_))
                                     (if (gx#stx-keyword? _%L33705%_)
                                         (_%__kont3820138202%_
                                          _%L33702%_
                                          _%L33704%_
                                          _%L33705%_)
                                         (_%__kont3820338204%_))))))
                            (if (gx#stx-pair? _%__stx3819838199%_)
                                (let ((_%e3365533682%_
                                       (gx#syntax-e _%__stx3819838199%_)))
                                  (let ((_%tl3365333689%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3365533682%_)))
                                        (_%hd3365433686%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3365533682%_))))
                                    (if (gx#stx-pair? _%tl3365333689%_)
                                        (let ((_%e3365833692%_
                                               (gx#syntax-e _%tl3365333689%_)))
                                          (let ((_%tl3365633699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3365833692%_)))
                                                (_%hd3365733696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3365833692%_))))
                                            (_%__match3821738218%_
                                             _%e3365533682%_
                                             _%hd3365433686%_
                                             _%tl3365333689%_
                                             _%e3365833692%_
                                             _%hd3365733696%_
                                             _%tl3365633699%_)))
                                        (_%__kont3820338204%_))))
                                (_%__kont3820338204%_))))))))
                 (_%parse-qq33619%_
                  (lambda (_%hd33625%_)
                    (let ((_%g3362733634%_
                           (lambda (_%g3362833630%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3362833630%_))))
                      (declare (not safe))
                      (_%g3362733634%_ _%hd33625%_))))
                 (_%parse-error33620%_
                  (lambda (_%hd33622%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33611%_
                               (cons _%match-stx33611%_
                                     (cons _%stx33609%_
                                           (cons _%hd33622%_ '())))
                               (cons _%stx33609%_ (cons _%hd33622%_ '())))))))
          (let () (declare (not safe)) (_%parse133613%_ _%stx33609%_)))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35299%_)
        (let ((_%match-stx35302%_ '#f))
          (declare (not safe))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35299%_
           _%match-stx35302%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g40040_
        (let ((_g40039_ (let () (declare (not safe)) (##length _g40040_))))
          (cond ((let () (declare (not safe)) (##fx= _g40039_ 1))
                 (apply (lambda (_%stx35299%_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__0|
                             _%stx35299%_)))
                        _g40040_))
                ((let () (declare (not safe)) (##fx= _g40039_ 2))
                 (apply (lambda (_%stx35305%_ _%match-stx35307%_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__%|
                             _%stx35305%_
                             _%match-stx35307%_)))
                        _g40040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g40040_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33594%_)
        (let ((__tmp40041
               (lambda (_%E33597%_)
                 (with-exception-handler
                  (let ((_%E!33600%_ (current-exception-handler)))
                    (lambda (_%e33603%_)
                      (if (syntax-error? _%e33603%_)
                          (_%E33597%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33600%_ _%e33603%_)))))
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/match[1]#parse-match-pattern__0|
                       _%stx33594%_))
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp40041))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32329%_)
        (letrec ((_%loop32332%_
                  (lambda (_%ptree32619%_ _%vars32621%_ _%K32622%_)
                    (let* ((_%__stx3831638317%_ _%ptree32619%_)
                           (_%g3263532745%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3831638317%_))))
                      (let ((_%__kont3831938320%_
                             (lambda (_%L33375%_)
                               (let* ((_%__stx3823638237%_ _%L33375%_)
                                      (_%g3339233426%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3823638237%_))))
                                 (let ((_%__kont3823938240%_
                                        (lambda (_%L33575%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%loop32332%_
                                             _%L33575%_
                                             _%vars32621%_
                                             _%K32622%_))))
                                       (_%__kont3824138242%_
                                        (lambda (_%L33544%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%loop32332%_
                                             _%L33544%_
                                             _%vars32621%_
                                             _%K32622%_))))
                                       (_%__kont3824338244%_
                                        (lambda (_%L33492%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%loop32332%_
                                             _%L33492%_
                                             _%vars32621%_
                                             _%K32622%_))))
                                       (_%__kont3824538246%_
                                        (lambda ()
                                          (_%K32622%_ _%vars32621%_))))
                                   (if (gx#stx-pair? _%__stx3823638237%_)
                                       (let ((_%e3339733565%_
                                              (gx#syntax-e
                                               _%__stx3823638237%_)))
                                         (let ((_%tl3339533572%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3339733565%_)))
                                               (_%hd3339633569%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3339733565%_))))
                                           (if (gx#stx-null? _%tl3339533572%_)
                                               (_%__kont3823938240%_
                                                _%hd3339633569%_)
                                               (if (gx#stx-datum?
                                                    _%hd3339633569%_)
                                                   (let ((_%e3340233530%_
                                                          (gx#stx-e
                                                           _%hd3339633569%_)))
                                                     (if (equal? _%e3340233530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3339533572%_)
                     (let ((_%e3340533534%_ (gx#syntax-e _%tl3339533572%_)))
                       (let ((_%tl3340333541%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3340533534%_)))
                             (_%hd3340433538%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3340533534%_))))
                         (if (gx#stx-null? _%tl3340333541%_)
                             (_%__kont3824138242%_ _%hd3340433538%_)
                             (_%__kont3824538246%_))))
                     (_%__kont3824538246%_))
                 (if (equal? _%e3340233530%_ '::)
                     (if (gx#stx-pair? _%tl3339533572%_)
                         (let ((_%e3341333458%_
                                (gx#syntax-e _%tl3339533572%_)))
                           (let ((_%tl3341133465%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3341333458%_)))
                                 (_%hd3341233462%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3341333458%_))))
                             (if (gx#stx-pair? _%tl3341133465%_)
                                 (let ((_%e3341633468%_
                                        (gx#syntax-e _%tl3341133465%_)))
                                   (let ((_%tl3341433475%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3341633468%_)))
                                         (_%hd3341533472%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3341633468%_))))
                                     (if (gx#stx-datum? _%hd3341533472%_)
                                         (let ((_%e3341733478%_
                                                (gx#stx-e _%hd3341533472%_)))
                                           (if (equal? _%e3341733478%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3341433475%_)
                                                   (let ((_%e3342033482%_
                                                          (gx#syntax-e
                                                           _%tl3341433475%_)))
                                                     (let ((_%tl3341833489%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3342033482%_)))
                                                           (_%hd3341933486%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3342033482%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3341833489%_)
                                                           (_%__kont3824338244%_
                                                            _%hd3341933486%_)
                                                           (_%__kont3824538246%_))))
                                                   (_%__kont3824538246%_))
                                               (_%__kont3824538246%_)))
                                         (_%__kont3824538246%_))))
                                 (_%__kont3824538246%_))))
                         (_%__kont3824538246%_))
                     (_%__kont3824538246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3824538246%_)))))
                                       (_%__kont3824538246%_))))))
                            (_%__kont3832138322%_
                             (lambda (_%L33262%_ _%L33264%_)
                               (let* ((_%__stx3822038221%_ _%L33262%_)
                                      (_%g3328033292%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3822038221%_))))
                                 (let ((_%__kont3822338224%_
                                        (lambda (_%L33320%_ _%L33322%_)
                                          (let ((__tmp40042
                                                 (lambda (_%g3333433336%_)
                                                   (let ((__tmp40043
                                                          (cons _%L33264%_
                                                                _%L33320%_)))
                                                     (declare (not safe))
                                                     (_%loop32332%_
                                                      __tmp40043
                                                      _%g3333433336%_
                                                      _%K32622%_)))))
                                            (declare (not safe))
                                            (_%loop32332%_
                                             _%L33322%_
                                             _%vars32621%_
                                             __tmp40042))))
                                       (_%__kont3822538226%_
                                        (lambda ()
                                          (_%K32622%_ _%vars32621%_))))
                                   (if (gx#stx-pair? _%__stx3822038221%_)
                                       (let ((_%e3328633310%_
                                              (gx#syntax-e
                                               _%__stx3822038221%_)))
                                         (let ((_%tl3328433317%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3328633310%_)))
                                               (_%hd3328533314%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3328633310%_))))
                                           (_%__kont3822338224%_
                                            _%tl3328433317%_
                                            _%hd3328533314%_)))
                                       (_%__kont3822538226%_))))))
                            (_%__kont3832338324%_
                             (lambda (_%L33231%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop32332%_
                                  _%L33231%_
                                  _%vars32621%_
                                  _%K32622%_))))
                            (_%__kont3832538326%_
                             (lambda (_%L33177%_ _%L33179%_)
                               (let ((__tmp40044
                                      (lambda (_%g3319433196%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%loop32332%_
                                           _%L33177%_
                                           _%g3319433196%_
                                           _%K32622%_)))))
                                 (declare (not safe))
                                 (_%loop32332%_
                                  _%L33179%_
                                  _%vars32621%_
                                  __tmp40044))))
                            (_%__kont3832738328%_
                             (lambda (_%L33113%_ _%L33115%_)
                               (let ((__tmp40045
                                      (lambda (_%g3313033132%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%loop32332%_
                                           _%L33113%_
                                           _%g3313033132%_
                                           _%K32622%_)))))
                                 (declare (not safe))
                                 (_%loop32332%_
                                  _%L33115%_
                                  _%vars32621%_
                                  __tmp40045))))
                            (_%__kont3832938330%_
                             (lambda (_%L33058%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop32332%_
                                  _%L33058%_
                                  _%vars32621%_
                                  _%K32622%_))))
                            (_%__kont3833138332%_
                             (lambda (_%L33008%_ _%L33010%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop-vector32334%_
                                  _%L33008%_
                                  _%vars32621%_
                                  _%K32622%_))))
                            (_%__kont3833338334%_
                             (lambda (_%L32965%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop-vector32334%_
                                  _%L32965%_
                                  _%vars32621%_
                                  _%K32622%_))))
                            (_%__kont3833538336%_
                             (lambda (_%L32908%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop-class-list32336%_
                                  _%L32908%_
                                  _%vars32621%_
                                  _%K32622%_))))
                            (_%__kont3833738338%_
                             (lambda (_%L32849%_ _%L32851%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop32332%_
                                  _%L32849%_
                                  _%vars32621%_
                                  _%K32622%_))))
                            (_%__kont3833938340%_
                             (lambda (_%L32787%_)
                               (if (find (lambda (_%g3280232804%_)
                                           (gx#bound-identifier=?
                                            _%g3280232804%_
                                            _%L32787%_))
                                         _%vars32621%_)
                                   (_%K32622%_ _%vars32621%_)
                                   (_%K32622%_
                                    (cons _%L32787%_ _%vars32621%_)))))
                            (_%__kont3834138342%_
                             (lambda () (_%K32622%_ _%vars32621%_))))
                        (let* ((_%__match3847338474%_
                                (lambda (_%e3269432988%_
                                         _%hd3269332992%_
                                         _%tl3269232995%_
                                         _%e3269732998%_
                                         _%hd3269633002%_
                                         _%tl3269533005%_)
                                  (let ((_%L33008%_ _%hd3269633002%_)
                                        (_%L33010%_ _%hd3269332992%_))
                                    (if (or (gx#stx-eq? 'values: _%L33010%_)
                                            (gx#stx-eq? 'vector: _%L33010%_))
                                        (_%__kont3833138332%_
                                         _%L33008%_
                                         _%L33010%_)
                                        (if (gx#stx-datum? _%hd3269332992%_)
                                            (let ((_%e3270232941%_
                                                   (gx#stx-e
                                                    _%hd3269332992%_)))
                                              (if (equal? _%e3270232941%_
                                                          'struct:)
                                                  (_%__kont3834138342%_)
                                                  (if (equal? _%e3270232941%_
                                                              'class:)
                                                      (_%__kont3834138342%_)
                                                      (if (equal? _%e3270232941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3834138342%_)
                  (if (equal? _%e3270232941%_ 'var:)
                      (_%__kont3833938340%_ _%hd3269633002%_)
                      (_%__kont3834138342%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3834138342%_))))))
                               (_%__match3836738368%_
                                (lambda (_%e3264933252%_
                                         _%hd3264833256%_
                                         _%tl3264733259%_)
                                  (let ((_%L33262%_ _%tl3264733259%_)
                                        (_%L33264%_ _%hd3264833256%_))
                                    (if (or (gx#stx-eq? 'and: _%L33264%_)
                                            (gx#stx-eq? 'or: _%L33264%_))
                                        (_%__kont3832138322%_
                                         _%L33262%_
                                         _%L33264%_)
                                        (if (gx#stx-datum? _%hd3264833256%_)
                                            (let ((_%e3265433217%_
                                                   (gx#stx-e
                                                    _%hd3264833256%_)))
                                              (if (equal? _%e3265433217%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3264733259%_)
                                                      (let ((_%e3265733221%_
                                                             (gx#syntax-e
                                                              _%tl3264733259%_)))
                                                        (let ((_%tl3265533228%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3265733221%_)))
                      (_%hd3265633225%_
                       (let () (declare (not safe)) (##car _%e3265733221%_))))
                  (if (gx#stx-null? _%tl3265533228%_)
                      (_%__kont3832338324%_ _%hd3265633225%_)
                      (_%__kont3834138342%_))))
              (_%__kont3834138342%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3265433217%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3264733259%_)
                                                          (let ((_%e3266633157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3264733259%_)))
                    (let ((_%tl3266433164%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3266633157%_)))
                          (_%hd3266533161%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3266633157%_))))
                      (if (gx#stx-pair? _%tl3266433164%_)
                          (let ((_%e3266933167%_
                                 (gx#syntax-e _%tl3266433164%_)))
                            (let ((_%tl3266733174%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3266933167%_)))
                                  (_%hd3266833171%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3266933167%_))))
                              (if (gx#stx-null? _%tl3266733174%_)
                                  (_%__kont3832538326%_
                                   _%hd3266833171%_
                                   _%hd3266533161%_)
                                  (_%__kont3834138342%_))))
                          (if (gx#stx-null? _%tl3266433164%_)
                              (_%__match3847338474%_
                               _%e3264933252%_
                               _%hd3264833256%_
                               _%tl3264733259%_
                               _%e3266633157%_
                               _%hd3266533161%_
                               _%tl3266433164%_)
                              (_%__kont3834138342%_)))))
                  (_%__kont3834138342%_))
              (if (equal? _%e3265433217%_ 'splice:)
                  (if (gx#stx-pair? _%tl3264733259%_)
                      (let ((_%e3267833093%_ (gx#syntax-e _%tl3264733259%_)))
                        (let ((_%tl3267633100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3267833093%_)))
                              (_%hd3267733097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3267833093%_))))
                          (if (gx#stx-pair? _%tl3267633100%_)
                              (let ((_%e3268133103%_
                                     (gx#syntax-e _%tl3267633100%_)))
                                (let ((_%tl3267933110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3268133103%_)))
                                      (_%hd3268033107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3268133103%_))))
                                  (if (gx#stx-null? _%tl3267933110%_)
                                      (_%__kont3832738328%_
                                       _%hd3268033107%_
                                       _%hd3267733097%_)
                                      (_%__kont3834138342%_))))
                              (if (gx#stx-null? _%tl3267633100%_)
                                  (_%__match3847338474%_
                                   _%e3264933252%_
                                   _%hd3264833256%_
                                   _%tl3264733259%_
                                   _%e3267833093%_
                                   _%hd3267733097%_
                                   _%tl3267633100%_)
                                  (_%__kont3834138342%_)))))
                      (_%__kont3834138342%_))
                  (if (equal? _%e3265433217%_ 'box:)
                      (if (gx#stx-pair? _%tl3264733259%_)
                          (let ((_%e3268933048%_
                                 (gx#syntax-e _%tl3264733259%_)))
                            (let ((_%tl3268733055%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3268933048%_)))
                                  (_%hd3268833052%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3268933048%_))))
                              (if (gx#stx-null? _%tl3268733055%_)
                                  (_%__kont3832938330%_ _%hd3268833052%_)
                                  (_%__kont3834138342%_))))
                          (_%__kont3834138342%_))
                      (if (gx#stx-pair? _%tl3264733259%_)
                          (let ((_%e3269732998%_
                                 (gx#syntax-e _%tl3264733259%_)))
                            (let ((_%tl3269533005%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3269732998%_)))
                                  (_%hd3269633002%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3269732998%_))))
                              (if (gx#stx-null? _%tl3269533005%_)
                                  (_%__match3847338474%_
                                   _%e3264933252%_
                                   _%hd3264833256%_
                                   _%tl3264733259%_
                                   _%e3269732998%_
                                   _%hd3269633002%_
                                   _%tl3269533005%_)
                                  (if (equal? _%e3265433217%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3269533005%_)
                                          (let ((_%e3270832955%_
                                                 (gx#syntax-e
                                                  _%tl3269533005%_)))
                                            (let ((_%tl3270632962%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3270832955%_)))
                                                  (_%hd3270732959%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3270832955%_))))
                                              (if (gx#stx-null?
                                                   _%tl3270632962%_)
                                                  (_%__kont3833338334%_
                                                   _%hd3270732959%_)
                                                  (_%__kont3834138342%_))))
                                          (_%__kont3834138342%_))
                                      (if (equal? _%e3265433217%_ 'class:)
                                          (if (gx#stx-pair? _%tl3269533005%_)
                                              (let ((_%e3271932898%_
                                                     (gx#syntax-e
                                                      _%tl3269533005%_)))
                                                (let ((_%tl3271732905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3271932898%_)))
                                                      (_%hd3271832902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3271932898%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3271732905%_)
                                                      (_%__kont3833538336%_
                                                       _%hd3271832902%_)
                                                      (_%__kont3834138342%_))))
                                              (_%__kont3834138342%_))
                                          (if (equal? _%e3265433217%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3269533005%_)
                                                  (let ((_%e3273132839%_
                                                         (gx#syntax-e
                                                          _%tl3269533005%_)))
                                                    (let ((_%tl3272932846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3273132839%_)))
                                                          (_%hd3273032843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3273132839%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3272932846%_)
                                                          (_%__kont3833738338%_
                                                           _%hd3273032843%_
                                                           _%hd3269633002%_)
                                                          (_%__kont3834138342%_))))
                                                  (_%__kont3834138342%_))
                                              (_%__kont3834138342%_)))))))
                          (_%__kont3834138342%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3264733259%_)
                                                (let ((_%e3269732998%_
                                                       (gx#syntax-e
                                                        _%tl3264733259%_)))
                                                  (let ((_%tl3269533005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3269732998%_)))
                                                        (_%hd3269633002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3269732998%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3269533005%_)
                                                        (_%__match3847338474%_
                                                         _%e3264933252%_
                                                         _%hd3264833256%_
                                                         _%tl3264733259%_
                                                         _%e3269732998%_
                                                         _%hd3269633002%_
                                                         _%tl3269533005%_)
                                                        (_%__kont3834138342%_))))
                                                (_%__kont3834138342%_))))))))
                          (if (gx#stx-pair? _%__stx3831638317%_)
                              (let ((_%e3264033351%_
                                     (gx#syntax-e _%__stx3831638317%_)))
                                (let ((_%tl3263833358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3264033351%_)))
                                      (_%hd3263933355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3264033351%_))))
                                  (if (gx#stx-datum? _%hd3263933355%_)
                                      (let ((_%e3264133361%_
                                             (gx#stx-e _%hd3263933355%_)))
                                        (if (equal? _%e3264133361%_ '?:)
                                            (if (gx#stx-pair? _%tl3263833358%_)
                                                (let ((_%e3264433365%_
                                                       (gx#syntax-e
                                                        _%tl3263833358%_)))
                                                  (let ((_%tl3264233372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3264433365%_)))
                                                        (_%hd3264333369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3264433365%_))))
                                                    (_%__kont3831938320%_
                                                     _%tl3264233372%_)))
                                                (_%__match3836738368%_
                                                 _%e3264033351%_
                                                 _%hd3263933355%_
                                                 _%tl3263833358%_))
                                            (_%__match3836738368%_
                                             _%e3264033351%_
                                             _%hd3263933355%_
                                             _%tl3263833358%_)))
                                      (_%__match3836738368%_
                                       _%e3264033351%_
                                       _%hd3263933355%_
                                       _%tl3263833358%_))))
                              (_%__kont3834138342%_)))))))
                 (_%loop-vector32334%_
                  (lambda (_%body32495%_ _%vars32497%_ _%K32498%_)
                    (let* ((_%__stx3857438575%_ _%body32495%_)
                           (_%g3250132524%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3857438575%_))))
                      (let ((_%__kont3857738578%_
                             (lambda (_%L32601%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop-list32335%_
                                  _%L32601%_
                                  _%vars32497%_
                                  _%K32498%_))))
                            (_%__kont3857938580%_
                             (lambda (_%L32555%_)
                               (let ()
                                 (declare (not safe))
                                 (_%loop32332%_
                                  _%L32555%_
                                  _%vars32497%_
                                  _%K32498%_)))))
                        (if (gx#stx-pair? _%__stx3857438575%_)
                            (let ((_%e3250632577%_
                                   (gx#syntax-e _%__stx3857438575%_)))
                              (let ((_%tl3250432584%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3250632577%_)))
                                    (_%hd3250532581%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3250632577%_))))
                                (if (gx#stx-datum? _%hd3250532581%_)
                                    (let ((_%e3250732587%_
                                           (gx#stx-e _%hd3250532581%_)))
                                      (if (equal? _%e3250732587%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3250432584%_)
                                              (let ((_%e3251032591%_
                                                     (gx#syntax-e
                                                      _%tl3250432584%_)))
                                                (let ((_%tl3250832598%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3251032591%_)))
                                                      (_%hd3250932595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3251032591%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3250832598%_)
                                                      (_%__kont3857738578%_
                                                       _%hd3250932595%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3250132524%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3250132524%_)))
                                          (if (equal? _%e3250732587%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3250432584%_)
                                                  (let ((_%e3251832545%_
                                                         (gx#syntax-e
                                                          _%tl3250432584%_)))
                                                    (let ((_%tl3251632552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3251832545%_)))
                                                          (_%hd3251732549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3251832545%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3251632552%_)
                                                          (_%__kont3857938580%_
                                                           _%hd3251732549%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3250132524%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3250132524%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3250132524%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3250132524%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3250132524%_)))))))
                 (_%loop-list32335%_
                  (lambda (_%rest32425%_ _%vars32427%_ _%K32428%_)
                    (let* ((_%__stx3862438625%_ _%rest32425%_)
                           (_%g3243132443%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3862438625%_))))
                      (let ((_%__kont3862738628%_
                             (lambda (_%L32471%_ _%L32473%_)
                               (let ((__tmp40046
                                      (lambda (_%g3248532487%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%loop-list32335%_
                                           _%L32471%_
                                           _%g3248532487%_
                                           _%K32428%_)))))
                                 (declare (not safe))
                                 (_%loop32332%_
                                  _%L32473%_
                                  _%vars32427%_
                                  __tmp40046))))
                            (_%__kont3862938630%_
                             (lambda () (_%K32428%_ _%vars32427%_))))
                        (if (gx#stx-pair? _%__stx3862438625%_)
                            (let ((_%e3243732461%_
                                   (gx#syntax-e _%__stx3862438625%_)))
                              (let ((_%tl3243532468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3243732461%_)))
                                    (_%hd3243632465%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3243732461%_))))
                                (_%__kont3862738628%_
                                 _%tl3243532468%_
                                 _%hd3243632465%_)))
                            (_%__kont3862938630%_))))))
                 (_%loop-class-list32336%_
                  (lambda (_%rest32338%_ _%vars32340%_ _%K32341%_)
                    (let* ((_%__stx3864038641%_ _%rest32338%_)
                           (_%g3234432359%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3864038641%_))))
                      (let ((_%__kont3864338644%_
                             (lambda (_%L32397%_ _%L32399%_)
                               (let ((__tmp40047
                                      (lambda (_%g3241532417%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%loop-class-list32336%_
                                           _%L32397%_
                                           _%g3241532417%_
                                           _%K32341%_)))))
                                 (declare (not safe))
                                 (_%loop32332%_
                                  _%L32399%_
                                  _%vars32340%_
                                  __tmp40047))))
                            (_%__kont3864538646%_
                             (lambda () (_%K32341%_ _%vars32340%_))))
                        (if (gx#stx-pair? _%__stx3864038641%_)
                            (let ((_%e3235032377%_
                                   (gx#syntax-e _%__stx3864038641%_)))
                              (let ((_%tl3234832384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3235032377%_)))
                                    (_%hd3234932381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3235032377%_))))
                                (if (gx#stx-pair? _%tl3234832384%_)
                                    (let ((_%e3235332387%_
                                           (gx#syntax-e _%tl3234832384%_)))
                                      (let ((_%tl3235132394%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3235332387%_)))
                                            (_%hd3235232391%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3235332387%_))))
                                        (_%__kont3864338644%_
                                         _%tl3235132394%_
                                         _%hd3235232391%_)))
                                    (_%__kont3864538646%_))))
                            (_%__kont3864538646%_)))))))
          (let ()
            (declare (not safe))
            (_%loop32332%_ _%ptree32329%_ '() values)))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29274%_ _%tgt29276%_ _%ptree29277%_ _%K29278%_ _%E29279%_)
        (letrec ((_%generate129281%_
                  (lambda (_%tgt30528%_ _%ptree30530%_ _%K30531%_ _%E30532%_)
                    (let* ((_%g3053430542%_
                            (lambda (_%g3053530538%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3053530538%_)))
                           (_%g3053332325%_
                            (lambda (_%g3053530546%_)
                              ((lambda (_%L30549%_)
                                 (let ()
                                   (let* ((_%__stx3887638877%_ _%ptree30530%_)
                                          (_%g3057630718%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx3887638877%_))))
                                     (let ((_%__kont3887938880%_
                                            (lambda (_%L32040%_ _%L32042%_)
                                              (let* ((_%__stx3879438795%_
                                                      _%L32040%_)
                                                     (_%g3205932094%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3879438795%_))))
                                                (let ((_%__kont3879738798%_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _%L32042%_ (cons _%L30549%_ '())))
                             (cons _%K30531%_ (cons _%E30532%_ '()))))))
              (_%__kont3879938800%_
               (lambda (_%L32295%_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _%L32042%_ (cons _%L30549%_ '())))
                             (cons (let ()
                                     (declare (not safe))
                                     (_%generate129281%_
                                      _%tgt30528%_
                                      _%L32295%_
                                      _%K30531%_
                                      _%E30532%_))
                                   (cons _%E30532%_ '()))))))
              (_%__kont3880138802%_
               (lambda (_%L32233%_)
                 (let* ((_%g3224732255%_
                         (lambda (_%g3224832251%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g3224832251%_)))
                        (_%g3224632274%_
                         (lambda (_%g3224832259%_)
                           ((lambda (_%L32262%_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _%L32262%_
                                                        (cons (cons _%L32042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30549%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _%L32262%_
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (_%generate129281%_
                               _%L32262%_
                               _%L32233%_
                               _%K30531%_
                               _%E30532%_))
                            (cons _%E30532%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _%g3224832259%_)))
                        (__tmp40048 (gx#genident 'e)))
                   (declare (not safe))
                   (_%g3224632274%_ __tmp40048))))
              (_%__kont3880338804%_
               (lambda (_%L32149%_ _%L32151%_)
                 (let* ((_%g3217132179%_
                         (lambda (_%g3217232175%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g3217232175%_)))
                        (_%g3217032198%_
                         (lambda (_%g3217232183%_)
                           ((lambda (_%L32186%_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _%L32042%_
                                                        (cons _%L30549%_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _%L32186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _%L32151%_ (cons _%L30549%_ '()))
                                        '()))
                            '())
                      (cons (let ()
                              (declare (not safe))
                              (_%generate129281%_
                               _%L32186%_
                               _%L32149%_
                               _%K30531%_
                               _%E30532%_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%E30532%_ '()))))))
                            _%g3217232183%_)))
                        (__tmp40049 (gx#genident 'e)))
                   (declare (not safe))
                   (_%g3217032198%_ __tmp40049)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%g3205632306%_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                _%__stx3879438795%_)
                                                               (let ((_%e3206432285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%__stx3879438795%_)))
                         (let ((_%tl3206232292%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3206432285%_)))
                               (_%hd3206332289%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3206432285%_))))
                           (if (gx#stx-null? _%tl3206232292%_)
                               (_%__kont3879938800%_ _%hd3206332289%_)
                               (if (gx#stx-datum? _%hd3206332289%_)
                                   (let ((_%e3206932219%_
                                          (gx#stx-e _%hd3206332289%_)))
                                     (if (equal? _%e3206932219%_ '=>:)
                                         (if (gx#stx-pair? _%tl3206232292%_)
                                             (let ((_%e3207232223%_
                                                    (gx#syntax-e
                                                     _%tl3206232292%_)))
                                               (let ((_%tl3207032230%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e3207232223%_)))
                                                     (_%hd3207132227%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e3207232223%_))))
                                                 (if (gx#stx-null?
                                                      _%tl3207032230%_)
                                                     (_%__kont3880138802%_
                                                      _%hd3207132227%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g3205932094%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g3205932094%_)))
                                         (if (equal? _%e3206932219%_ '::)
                                             (if (gx#stx-pair?
                                                  _%tl3206232292%_)
                                                 (let ((_%e3208132115%_
                                                        (gx#syntax-e
                                                         _%tl3206232292%_)))
                                                   (let ((_%tl3207932122%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3208132115%_)))
                                                         (_%hd3208032119%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3208132115%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl3207932122%_)
                                                         (let ((_%e3208432125%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl3207932122%_)))
                   (let ((_%tl3208232132%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e3208432125%_)))
                         (_%hd3208332129%_
                          (let ()
                            (declare (not safe))
                            (##car _%e3208432125%_))))
                     (if (gx#stx-datum? _%hd3208332129%_)
                         (let ((_%e3208532135%_ (gx#stx-e _%hd3208332129%_)))
                           (if (equal? _%e3208532135%_ '=>:)
                               (if (gx#stx-pair? _%tl3208232132%_)
                                   (let ((_%e3208832139%_
                                          (gx#syntax-e _%tl3208232132%_)))
                                     (let ((_%tl3208632146%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3208832139%_)))
                                           (_%hd3208732143%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3208832139%_))))
                                       (if (gx#stx-null? _%tl3208632146%_)
                                           (_%__kont3880338804%_
                                            _%hd3208732143%_
                                            _%hd3208032119%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3205932094%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3205932094%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g3205932094%_))))
                         (let () (declare (not safe)) (_%g3205932094%_)))))
                 (let () (declare (not safe)) (_%g3205932094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3205932094%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g3205932094%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3205932094%_))))))
                       (let () (declare (not safe)) (_%g3205932094%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _%__stx3879438795%_)
                                                        (_%__kont3879738798%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g3205632306%_))))))))
                                           (_%__kont3888138882%_
                                            (lambda (_%L31937%_)
                                              (let* ((_%__stx3877838779%_
                                                      _%L31937%_)
                                                     (_%g3195031962%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3877838779%_))))
                                                (let ((_%__kont3878138782%_
                                                       (lambda (_%L31990%_
                                                                _%L31992%_)
                                                         (let ((__tmp40050
                                                                (let ((__tmp40051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'and: _%L31990%_)))
                          (declare (not safe))
                          (_%generate129281%_
                           _%tgt30528%_
                           __tmp40051
                           _%K30531%_
                           _%E30532%_))))
                   (declare (not safe))
                   (_%generate129281%_
                    _%tgt30528%_
                    _%L31992%_
                    __tmp40050
                    _%E30532%_))))
              (_%__kont3878338784%_ (lambda () _%K30531%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%__stx3877838779%_)
                                                      (let ((_%e3195631980%_
                                                             (gx#syntax-e
                                                              _%__stx3877838779%_)))
                                                        (let ((_%tl3195431987%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3195631980%_)))
                      (_%hd3195531984%_
                       (let () (declare (not safe)) (##car _%e3195631980%_))))
                  (_%__kont3878138782%_ _%tl3195431987%_ _%hd3195531984%_)))
              (_%__kont3878338784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3888338884%_
                                            (lambda (_%L31844%_)
                                              (let* ((_%__stx3876238763%_
                                                      _%L31844%_)
                                                     (_%g3185731869%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3876238763%_))))
                                                (let ((_%__kont3876538766%_
                                                       (lambda (_%L31897%_
                                                                _%L31899%_)
                                                         (let ((__tmp40052
                                                                (let ((__tmp40053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'or: _%L31897%_)))
                          (declare (not safe))
                          (_%generate129281%_
                           _%tgt30528%_
                           __tmp40053
                           _%K30531%_
                           _%E30532%_))))
                   (declare (not safe))
                   (_%generate129281%_
                    _%tgt30528%_
                    _%L31899%_
                    _%K30531%_
                    __tmp40052))))
              (_%__kont3876738768%_ (lambda () _%E30532%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%__stx3876238763%_)
                                                      (let ((_%e3186331887%_
                                                             (gx#syntax-e
                                                              _%__stx3876238763%_)))
                                                        (let ((_%tl3186131894%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3186331887%_)))
                      (_%hd3186231891%_
                       (let () (declare (not safe)) (##car _%e3186331887%_))))
                  (_%__kont3876538766%_ _%tl3186131894%_ _%hd3186231891%_)))
              (_%__kont3876738768%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3888538886%_
                                            (lambda (_%L31809%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%generate129281%_
                                                 _%tgt30528%_
                                                 _%L31809%_
                                                 _%E30532%_
                                                 _%K30531%_))))
                                           (_%__kont3888738888%_
                                            (lambda (_%L31683%_ _%L31685%_)
                                              (let* ((_%g3170231717%_
                                                      (lambda (_%g3170331713%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3170331713%_)))
                                                     (_%g3170131774%_
                                                      (lambda (_%g3170331721%_)
                                                        (if (gx#stx-pair?
                                                             _%g3170331721%_)
                                                            (let ((_%e3170831724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g3170331721%_)))
                      (let ((_%hd3170731728%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3170831724%_)))
                            (_%tl3170631731%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3170831724%_))))
                        (if (gx#stx-pair? _%tl3170631731%_)
                            (let ((_%e3171131734%_
                                   (gx#syntax-e _%tl3170631731%_)))
                              (let ((_%hd3171031738%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3171131734%_)))
                                    (_%tl3170931741%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3171131734%_))))
                                (if (gx#stx-null? _%tl3170931741%_)
                                    ((lambda (_%L31744%_ _%L31746%_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _%L30549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (let ((_%hd-pat31762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _%L31685%_))
                         (_%tl-pat31764%_ (gx#stx-e _%L31683%_)))
                     (if (and (equal? _%hd-pat31762%_ '(any:))
                              (equal? _%tl-pat31764%_ '(any:)))
                         (let () _%K30531%_)
                         (if (equal? _%tl-pat31764%_ '(any:))
                             (let ()
                               (cons 'let
                                     (cons (cons (cons _%L31746%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%L30549%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%generate129281%_
                                                    _%L31746%_
                                                    _%L31685%_
                                                    _%K30531%_
                                                    _%E30532%_))
                                                 '()))))
                             (if (equal? _%hd-pat31762%_ '(any:))
                                 (let ()
                                   (cons 'let
                                         (cons (cons (cons _%L31744%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30549%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (_%generate129281%_
                                                        _%L31744%_
                                                        _%L31683%_
                                                        _%K30531%_
                                                        _%E30532%_))
                                                     '()))))
                                 (let ()
                                   (cons 'let
                                         (cons (cons (cons _%L31746%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons _%L30549%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%L31744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f '##cdr)
                                     (cons _%L30549%_ '()))
                               '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (let ((__tmp40054
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%generate129281%_
                                                               _%L31744%_
                                                               _%L31683%_
                                                               _%K30531%_
                                                               _%E30532%_))))
                                                       (declare (not safe))
                                                       (_%generate129281%_
                                                        _%L31746%_
                                                        _%L31685%_
                                                        __tmp40054
                                                        _%E30532%_))
                                                     '()))))))))
                   (cons _%E30532%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd3171031738%_
                                     _%hd3170731728%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3170231717%_ _%g3170331721%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3170231717%_ _%g3170331721%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g3170231717%_ _%g3170331721%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40055
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_%g3170131774%_ __tmp40055))))
                                           (_%__kont3888938890%_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _%L30549%_ '()))
                  (cons _%K30531%_ (cons _%E30532%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3889138892%_
                                            (lambda (_%L31599%_ _%L31601%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%generate-splice29283%_
                                                 _%tgt30528%_
                                                 _%L31601%_
                                                 _%L31599%_
                                                 _%K30531%_
                                                 _%E30532%_))))
                                           (_%__kont3889338894%_
                                            (lambda (_%L31513%_)
                                              (let* ((_%g3152731535%_
                                                      (lambda (_%g3152831531%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3152831531%_)))
                                                     (_%g3152631554%_
                                                      (lambda (_%g3152831539%_)
                                                        ((lambda (_%L31542%_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _%L30549%_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _%L31542%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _%L30549%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%generate129281%_
                                                            _%L31542%_
                                                            _%L31513%_
                                                            _%K30531%_
                                                            _%E30532%_))
                                                         '())))
                                       (cons _%E30532%_ '()))))))
                 _%g3152831539%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40056
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_%g3152631554%_ __tmp40056))))
                                           (_%__kont3889538896%_
                                            (lambda (_%L31318%_)
                                              (let* ((_%__stx3871238713%_
                                                      _%L31318%_)
                                                     (_%g3133331356%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3871238713%_))))
                                                (let ((_%__kont3871538716%_
                                                       (lambda (_%L31433%_)
                                                         (let* ((_%g3144731455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g3144831451%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g3144831451%_)))
                        (_%g3144631474%_
                         (lambda (_%g3144831459%_)
                           ((lambda (_%L31462%_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _%L30549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%L31462%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (_%generate-simple-vector29284%_
                                                     _%tgt30528%_
                                                     _%L31433%_
                                                     '0
                                                     _%K30531%_
                                                     _%E30532%_))
                                                  (cons _%E30532%_ '()))))))
                            _%g3144831459%_)))
                        (__tmp40057 (gx#stx-length _%L31433%_)))
                   (declare (not safe))
                   (_%g3144631474%_ __tmp40057))))
              (_%__kont3871738718%_
               (lambda (_%L31387%_)
                 (let ()
                   (declare (not safe))
                   (_%generate-list-vector29285%_
                    _%tgt30528%_
                    _%L31387%_
                    'values->list
                    _%K30531%_
                    _%E30532%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%__stx3871238713%_)
                                                      (let ((_%e3133831409%_
                                                             (gx#syntax-e
                                                              _%__stx3871238713%_)))
                                                        (let ((_%tl3133631416%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3133831409%_)))
                      (_%hd3133731413%_
                       (let () (declare (not safe)) (##car _%e3133831409%_))))
                  (if (gx#stx-datum? _%hd3133731413%_)
                      (let ((_%e3133931419%_ (gx#stx-e _%hd3133731413%_)))
                        (if (equal? _%e3133931419%_ 'simple:)
                            (if (gx#stx-pair? _%tl3133631416%_)
                                (let ((_%e3134231423%_
                                       (gx#syntax-e _%tl3133631416%_)))
                                  (let ((_%tl3134031430%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3134231423%_)))
                                        (_%hd3134131427%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3134231423%_))))
                                    (if (gx#stx-null? _%tl3134031430%_)
                                        (_%__kont3871538716%_ _%hd3134131427%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3133331356%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3133331356%_)))
                            (if (equal? _%e3133931419%_ 'list:)
                                (if (gx#stx-pair? _%tl3133631416%_)
                                    (let ((_%e3135031377%_
                                           (gx#syntax-e _%tl3133631416%_)))
                                      (let ((_%tl3134831384%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3135031377%_)))
                                            (_%hd3134931381%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3135031377%_))))
                                        (if (gx#stx-null? _%tl3134831384%_)
                                            (_%__kont3871738718%_
                                             _%hd3134931381%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3133331356%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3133331356%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3133331356%_)))))
                      (let () (declare (not safe)) (_%g3133331356%_)))))
              (let () (declare (not safe)) (_%g3133331356%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3889738898%_
                                            (lambda (_%L31123%_)
                                              (let* ((_%__stx3866238663%_
                                                      _%L31123%_)
                                                     (_%g3113831161%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx3866238663%_))))
                                                (let ((_%__kont3866538666%_
                                                       (lambda (_%L31238%_)
                                                         (let* ((_%g3125231260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g3125331256%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g3125331256%_)))
                        (_%g3125131279%_
                         (lambda (_%g3125331264%_)
                           ((lambda (_%L31267%_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _%L30549%_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _%L30549%_ '()))
                                  (cons _%L31267%_ '())))
                      (cons (let ()
                              (declare (not safe))
                              (_%generate-simple-vector29284%_
                               _%tgt30528%_
                               _%L31238%_
                               '0
                               _%K30531%_
                               _%E30532%_))
                            (cons _%E30532%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%E30532%_ '()))))))
                            _%g3125331264%_)))
                        (__tmp40058 (gx#stx-length _%L31238%_)))
                   (declare (not safe))
                   (_%g3125131279%_ __tmp40058))))
              (_%__kont3866738668%_
               (lambda (_%L31192%_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _%L30549%_ '()))
                             (cons (let ()
                                     (declare (not safe))
                                     (_%generate-list-vector29285%_
                                      _%tgt30528%_
                                      _%L31192%_
                                      'vector->list
                                      _%K30531%_
                                      _%E30532%_))
                                   (cons _%E30532%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%__stx3866238663%_)
                                                      (let ((_%e3114331214%_
                                                             (gx#syntax-e
                                                              _%__stx3866238663%_)))
                                                        (let ((_%tl3114131221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3114331214%_)))
                      (_%hd3114231218%_
                       (let () (declare (not safe)) (##car _%e3114331214%_))))
                  (if (gx#stx-datum? _%hd3114231218%_)
                      (let ((_%e3114431224%_ (gx#stx-e _%hd3114231218%_)))
                        (if (equal? _%e3114431224%_ 'simple:)
                            (if (gx#stx-pair? _%tl3114131221%_)
                                (let ((_%e3114731228%_
                                       (gx#syntax-e _%tl3114131221%_)))
                                  (let ((_%tl3114531235%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3114731228%_)))
                                        (_%hd3114631232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3114731228%_))))
                                    (if (gx#stx-null? _%tl3114531235%_)
                                        (_%__kont3866538666%_ _%hd3114631232%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3113831161%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3113831161%_)))
                            (if (equal? _%e3114431224%_ 'list:)
                                (if (gx#stx-pair? _%tl3114131221%_)
                                    (let ((_%e3115531182%_
                                           (gx#syntax-e _%tl3114131221%_)))
                                      (let ((_%tl3115331189%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3115531182%_)))
                                            (_%hd3115431186%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3115531182%_))))
                                        (if (gx#stx-null? _%tl3115331189%_)
                                            (_%__kont3866738668%_
                                             _%hd3115431186%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3113831161%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3113831161%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3113831161%_)))))
                      (let () (declare (not safe)) (_%g3113831161%_)))))
              (let () (declare (not safe)) (_%g3113831161%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3889938900%_
                                            (lambda (_%L31074%_ _%L31076%_)
                                              (let ((__tmp40059
                                                     (gx#stx-e _%L31076%_)))
                                                (declare (not safe))
                                                (_%generate-struct29286%_
                                                 __tmp40059
                                                 _%tgt30528%_
                                                 _%L31074%_
                                                 _%K30531%_
                                                 _%E30532%_))))
                                           (_%__kont3890138902%_
                                            (lambda (_%L31015%_ _%L31017%_)
                                              (let ((__tmp40060
                                                     (gx#stx-e _%L31017%_)))
                                                (declare (not safe))
                                                (_%generate-class29289%_
                                                 __tmp40060
                                                 _%tgt30528%_
                                                 _%L31015%_
                                                 _%K30531%_
                                                 _%E30532%_))))
                                           (_%__kont3890338904%_
                                            (lambda (_%L30912%_)
                                              (let* ((_%g3092630934%_
                                                      (lambda (_%g3092730930%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3092730930%_)))
                                                     (_%g3092530953%_
                                                      (lambda (_%g3092730938%_)
                                                        ((lambda (_%L30941%_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L30941%_
                                       (cons _%L30549%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%L30912%_ '()))
                                                   '())))
                                 (cons _%K30531%_ (cons _%E30532%_ '()))))))
                 _%g3092730938%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40061
                                                      (let ((_%e30957%_
                                                             (gx#stx-e
                                                              _%L30912%_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _%e30957%_))
                        (let () (declare (not safe)) (keyword? _%e30957%_))
                        (immediate? _%e30957%_))
                    (let () '##eq?)
                    (if (let () (declare (not safe)) (number? _%e30957%_))
                        (let () 'eqv?)
                        (let () 'equal?))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%g3092530953%_ __tmp40061))))
                                           (_%__kont3890538906%_
                                            (lambda (_%L30832%_ _%L30834%_)
                                              (let* ((_%g3085030858%_
                                                      (lambda (_%g3085130854%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3085130854%_)))
                                                     (_%g3084930877%_
                                                      (lambda (_%g3085130862%_)
                                                        ((lambda (_%L30865%_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%L30865%_
                                             (cons (cons _%L30834%_
                                                         (cons _%L30549%_ '()))
                                                   '()))
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (_%generate129281%_
                                          _%L30865%_
                                          _%L30832%_
                                          _%K30531%_
                                          _%E30532%_))
                                       '())))))
                 _%g3085130862%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40062
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_%g3084930877%_ __tmp40062))))
                                           (_%__kont3890738908%_
                                            (lambda (_%L30774%_)
                                              (cons 'let
                                                    (cons (cons (cons _%L30774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%L30549%_ '()))
                        '())
                  (cons _%K30531%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont3890938910%_
                                            (lambda () _%K30531%_)))
                                       (if (gx#stx-pair? _%__stx3887638877%_)
                                           (let ((_%e3058232016%_
                                                  (gx#syntax-e
                                                   _%__stx3887638877%_)))
                                             (let ((_%tl3058032023%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3058232016%_)))
                                                   (_%hd3058132020%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3058232016%_))))
                                               (if (gx#stx-datum?
                                                    _%hd3058132020%_)
                                                   (let ((_%e3058332026%_
                                                          (gx#stx-e
                                                           _%hd3058132020%_)))
                                                     (if (equal? _%e3058332026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _%tl3058032023%_)
                     (let ((_%e3058632030%_ (gx#syntax-e _%tl3058032023%_)))
                       (let ((_%tl3058432037%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3058632030%_)))
                             (_%hd3058532034%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3058632030%_))))
                         (_%__kont3887938880%_
                          _%tl3058432037%_
                          _%hd3058532034%_)))
                     (let () (declare (not safe)) (_%g3057630718%_)))
                 (if (equal? _%e3058332026%_ 'and:)
                     (_%__kont3888138882%_ _%tl3058032023%_)
                     (if (equal? _%e3058332026%_ 'or:)
                         (_%__kont3888338884%_ _%tl3058032023%_)
                         (if (equal? _%e3058332026%_ 'not:)
                             (if (gx#stx-pair? _%tl3058032023%_)
                                 (let ((_%e3060431799%_
                                        (gx#syntax-e _%tl3058032023%_)))
                                   (let ((_%tl3060231806%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3060431799%_)))
                                         (_%hd3060331803%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3060431799%_))))
                                     (if (gx#stx-null? _%tl3060231806%_)
                                         (_%__kont3888538886%_
                                          _%hd3060331803%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3057630718%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3057630718%_)))
                             (if (equal? _%e3058332026%_ 'cons:)
                                 (if (gx#stx-pair? _%tl3058032023%_)
                                     (let ((_%e3061331663%_
                                            (gx#syntax-e _%tl3058032023%_)))
                                       (let ((_%tl3061131670%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e3061331663%_)))
                                             (_%hd3061231667%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e3061331663%_))))
                                         (if (gx#stx-pair? _%tl3061131670%_)
                                             (let ((_%e3061631673%_
                                                    (gx#syntax-e
                                                     _%tl3061131670%_)))
                                               (let ((_%tl3061431680%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e3061631673%_)))
                                                     (_%hd3061531677%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e3061631673%_))))
                                                 (if (gx#stx-null?
                                                      _%tl3061431680%_)
                                                     (_%__kont3888738888%_
                                                      _%hd3061531677%_
                                                      _%hd3061231667%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g3057630718%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g3057630718%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g3057630718%_)))
                                 (if (equal? _%e3058332026%_ 'null:)
                                     (if (gx#stx-null? _%tl3058032023%_)
                                         (_%__kont3888938890%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3057630718%_)))
                                     (if (equal? _%e3058332026%_ 'splice:)
                                         (if (gx#stx-pair? _%tl3058032023%_)
                                             (let ((_%e3062931579%_
                                                    (gx#syntax-e
                                                     _%tl3058032023%_)))
                                               (let ((_%tl3062731586%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e3062931579%_)))
                                                     (_%hd3062831583%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e3062931579%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl3062731586%_)
                                                     (let ((_%e3063231589%_
                                                            (gx#syntax-e
                                                             _%tl3062731586%_)))
                                                       (let ((_%tl3063031596%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e3063231589%_)))
                     (_%hd3063131593%_
                      (let () (declare (not safe)) (##car _%e3063231589%_))))
                 (if (gx#stx-null? _%tl3063031596%_)
                     (_%__kont3889138892%_ _%hd3063131593%_ _%hd3062831583%_)
                     (let () (declare (not safe)) (_%g3057630718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g3057630718%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g3057630718%_)))
                                         (if (equal? _%e3058332026%_ 'box:)
                                             (if (gx#stx-pair?
                                                  _%tl3058032023%_)
                                                 (let ((_%e3064031503%_
                                                        (gx#syntax-e
                                                         _%tl3058032023%_)))
                                                   (let ((_%tl3063831510%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e3064031503%_)))
                                                         (_%hd3063931507%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e3064031503%_))))
                                                     (if (gx#stx-null?
                                                          _%tl3063831510%_)
                                                         (_%__kont3889338894%_
                                                          _%hd3063931507%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g3057630718%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3057630718%_)))
                                             (if (equal? _%e3058332026%_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _%tl3058032023%_)
                                                     (let ((_%e3064831308%_
                                                            (gx#syntax-e
                                                             _%tl3058032023%_)))
                                                       (let ((_%tl3064631315%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e3064831308%_)))
                     (_%hd3064731312%_
                      (let () (declare (not safe)) (##car _%e3064831308%_))))
                 (if (gx#stx-null? _%tl3064631315%_)
                     (_%__kont3889538896%_ _%hd3064731312%_)
                     (let () (declare (not safe)) (_%g3057630718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g3057630718%_)))
                                                 (if (equal? _%e3058332026%_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _%tl3058032023%_)
                                                         (let ((_%e3065631113%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl3058032023%_)))
                   (let ((_%tl3065431120%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e3065631113%_)))
                         (_%hd3065531117%_
                          (let ()
                            (declare (not safe))
                            (##car _%e3065631113%_))))
                     (if (gx#stx-null? _%tl3065431120%_)
                         (_%__kont3889738898%_ _%hd3065531117%_)
                         (let () (declare (not safe)) (_%g3057630718%_)))))
                 (let () (declare (not safe)) (_%g3057630718%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _%e3058332026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _%tl3058032023%_)
                     (let ((_%e3066531054%_ (gx#syntax-e _%tl3058032023%_)))
                       (let ((_%tl3066331061%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3066531054%_)))
                             (_%hd3066431058%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3066531054%_))))
                         (if (gx#stx-pair? _%tl3066331061%_)
                             (let ((_%e3066831064%_
                                    (gx#syntax-e _%tl3066331061%_)))
                               (let ((_%tl3066631071%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e3066831064%_)))
                                     (_%hd3066731068%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e3066831064%_))))
                                 (if (gx#stx-null? _%tl3066631071%_)
                                     (_%__kont3889938900%_
                                      _%hd3066731068%_
                                      _%hd3066431058%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g3057630718%_)))))
                             (let () (declare (not safe)) (_%g3057630718%_)))))
                     (let () (declare (not safe)) (_%g3057630718%_)))
                 (if (equal? _%e3058332026%_ 'class:)
                     (if (gx#stx-pair? _%tl3058032023%_)
                         (let ((_%e3067730995%_
                                (gx#syntax-e _%tl3058032023%_)))
                           (let ((_%tl3067531002%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3067730995%_)))
                                 (_%hd3067630999%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3067730995%_))))
                             (if (gx#stx-pair? _%tl3067531002%_)
                                 (let ((_%e3068031005%_
                                        (gx#syntax-e _%tl3067531002%_)))
                                   (let ((_%tl3067831012%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3068031005%_)))
                                         (_%hd3067931009%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3068031005%_))))
                                     (if (gx#stx-null? _%tl3067831012%_)
                                         (_%__kont3890138902%_
                                          _%hd3067931009%_
                                          _%hd3067630999%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3057630718%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3057630718%_)))))
                         (let () (declare (not safe)) (_%g3057630718%_)))
                     (if (equal? _%e3058332026%_ 'datum:)
                         (if (gx#stx-pair? _%tl3058032023%_)
                             (let ((_%e3068830902%_
                                    (gx#syntax-e _%tl3058032023%_)))
                               (let ((_%tl3068630909%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e3068830902%_)))
                                     (_%hd3068730906%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e3068830902%_))))
                                 (if (gx#stx-null? _%tl3068630909%_)
                                     (_%__kont3890338904%_ _%hd3068730906%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g3057630718%_)))))
                             (let () (declare (not safe)) (_%g3057630718%_)))
                         (if (equal? _%e3058332026%_ 'apply:)
                             (if (gx#stx-pair? _%tl3058032023%_)
                                 (let ((_%e3069730812%_
                                        (gx#syntax-e _%tl3058032023%_)))
                                   (let ((_%tl3069530819%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3069730812%_)))
                                         (_%hd3069630816%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3069730812%_))))
                                     (if (gx#stx-pair? _%tl3069530819%_)
                                         (let ((_%e3070030822%_
                                                (gx#syntax-e
                                                 _%tl3069530819%_)))
                                           (let ((_%tl3069830829%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3070030822%_)))
                                                 (_%hd3069930826%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3070030822%_))))
                                             (if (gx#stx-null?
                                                  _%tl3069830829%_)
                                                 (_%__kont3890538906%_
                                                  _%hd3069930826%_
                                                  _%hd3069630816%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3057630718%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3057630718%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3057630718%_)))
                             (if (equal? _%e3058332026%_ 'var:)
                                 (if (gx#stx-pair? _%tl3058032023%_)
                                     (let ((_%e3070830764%_
                                            (gx#syntax-e _%tl3058032023%_)))
                                       (let ((_%tl3070630771%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e3070830764%_)))
                                             (_%hd3070730768%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e3070830764%_))))
                                         (if (gx#stx-null? _%tl3070630771%_)
                                             (_%__kont3890738908%_
                                              _%hd3070730768%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g3057630718%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g3057630718%_)))
                                 (if (equal? _%e3058332026%_ 'any:)
                                     (if (gx#stx-null? _%tl3058032023%_)
                                         (_%__kont3890938910%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3057630718%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g3057630718%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3057630718%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3057630718%_)))))))
                               _%g3053530546%_))))
                      (declare (not safe))
                      (_%g3053332325%_ _%tgt30528%_))))
                 (_%generate-splice29283%_
                  (lambda (_%tgt29900%_
                           _%hd29902%_
                           _%rest29903%_
                           _%K29904%_
                           _%E29905%_)
                    (let* ((_%g2990729924%_
                            (lambda (_%g2990829920%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2990829920%_)))
                           (_%g2990630524%_
                            (lambda (_%g2990829928%_)
                              (if (gx#stx-pair/null? _%g2990829928%_)
                                  (let ((_g40063_
                                         (gx#syntax-split-splice
                                          _%g2990829928%_
                                          '0)))
                                    (begin
                                      (let ((_g40064_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g40063_)
                                                   (##vector-length _g40063_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g40064_ 2)))
                                            (error "Context expects 2 values"
                                                   _g40064_)))
                                      (let ((_%target2991029931%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g40063_ 0)))
                                            (_%tl2991229934%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g40063_ 1))))
                                        (if (gx#stx-null? _%tl2991229934%_)
                                            (letrec ((_%loop2991329937%_
                                                      (lambda (_%hd2991129941%_
                                                               _%var2991729944%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2991129941%_)
                                                            (let ((_%e2991429947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2991129941%_)))
                      (let ((_%lp-hd2991529951%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2991429947%_)))
                            (_%lp-tl2991629954%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2991429947%_))))
                        (let ((__tmp40065
                               (cons _%lp-hd2991529951%_ _%var2991729944%_)))
                          (declare (not safe))
                          (_%loop2991329937%_
                           _%lp-tl2991629954%_
                           __tmp40065))))
                    (let ((_%var2991829957%_ (reverse _%var2991729944%_)))
                      ((lambda (_%L29961%_)
                         (let ()
                           (let* ((_%g2997729994%_
                                   (lambda (_%g2997829990%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2997829990%_)))
                                  (_%g2997630512%_
                                   (lambda (_%g2997829998%_)
                                     (if (gx#stx-pair/null? _%g2997829998%_)
                                         (let ((_g40066_
                                                (gx#syntax-split-splice
                                                 _%g2997829998%_
                                                 '0)))
                                           (begin
                                             (let ((_g40067_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g40066_)
                                                          (##vector-length
                                                           _g40066_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g40067_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g40067_)))
                                             (let ((_%target2998030001%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g40066_
                                                       0)))
                                                   (_%tl2998230004%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g40066_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _%tl2998230004%_)
                                                   (letrec ((_%loop2998330007%_
                                                             (lambda (_%hd2998130011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%var-r2998730014%_)
                       (if (gx#stx-pair? _%hd2998130011%_)
                           (let ((_%e2998430017%_
                                  (gx#syntax-e _%hd2998130011%_)))
                             (let ((_%lp-hd2998530021%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2998430017%_)))
                                   (_%lp-tl2998630024%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2998430017%_))))
                               (let ((__tmp40068
                                      (cons _%lp-hd2998530021%_
                                            _%var-r2998730014%_)))
                                 (declare (not safe))
                                 (_%loop2998330007%_
                                  _%lp-tl2998630024%_
                                  __tmp40068))))
                           (let ((_%var-r2998830027%_
                                  (reverse _%var-r2998730014%_)))
                             ((lambda (_%L30031%_)
                                (let ()
                                  (let* ((_%g3004830065%_
                                          (lambda (_%g3004930061%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3004930061%_)))
                                         (_%g3004730500%_
                                          (lambda (_%g3004930069%_)
                                            (if (gx#stx-pair/null?
                                                 _%g3004930069%_)
                                                (let ((_g40069_
                                                       (gx#syntax-split-splice
                                                        _%g3004930069%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g40070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g40069_)
                         (##vector-length _g40069_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g40070_ 2)))
                  (error "Context expects 2 values" _g40070_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target3005130072%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g40069_
                                                              0)))
                                                          (_%tl3005330075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g40069_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl3005330075%_)
                                                          (letrec ((_%loop3005430078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd3005230082%_ _%init3005830085%_)
                              (if (gx#stx-pair? _%hd3005230082%_)
                                  (let ((_%e3005530088%_
                                         (gx#syntax-e _%hd3005230082%_)))
                                    (let ((_%lp-hd3005630092%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3005530088%_)))
                                          (_%lp-tl3005730095%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3005530088%_))))
                                      (let ((__tmp40071
                                             (cons _%lp-hd3005630092%_
                                                   _%init3005830085%_)))
                                        (declare (not safe))
                                        (_%loop3005430078%_
                                         _%lp-tl3005730095%_
                                         __tmp40071))))
                                  (let ((_%init3005930098%_
                                         (reverse _%init3005830085%_)))
                                    ((lambda (_%L30102%_)
                                       (let ()
                                         (let* ((_%g3011930127%_
                                                 (lambda (_%g3012030123%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3012030123%_)))
                                                (_%g3011830496%_
                                                 (lambda (_%g3012030131%_)
                                                   ((lambda (_%L30134%_)
                                                      (let ()
                                                        (let* ((_%g3014730155%_
                                                                (lambda (_%g3014830151%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g3014830151%_)))
                       (_%g3014630492%_
                        (lambda (_%g3014830159%_)
                          ((lambda (_%L30162%_)
                             (let ()
                               (let* ((_%g3017530183%_
                                       (lambda (_%g3017630179%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g3017630179%_)))
                                      (_%g3017430488%_
                                       (lambda (_%g3017630187%_)
                                         ((lambda (_%L30190%_)
                                            (let ()
                                              (let* ((_%g3020330211%_
                                                      (lambda (_%g3020430207%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3020430207%_)))
                                                     (_%g3020230484%_
                                                      (lambda (_%g3020430215%_)
                                                        ((lambda (_%L30218%_)
                                                           (let ()
                                                             (let* ((_%g3023130239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3023230235%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3023230235%_)))
                            (_%g3023030480%_
                             (lambda (_%g3023230243%_)
                               ((lambda (_%L30246%_)
                                  (let ()
                                    (let* ((_%g3025930267%_
                                            (lambda (_%g3026030263%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g3026030263%_)))
                                           (_%g3025830476%_
                                            (lambda (_%g3026030271%_)
                                              ((lambda (_%L30274%_)
                                                 (let ()
                                                   (let* ((_%g3028730295%_
                                                           (lambda (_%g3028830291%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g3028830291%_)))
                                                          (_%g3028630472%_
                                                           (lambda (_%g3028830299%_)
                                                             ((lambda (_%L30302%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g3031530323%_
                                  (lambda (_%g3031630319%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g3031630319%_)))
                                 (_%g3031430457%_
                                  (lambda (_%g3031630327%_)
                                    ((lambda (_%L30330%_)
                                       (let ()
                                         (let* ((_%g3034330351%_
                                                 (lambda (_%g3034430347%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g3034430347%_)))
                                                (_%g3034230445%_
                                                 (lambda (_%g3034430355%_)
                                                   ((lambda (_%L30358%_)
                                                      (let ()
                                                        (let* ((_%g3037130379%_
                                                                (lambda (_%g3037230375%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g3037230375%_)))
                       (_%g3037030441%_
                        (lambda (_%g3037230383%_)
                          ((lambda (_%L30386%_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'letrec)
                                     (cons (cons (cons _%L30162%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons (cons _%L30274%_
                                       (foldr (lambda (_%g3040830411%_
                                                       _%g3040930414%_)
                                                (cons _%g3040830411%_
                                                      _%g3040930414%_))
                                              '()
                                              _%L29961%_))
                                 (cons _%L30302%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L30218%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons (cons _%L30246%_
                                             (cons _%L30274%_
                                                   (foldr (lambda (_%g3040630417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3040730420%_)
                    (cons _%g3040630417%_ _%g3040730420%_))
                  '()
                  _%L30031%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons _%L30386%_ '())))
                           '()))
               (cons (cons _%L30190%_
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons _%L30274%_
                                                   (foldr (lambda (_%g3040430423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3040530426%_)
                    (cons _%g3040430423%_ _%g3040530426%_))
                  '()
                  _%L30031%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'pair?)
                             (cons _%L30274%_ '()))
                       (cons (cons _%L30218%_
                                   (cons (cons (gx#datum->syntax '#f '##car)
                                               (cons _%L30274%_ '()))
                                         (cons _%L30274%_
                                               (foldr (lambda (_%g3040230429%_
                                                               _%g3040330432%_)
                                                        (cons _%g3040230429%_
                                                              _%g3040330432%_))
                                                      '()
                                                      _%L30031%_))))
                             (cons _%L30358%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L30190%_
                                                       (cons _%L30134%_
                                                             (foldr (lambda (_%g3040030435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g3040130438%_)
                              (cons _%g3040030435%_ _%g3040130438%_))
                            '()
                            _%L30102%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _%g3037230383%_)))
                       (__tmp40072
                        (let ()
                          (declare (not safe))
                          (_%generate129281%_
                           _%L30246%_
                           _%hd29902%_
                           _%L30330%_
                           _%L30358%_))))
                  (declare (not safe))
                  (_%g3037030441%_ __tmp40072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g3034430355%_)))
                                                (__tmp40073
                                                 (cons _%L30162%_
                                                       (cons _%L30274%_
                                                             (foldr (lambda (_%g3044830451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g3044930454%_)
                              (cons (cons (gx#datum->syntax '#f 'reverse)
                                          (cons _%g3044830451%_ '()))
                                    _%g3044930454%_))
                            '()
                            _%L30031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g3034230445%_ __tmp40073))))
                                     _%g3031630327%_)))
                                 (__tmp40074
                                  (cons _%L30190%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##cdr)
                                                    (cons _%L30274%_ '()))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _%L30031%_
                                                 _%L29961%_)
                                                (foldr (lambda (_%g3046030464%_
                                                                _%g3046130467%_
                                                                _%g3046230469%_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'cons)
                             (cons _%g3046130467%_ (cons _%g3046030464%_ '())))
                       _%g3046230469%_))
               '()
               _%L30031%_
               _%L29961%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (declare (not safe))
                            (_%g3031430457%_ __tmp40074))))
                      _%g3028830299%_)))
                  (__tmp40075
                   (let ()
                     (declare (not safe))
                     (_%generate129281%_
                      _%L30274%_
                      _%rest29903%_
                      _%K29904%_
                      _%E29905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g3028630472%_
                                                      __tmp40075))))
                                               _%g3026030271%_)))
                                           (__tmp40076 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_%g3025830476%_ __tmp40076))))
                                _%g3023230243%_)))
                            (__tmp40077 (gx#genident 'hd)))
                       (declare (not safe))
                       (_%g3023030480%_ __tmp40077))))
                 _%g3020430215%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp40078
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_%g3020230484%_ __tmp40078))))
                                          _%g3017630187%_)))
                                      (__tmp40079 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_%g3017430488%_ __tmp40079))))
                           _%g3014830159%_)))
                       (__tmp40080 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_%g3014630492%_ __tmp40080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g3012030131%_))))
                                           (declare (not safe))
                                           (_%g3011830496%_ _%tgt29900%_))))
                                     _%init3005930098%_))))))
                    (let ()
                      (declare (not safe))
                      (_%loop3005430078%_ _%target3005130072%_ '())))
                  (let ()
                    (declare (not safe))
                    (_%g3004830065%_ _%g3004930069%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3004830065%_
                                                   _%g3004930069%_)))))
                                         (__tmp40081
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_%g3050330506%_
                                                            _%g3050430509%_)
                                                     (cons _%g3050330506%_
                                                           _%g3050430509%_))
                                                   '()
                                                   _%L29961%_))
                                           (cons (gx#datum->syntax '#f '@list)
                                                 '()))))
                                    (declare (not safe))
                                    (_%g3004730500%_ __tmp40081))))
                              _%var-r2998830027%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%loop2998330007%_
                                                        _%target2998030001%_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g2997729994%_
                                                      _%g2997829998%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g2997729994%_
                                            _%g2997829998%_)))))
                                  (__tmp40082
                                   (gx#gentemps
                                    (foldr (lambda (_%g3051530518%_
                                                    _%g3051630521%_)
                                             (cons _%g3051530518%_
                                                   _%g3051630521%_))
                                           '()
                                           _%L29961%_))))
                             (declare (not safe))
                             (_%g2997630512%_ __tmp40082))))
                       _%var2991829957%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop2991329937%_
                                                 _%target2991029931%_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2990729924%_
                                               _%g2990829928%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2990729924%_ _%g2990829928%_)))))
                           (__tmp40083
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/match[1]#match-pattern-vars|
                               _%hd29902%_))))
                      (declare (not safe))
                      (_%g2990630524%_ __tmp40083))))
                 (_%generate-simple-vector29284%_
                  (lambda (_%tgt29742%_
                           _%body29744%_
                           _%start29745%_
                           _%K29746%_
                           _%E29747%_)
                    (let _%recur29749%_ ((_%rest29752%_ _%body29744%_)
                                         (_%off29754%_ _%start29745%_))
                      (let* ((_%__stx3923439235%_ _%rest29752%_)
                             (_%g2975729769%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3923439235%_))))
                        (let ((_%__kont3923739238%_
                               (lambda (_%L29797%_ _%L29799%_)
                                 (let* ((_%g2981429833%_
                                         (lambda (_%g2981529829%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2981529829%_)))
                                        (_%g2981329892%_
                                         (lambda (_%g2981529837%_)
                                           (if (gx#stx-pair? _%g2981529837%_)
                                               (let ((_%e2982129840%_
                                                      (gx#syntax-e
                                                       _%g2981529837%_)))
                                                 (let ((_%hd2982029844%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2982129840%_)))
                                                       (_%tl2981929847%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2982129840%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2981929847%_)
                                                       (let ((_%e2982429850%_
                                                              (gx#syntax-e
                                                               _%tl2981929847%_)))
                                                         (let ((_%hd2982329854%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2982429850%_)))
                       (_%tl2982229857%_
                        (let () (declare (not safe)) (##cdr _%e2982429850%_))))
                   (if (gx#stx-pair? _%tl2982229857%_)
                       (let ((_%e2982729860%_ (gx#syntax-e _%tl2982229857%_)))
                         (let ((_%hd2982629864%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2982729860%_)))
                               (_%tl2982529867%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2982729860%_))))
                           (if (gx#stx-null? _%tl2982529867%_)
                               ((lambda (_%L29870%_ _%L29872%_ _%L29873%_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _%L29873%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _%L29872%_ (cons _%L29870%_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (let ((__tmp40084
                                                             (let ((__tmp40085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (fx1+ _%off29754%_)))
                       (declare (not safe))
                       (_%recur29749%_ _%L29797%_ __tmp40085))))
                (declare (not safe))
                (_%generate129281%_
                 _%L29873%_
                 _%L29799%_
                 __tmp40084
                 _%E29747%_))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%hd2982629864%_
                                _%hd2982329854%_
                                _%hd2982029844%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g2981429833%_ _%g2981529837%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g2981429833%_ _%g2981529837%_)))))
               (let ()
                 (declare (not safe))
                 (_%g2981429833%_ _%g2981529837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g2981429833%_
                                                  _%g2981529837%_)))))
                                        (__tmp40086
                                         (list (gx#genident 'e)
                                               _%tgt29742%_
                                               _%off29754%_)))
                                   (declare (not safe))
                                   (_%g2981329892%_ __tmp40086))))
                              (_%__kont3923939240%_ (lambda () _%K29746%_)))
                          (if (gx#stx-pair? _%__stx3923439235%_)
                              (let ((_%e2976329787%_
                                     (gx#syntax-e _%__stx3923439235%_)))
                                (let ((_%tl2976129794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2976329787%_)))
                                      (_%hd2976229791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2976329787%_))))
                                  (_%__kont3923739238%_
                                   _%tl2976129794%_
                                   _%hd2976229791%_)))
                              (_%__kont3923939240%_)))))))
                 (_%generate-list-vector29285%_
                  (lambda (_%tgt29634%_
                           _%body29636%_
                           _%->list29637%_
                           _%K29638%_
                           _%E29639%_)
                    (let* ((_%g2964129649%_
                            (lambda (_%g2964229645%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2964229645%_)))
                           (_%g2964029738%_
                            (lambda (_%g2964229653%_)
                              ((lambda (_%L29656%_)
                                 (let ()
                                   (let* ((_%g2966829676%_
                                           (lambda (_%g2966929672%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2966929672%_)))
                                          (_%g2966729734%_
                                           (lambda (_%g2966929680%_)
                                             ((lambda (_%L29683%_)
                                                (let ()
                                                  (let* ((_%g2969629704%_
                                                          (lambda (_%g2969729700%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2969729700%_)))
                                                         (_%g2969529726%_
                                                          (lambda (_%g2969729708%_)
                                                            ((lambda (_%L29711%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons (cons (cons _%L29656%_
                                                 (cons _%L29711%_ '()))
                                           '())
                                     (cons (let ()
                                             (declare (not safe))
                                             (_%generate129281%_
                                              _%L29656%_
                                              _%body29636%_
                                              _%K29638%_
                                              _%E29639%_))
                                           '())))))
                     _%g2969729708%_)))
                 (__tmp40087
                  (let ((_%$e29730%_ _%->list29637%_))
                    (if (eq? 'values->list _%$e29730%_)
                        (cons (gx#datum->syntax '#f 'values->list)
                              (cons _%L29683%_ '()))
                        (if (eq? 'vector->list _%$e29730%_)
                            (cons (gx#datum->syntax '#f '##vector->list)
                                  (cons _%L29683%_ '()))
                            (if (eq? 'struct->list _%$e29730%_)
                                (cons (gx#datum->syntax '#f '##cdr)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##structure->list)
                                                  (cons _%L29683%_ '()))
                                            '()))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _%stx29274%_
                                 _%->list29637%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g2969529726%_
                                                     __tmp40087))))
                                              _%g2966929680%_))))
                                     (declare (not safe))
                                     (_%g2966729734%_ _%tgt29634%_))))
                               _%g2964229653%_)))
                           (__tmp40088 (gx#genident 'e)))
                      (declare (not safe))
                      (_%g2964029738%_ __tmp40088))))
                 (_%generate-struct29286%_
                  (lambda (_%info29505%_
                           _%tgt29507%_
                           _%body29508%_
                           _%K29509%_
                           _%E29510%_)
                    (let* ((_%__stx3925039251%_ _%body29508%_)
                           (_%g2951329536%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3925039251%_))))
                      (let ((_%__kont3925339254%_
                             (lambda (_%L29613%_)
                               (let ((_%fields29627%_
                                      (let ()
                                        (declare (not safe))
                                        (_%struct-field-accessors29288%_
                                         _%info29505%_))))
                                 (cons 'if
                                       (cons (cons (let ((__obj40004
                                                          _%info29505%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj40004
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj40004
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj40004
                                                          'predicate)))
                                                   (cons _%tgt29507%_ '()))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (_%generate-simple-struct-body29287%_
                                                      _%info29505%_
                                                      _%tgt29507%_
                                                      _%L29613%_
                                                      _%K29509%_
                                                      _%E29510%_))
                                                   (cons _%E29510%_ '())))))))
                            (_%__kont3925539256%_
                             (lambda (_%L29567%_)
                               (cons 'if
                                     (cons (cons (let ((__obj40005
                                                        _%info29505%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40005
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40005
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40005
                                                        'predicate)))
                                                 (cons _%tgt29507%_ '()))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%generate-list-vector29285%_
                                                    _%tgt29507%_
                                                    _%L29567%_
                                                    'struct->list
                                                    _%K29509%_
                                                    _%E29510%_))
                                                 (cons _%E29510%_ '())))))))
                        (if (gx#stx-pair? _%__stx3925039251%_)
                            (let ((_%e2951829589%_
                                   (gx#syntax-e _%__stx3925039251%_)))
                              (let ((_%tl2951629596%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2951829589%_)))
                                    (_%hd2951729593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2951829589%_))))
                                (if (gx#stx-datum? _%hd2951729593%_)
                                    (let ((_%e2951929599%_
                                           (gx#stx-e _%hd2951729593%_)))
                                      (if (equal? _%e2951929599%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2951629596%_)
                                              (let ((_%e2952229603%_
                                                     (gx#syntax-e
                                                      _%tl2951629596%_)))
                                                (let ((_%tl2952029610%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2952229603%_)))
                                                      (_%hd2952129607%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2952229603%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2952029610%_)
                                                      (_%__kont3925339254%_
                                                       _%hd2952129607%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2951329536%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2951329536%_)))
                                          (if (equal? _%e2951929599%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2951629596%_)
                                                  (let ((_%e2953029557%_
                                                         (gx#syntax-e
                                                          _%tl2951629596%_)))
                                                    (let ((_%tl2952829564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2953029557%_)))
                                                          (_%hd2952929561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2953029557%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2952829564%_)
                                                          (_%__kont3925539256%_
                                                           _%hd2952929561%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2951329536%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2951329536%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2951329536%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2951329536%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2951329536%_)))))))
                 (_%generate-simple-struct-body29287%_
                  (lambda (_%info29425%_
                           _%tgt29427%_
                           _%body29428%_
                           _%K29429%_
                           _%E29430%_)
                    (let _%recur29432%_ ((_%rest29435%_ _%body29428%_)
                                         (_%fields29437%_
                                          (let ()
                                            (declare (not safe))
                                            (_%struct-field-accessors29288%_
                                             _%info29425%_))))
                      (let* ((_%__stx3930039301%_ _%rest29435%_)
                             (_%g2944029452%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3930039301%_))))
                        (let ((_%__kont3930339304%_
                               (lambda (_%L29480%_ _%L29482%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _%fields29437%_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29274%_
                                      _%info29425%_
                                      (let ((__obj40006 _%info29425%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40006
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40006
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40006
                                             'name))))
                                     (let ((_%$tgt29497%_ (gx#genident 'e))
                                           (_%getf29499%_
                                            (car _%fields29437%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29497%_
                                                               (cons (cons _%getf29499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29427%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ((__tmp40089
                                                                (let ((__tmp40090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _%fields29437%_)))
                          (declare (not safe))
                          (_%recur29432%_ _%L29480%_ __tmp40090))))
                   (declare (not safe))
                   (_%generate129281%_
                    _%$tgt29497%_
                    _%L29482%_
                    __tmp40089
                    _%E29430%_))
                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%__kont3930539306%_ (lambda () _%K29429%_)))
                          (if (gx#stx-pair? _%__stx3930039301%_)
                              (let ((_%e2944629470%_
                                     (gx#syntax-e _%__stx3930039301%_)))
                                (let ((_%tl2944429477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2944629470%_)))
                                      (_%hd2944529474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2944629470%_))))
                                  (_%__kont3930339304%_
                                   _%tl2944429477%_
                                   _%hd2944529474%_)))
                              (_%__kont3930539306%_)))))))
                 (_%struct-field-accessors29288%_
                  (lambda (_%info29406%_)
                    (let _%recur29409%_ ((_%next29412%_
                                          (cons _%info29406%_ '())))
                      (if (let () (declare (not safe)) (null? _%next29412%_))
                          '()
                          (let ((_%ti29415%_ (car _%next29412%_)))
                            (let ((__tmp40092
                                   (let ((__tmp40093
                                          (map gx#syntax-local-value
                                               (let ((__obj40007 _%ti29415%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj40007
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj40007
                                                        '3
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj40007
                                                      'super))))))
                                     (declare (not safe))
                                     (_%recur29409%_ __tmp40093)))
                                  (__tmp40091
                                   (map (lambda (_%slot29418%_)
                                          (let ((_%$e29421%_
                                                 (assgetq _%slot29418%_
                                                          (let ((__obj40008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ti29415%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj40008
                           'gerbil.core#class-type-info::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj40008 '17 '#f '#f))
                        (class-slot-ref
                         gerbil/core/mop~MOP-2#class-type-info::t
                         __obj40008
                         'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29421%_
                                                _%$e29421%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29274%_
                                                 _%info29406%_
                                                 _%slot29418%_))))
                                        (let ((__obj40009 _%ti29415%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj40009
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj40009
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj40009
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp40092 __tmp40091)))))))
                 (_%generate-class29289%_
                  (lambda (_%info29399%_
                           _%tgt29401%_
                           _%body29402%_
                           _%K29403%_
                           _%E29404%_)
                    (cons 'if
                          (cons (cons (let ((__obj40010 _%info29399%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj40010
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj40010
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj40010
                                             'predicate)))
                                      (cons _%tgt29401%_ '()))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-class-body29290%_
                                         _%info29399%_
                                         _%tgt29401%_
                                         _%body29402%_
                                         _%K29403%_
                                         _%E29404%_))
                                      (cons _%E29404%_ '()))))))
                 (_%generate-class-body29290%_
                  (lambda (_%info29292%_
                           _%tgt29294%_
                           _%body29295%_
                           _%K29296%_
                           _%E29297%_)
                    (let _%recur29299%_ ((_%rest29302%_ _%body29295%_))
                      (let* ((_%__stx3931639317%_ _%rest29302%_)
                             (_%g2930629322%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3931639317%_))))
                        (let ((_%__kont3931939320%_
                               (lambda (_%L29360%_ _%L29362%_ _%L29363%_)
                                 (let ((_%$e29383%_
                                        (assgetq (let ((__tmp40094
                                                        (keyword->string
                                                         (gx#stx-e
                                                          _%L29363%_))))
                                                   (declare (not safe))
                                                   (##string->symbol
                                                    __tmp40094))
                                                 (let ((__obj40011
                                                        _%info29292%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj40011
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj40011
                                                          '17
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj40011
                                                        'unchecked-accessors))))))
                                   (if _%$e29383%_
                                       ((lambda (_%getf29387%_)
                                          (let ((_%$tgt29390%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29387%_ (cons _%tgt29294%_ '()))
                                  '()))
                      '())
                (cons (let ((__tmp40095
                             (let ()
                               (declare (not safe))
                               (_%recur29299%_ _%L29360%_))))
                        (declare (not safe))
                        (_%generate129281%_
                         _%$tgt29390%_
                         _%L29362%_
                         __tmp40095
                         _%E29297%_))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29383%_)
                                       (let ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"no slot accessor"
                                          _%stx29274%_
                                          _%info29292%_
                                          _%L29363%_))))))
                              (_%__kont3932139322%_ (lambda () _%K29296%_)))
                          (if (gx#stx-pair? _%__stx3931639317%_)
                              (let ((_%e2931329340%_
                                     (gx#syntax-e _%__stx3931639317%_)))
                                (let ((_%tl2931129347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2931329340%_)))
                                      (_%hd2931229344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2931329340%_))))
                                  (if (gx#stx-pair? _%tl2931129347%_)
                                      (let ((_%e2931629350%_
                                             (gx#syntax-e _%tl2931129347%_)))
                                        (let ((_%tl2931429357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2931629350%_)))
                                              (_%hd2931529354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2931629350%_))))
                                          (_%__kont3931939320%_
                                           _%tl2931429357%_
                                           _%hd2931529354%_
                                           _%hd2931229344%_)))
                                      (_%__kont3932139322%_))))
                              (_%__kont3932139322%_))))))))
          (let ()
            (declare (not safe))
            (_%generate129281%_
             _%tgt29276%_
             _%ptree29277%_
             _%K29278%_
             _%E29279%_)))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28087%_ _%tgt-lst28089%_ _%clauses28090%_)
        (letrec ((_%parse-body28092%_
                  (lambda (_%hd-len29096%_)
                    (let _%lp29099%_ ((_%rest29102%_ _%clauses28090%_)
                                      (_%r29104%_ '()))
                      (let* ((_%__stx3936639367%_ _%rest29102%_)
                             (_%g2910729119%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3936639367%_))))
                        (let ((_%__kont3936939370%_
                               (lambda (_%L29147%_ _%L29149%_)
                                 (let* ((_%__stx3933839339%_ _%L29149%_)
                                        (_%g2916629182%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3933839339%_))))
                                   (let ((_%__kont3934139342%_
                                          (lambda (_%L29251%_)
                                            (if (gx#stx-null? _%L29147%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29251%_)
                                 (let ((_%$e29262%_
                                        (gx#stx-source _%L29149%_)))
                                   (if _%$e29262%_
                                       _%$e29262%_
                                       (gx#stx-source _%stx28087%_))))
                                '())))
              _%r29104%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28087%_
                                                 _%L29149%_))))
                                         (_%__kont3934339344%_
                                          (lambda (_%L29210%_ _%L29212%_)
                                            (let ((__tmp40096
                                                   (cons (cons (gx#genident
                                                                'try-match)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2922429226%_)
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/match[1]#parse-match-pattern__%|
                                   _%g2922429226%_
                                   _%stx28087%_)))
                              _%L29212%_)
                             (cons (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'begin)
                                          _%L29210%_)
                                    (let ((_%$e29230%_
                                           (gx#stx-source _%L29149%_)))
                                      (if _%$e29230%_
                                          _%$e29230%_
                                          (gx#stx-source _%stx28087%_))))
                                   '())))
                 _%r29104%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%lp29099%_
                                               _%L29147%_
                                               __tmp40096))))
                                         (_%__kont3934539346%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28087%_
                                             _%L29149%_))))
                                     (let* ((_%__match3936339364%_
                                             (lambda (_%e2917629200%_
                                                      _%hd2917529204%_
                                                      _%tl2917429207%_)
                                               (let ((_%L29210%_
                                                      _%tl2917429207%_)
                                                     (_%L29212%_
                                                      _%hd2917529204%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29212%_)
                                                          (fx= (gx#stx-length
                                                                _%L29212%_)
                                                               _%hd-len29096%_)
                                                          (gx#stx-list?
                                                           _%L29210%_)
                                                          (let ((__tmp40097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _%L29210%_)))
                    (declare (not safe))
                    (not __tmp40097)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont3934339344%_
                                                      _%L29210%_
                                                      _%L29212%_)
                                                     (_%__kont3934539346%_)))))
                                            (_%__match3935739358%_
                                             (lambda (_%e2917129241%_
                                                      _%hd2917029245%_
                                                      _%tl2916929248%_)
                                               (let ((_%L29251%_
                                                      _%tl2916929248%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29251%_)
                                                          (let ((__tmp40098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _%L29251%_)))
                    (declare (not safe))
                    (not __tmp40098)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont3934139342%_
                                                      _%L29251%_)
                                                     (_%__match3936339364%_
                                                      _%e2917129241%_
                                                      _%hd2917029245%_
                                                      _%tl2916929248%_))))))
                                       (if (gx#stx-pair? _%__stx3933839339%_)
                                           (let ((_%e2917129241%_
                                                  (gx#syntax-e
                                                   _%__stx3933839339%_)))
                                             (let ((_%tl2916929248%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2917129241%_)))
                                                   (_%hd2917029245%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2917129241%_))))
                                               (if (gx#identifier?
                                                    _%hd2917029245%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g40099_|
                                                        _%hd2917029245%_)
                                                       (_%__match3935739358%_
                                                        _%e2917129241%_
                                                        _%hd2917029245%_
                                                        _%tl2916929248%_)
                                                       (_%__match3936339364%_
                                                        _%e2917129241%_
                                                        _%hd2917029245%_
                                                        _%tl2916929248%_))
                                                   (_%__match3936339364%_
                                                    _%e2917129241%_
                                                    _%hd2917029245%_
                                                    _%tl2916929248%_))))
                                           (_%__kont3934539346%_)))))))
                              (_%__kont3937139372%_ (lambda () _%r29104%_)))
                          (if (gx#stx-pair? _%__stx3936639367%_)
                              (let ((_%e2911329137%_
                                     (gx#syntax-e _%__stx3936639367%_)))
                                (let ((_%tl2911129144%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2911329137%_)))
                                      (_%hd2911229141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2911329137%_))))
                                  (_%__kont3936939370%_
                                   _%tl2911129144%_
                                   _%hd2911229141%_)))
                              (_%__kont3937139372%_)))))))
                 (_%generate-body28094%_
                  (lambda (_%body28798%_)
                    (let* ((_%g2880128809%_
                            (lambda (_%g2880228805%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2880228805%_)))
                           (_%g2880029092%_
                            (lambda (_%g2880228813%_)
                              ((lambda (_%L28816%_)
                                 (let ()
                                   (let* ((_%g2882828845%_
                                           (lambda (_%g2882928841%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2882928841%_)))
                                          (_%g2882729088%_
                                           (lambda (_%g2882928849%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2882928849%_)
                                                 (let ((_g40100_
                                                        (gx#syntax-split-splice
                                                         _%g2882928849%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g40101_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g40100_)
                          (##vector-length _g40100_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g40101_ 2)))
                   (error "Context expects 2 values" _g40101_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2883128852%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g40100_
                                                               0)))
                                                           (_%tl2883328855%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g40100_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2883328855%_)
                                                           (letrec ((_%loop2883428858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2883228862%_ _%target2883828865%_)
                               (if (gx#stx-pair? _%hd2883228862%_)
                                   (let ((_%e2883528868%_
                                          (gx#syntax-e _%hd2883228862%_)))
                                     (let ((_%lp-hd2883628872%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2883528868%_)))
                                           (_%lp-tl2883728875%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2883528868%_))))
                                       (let ((__tmp40102
                                              (cons _%lp-hd2883628872%_
                                                    _%target2883828865%_)))
                                         (declare (not safe))
                                         (_%loop2883428858%_
                                          _%lp-tl2883728875%_
                                          __tmp40102))))
                                   (let ((_%target2883928878%_
                                          (reverse _%target2883828865%_)))
                                     ((lambda (_%L28882%_)
                                        (let ()
                                          (let* ((_%g2889928916%_
                                                  (lambda (_%g2890028912%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2890028912%_)))
                                                 (_%g2889829084%_
                                                  (lambda (_%g2890028920%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g2890028920%_)
                                                        (let ((_g40103_
                                                               (gx#syntax-split-splice
                                                                _%g2890028920%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g40104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g40103_)
                                 (##vector-length _g40103_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g40104_ 2)))
                          (error "Context expects 2 values" _g40104_)))
                    (let ((_%target2890228923%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g40103_ 0)))
                          (_%tl2890428926%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g40103_ 1))))
                      (if (gx#stx-null? _%tl2890428926%_)
                          (letrec ((_%loop2890528929%_
                                    (lambda (_%hd2890328933%_
                                             _%fail-diagnostic2890928936%_)
                                      (if (gx#stx-pair? _%hd2890328933%_)
                                          (let ((_%e2890628939%_
                                                 (gx#syntax-e
                                                  _%hd2890328933%_)))
                                            (let ((_%lp-hd2890728943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2890628939%_)))
                                                  (_%lp-tl2890828946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2890628939%_))))
                                              (let ((__tmp40105
                                                     (cons _%lp-hd2890728943%_
                                                           _%fail-diagnostic2890928936%_)))
                                                (declare (not safe))
                                                (_%loop2890528929%_
                                                 _%lp-tl2890828946%_
                                                 __tmp40105))))
                                          (let ((_%fail-diagnostic2891028949%_
                                                 (reverse _%fail-diagnostic2890928936%_)))
                                            ((lambda (_%L28953%_)
                                               (let ()
                                                 (let* ((_%g2897028978%_
                                                         (lambda (_%g2897128974%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2897128974%_)))
                                                        (_%g2896929064%_
                                                         (lambda (_%g2897128982%_)
                                                           ((lambda (_%L28985%_)
                                                              (let ()
                                                                (let* ((_%g2899829006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g2899929002%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g2899929002%_)))
                               (_%g2899729060%_
                                (lambda (_%g2899929010%_)
                                  ((lambda (_%L29013%_)
                                     (let ()
                                       (let* ((_%g2902629034%_
                                               (lambda (_%g2902729030%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2902729030%_)))
                                              (_%g2902529056%_
                                               (lambda (_%g2902729038%_)
                                                 ((lambda (_%L29041%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin-annotation)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '@match)
                          (cons _%L29041%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2902729038%_)))
                                              (__tmp40106
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _%L28816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L28985%_ '()))
                          '())
                    (cons _%L29013%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _%stx28087%_))))
                                         (declare (not safe))
                                         (_%g2902529056%_ __tmp40106))))
                                   _%g2899929010%_)))
                               (__tmp40107
                                (let ((__tmp40108
                                       (cons (gx#datum->syntax
                                              '#f
                                              'begin-annotation)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@abort)
                                                         '())
                                                   (cons (cons _%L28816%_ '())
                                                         '())))))
                                  (declare (not safe))
                                  (_%generate-clauses28095%_
                                   _%body28798%_
                                   __tmp40108))))
                          (declare (not safe))
                          (_%g2899729060%_ __tmp40107))))
                    _%g2897128982%_)))
                (__tmp40109
                 (gx#stx-wrap-source
                  (cons (gx#datum->syntax '#f 'lambda)
                        (cons '()
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"No clause matching"
                                                (foldr (lambda (_%g2906729072%_
                                                                _%g2906829075%_)
                                                         (cons _%g2906729072%_
                                                               _%g2906829075%_))
                                                       (foldr (lambda (_%g2906929078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g2907029081%_)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2906929078%_ '()))
                              _%g2907029081%_))
                      '()
                      _%L28953%_)
               _%L28882%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons (gx#datum->syntax '#f 'void)
                                                '())
                                          '()))))
                  (gx#stx-source _%stx28087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%g2896929064%_
                                                    __tmp40109))))
                                             _%fail-diagnostic2891028949%_))))))
                            (let ()
                              (declare (not safe))
                              (_%loop2890528929%_ _%target2890228923%_ '())))
                          (let ()
                            (declare (not safe))
                            (_%g2889928916%_ _%g2890028920%_))))))
                (let ()
                  (declare (not safe))
                  (_%g2889928916%_ _%g2890028920%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp40110
                                                  (gx#stx-map
                                                   gx#stx-car
                                                   _%clauses28090%_)))
                                            (declare (not safe))
                                            (_%g2889829084%_ __tmp40110))))
                                      _%target2883928878%_))))))
                     (let ()
                       (declare (not safe))
                       (_%loop2883428858%_ _%target2883128852%_ '())))
                   (let ()
                     (declare (not safe))
                     (_%g2882828845%_ _%g2882928849%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g2882828845%_
                                                    _%g2882928849%_))))))
                                     (declare (not safe))
                                     (_%g2882729088%_ _%tgt-lst28089%_))))
                               _%g2880228813%_)))
                           (__tmp40111 (gx#genident 'E)))
                      (declare (not safe))
                      (_%g2880029092%_ __tmp40111))))
                 (_%generate-clauses28095%_
                  (lambda (_%rest28450%_ _%E28452%_)
                    (let* ((_%__stx3938239383%_ _%rest28450%_)
                           (_%g2845628472%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3938239383%_))))
                      (let ((_%__kont3938539386%_
                             (lambda (_%L28706%_)
                               (let* ((_%g2871728735%_
                                       (lambda (_%g2871828731%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2871828731%_)))
                                      (_%g2871628790%_
                                       (lambda (_%g2871828739%_)
                                         (if (gx#stx-pair? _%g2871828739%_)
                                             (let ((_%e2872328742%_
                                                    (gx#syntax-e
                                                     _%g2871828739%_)))
                                               (let ((_%hd2872228746%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2872328742%_)))
                                                     (_%tl2872128749%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2872328742%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2872128749%_)
                                                     (let ((_%e2872628752%_
                                                            (gx#syntax-e
                                                             _%tl2872128749%_)))
                                                       (let ((_%hd2872528756%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2872628752%_)))
                     (_%tl2872428759%_
                      (let () (declare (not safe)) (##cdr _%e2872628752%_))))
                 (if (gx#stx-pair? _%tl2872428759%_)
                     (let ((_%e2872928762%_ (gx#syntax-e _%tl2872428759%_)))
                       (let ((_%hd2872828766%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2872928762%_)))
                             (_%tl2872728769%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2872928762%_))))
                         (if (gx#stx-null? _%tl2872728769%_)
                             ((lambda (_%L28772%_ _%L28774%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28774%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate128096%_
                                                         _%L28774%_
                                                         _%L28772%_
                                                         _%E28452%_))
                                                      _%L28772%_)
                                                  '()))))
                              _%hd2872828766%_
                              _%hd2872528756%_)
                             (let ()
                               (declare (not safe))
                               (_%g2871728735%_ _%g2871828739%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g2871728735%_ _%g2871828739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g2871728735%_
                                                        _%g2871828739%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g2871728735%_
                                                _%g2871828739%_))))))
                                 (declare (not safe))
                                 (_%g2871628790%_ _%L28706%_))))
                            (_%__kont3938739388%_
                             (lambda (_%L28500%_ _%L28502%_)
                               (let* ((_%g2851528534%_
                                       (lambda (_%g2851628530%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2851628530%_)))
                                      (_%g2851428685%_
                                       (lambda (_%g2851628538%_)
                                         (if (gx#stx-pair? _%g2851628538%_)
                                             (let ((_%e2852228541%_
                                                    (gx#syntax-e
                                                     _%g2851628538%_)))
                                               (let ((_%hd2852128545%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2852228541%_)))
                                                     (_%tl2852028548%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2852228541%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2852028548%_)
                                                     (let ((_%e2852528551%_
                                                            (gx#syntax-e
                                                             _%tl2852028548%_)))
                                                       (let ((_%hd2852428555%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2852528551%_)))
                     (_%tl2852328558%_
                      (let () (declare (not safe)) (##cdr _%e2852528551%_))))
                 (if (gx#stx-pair? _%tl2852328558%_)
                     (let ((_%e2852828561%_ (gx#syntax-e _%tl2852328558%_)))
                       (let ((_%hd2852728565%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2852828561%_)))
                             (_%tl2852628568%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2852828561%_))))
                         (if (gx#stx-null? _%tl2852628568%_)
                             ((lambda (_%L28571%_ _%L28573%_ _%L28574%_)
                                (if (gx#stx-e _%L28573%_)
                                    (let* ((_%g2859128606%_
                                            (lambda (_%g2859228602%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2859228602%_)))
                                           (_%g2859028651%_
                                            (lambda (_%g2859228610%_)
                                              (if (gx#stx-pair?
                                                   _%g2859228610%_)
                                                  (let ((_%e2859728613%_
                                                         (gx#syntax-e
                                                          _%g2859228610%_)))
                                                    (let ((_%hd2859628617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2859728613%_)))
                                                          (_%tl2859528620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2859728613%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2859528620%_)
                                                          (let ((_%e2860028623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2859528620%_)))
                    (let ((_%hd2859928627%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2860028623%_)))
                          (_%tl2859828630%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2860028623%_))))
                      (if (gx#stx-null? _%tl2859828630%_)
                          ((lambda (_%L28633%_ _%L28635%_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L28574%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L28635%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _%L28633%_ '())))))
                           _%hd2859928627%_
                           _%hd2859628617%_)
                          (let ()
                            (declare (not safe))
                            (_%g2859128606%_ _%g2859228610%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g2859128606%_ _%g2859228610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2859128606%_
                                                     _%g2859228610%_)))))
                                           (__tmp40112
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_%generate128096%_
                                                     _%L28573%_
                                                     _%L28571%_
                                                     _%E28452%_))
                                                  (let ((__tmp40113
                                                         (cons _%L28574%_
                                                               '())))
                                                    (declare (not safe))
                                                    (_%generate-clauses28095%_
                                                     _%L28500%_
                                                     __tmp40113)))))
                                      (declare (not safe))
                                      (_%g2859028651%_ __tmp40112))
                                    (let* ((_%g2865528663%_
                                            (lambda (_%g2865628659%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2865628659%_)))
                                           (_%g2865428681%_
                                            (lambda (_%g2865628667%_)
                                              ((lambda (_%L28670%_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L28574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@match-else)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28571%_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _%L28670%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2865628667%_)))
                                           (__tmp40114
                                            (let ((__tmp40115
                                                   (cons _%L28574%_ '())))
                                              (declare (not safe))
                                              (_%generate-clauses28095%_
                                               _%L28500%_
                                               __tmp40115))))
                                      (declare (not safe))
                                      (_%g2865428681%_ __tmp40114))))
                              _%hd2852728565%_
                              _%hd2852428555%_
                              _%hd2852128545%_)
                             (let ()
                               (declare (not safe))
                               (_%g2851528534%_ _%g2851628538%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g2851528534%_ _%g2851628538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g2851528534%_
                                                        _%g2851628538%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g2851528534%_
                                                _%g2851628538%_))))))
                                 (declare (not safe))
                                 (_%g2851428685%_ _%L28502%_))))
                            (_%__kont3938939390%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28452%_ '()))))))
                        (if (gx#stx-pair? _%__stx3938239383%_)
                            (let ((_%e2846128696%_
                                   (gx#syntax-e _%__stx3938239383%_)))
                              (let ((_%tl2845928703%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2846128696%_)))
                                    (_%hd2846028700%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2846128696%_))))
                                (if (gx#stx-null? _%tl2845928703%_)
                                    (_%__kont3938539386%_ _%hd2846028700%_)
                                    (_%__kont3938739388%_
                                     _%tl2845928703%_
                                     _%hd2846028700%_))))
                            (_%__kont3938939390%_))))))
                 (_%generate128096%_
                  (lambda (_%clause28098%_ _%body28100%_ _%E28101%_)
                    (let* ((_%g2810328127%_
                            (lambda (_%g2810428123%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2810428123%_)))
                           (_%g2810228446%_
                            (lambda (_%g2810428131%_)
                              (if (gx#stx-pair? _%g2810428131%_)
                                  (let ((_%e2810928134%_
                                         (gx#syntax-e _%g2810428131%_)))
                                    (let ((_%hd2810828138%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2810928134%_)))
                                          (_%tl2810728141%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2810928134%_))))
                                      (if (gx#stx-pair? _%tl2810728141%_)
                                          (let ((_%e2811228144%_
                                                 (gx#syntax-e
                                                  _%tl2810728141%_)))
                                            (let ((_%hd2811128148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2811228144%_)))
                                                  (_%tl2811028151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2811228144%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2811128148%_)
                                                  (let ((_g40116_
                                                         (gx#syntax-split-splice
                                                          _%hd2811128148%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g40117_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g40116_)
                           (##vector-length _g40116_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g40117_ 2)))
                    (error "Context expects 2 values" _g40117_)))
              (let ((_%target2811328154%_
                     (let () (declare (not safe)) (##vector-ref _g40116_ 0)))
                    (_%tl2811528157%_
                     (let () (declare (not safe)) (##vector-ref _g40116_ 1))))
                (if (gx#stx-null? _%tl2811528157%_)
                    (letrec ((_%loop2811628160%_
                              (lambda (_%hd2811428164%_ _%var2812028167%_)
                                (if (gx#stx-pair? _%hd2811428164%_)
                                    (let ((_%e2811728170%_
                                           (gx#syntax-e _%hd2811428164%_)))
                                      (let ((_%lp-hd2811828174%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2811728170%_)))
                                            (_%lp-tl2811928177%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2811728170%_))))
                                        (let ((__tmp40118
                                               (cons _%lp-hd2811828174%_
                                                     _%var2812028167%_)))
                                          (declare (not safe))
                                          (_%loop2811628160%_
                                           _%lp-tl2811928177%_
                                           __tmp40118))))
                                    (let ((_%var2812128180%_
                                           (reverse _%var2812028167%_)))
                                      (if (gx#stx-null? _%tl2811028151%_)
                                          ((lambda (_%L28184%_ _%L28186%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2820728210%_
                                                                _%g2820828213%_)
                                                         (cons _%g2820728210%_
                                                               _%g2820828213%_))
                                                       '()
                                                       _%L28184%_)
                                                _%stx28087%_)
                                               (let* ((_%g2821628224%_
                                                       (lambda (_%g2821728220%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2821728220%_)))
                                                      (_%g2821528318%_
                                                       (lambda (_%g2821728228%_)
                                                         ((lambda (_%L28231%_)
                                                            (let ()
                                                              (let* ((_%g2824428252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2824528248%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2824528248%_)))
                             (_%g2824328314%_
                              (lambda (_%g2824528256%_)
                                ((lambda (_%L28259%_)
                                   (let ()
                                     (let* ((_%g2827228280%_
                                             (lambda (_%g2827328276%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g2827328276%_)))
                                            (_%g2827128302%_
                                             (lambda (_%g2827328284%_)
                                               ((lambda (_%L28287%_)
                                                  (let ()
                                                    (gx#stx-wrap-source
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons _%L28186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L28287%_ '()))
                         (cons _%L28231%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _%stx28087%_))))
                                                _%g2827328284%_)))
                                            (__tmp40119
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons (foldr (lambda (_%g2830528308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g2830628311%_)
                           (cons _%g2830528308%_ _%g2830628311%_))
                         '()
                         _%L28184%_)
                  (cons _%L28259%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx28087%_))))
                                       (declare (not safe))
                                       (_%g2827128302%_ __tmp40119))))
                                 _%g2824528256%_))))
                        (declare (not safe))
                        (_%g2824328314%_ _%body28100%_))))
                  _%g2821728228%_)))
              (__tmp40120
               (let _%recur28322%_ ((_%rest28325%_ _%clause28098%_)
                                    (_%rest-targets28327%_ _%tgt-lst28089%_))
                 (let* ((_%__stx3940839409%_ _%rest28325%_)
                        (_%g2833028342%_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%__stx3940839409%_))))
                   (let ((_%__kont3941139412%_
                          (lambda (_%L28378%_ _%L28380%_)
                            (let* ((_%g2839528407%_
                                    (lambda (_%g2839628403%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2839628403%_)))
                                   (_%g2839428438%_
                                    (lambda (_%g2839628411%_)
                                      (if (gx#stx-pair? _%g2839628411%_)
                                          (let ((_%e2840128414%_
                                                 (gx#syntax-e
                                                  _%g2839628411%_)))
                                            (let ((_%hd2840028418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2840128414%_)))
                                                  (_%tl2839928421%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2840128414%_))))
                                              ((lambda (_%L28424%_ _%L28426%_)
                                                 (let ((__tmp40121
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%recur28322%_
                                                           _%L28378%_
                                                           _%L28424%_))))
                                                   (declare (not safe))
                                                   (|gerbil/core/match[1]#generate-match1|
                                                    _%stx28087%_
                                                    _%L28426%_
                                                    _%L28380%_
                                                    __tmp40121
                                                    _%E28101%_)))
                                               _%tl2839928421%_
                                               _%hd2840028418%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g2839528407%_
                                             _%g2839628411%_))))))
                              (declare (not safe))
                              (_%g2839428438%_ _%rest-targets28327%_))))
                         (_%__kont3941339414%_
                          (lambda ()
                            (cons _%L28186%_
                                  (foldr (lambda (_%g2835228355%_
                                                  _%g2835328358%_)
                                           (cons _%g2835228355%_
                                                 _%g2835328358%_))
                                         '()
                                         _%L28184%_)))))
                     (if (gx#stx-pair? _%__stx3940839409%_)
                         (let ((_%e2833628368%_
                                (gx#syntax-e _%__stx3940839409%_)))
                           (let ((_%tl2833428375%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2833628368%_)))
                                 (_%hd2833528372%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2833628368%_))))
                             (_%__kont3941139412%_
                              _%tl2833428375%_
                              _%hd2833528372%_)))
                         (_%__kont3941339414%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_%g2821528318%_
                                                  __tmp40120))))
                                           _%var2812128180%_
                                           _%hd2810828138%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2810328127%_
                                             _%g2810428131%_))))))))
                      (let ()
                        (declare (not safe))
                        (_%loop2811628160%_ _%target2811328154%_ '())))
                    (let ()
                      (declare (not safe))
                      (_%g2810328127%_ _%g2810428131%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2810328127%_
                                                     _%g2810428131%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g2810328127%_
                                             _%g2810428131%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2810328127%_ _%g2810428131%_)))))
                           (__tmp40122
                            (list (gx#genident 'K)
                                  (let ((__tmp40123
                                         (map |gerbil/core/match[1]#match-pattern-vars|
                                              _%clause28098%_)))
                                    (declare (not safe))
                                    (##apply append __tmp40123)))))
                      (declare (not safe))
                      (_%g2810228446%_ __tmp40122)))))
          (let ((__tmp40124
                 (let ((__tmp40125 (gx#stx-length _%tgt-lst28089%_)))
                   (declare (not safe))
                   (_%parse-body28092%_ __tmp40125))))
            (declare (not safe))
            (_%generate-body28094%_ __tmp40124)))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27989%_ _%tgt27991%_ _%clauses27992%_)
        (letrec ((_%reclause27994%_
                  (lambda (_%clause27997%_)
                    (let* ((_%__stx3942439425%_ _%clause27997%_)
                           (_%g2800228017%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3942439425%_))))
                      (let ((_%__kont3942739428%_ (lambda () _%clause27997%_))
                            (_%__kont3942939430%_
                             (lambda (_%L28045%_ _%L28047%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L28047%_ '()) _%L28045%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3943139432%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27989%_
                                _%clause27997%_))))
                        (if (gx#stx-pair? _%__stx3942439425%_)
                            (let ((_%e2800628069%_
                                   (gx#syntax-e _%__stx3942439425%_)))
                              (let ((_%tl2800428076%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2800628069%_)))
                                    (_%hd2800528073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2800628069%_))))
                                (if (gx#identifier? _%hd2800528073%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40126_|
                                         _%hd2800528073%_)
                                        (_%__kont3942739428%_)
                                        (_%__kont3942939430%_
                                         _%tl2800428076%_
                                         _%hd2800528073%_))
                                    (_%__kont3942939430%_
                                     _%tl2800428076%_
                                     _%hd2800528073%_))))
                            (_%__kont3943139432%_)))))))
          (let ((__tmp40128 (cons _%tgt27991%_ '()))
                (__tmp40127 (gx#stx-map _%reclause27994%_ _%clauses27992%_)))
            (declare (not safe))
            (|gerbil/core/match[1]#generate-match*|
             _%stx27989%_
             __tmp40128
             __tmp40127)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35325%_)
        (let* ((_%__stx3945239453%_ _%stx35325%_)
               (_%g3533035359%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3945239453%_))))
          (let ((_%__kont3945539456%_
                 (lambda (_%L35599%_)
                   (let* ((_%g3561235620%_
                           (lambda (_%g3561335616%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3561335616%_)))
                          (_%g3561135673%_
                           (lambda (_%g3561335624%_)
                             ((lambda (_%L35627%_)
                                (let ()
                                  (let* ((_%g3563935647%_
                                          (lambda (_%g3564035643%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3564035643%_)))
                                         (_%g3563835669%_
                                          (lambda (_%g3564035651%_)
                                            ((lambda (_%L35654%_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _%L35627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _%L35654%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g3564035651%_))))
                                    (_%g3563835669%_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _%L35627%_ _%L35599%_))
                                      (gx#stx-source _%stx35325%_))))))
                              _%g3561335624%_))))
                     (_%g3561135673%_ (gx#genident 'e)))))
                (_%__kont3945739458%_
                 (lambda (_%L35494%_)
                   (let* ((_%g3550735515%_
                           (lambda (_%g3550835511%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3550835511%_)))
                          (_%g3550635568%_
                           (lambda (_%g3550835519%_)
                             ((lambda (_%L35522%_)
                                (let ()
                                  (let* ((_%g3553435542%_
                                          (lambda (_%g3553535538%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3553535538%_)))
                                         (_%g3553335564%_
                                          (lambda (_%g3553535546%_)
                                            ((lambda (_%L35549%_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L35522%_
                                                             (cons _%L35549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g3553535546%_))))
                                    (_%g3553335564%_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _%L35522%_ _%L35494%_))
                                      (gx#stx-source _%stx35325%_))))))
                              _%g3550835519%_))))
                     (_%g3550635568%_ (gx#genident 'args)))))
                (_%__kont3945939460%_
                 (lambda (_%L35386%_ _%L35388%_)
                   (let* ((_%g3540235410%_
                           (lambda (_%g3540335406%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3540335406%_)))
                          (_%g3540135463%_
                           (lambda (_%g3540335414%_)
                             ((lambda (_%L35417%_)
                                (let ()
                                  (let* ((_%g3542935437%_
                                          (lambda (_%g3543035433%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3543035433%_)))
                                         (_%g3542835459%_
                                          (lambda (_%g3543035441%_)
                                            ((lambda (_%L35444%_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L35417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L35388%_ '()))
                           '())
                     (cons _%L35444%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g3543035441%_))))
                                    (_%g3542835459%_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/match[1]#generate-match|
                                        _%stx35325%_
                                        _%L35417%_
                                        _%L35386%_))))))
                              _%g3540335414%_))))
                     (_%g3540135463%_ (gx#genident _%L35388%_))))))
            (let* ((_%__match3950539506%_
                    (lambda (_%e3535035366%_
                             _%hd3534935370%_
                             _%tl3534835373%_
                             _%e3535335376%_
                             _%hd3535235380%_
                             _%tl3535135383%_)
                      (let ((_%L35386%_ _%tl3535135383%_)
                            (_%L35388%_ _%hd3535235380%_))
                        (if (gx#stx-list? _%L35386%_)
                            (_%__kont3945939460%_ _%L35386%_ _%L35388%_)
                            (let () (declare (not safe)) (_%g3533035359%_))))))
                   (_%__match3949339494%_
                    (lambda (_%e3534235474%_
                             _%hd3534135478%_
                             _%tl3534035481%_
                             _%e3534535484%_
                             _%hd3534435488%_
                             _%tl3534335491%_)
                      (let ((_%L35494%_ _%tl3534335491%_))
                        (if (gx#stx-list? _%L35494%_)
                            (_%__kont3945739458%_ _%L35494%_)
                            (_%__match3950539506%_
                             _%e3534235474%_
                             _%hd3534135478%_
                             _%tl3534035481%_
                             _%e3534535484%_
                             _%hd3534435488%_
                             _%tl3534335491%_)))))
                   (_%__match3947739478%_
                    (lambda (_%e3533535579%_
                             _%hd3533435583%_
                             _%tl3533335586%_
                             _%e3533835589%_
                             _%hd3533735593%_
                             _%tl3533635596%_)
                      (let ((_%L35599%_ _%tl3533635596%_))
                        (if (gx#stx-list? _%L35599%_)
                            (_%__kont3945539456%_ _%L35599%_)
                            (_%__match3950539506%_
                             _%e3533535579%_
                             _%hd3533435583%_
                             _%tl3533335586%_
                             _%e3533835589%_
                             _%hd3533735593%_
                             _%tl3533635596%_))))))
              (if (gx#stx-pair? _%__stx3945239453%_)
                  (let ((_%e3533535579%_ (gx#syntax-e _%__stx3945239453%_)))
                    (let ((_%tl3533335586%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3533535579%_)))
                          (_%hd3533435583%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3533535579%_))))
                      (if (gx#stx-pair? _%tl3533335586%_)
                          (let ((_%e3533835589%_
                                 (gx#syntax-e _%tl3533335586%_)))
                            (let ((_%tl3533635596%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3533835589%_)))
                                  (_%hd3533735593%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3533835589%_))))
                              (if (gx#identifier? _%hd3533735593%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40129_|
                                       _%hd3533735593%_)
                                      (_%__match3947739478%_
                                       _%e3533535579%_
                                       _%hd3533435583%_
                                       _%tl3533335586%_
                                       _%e3533835589%_
                                       _%hd3533735593%_
                                       _%tl3533635596%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40130_|
                                           _%hd3533735593%_)
                                          (_%__match3949339494%_
                                           _%e3533535579%_
                                           _%hd3533435583%_
                                           _%tl3533335586%_
                                           _%e3533835589%_
                                           _%hd3533735593%_
                                           _%tl3533635596%_)
                                          (_%__match3950539506%_
                                           _%e3533535579%_
                                           _%hd3533435583%_
                                           _%tl3533335586%_
                                           _%e3533835589%_
                                           _%hd3533735593%_
                                           _%tl3533635596%_)))
                                  (_%__match3950539506%_
                                   _%e3533535579%_
                                   _%hd3533435583%_
                                   _%tl3533335586%_
                                   _%e3533835589%_
                                   _%hd3533735593%_
                                   _%tl3533635596%_))))
                          (let () (declare (not safe)) (_%g3533035359%_)))))
                  (let () (declare (not safe)) (_%g3533035359%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35681%_)
        (let* ((_%g3568435708%_
                (lambda (_%g3568535704%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3568535704%_)))
               (_%g3568335920%_
                (lambda (_%g3568535712%_)
                  (if (gx#stx-pair? _%g3568535712%_)
                      (let ((_%e3569035715%_ (gx#syntax-e _%g3568535712%_)))
                        (let ((_%hd3568935719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3569035715%_)))
                              (_%tl3568835722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3569035715%_))))
                          (if (gx#stx-pair? _%tl3568835722%_)
                              (let ((_%e3569335725%_
                                     (gx#syntax-e _%tl3568835722%_)))
                                (let ((_%hd3569235729%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3569335725%_)))
                                      (_%tl3569135732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3569335725%_))))
                                  (if (gx#stx-pair/null? _%hd3569235729%_)
                                      (let ((_g40131_
                                             (gx#syntax-split-splice
                                              _%hd3569235729%_
                                              '0)))
                                        (begin
                                          (let ((_g40132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g40131_)
                                                       (##vector-length
                                                        _g40131_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g40132_ 2)))
                                                (error "Context expects 2 values"
                                                       _g40132_)))
                                          (let ((_%target3569435735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g40131_ 0)))
                                                (_%tl3569635738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g40131_ 1))))
                                            (if (gx#stx-null? _%tl3569635738%_)
                                                (letrec ((_%loop3569735741%_
                                                          (lambda (_%hd3569535745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3570135748%_)
                    (if (gx#stx-pair? _%hd3569535745%_)
                        (let ((_%e3569835751%_ (gx#syntax-e _%hd3569535745%_)))
                          (let ((_%lp-hd3569935755%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3569835751%_)))
                                (_%lp-tl3570035758%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3569835751%_))))
                            (_%loop3569735741%_
                             _%lp-tl3570035758%_
                             (cons _%lp-hd3569935755%_ _%e3570135748%_))))
                        (let ((_%e3570235761%_ (reverse _%e3570135748%_)))
                          ((lambda (_%L35765%_ _%L35767%_)
                             (if (gx#stx-list? _%L35765%_)
                                 (let* ((_%g3578535802%_
                                         (lambda (_%g3578635798%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3578635798%_)))
                                        (_%g3578435908%_
                                         (lambda (_%g3578635806%_)
                                           (if (gx#stx-pair/null?
                                                _%g3578635806%_)
                                               (let ((_g40133_
                                                      (gx#syntax-split-splice
                                                       _%g3578635806%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g40134_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40133_)
                        (##vector-length _g40133_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g40134_ 2)))
                 (error "Context expects 2 values" _g40134_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3578835809%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g40133_
                                                             0)))
                                                         (_%tl3579035812%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g40133_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3579035812%_)
                                                         (letrec ((_%loop3579135815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3578935819%_ _%$e3579535822%_)
                             (if (gx#stx-pair? _%hd3578935819%_)
                                 (let ((_%e3579235825%_
                                        (gx#syntax-e _%hd3578935819%_)))
                                   (let ((_%lp-hd3579335829%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3579235825%_)))
                                         (_%lp-tl3579435832%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3579235825%_))))
                                     (_%loop3579135815%_
                                      _%lp-tl3579435832%_
                                      (cons _%lp-hd3579335829%_
                                            _%$e3579535822%_))))
                                 (let ((_%$e3579635835%_
                                        (reverse _%$e3579535822%_)))
                                   ((lambda (_%L35839%_)
                                      (let ()
                                        (let* ((_%g3585535863%_
                                                (lambda (_%g3585635859%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g3585635859%_)))
                                               (_%g3585435896%_
                                                (lambda (_%g3585635867%_)
                                                  ((lambda (_%L35870%_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-check-splice-targets
                              _%L35767%_
                              _%L35839%_)
                             (foldr (lambda (_%g3588435888%_
                                             _%g3588535891%_
                                             _%g3588635893%_)
                                      (cons (cons _%g3588535891%_
                                                  (cons _%g3588435888%_ '()))
                                            _%g3588635893%_))
                                    '()
                                    _%L35767%_
                                    _%L35839%_))
                           (cons _%L35870%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g3585635867%_))))
                                          (_%g3585435896%_
                                           (let ((__tmp40135
                                                  (foldr (lambda (_%g3589935902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3590035905%_)
                   (cons _%g3589935902%_ _%g3590035905%_))
                 '()
                 _%L35839%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core/match[1]#generate-match*|
                                              _%stx35681%_
                                              __tmp40135
                                              _%L35765%_))))))
                                    _%$e3579635835%_))))))
                   (_%loop3579135815%_ _%target3578835809%_ '()))
                 (_%g3578535802%_ _%g3578635806%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3578535802%_
                                                _%g3578635806%_)))))
                                   (_%g3578435908%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3591135914%_
                                                     _%g3591235917%_)
                                              (cons _%g3591135914%_
                                                    _%g3591235917%_))
                                            '()
                                            _%L35767%_))))
                                 (_%g3568435708%_ _%g3568535712%_)))
                           _%tl3569135732%_
                           _%e3570235761%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3569735741%_
                                                   _%target3569435735%_
                                                   '()))
                                                (_%g3568435708%_
                                                 _%g3568535712%_)))))
                                      (_%g3568435708%_ _%g3568535712%_))))
                              (_%g3568435708%_ _%g3568535712%_))))
                      (_%g3568435708%_ _%g3568535712%_)))))
          (_%g3568335920%_ _%stx35681%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35926%_)
        (let* ((_%__stx3950839509%_ _%$stx35926%_)
               (_%g3593236015%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3950839509%_))))
          (let ((_%__kont3951139512%_
                 (lambda (_%L36345%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3636136364%_ _%g3636236367%_)
                                        (cons _%g3636136364%_ _%g3636236367%_))
                                      '()
                                      _%L36345%_)))))
                (_%__kont3951539516%_
                 (lambda (_%L36253%_ _%L36255%_ _%L36256%_ _%L36257%_)
                   (cons _%L36257%_
                         (cons (cons (cons _%L36256%_ (cons _%L36255%_ '()))
                                     '())
                               (foldr (lambda (_%g3627936282%_ _%g3628036285%_)
                                        (cons _%g3627936282%_ _%g3628036285%_))
                                      '()
                                      _%L36253%_)))))
                (_%__kont3951939520%_
                 (lambda (_%L36126%_ _%L36128%_ _%L36129%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3615536158%_ _%g3615636161%_)
                                        (cons _%g3615536158%_ _%g3615636161%_))
                                      '()
                                      _%L36128%_)
                               (cons (cons (foldr (lambda (_%g3615336164%_
                                                           _%g3615436167%_)
                                                    (cons _%g3615336164%_
                                                          _%g3615436167%_))
                                                  '()
                                                  _%L36129%_)
                                           (foldr (lambda (_%g3615136170%_
                                                           _%g3615236173%_)
                                                    (cons _%g3615136170%_
                                                          _%g3615236173%_))
                                                  '()
                                                  _%L36126%_))
                                     '()))))))
            (let* ((_%__match3960139602%_
                    (lambda (_%e3598036022%_
                             _%hd3597936026%_
                             _%tl3597836029%_
                             _%e3598336032%_
                             _%hd3598236036%_
                             _%tl3598136039%_
                             _%__splice3952139522%_
                             _%target3598436042%_
                             _%tl3598636045%_)
                      (letrec ((_%loop3598736048%_
                                (lambda (_%hd3598536052%_
                                         _%expr3599136055%_
                                         _%hd3599236057%_)
                                  (if (gx#stx-pair? _%hd3598536052%_)
                                      (let ((_%e3598836060%_
                                             (gx#syntax-e _%hd3598536052%_)))
                                        (let ((_%lp-tl3599036067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3598836060%_)))
                                              (_%lp-hd3598936064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3598836060%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3598936064%_)
                                              (let ((_%e3599736070%_
                                                     (gx#syntax-e
                                                      _%lp-hd3598936064%_)))
                                                (let ((_%tl3599536077%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3599736070%_)))
                                                      (_%hd3599636074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3599736070%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3599536077%_)
                                                      (let ((_%e3600036080%_
                                                             (gx#syntax-e
                                                              _%tl3599536077%_)))
                                                        (let ((_%tl3599836087%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3600036080%_)))
                      (_%hd3599936084%_
                       (let () (declare (not safe)) (##car _%e3600036080%_))))
                  (if (gx#stx-null? _%tl3599836087%_)
                      (_%loop3598736048%_
                       _%lp-tl3599036067%_
                       (cons _%hd3599936084%_ _%expr3599136055%_)
                       (cons _%hd3599636074%_ _%hd3599236057%_))
                      (let () (declare (not safe)) (_%g3593236015%_)))))
              (let () (declare (not safe)) (_%g3593236015%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3593236015%_)))))
                                      (let ((_%hd3599436093%_
                                             (reverse _%hd3599236057%_))
                                            (_%expr3599336090%_
                                             (reverse _%expr3599136055%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3598136039%_)
                                            (let ((_%__splice3952339524%_
                                                   (gx#syntax-split-splice
                                                    _%tl3598136039%_
                                                    '0)))
                                              (let ((_%tl3600336099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3952339524%_
                                                        '1)))
                                                    (_%target3600136096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3952339524%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3600336099%_)
                                                    (letrec ((_%loop3600436102%_
                                                              (lambda (_%hd3600236106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3600836109%_)
                        (if (gx#stx-pair? _%hd3600236106%_)
                            (let ((_%e3600536112%_
                                   (gx#syntax-e _%hd3600236106%_)))
                              (let ((_%lp-tl3600736119%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3600536112%_)))
                                    (_%lp-hd3600636116%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3600536112%_))))
                                (_%loop3600436102%_
                                 _%lp-tl3600736119%_
                                 (cons _%lp-hd3600636116%_
                                       _%body3600836109%_))))
                            (let ((_%body3600936122%_
                                   (reverse _%body3600836109%_)))
                              (_%__kont3951939520%_
                               _%body3600936122%_
                               _%expr3599336090%_
                               _%hd3599436093%_))))))
              (_%loop3600436102%_ _%target3600136096%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3593236015%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3593236015%_))))))))
                        (_%loop3598736048%_ _%target3598436042%_ '() '()))))
                   (_%__match3959339594%_
                    (lambda (_%e3598036022%_
                             _%hd3597936026%_
                             _%tl3597836029%_
                             _%e3598336032%_
                             _%hd3598236036%_
                             _%tl3598136039%_)
                      (if (gx#stx-pair/null? _%hd3598236036%_)
                          (let ((_%__splice3952139522%_
                                 (gx#syntax-split-splice _%hd3598236036%_ '0)))
                            (let ((_%tl3598636045%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3952139522%_ '1)))
                                  (_%target3598436042%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3952139522%_
                                      '0))))
                              (if (gx#stx-null? _%tl3598636045%_)
                                  (_%__match3960139602%_
                                   _%e3598036022%_
                                   _%hd3597936026%_
                                   _%tl3597836029%_
                                   _%e3598336032%_
                                   _%hd3598236036%_
                                   _%tl3598136039%_
                                   _%__splice3952139522%_
                                   _%target3598436042%_
                                   _%tl3598636045%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3593236015%_)))))
                          (let () (declare (not safe)) (_%g3593236015%_)))))
                   (_%__match3958139582%_
                    (lambda (_%e3595636183%_
                             _%hd3595536187%_
                             _%tl3595436190%_
                             _%e3595936193%_
                             _%hd3595836197%_
                             _%tl3595736200%_
                             _%e3596236203%_
                             _%hd3596136207%_
                             _%tl3596036210%_
                             _%e3596536213%_
                             _%hd3596436217%_
                             _%tl3596336220%_
                             _%__splice3951739518%_
                             _%target3596636223%_
                             _%tl3596836226%_)
                      (letrec ((_%loop3596936229%_
                                (lambda (_%hd3596736233%_ _%body3597336236%_)
                                  (if (gx#stx-pair? _%hd3596736233%_)
                                      (let ((_%e3597036239%_
                                             (gx#syntax-e _%hd3596736233%_)))
                                        (let ((_%lp-tl3597236246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3597036239%_)))
                                              (_%lp-hd3597136243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3597036239%_))))
                                          (_%loop3596936229%_
                                           _%lp-tl3597236246%_
                                           (cons _%lp-hd3597136243%_
                                                 _%body3597336236%_))))
                                      (let ((_%body3597436249%_
                                             (reverse _%body3597336236%_)))
                                        (let ((_%L36253%_ _%body3597436249%_)
                                              (_%L36255%_ _%hd3596436217%_)
                                              (_%L36256%_ _%hd3596136207%_)
                                              (_%L36257%_ _%hd3595536187%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/match[1]#match-pattern?|
                                                 _%L36256%_))
                                              (_%__kont3951539516%_
                                               _%L36253%_
                                               _%L36255%_
                                               _%L36256%_
                                               _%L36257%_)
                                              (_%__match3959339594%_
                                               _%e3595636183%_
                                               _%hd3595536187%_
                                               _%tl3595436190%_
                                               _%e3595936193%_
                                               _%hd3595836197%_
                                               _%tl3595736200%_))))))))
                        (_%loop3596936229%_ _%target3596636223%_ '()))))
                   (_%__match3954739548%_
                    (lambda (_%e3593736295%_
                             _%hd3593636299%_
                             _%tl3593536302%_
                             _%e3594036305%_
                             _%hd3593936309%_
                             _%tl3593836312%_
                             _%__splice3951339514%_
                             _%target3594136315%_
                             _%tl3594336318%_)
                      (letrec ((_%loop3594436321%_
                                (lambda (_%hd3594236325%_ _%body3594836328%_)
                                  (if (gx#stx-pair? _%hd3594236325%_)
                                      (let ((_%e3594536331%_
                                             (gx#syntax-e _%hd3594236325%_)))
                                        (let ((_%lp-tl3594736338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3594536331%_)))
                                              (_%lp-hd3594636335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3594536331%_))))
                                          (_%loop3594436321%_
                                           _%lp-tl3594736338%_
                                           (cons _%lp-hd3594636335%_
                                                 _%body3594836328%_))))
                                      (let ((_%body3594936341%_
                                             (reverse _%body3594836328%_)))
                                        (_%__kont3951139512%_
                                         _%body3594936341%_))))))
                        (_%loop3594436321%_ _%target3594136315%_ '())))))
              (if (gx#stx-pair? _%__stx3950839509%_)
                  (let ((_%e3593736295%_ (gx#syntax-e _%__stx3950839509%_)))
                    (let ((_%tl3593536302%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3593736295%_)))
                          (_%hd3593636299%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3593736295%_))))
                      (if (gx#stx-pair? _%tl3593536302%_)
                          (let ((_%e3594036305%_
                                 (gx#syntax-e _%tl3593536302%_)))
                            (let ((_%tl3593836312%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3594036305%_)))
                                  (_%hd3593936309%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3594036305%_))))
                              (if (gx#stx-null? _%hd3593936309%_)
                                  (if (gx#stx-pair/null? _%tl3593836312%_)
                                      (let ((_%__splice3951339514%_
                                             (gx#syntax-split-splice
                                              _%tl3593836312%_
                                              '0)))
                                        (let ((_%tl3594336318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3951339514%_
                                                  '1)))
                                              (_%target3594136315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3951339514%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3594336318%_)
                                              (_%__match3954739548%_
                                               _%e3593736295%_
                                               _%hd3593636299%_
                                               _%tl3593536302%_
                                               _%e3594036305%_
                                               _%hd3593936309%_
                                               _%tl3593836312%_
                                               _%__splice3951339514%_
                                               _%target3594136315%_
                                               _%tl3594336318%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3593936309%_)
                                                  (let ((_%__splice3952139522%_
                                                         (gx#syntax-split-splice
                                                          _%hd3593936309%_
                                                          '0)))
                                                    (let ((_%tl3598636045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952139522%_
                                                              '1)))
                                                          (_%target3598436042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952139522%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3598636045%_)
                                                          (_%__match3960139602%_
                                                           _%e3593736295%_
                                                           _%hd3593636299%_
                                                           _%tl3593536302%_
                                                           _%e3594036305%_
                                                           _%hd3593936309%_
                                                           _%tl3593836312%_
                                                           _%__splice3952139522%_
                                                           _%target3598436042%_
                                                           _%tl3598636045%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3593236015%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3593236015%_))))))
                                      (if (gx#stx-pair/null? _%hd3593936309%_)
                                          (let ((_%__splice3952139522%_
                                                 (gx#syntax-split-splice
                                                  _%hd3593936309%_
                                                  '0)))
                                            (let ((_%tl3598636045%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952139522%_
                                                      '1)))
                                                  (_%target3598436042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952139522%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3598636045%_)
                                                  (_%__match3960139602%_
                                                   _%e3593736295%_
                                                   _%hd3593636299%_
                                                   _%tl3593536302%_
                                                   _%e3594036305%_
                                                   _%hd3593936309%_
                                                   _%tl3593836312%_
                                                   _%__splice3952139522%_
                                                   _%target3598436042%_
                                                   _%tl3598636045%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3593236015%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3593236015%_))))
                                  (if (gx#stx-pair? _%hd3593936309%_)
                                      (let ((_%e3596236203%_
                                             (gx#syntax-e _%hd3593936309%_)))
                                        (let ((_%tl3596036210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3596236203%_)))
                                              (_%hd3596136207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3596236203%_))))
                                          (if (gx#stx-pair? _%tl3596036210%_)
                                              (let ((_%e3596536213%_
                                                     (gx#syntax-e
                                                      _%tl3596036210%_)))
                                                (let ((_%tl3596336220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3596536213%_)))
                                                      (_%hd3596436217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3596536213%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3596336220%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3593836312%_)
                                                          (let ((_%__splice3951739518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl3593836312%_ '0)))
                    (let ((_%tl3596836226%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3951739518%_ '1)))
                          (_%target3596636223%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3951739518%_ '0))))
                      (if (gx#stx-null? _%tl3596836226%_)
                          (_%__match3958139582%_
                           _%e3593736295%_
                           _%hd3593636299%_
                           _%tl3593536302%_
                           _%e3594036305%_
                           _%hd3593936309%_
                           _%tl3593836312%_
                           _%e3596236203%_
                           _%hd3596136207%_
                           _%tl3596036210%_
                           _%e3596536213%_
                           _%hd3596436217%_
                           _%tl3596336220%_
                           _%__splice3951739518%_
                           _%target3596636223%_
                           _%tl3596836226%_)
                          (if (gx#stx-pair/null? _%hd3593936309%_)
                              (let ((_%__splice3952139522%_
                                     (gx#syntax-split-splice
                                      _%hd3593936309%_
                                      '0)))
                                (let ((_%tl3598636045%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3952139522%_
                                          '1)))
                                      (_%target3598436042%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3952139522%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3598636045%_)
                                      (_%__match3960139602%_
                                       _%e3593736295%_
                                       _%hd3593636299%_
                                       _%tl3593536302%_
                                       _%e3594036305%_
                                       _%hd3593936309%_
                                       _%tl3593836312%_
                                       _%__splice3952139522%_
                                       _%target3598436042%_
                                       _%tl3598636045%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3593236015%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3593236015%_))))))
                  (if (gx#stx-pair/null? _%hd3593936309%_)
                      (let ((_%__splice3952139522%_
                             (gx#syntax-split-splice _%hd3593936309%_ '0)))
                        (let ((_%tl3598636045%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3952139522%_ '1)))
                              (_%target3598436042%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3952139522%_ '0))))
                          (if (gx#stx-null? _%tl3598636045%_)
                              (_%__match3960139602%_
                               _%e3593736295%_
                               _%hd3593636299%_
                               _%tl3593536302%_
                               _%e3594036305%_
                               _%hd3593936309%_
                               _%tl3593836312%_
                               _%__splice3952139522%_
                               _%target3598436042%_
                               _%tl3598636045%_)
                              (let ()
                                (declare (not safe))
                                (_%g3593236015%_)))))
                      (let () (declare (not safe)) (_%g3593236015%_))))
              (if (gx#stx-pair/null? _%hd3593936309%_)
                  (let ((_%__splice3952139522%_
                         (gx#syntax-split-splice _%hd3593936309%_ '0)))
                    (let ((_%tl3598636045%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3952139522%_ '1)))
                          (_%target3598436042%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3952139522%_ '0))))
                      (if (gx#stx-null? _%tl3598636045%_)
                          (_%__match3960139602%_
                           _%e3593736295%_
                           _%hd3593636299%_
                           _%tl3593536302%_
                           _%e3594036305%_
                           _%hd3593936309%_
                           _%tl3593836312%_
                           _%__splice3952139522%_
                           _%target3598436042%_
                           _%tl3598636045%_)
                          (let () (declare (not safe)) (_%g3593236015%_)))))
                  (let () (declare (not safe)) (_%g3593236015%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3593936309%_)
                                                  (let ((_%__splice3952139522%_
                                                         (gx#syntax-split-splice
                                                          _%hd3593936309%_
                                                          '0)))
                                                    (let ((_%tl3598636045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952139522%_
                                                              '1)))
                                                          (_%target3598436042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3952139522%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3598636045%_)
                                                          (_%__match3960139602%_
                                                           _%e3593736295%_
                                                           _%hd3593636299%_
                                                           _%tl3593536302%_
                                                           _%e3594036305%_
                                                           _%hd3593936309%_
                                                           _%tl3593836312%_
                                                           _%__splice3952139522%_
                                                           _%target3598436042%_
                                                           _%tl3598636045%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3593236015%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3593236015%_))))))
                                      (if (gx#stx-pair/null? _%hd3593936309%_)
                                          (let ((_%__splice3952139522%_
                                                 (gx#syntax-split-splice
                                                  _%hd3593936309%_
                                                  '0)))
                                            (let ((_%tl3598636045%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952139522%_
                                                      '1)))
                                                  (_%target3598436042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3952139522%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3598636045%_)
                                                  (_%__match3960139602%_
                                                   _%e3593736295%_
                                                   _%hd3593636299%_
                                                   _%tl3593536302%_
                                                   _%e3594036305%_
                                                   _%hd3593936309%_
                                                   _%tl3593836312%_
                                                   _%__splice3952139522%_
                                                   _%target3598436042%_
                                                   _%tl3598636045%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3593236015%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3593236015%_)))))))
                          (let () (declare (not safe)) (_%g3593236015%_)))))
                  (let () (declare (not safe)) (_%g3593236015%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36378%_)
        (let* ((_%__stx3960439605%_ _%$stx36378%_)
               (_%g3638336435%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3960439605%_))))
          (let ((_%__kont3960739608%_
                 (lambda (_%L36605%_
                          _%L36607%_
                          _%L36608%_
                          _%L36609%_
                          _%L36610%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36609%_ (cons _%L36608%_ '()))
                                     '())
                               (cons (cons _%L36610%_
                                           (cons _%L36607%_
                                                 (foldr (lambda (_%g3663536638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3663636641%_)
                  (cons _%g3663536638%_ _%g3663636641%_))
                '()
                _%L36605%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3961139612%_
                 (lambda (_%L36492%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3650936512%_ _%g3651036515%_)
                                        (cons _%g3650936512%_ _%g3651036515%_))
                                      '()
                                      _%L36492%_))))))
            (let* ((_%__match3967739678%_
                    (lambda (_%e3641736442%_
                             _%hd3641636446%_
                             _%tl3641536449%_
                             _%e3642036452%_
                             _%hd3641936456%_
                             _%tl3641836459%_
                             _%__splice3961339614%_
                             _%target3642136462%_
                             _%tl3642336465%_)
                      (letrec ((_%loop3642436468%_
                                (lambda (_%hd3642236472%_ _%body3642836475%_)
                                  (if (gx#stx-pair? _%hd3642236472%_)
                                      (let ((_%e3642536478%_
                                             (gx#syntax-e _%hd3642236472%_)))
                                        (let ((_%lp-tl3642736485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3642536478%_)))
                                              (_%lp-hd3642636482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3642536478%_))))
                                          (_%loop3642436468%_
                                           _%lp-tl3642736485%_
                                           (cons _%lp-hd3642636482%_
                                                 _%body3642836475%_))))
                                      (let ((_%body3642936488%_
                                             (reverse _%body3642836475%_)))
                                        (_%__kont3961139612%_
                                         _%body3642936488%_))))))
                        (_%loop3642436468%_ _%target3642136462%_ '()))))
                   (_%__match3965539656%_
                    (lambda (_%e3639236525%_
                             _%hd3639136529%_
                             _%tl3639036532%_
                             _%e3639536535%_
                             _%hd3639436539%_
                             _%tl3639336542%_
                             _%e3639836545%_
                             _%hd3639736549%_
                             _%tl3639636552%_
                             _%e3640136555%_
                             _%hd3640036559%_
                             _%tl3639936562%_
                             _%e3640436565%_
                             _%hd3640336569%_
                             _%tl3640236572%_
                             _%__splice3960939610%_
                             _%target3640536575%_
                             _%tl3640736578%_)
                      (letrec ((_%loop3640836581%_
                                (lambda (_%hd3640636585%_ _%body3641236588%_)
                                  (if (gx#stx-pair? _%hd3640636585%_)
                                      (let ((_%e3640936591%_
                                             (gx#syntax-e _%hd3640636585%_)))
                                        (let ((_%lp-tl3641136598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3640936591%_)))
                                              (_%lp-hd3641036595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3640936591%_))))
                                          (_%loop3640836581%_
                                           _%lp-tl3641136598%_
                                           (cons _%lp-hd3641036595%_
                                                 _%body3641236588%_))))
                                      (let ((_%body3641336601%_
                                             (reverse _%body3641236588%_)))
                                        (_%__kont3960739608%_
                                         _%body3641336601%_
                                         _%tl3639636552%_
                                         _%hd3640336569%_
                                         _%hd3640036559%_
                                         _%hd3639136529%_))))))
                        (_%loop3640836581%_ _%target3640536575%_ '())))))
              (if (gx#stx-pair? _%__stx3960439605%_)
                  (let ((_%e3639236525%_ (gx#syntax-e _%__stx3960439605%_)))
                    (let ((_%tl3639036532%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3639236525%_)))
                          (_%hd3639136529%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3639236525%_))))
                      (if (gx#stx-pair? _%tl3639036532%_)
                          (let ((_%e3639536535%_
                                 (gx#syntax-e _%tl3639036532%_)))
                            (let ((_%tl3639336542%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3639536535%_)))
                                  (_%hd3639436539%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3639536535%_))))
                              (if (gx#stx-pair? _%hd3639436539%_)
                                  (let ((_%e3639836545%_
                                         (gx#syntax-e _%hd3639436539%_)))
                                    (let ((_%tl3639636552%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3639836545%_)))
                                          (_%hd3639736549%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3639836545%_))))
                                      (if (gx#stx-pair? _%hd3639736549%_)
                                          (let ((_%e3640136555%_
                                                 (gx#syntax-e
                                                  _%hd3639736549%_)))
                                            (let ((_%tl3639936562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3640136555%_)))
                                                  (_%hd3640036559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3640136555%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3639936562%_)
                                                  (let ((_%e3640436565%_
                                                         (gx#syntax-e
                                                          _%tl3639936562%_)))
                                                    (let ((_%tl3640236572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3640436565%_)))
                                                          (_%hd3640336569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3640436565%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3640236572%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3639336542%_)
                                                              (let ((_%__splice3960939610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl3639336542%_ '0)))
                        (let ((_%tl3640736578%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3960939610%_ '1)))
                              (_%target3640536575%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3960939610%_ '0))))
                          (if (gx#stx-null? _%tl3640736578%_)
                              (_%__match3965539656%_
                               _%e3639236525%_
                               _%hd3639136529%_
                               _%tl3639036532%_
                               _%e3639536535%_
                               _%hd3639436539%_
                               _%tl3639336542%_
                               _%e3639836545%_
                               _%hd3639736549%_
                               _%tl3639636552%_
                               _%e3640136555%_
                               _%hd3640036559%_
                               _%tl3639936562%_
                               _%e3640436565%_
                               _%hd3640336569%_
                               _%tl3640236572%_
                               _%__splice3960939610%_
                               _%target3640536575%_
                               _%tl3640736578%_)
                              (let ()
                                (declare (not safe))
                                (_%g3638336435%_)))))
                      (let () (declare (not safe)) (_%g3638336435%_)))
                  (let () (declare (not safe)) (_%g3638336435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3638336435%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638336435%_)))))
                                  (if (gx#stx-null? _%hd3639436539%_)
                                      (if (gx#stx-pair/null? _%tl3639336542%_)
                                          (let ((_%__splice3961339614%_
                                                 (gx#syntax-split-splice
                                                  _%tl3639336542%_
                                                  '0)))
                                            (let ((_%tl3642336465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3961339614%_
                                                      '1)))
                                                  (_%target3642136462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3961339614%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3642336465%_)
                                                  (_%__match3967739678%_
                                                   _%e3639236525%_
                                                   _%hd3639136529%_
                                                   _%tl3639036532%_
                                                   _%e3639536535%_
                                                   _%hd3639436539%_
                                                   _%tl3639336542%_
                                                   _%__splice3961339614%_
                                                   _%target3642136462%_
                                                   _%tl3642336465%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3638336435%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3638336435%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3638336435%_))))))
                          (let () (declare (not safe)) (_%g3638336435%_)))))
                  (let () (declare (not safe)) (_%g3638336435%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36650%_)
        (let* ((_%__stx3968039681%_ _%$stx36650%_)
               (_%g3666136807%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3968039681%_))))
          (let ((_%__kont3968339684%_
                 (lambda (_%L37411%_ _%L37413%_ _%L37414%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3743537438%_ _%g3743637441%_)
                                  (cons (cons _%L37414%_
                                              (cons _%g3743537438%_
                                                    (cons _%L37411%_ '())))
                                        _%g3743637441%_))
                                '()
                                _%L37413%_))))
                (_%__kont3968739688%_
                 (lambda (_%L37301%_ _%L37303%_ _%L37304%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3732537328%_ _%g3732637331%_)
                                  (cons (cons _%L37304%_
                                              (cons _%g3732537328%_
                                                    (cons _%L37301%_ '())))
                                        _%g3732637331%_))
                                '()
                                _%L37303%_))))
                (_%__kont3969139692%_
                 (lambda (_%L37201%_ _%L37203%_ _%L37204%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37204%_
                                     (cons _%L37203%_ (cons _%L37201%_ '())))
                               '()))))
                (_%__kont3969339694%_
                 (lambda (_%L37127%_ _%L37129%_)
                   (cons _%L37129%_ (cons _%L37127%_ '()))))
                (_%__kont3969539696%_
                 (lambda (_%L37075%_ _%L37077%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L37077%_
                                           (cons _%L37075%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3969739698%_
                 (lambda (_%L37027%_ _%L37029%_ _%L37030%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L37030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L37029%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L37027%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3969939700%_
                 (lambda (_%L36958%_ _%L36960%_ _%L36961%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36961%_
                                                       (cons _%L36960%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36958%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3970139702%_
                 (lambda (_%L36878%_ _%L36880%_ _%L36881%_ _%L36882%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36882%_
                                                       (cons _%L36881%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36878%_
                                                             (cons (cons _%L36880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3985339854%_
                    (lambda (_%e3675336987%_
                             _%hd3675236991%_
                             _%tl3675136994%_
                             _%e3675636997%_
                             _%hd3675537001%_
                             _%tl3675437004%_
                             _%e3675937007%_
                             _%hd3675837011%_
                             _%tl3675737014%_)
                      (if (gx#identifier? _%hd3675837011%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40136_|
                               _%hd3675837011%_)
                              (if (gx#stx-pair? _%tl3675737014%_)
                                  (let ((_%e3676237017%_
                                         (gx#syntax-e _%tl3675737014%_)))
                                    (let ((_%tl3676037024%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3676237017%_)))
                                          (_%hd3676137021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3676237017%_))))
                                      (if (gx#stx-null? _%tl3676037024%_)
                                          (_%__kont3969739698%_
                                           _%hd3676137021%_
                                           _%hd3675537001%_
                                           _%hd3675236991%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3666136807%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3666136807%_)))
                              (let () (declare (not safe)) (_%g3666136807%_)))
                          (if (gx#stx-datum? _%hd3675837011%_)
                              (let ((_%e3677536944%_
                                     (gx#stx-e _%hd3675837011%_)))
                                (if (equal? _%e3677536944%_ '::)
                                    (if (gx#stx-pair? _%tl3675737014%_)
                                        (let ((_%e3677836948%_
                                               (gx#syntax-e _%tl3675737014%_)))
                                          (let ((_%tl3677636955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3677836948%_)))
                                                (_%hd3677736952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3677836948%_))))
                                            (if (gx#stx-null? _%tl3677636955%_)
                                                (_%__kont3969939700%_
                                                 _%hd3677736952%_
                                                 _%hd3675537001%_
                                                 _%hd3675236991%_)
                                                (if (gx#stx-pair?
                                                     _%tl3677636955%_)
                                                    (let ((_%e3679836858%_
                                                           (gx#syntax-e
                                                            _%tl3677636955%_)))
                                                      (let ((_%tl3679636865%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3679836858%_)))
                    (_%hd3679736862%_
                     (let () (declare (not safe)) (##car _%e3679836858%_))))
                (if (gx#identifier? _%hd3679736862%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40137_|
                         _%hd3679736862%_)
                        (if (gx#stx-pair? _%tl3679636865%_)
                            (let ((_%e3680136868%_
                                   (gx#syntax-e _%tl3679636865%_)))
                              (let ((_%tl3679936875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3680136868%_)))
                                    (_%hd3680036872%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3680136868%_))))
                                (if (gx#stx-null? _%tl3679936875%_)
                                    (_%__kont3970139702%_
                                     _%hd3680036872%_
                                     _%hd3677736952%_
                                     _%hd3675537001%_
                                     _%hd3675236991%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_)))))
                            (let () (declare (not safe)) (_%g3666136807%_)))
                        (let () (declare (not safe)) (_%g3666136807%_)))
                    (let () (declare (not safe)) (_%g3666136807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3666136807%_))))))
                   (_%__match3983339834%_
                    (lambda (_%e3674437055%_
                             _%hd3674337059%_
                             _%tl3674237062%_
                             _%e3674737065%_
                             _%hd3674637069%_
                             _%tl3674537072%_)
                      (if (gx#stx-null? _%tl3674537072%_)
                          (_%__kont3969539696%_
                           _%hd3674637069%_
                           _%hd3674337059%_)
                          (if (gx#stx-pair? _%tl3674537072%_)
                              (let ((_%e3675937007%_
                                     (gx#syntax-e _%tl3674537072%_)))
                                (let ((_%tl3675737014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3675937007%_)))
                                      (_%hd3675837011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3675937007%_))))
                                  (if (gx#identifier? _%hd3675837011%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40136_|
                                           _%hd3675837011%_)
                                          (if (gx#stx-pair? _%tl3675737014%_)
                                              (let ((_%e3676237017%_
                                                     (gx#syntax-e
                                                      _%tl3675737014%_)))
                                                (let ((_%tl3676037024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3676237017%_)))
                                                      (_%hd3676137021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3676237017%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3676037024%_)
                                                      (_%__kont3969739698%_
                                                       _%hd3676137021%_
                                                       _%hd3674637069%_
                                                       _%hd3674337059%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3666136807%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3666136807%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3666136807%_)))
                                      (if (gx#stx-datum? _%hd3675837011%_)
                                          (let ((_%e3677536944%_
                                                 (gx#stx-e _%hd3675837011%_)))
                                            (if (equal? _%e3677536944%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3675737014%_)
                                                    (let ((_%e3677836948%_
                                                           (gx#syntax-e
                                                            _%tl3675737014%_)))
                                                      (let ((_%tl3677636955%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3677836948%_)))
                    (_%hd3677736952%_
                     (let () (declare (not safe)) (##car _%e3677836948%_))))
                (if (gx#stx-null? _%tl3677636955%_)
                    (_%__kont3969939700%_
                     _%hd3677736952%_
                     _%hd3674637069%_
                     _%hd3674337059%_)
                    (if (gx#stx-pair? _%tl3677636955%_)
                        (let ((_%e3679836858%_ (gx#syntax-e _%tl3677636955%_)))
                          (let ((_%tl3679636865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3679836858%_)))
                                (_%hd3679736862%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3679836858%_))))
                            (if (gx#identifier? _%hd3679736862%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40137_|
                                     _%hd3679736862%_)
                                    (if (gx#stx-pair? _%tl3679636865%_)
                                        (let ((_%e3680136868%_
                                               (gx#syntax-e _%tl3679636865%_)))
                                          (let ((_%tl3679936875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3680136868%_)))
                                                (_%hd3680036872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3680136868%_))))
                                            (if (gx#stx-null? _%tl3679936875%_)
                                                (_%__kont3970139702%_
                                                 _%hd3680036872%_
                                                 _%hd3677736952%_
                                                 _%hd3674637069%_
                                                 _%hd3674337059%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3666136807%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3666136807%_)))))
                        (let () (declare (not safe)) (_%g3666136807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3666136807%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3666136807%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3666136807%_))))))
                   (_%__match3976339764%_
                    (lambda (_%e3669237231%_
                             _%hd3669137235%_
                             _%tl3669037238%_
                             _%e3669537241%_
                             _%hd3669437245%_
                             _%tl3669337248%_
                             _%e3669837251%_
                             _%hd3669737255%_
                             _%tl3669637258%_
                             _%__splice3968939690%_
                             _%target3669937261%_
                             _%tl3670137264%_)
                      (letrec ((_%loop3670237267%_
                                (lambda (_%hd3670037271%_ _%pred3670637274%_)
                                  (if (gx#stx-pair? _%hd3670037271%_)
                                      (let ((_%e3670337277%_
                                             (gx#syntax-e _%hd3670037271%_)))
                                        (let ((_%lp-tl3670537284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3670337277%_)))
                                              (_%lp-hd3670437281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3670337277%_))))
                                          (_%loop3670237267%_
                                           _%lp-tl3670537284%_
                                           (cons _%lp-hd3670437281%_
                                                 _%pred3670637274%_))))
                                      (let ((_%pred3670737287%_
                                             (reverse _%pred3670637274%_)))
                                        (if (gx#stx-pair? _%tl3669337248%_)
                                            (let ((_%e3671037291%_
                                                   (gx#syntax-e
                                                    _%tl3669337248%_)))
                                              (let ((_%tl3670837298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3671037291%_)))
                                                    (_%hd3670937295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3671037291%_))))
                                                (if (gx#stx-null?
                                                     _%tl3670837298%_)
                                                    (_%__kont3968739688%_
                                                     _%hd3670937295%_
                                                     _%pred3670737287%_
                                                     _%hd3669137235%_)
                                                    (_%__match3985339854%_
                                                     _%e3669237231%_
                                                     _%hd3669137235%_
                                                     _%tl3669037238%_
                                                     _%e3669537241%_
                                                     _%hd3669437245%_
                                                     _%tl3669337248%_
                                                     _%e3671037291%_
                                                     _%hd3670937295%_
                                                     _%tl3670837298%_))))
                                            (_%__match3983339834%_
                                             _%e3669237231%_
                                             _%hd3669137235%_
                                             _%tl3669037238%_
                                             _%e3669537241%_
                                             _%hd3669437245%_
                                             _%tl3669337248%_)))))))
                        (_%loop3670237267%_ _%target3669937261%_ '()))))
                   (_%__match3973339734%_
                    (lambda (_%e3666837341%_
                             _%hd3666737345%_
                             _%tl3666637348%_
                             _%e3667137351%_
                             _%hd3667037355%_
                             _%tl3666937358%_
                             _%e3667437361%_
                             _%hd3667337365%_
                             _%tl3667237368%_
                             _%__splice3968539686%_
                             _%target3667537371%_
                             _%tl3667737374%_)
                      (letrec ((_%loop3667837377%_
                                (lambda (_%hd3667637381%_ _%pred3668237384%_)
                                  (if (gx#stx-pair? _%hd3667637381%_)
                                      (let ((_%e3667937387%_
                                             (gx#syntax-e _%hd3667637381%_)))
                                        (let ((_%lp-tl3668137394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3667937387%_)))
                                              (_%lp-hd3668037391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3667937387%_))))
                                          (_%loop3667837377%_
                                           _%lp-tl3668137394%_
                                           (cons _%lp-hd3668037391%_
                                                 _%pred3668237384%_))))
                                      (let ((_%pred3668337397%_
                                             (reverse _%pred3668237384%_)))
                                        (if (gx#stx-pair? _%tl3666937358%_)
                                            (let ((_%e3668637401%_
                                                   (gx#syntax-e
                                                    _%tl3666937358%_)))
                                              (let ((_%tl3668437408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3668637401%_)))
                                                    (_%hd3668537405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3668637401%_))))
                                                (if (gx#stx-null?
                                                     _%tl3668437408%_)
                                                    (_%__kont3968339684%_
                                                     _%hd3668537405%_
                                                     _%pred3668337397%_
                                                     _%hd3666737345%_)
                                                    (_%__match3985339854%_
                                                     _%e3666837341%_
                                                     _%hd3666737345%_
                                                     _%tl3666637348%_
                                                     _%e3667137351%_
                                                     _%hd3667037355%_
                                                     _%tl3666937358%_
                                                     _%e3668637401%_
                                                     _%hd3668537405%_
                                                     _%tl3668437408%_))))
                                            (_%__match3983339834%_
                                             _%e3666837341%_
                                             _%hd3666737345%_
                                             _%tl3666637348%_
                                             _%e3667137351%_
                                             _%hd3667037355%_
                                             _%tl3666937358%_)))))))
                        (_%loop3667837377%_ _%target3667537371%_ '())))))
              (if (gx#stx-pair? _%__stx3968039681%_)
                  (let ((_%e3666837341%_ (gx#syntax-e _%__stx3968039681%_)))
                    (let ((_%tl3666637348%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3666837341%_)))
                          (_%hd3666737345%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3666837341%_))))
                      (if (gx#stx-pair? _%tl3666637348%_)
                          (let ((_%e3667137351%_
                                 (gx#syntax-e _%tl3666637348%_)))
                            (let ((_%tl3666937358%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3667137351%_)))
                                  (_%hd3667037355%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3667137351%_))))
                              (if (gx#stx-pair? _%hd3667037355%_)
                                  (let ((_%e3667437361%_
                                         (gx#syntax-e _%hd3667037355%_)))
                                    (let ((_%tl3667237368%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3667437361%_)))
                                          (_%hd3667337365%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3667437361%_))))
                                      (if (gx#identifier? _%hd3667337365%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40138_|
                                               _%hd3667337365%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3667237368%_)
                                                  (let ((_%__splice3968539686%_
                                                         (gx#syntax-split-splice
                                                          _%tl3667237368%_
                                                          '0)))
                                                    (let ((_%tl3667737374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3968539686%_
                                                              '1)))
                                                          (_%target3667537371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3968539686%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3667737374%_)
                                                          (_%__match3973339734%_
                                                           _%e3666837341%_
                                                           _%hd3666737345%_
                                                           _%tl3666637348%_
                                                           _%e3667137351%_
                                                           _%hd3667037355%_
                                                           _%tl3666937358%_
                                                           _%e3667437361%_
                                                           _%hd3667337365%_
                                                           _%tl3667237368%_
                                                           _%__splice3968539686%_
                                                           _%target3667537371%_
                                                           _%tl3667737374%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3666937358%_)
                                                              (let ((_%e3673937117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3666937358%_)))
                        (let ((_%tl3673737124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3673937117%_)))
                              (_%hd3673837121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3673937117%_))))
                          (if (gx#stx-null? _%tl3673737124%_)
                              (_%__kont3969339694%_
                               _%hd3673837121%_
                               _%hd3667037355%_)
                              (if (gx#identifier? _%hd3673837121%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40136_|
                                       _%hd3673837121%_)
                                      (if (gx#stx-pair? _%tl3673737124%_)
                                          (let ((_%e3676237017%_
                                                 (gx#syntax-e
                                                  _%tl3673737124%_)))
                                            (let ((_%tl3676037024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3676237017%_)))
                                                  (_%hd3676137021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3676237017%_))))
                                              (if (gx#stx-null?
                                                   _%tl3676037024%_)
                                                  (_%__kont3969739698%_
                                                   _%hd3676137021%_
                                                   _%hd3667037355%_
                                                   _%hd3666737345%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3666136807%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3666136807%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3666136807%_)))
                                  (if (gx#stx-datum? _%hd3673837121%_)
                                      (let ((_%e3677536944%_
                                             (gx#stx-e _%hd3673837121%_)))
                                        (if (equal? _%e3677536944%_ '::)
                                            (if (gx#stx-pair? _%tl3673737124%_)
                                                (let ((_%e3677836948%_
                                                       (gx#syntax-e
                                                        _%tl3673737124%_)))
                                                  (let ((_%tl3677636955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3677836948%_)))
                                                        (_%hd3677736952%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3677836948%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3677636955%_)
                                                        (_%__kont3969939700%_
                                                         _%hd3677736952%_
                                                         _%hd3667037355%_
                                                         _%hd3666737345%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3677636955%_)
                                                            (let ((_%e3679836858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3677636955%_)))
                      (let ((_%tl3679636865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3679836858%_)))
                            (_%hd3679736862%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3679836858%_))))
                        (if (gx#identifier? _%hd3679736862%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40137_|
                                 _%hd3679736862%_)
                                (if (gx#stx-pair? _%tl3679636865%_)
                                    (let ((_%e3680136868%_
                                           (gx#syntax-e _%tl3679636865%_)))
                                      (let ((_%tl3679936875%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3680136868%_)))
                                            (_%hd3680036872%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3680136868%_))))
                                        (if (gx#stx-null? _%tl3679936875%_)
                                            (_%__kont3970139702%_
                                             _%hd3680036872%_
                                             _%hd3677736952%_
                                             _%hd3667037355%_
                                             _%hd3666737345%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3666136807%_)))
                            (let () (declare (not safe)) (_%g3666136807%_)))))
                    (let () (declare (not safe)) (_%g3666136807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3666136807%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3666136807%_)))))))
                      (if (gx#stx-null? _%tl3666937358%_)
                          (_%__kont3969539696%_
                           _%hd3667037355%_
                           _%hd3666737345%_)
                          (let () (declare (not safe)) (_%g3666136807%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3666937358%_)
                                                      (let ((_%e3673937117%_
                                                             (gx#syntax-e
                                                              _%tl3666937358%_)))
                                                        (let ((_%tl3673737124%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3673937117%_)))
                      (_%hd3673837121%_
                       (let () (declare (not safe)) (##car _%e3673937117%_))))
                  (if (gx#stx-null? _%tl3673737124%_)
                      (_%__kont3969339694%_ _%hd3673837121%_ _%hd3667037355%_)
                      (if (gx#identifier? _%hd3673837121%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g40136_|
                               _%hd3673837121%_)
                              (if (gx#stx-pair? _%tl3673737124%_)
                                  (let ((_%e3676237017%_
                                         (gx#syntax-e _%tl3673737124%_)))
                                    (let ((_%tl3676037024%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3676237017%_)))
                                          (_%hd3676137021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3676237017%_))))
                                      (if (gx#stx-null? _%tl3676037024%_)
                                          (_%__kont3969739698%_
                                           _%hd3676137021%_
                                           _%hd3667037355%_
                                           _%hd3666737345%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3666136807%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3666136807%_)))
                              (let () (declare (not safe)) (_%g3666136807%_)))
                          (if (gx#stx-datum? _%hd3673837121%_)
                              (let ((_%e3677536944%_
                                     (gx#stx-e _%hd3673837121%_)))
                                (if (equal? _%e3677536944%_ '::)
                                    (if (gx#stx-pair? _%tl3673737124%_)
                                        (let ((_%e3677836948%_
                                               (gx#syntax-e _%tl3673737124%_)))
                                          (let ((_%tl3677636955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3677836948%_)))
                                                (_%hd3677736952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3677836948%_))))
                                            (if (gx#stx-null? _%tl3677636955%_)
                                                (_%__kont3969939700%_
                                                 _%hd3677736952%_
                                                 _%hd3667037355%_
                                                 _%hd3666737345%_)
                                                (if (gx#stx-pair?
                                                     _%tl3677636955%_)
                                                    (let ((_%e3679836858%_
                                                           (gx#syntax-e
                                                            _%tl3677636955%_)))
                                                      (let ((_%tl3679636865%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3679836858%_)))
                    (_%hd3679736862%_
                     (let () (declare (not safe)) (##car _%e3679836858%_))))
                (if (gx#identifier? _%hd3679736862%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g40137_|
                         _%hd3679736862%_)
                        (if (gx#stx-pair? _%tl3679636865%_)
                            (let ((_%e3680136868%_
                                   (gx#syntax-e _%tl3679636865%_)))
                              (let ((_%tl3679936875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3680136868%_)))
                                    (_%hd3680036872%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3680136868%_))))
                                (if (gx#stx-null? _%tl3679936875%_)
                                    (_%__kont3970139702%_
                                     _%hd3680036872%_
                                     _%hd3677736952%_
                                     _%hd3667037355%_
                                     _%hd3666737345%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_)))))
                            (let () (declare (not safe)) (_%g3666136807%_)))
                        (let () (declare (not safe)) (_%g3666136807%_)))
                    (let () (declare (not safe)) (_%g3666136807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3666136807%_)))))))
              (if (gx#stx-null? _%tl3666937358%_)
                  (_%__kont3969539696%_ _%hd3667037355%_ _%hd3666737345%_)
                  (let () (declare (not safe)) (_%g3666136807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g40139_|
                                                   _%hd3667337365%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3667237368%_)
                                                      (let ((_%__splice3968939690%_
                                                             (gx#syntax-split-splice
                                                              _%tl3667237368%_
                                                              '0)))
                                                        (let ((_%tl3670137264%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3968939690%_ '1)))
                      (_%target3669937261%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3968939690%_ '0))))
                  (if (gx#stx-null? _%tl3670137264%_)
                      (_%__match3976339764%_
                       _%e3666837341%_
                       _%hd3666737345%_
                       _%tl3666637348%_
                       _%e3667137351%_
                       _%hd3667037355%_
                       _%tl3666937358%_
                       _%e3667437361%_
                       _%hd3667337365%_
                       _%tl3667237368%_
                       _%__splice3968939690%_
                       _%target3669937261%_
                       _%tl3670137264%_)
                      (if (gx#stx-pair? _%tl3666937358%_)
                          (let ((_%e3673937117%_
                                 (gx#syntax-e _%tl3666937358%_)))
                            (let ((_%tl3673737124%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3673937117%_)))
                                  (_%hd3673837121%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3673937117%_))))
                              (if (gx#stx-null? _%tl3673737124%_)
                                  (_%__kont3969339694%_
                                   _%hd3673837121%_
                                   _%hd3667037355%_)
                                  (if (gx#identifier? _%hd3673837121%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g40136_|
                                           _%hd3673837121%_)
                                          (if (gx#stx-pair? _%tl3673737124%_)
                                              (let ((_%e3676237017%_
                                                     (gx#syntax-e
                                                      _%tl3673737124%_)))
                                                (let ((_%tl3676037024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3676237017%_)))
                                                      (_%hd3676137021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3676237017%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3676037024%_)
                                                      (_%__kont3969739698%_
                                                       _%hd3676137021%_
                                                       _%hd3667037355%_
                                                       _%hd3666737345%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3666136807%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3666136807%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3666136807%_)))
                                      (if (gx#stx-datum? _%hd3673837121%_)
                                          (let ((_%e3677536944%_
                                                 (gx#stx-e _%hd3673837121%_)))
                                            (if (equal? _%e3677536944%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3673737124%_)
                                                    (let ((_%e3677836948%_
                                                           (gx#syntax-e
                                                            _%tl3673737124%_)))
                                                      (let ((_%tl3677636955%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3677836948%_)))
                    (_%hd3677736952%_
                     (let () (declare (not safe)) (##car _%e3677836948%_))))
                (if (gx#stx-null? _%tl3677636955%_)
                    (_%__kont3969939700%_
                     _%hd3677736952%_
                     _%hd3667037355%_
                     _%hd3666737345%_)
                    (if (gx#stx-pair? _%tl3677636955%_)
                        (let ((_%e3679836858%_ (gx#syntax-e _%tl3677636955%_)))
                          (let ((_%tl3679636865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3679836858%_)))
                                (_%hd3679736862%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3679836858%_))))
                            (if (gx#identifier? _%hd3679736862%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g40137_|
                                     _%hd3679736862%_)
                                    (if (gx#stx-pair? _%tl3679636865%_)
                                        (let ((_%e3680136868%_
                                               (gx#syntax-e _%tl3679636865%_)))
                                          (let ((_%tl3679936875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3680136868%_)))
                                                (_%hd3680036872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3680136868%_))))
                                            (if (gx#stx-null? _%tl3679936875%_)
                                                (_%__kont3970139702%_
                                                 _%hd3680036872%_
                                                 _%hd3677736952%_
                                                 _%hd3667037355%_
                                                 _%hd3666737345%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3666136807%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3666136807%_)))))
                        (let () (declare (not safe)) (_%g3666136807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3666136807%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3666136807%_)))))))
                          (if (gx#stx-null? _%tl3666937358%_)
                              (_%__kont3969539696%_
                               _%hd3667037355%_
                               _%hd3666737345%_)
                              (let ()
                                (declare (not safe))
                                (_%g3666136807%_)))))))
              (if (gx#stx-pair? _%tl3666937358%_)
                  (let ((_%e3673937117%_ (gx#syntax-e _%tl3666937358%_)))
                    (let ((_%tl3673737124%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3673937117%_)))
                          (_%hd3673837121%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3673937117%_))))
                      (if (gx#stx-null? _%tl3673737124%_)
                          (_%__kont3969339694%_
                           _%hd3673837121%_
                           _%hd3667037355%_)
                          (if (gx#identifier? _%hd3673837121%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40136_|
                                   _%hd3673837121%_)
                                  (if (gx#stx-pair? _%tl3673737124%_)
                                      (let ((_%e3676237017%_
                                             (gx#syntax-e _%tl3673737124%_)))
                                        (let ((_%tl3676037024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3676237017%_)))
                                              (_%hd3676137021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3676237017%_))))
                                          (if (gx#stx-null? _%tl3676037024%_)
                                              (_%__kont3969739698%_
                                               _%hd3676137021%_
                                               _%hd3667037355%_
                                               _%hd3666737345%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3666136807%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3666136807%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3666136807%_)))
                              (if (gx#stx-datum? _%hd3673837121%_)
                                  (let ((_%e3677536944%_
                                         (gx#stx-e _%hd3673837121%_)))
                                    (if (equal? _%e3677536944%_ '::)
                                        (if (gx#stx-pair? _%tl3673737124%_)
                                            (let ((_%e3677836948%_
                                                   (gx#syntax-e
                                                    _%tl3673737124%_)))
                                              (let ((_%tl3677636955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3677836948%_)))
                                                    (_%hd3677736952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3677836948%_))))
                                                (if (gx#stx-null?
                                                     _%tl3677636955%_)
                                                    (_%__kont3969939700%_
                                                     _%hd3677736952%_
                                                     _%hd3667037355%_
                                                     _%hd3666737345%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3677636955%_)
                                                        (let ((_%e3679836858%_
                                                               (gx#syntax-e
                                                                _%tl3677636955%_)))
                                                          (let ((_%tl3679636865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3679836858%_)))
                        (_%hd3679736862%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3679836858%_))))
                    (if (gx#identifier? _%hd3679736862%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40137_|
                             _%hd3679736862%_)
                            (if (gx#stx-pair? _%tl3679636865%_)
                                (let ((_%e3680136868%_
                                       (gx#syntax-e _%tl3679636865%_)))
                                  (let ((_%tl3679936875%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3680136868%_)))
                                        (_%hd3680036872%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3680136868%_))))
                                    (if (gx#stx-null? _%tl3679936875%_)
                                        (_%__kont3970139702%_
                                         _%hd3680036872%_
                                         _%hd3677736952%_
                                         _%hd3667037355%_
                                         _%hd3666737345%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3666136807%_)))
                            (let () (declare (not safe)) (_%g3666136807%_)))
                        (let () (declare (not safe)) (_%g3666136807%_)))))
                (let () (declare (not safe)) (_%g3666136807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3666136807%_)))))))
                  (if (gx#stx-null? _%tl3666937358%_)
                      (_%__kont3969539696%_ _%hd3667037355%_ _%hd3666737345%_)
                      (let () (declare (not safe)) (_%g3666136807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40140_|
                                                       _%hd3667337365%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3667237368%_)
                                                          (let ((_%e3672537181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3667237368%_)))
                    (let ((_%tl3672337188%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3672537181%_)))
                          (_%hd3672437185%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3672537181%_))))
                      (if (gx#stx-null? _%tl3672337188%_)
                          (if (gx#stx-pair? _%tl3666937358%_)
                              (let ((_%e3672837191%_
                                     (gx#syntax-e _%tl3666937358%_)))
                                (let ((_%tl3672637198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3672837191%_)))
                                      (_%hd3672737195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3672837191%_))))
                                  (if (gx#stx-null? _%tl3672637198%_)
                                      (_%__kont3969139692%_
                                       _%hd3672737195%_
                                       _%hd3672437185%_
                                       _%hd3666737345%_)
                                      (if (gx#identifier? _%hd3672737195%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40136_|
                                               _%hd3672737195%_)
                                              (if (gx#stx-pair?
                                                   _%tl3672637198%_)
                                                  (let ((_%e3676237017%_
                                                         (gx#syntax-e
                                                          _%tl3672637198%_)))
                                                    (let ((_%tl3676037024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3676237017%_)))
                                                          (_%hd3676137021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3676237017%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3676037024%_)
                                                          (_%__kont3969739698%_
                                                           _%hd3676137021%_
                                                           _%hd3667037355%_
                                                           _%hd3666737345%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3666136807%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3666136807%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3666136807%_)))
                                          (if (gx#stx-datum? _%hd3672737195%_)
                                              (let ((_%e3677536944%_
                                                     (gx#stx-e
                                                      _%hd3672737195%_)))
                                                (if (equal? _%e3677536944%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3672637198%_)
                                                        (let ((_%e3677836948%_
                                                               (gx#syntax-e
                                                                _%tl3672637198%_)))
                                                          (let ((_%tl3677636955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3677836948%_)))
                        (_%hd3677736952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3677836948%_))))
                    (if (gx#stx-null? _%tl3677636955%_)
                        (_%__kont3969939700%_
                         _%hd3677736952%_
                         _%hd3667037355%_
                         _%hd3666737345%_)
                        (if (gx#stx-pair? _%tl3677636955%_)
                            (let ((_%e3679836858%_
                                   (gx#syntax-e _%tl3677636955%_)))
                              (let ((_%tl3679636865%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3679836858%_)))
                                    (_%hd3679736862%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3679836858%_))))
                                (if (gx#identifier? _%hd3679736862%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40137_|
                                         _%hd3679736862%_)
                                        (if (gx#stx-pair? _%tl3679636865%_)
                                            (let ((_%e3680136868%_
                                                   (gx#syntax-e
                                                    _%tl3679636865%_)))
                                              (let ((_%tl3679936875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3680136868%_)))
                                                    (_%hd3680036872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3680136868%_))))
                                                (if (gx#stx-null?
                                                     _%tl3679936875%_)
                                                    (_%__kont3970139702%_
                                                     _%hd3680036872%_
                                                     _%hd3677736952%_
                                                     _%hd3667037355%_
                                                     _%hd3666737345%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_)))))
                            (let () (declare (not safe)) (_%g3666136807%_))))))
                (let () (declare (not safe)) (_%g3666136807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3666136807%_)))))))
                              (if (gx#stx-null? _%tl3666937358%_)
                                  (_%__kont3969539696%_
                                   _%hd3667037355%_
                                   _%hd3666737345%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3666136807%_))))
                          (if (gx#stx-pair? _%tl3666937358%_)
                              (let ((_%e3673937117%_
                                     (gx#syntax-e _%tl3666937358%_)))
                                (let ((_%tl3673737124%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3673937117%_)))
                                      (_%hd3673837121%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3673937117%_))))
                                  (if (gx#stx-null? _%tl3673737124%_)
                                      (_%__kont3969339694%_
                                       _%hd3673837121%_
                                       _%hd3667037355%_)
                                      (if (gx#identifier? _%hd3673837121%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g40136_|
                                               _%hd3673837121%_)
                                              (if (gx#stx-pair?
                                                   _%tl3673737124%_)
                                                  (let ((_%e3676237017%_
                                                         (gx#syntax-e
                                                          _%tl3673737124%_)))
                                                    (let ((_%tl3676037024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3676237017%_)))
                                                          (_%hd3676137021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3676237017%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3676037024%_)
                                                          (_%__kont3969739698%_
                                                           _%hd3676137021%_
                                                           _%hd3667037355%_
                                                           _%hd3666737345%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3666136807%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3666136807%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3666136807%_)))
                                          (if (gx#stx-datum? _%hd3673837121%_)
                                              (let ((_%e3677536944%_
                                                     (gx#stx-e
                                                      _%hd3673837121%_)))
                                                (if (equal? _%e3677536944%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3673737124%_)
                                                        (let ((_%e3677836948%_
                                                               (gx#syntax-e
                                                                _%tl3673737124%_)))
                                                          (let ((_%tl3677636955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3677836948%_)))
                        (_%hd3677736952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3677836948%_))))
                    (if (gx#stx-null? _%tl3677636955%_)
                        (_%__kont3969939700%_
                         _%hd3677736952%_
                         _%hd3667037355%_
                         _%hd3666737345%_)
                        (if (gx#stx-pair? _%tl3677636955%_)
                            (let ((_%e3679836858%_
                                   (gx#syntax-e _%tl3677636955%_)))
                              (let ((_%tl3679636865%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3679836858%_)))
                                    (_%hd3679736862%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3679836858%_))))
                                (if (gx#identifier? _%hd3679736862%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g40137_|
                                         _%hd3679736862%_)
                                        (if (gx#stx-pair? _%tl3679636865%_)
                                            (let ((_%e3680136868%_
                                                   (gx#syntax-e
                                                    _%tl3679636865%_)))
                                              (let ((_%tl3679936875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3680136868%_)))
                                                    (_%hd3680036872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3680136868%_))))
                                                (if (gx#stx-null?
                                                     _%tl3679936875%_)
                                                    (_%__kont3970139702%_
                                                     _%hd3680036872%_
                                                     _%hd3677736952%_
                                                     _%hd3667037355%_
                                                     _%hd3666737345%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_)))))
                            (let () (declare (not safe)) (_%g3666136807%_))))))
                (let () (declare (not safe)) (_%g3666136807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3666136807%_)))))))
                              (if (gx#stx-null? _%tl3666937358%_)
                                  (_%__kont3969539696%_
                                   _%hd3667037355%_
                                   _%hd3666737345%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3666136807%_)))))))
                  (if (gx#stx-pair? _%tl3666937358%_)
                      (let ((_%e3673937117%_ (gx#syntax-e _%tl3666937358%_)))
                        (let ((_%tl3673737124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3673937117%_)))
                              (_%hd3673837121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3673937117%_))))
                          (if (gx#stx-null? _%tl3673737124%_)
                              (_%__kont3969339694%_
                               _%hd3673837121%_
                               _%hd3667037355%_)
                              (if (gx#identifier? _%hd3673837121%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g40136_|
                                       _%hd3673837121%_)
                                      (if (gx#stx-pair? _%tl3673737124%_)
                                          (let ((_%e3676237017%_
                                                 (gx#syntax-e
                                                  _%tl3673737124%_)))
                                            (let ((_%tl3676037024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3676237017%_)))
                                                  (_%hd3676137021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3676237017%_))))
                                              (if (gx#stx-null?
                                                   _%tl3676037024%_)
                                                  (_%__kont3969739698%_
                                                   _%hd3676137021%_
                                                   _%hd3667037355%_
                                                   _%hd3666737345%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3666136807%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3666136807%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3666136807%_)))
                                  (if (gx#stx-datum? _%hd3673837121%_)
                                      (let ((_%e3677536944%_
                                             (gx#stx-e _%hd3673837121%_)))
                                        (if (equal? _%e3677536944%_ '::)
                                            (if (gx#stx-pair? _%tl3673737124%_)
                                                (let ((_%e3677836948%_
                                                       (gx#syntax-e
                                                        _%tl3673737124%_)))
                                                  (let ((_%tl3677636955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3677836948%_)))
                                                        (_%hd3677736952%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3677836948%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3677636955%_)
                                                        (_%__kont3969939700%_
                                                         _%hd3677736952%_
                                                         _%hd3667037355%_
                                                         _%hd3666737345%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3677636955%_)
                                                            (let ((_%e3679836858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3677636955%_)))
                      (let ((_%tl3679636865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3679836858%_)))
                            (_%hd3679736862%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3679836858%_))))
                        (if (gx#identifier? _%hd3679736862%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g40137_|
                                 _%hd3679736862%_)
                                (if (gx#stx-pair? _%tl3679636865%_)
                                    (let ((_%e3680136868%_
                                           (gx#syntax-e _%tl3679636865%_)))
                                      (let ((_%tl3679936875%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3680136868%_)))
                                            (_%hd3680036872%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3680136868%_))))
                                        (if (gx#stx-null? _%tl3679936875%_)
                                            (_%__kont3970139702%_
                                             _%hd3680036872%_
                                             _%hd3677736952%_
                                             _%hd3667037355%_
                                             _%hd3666737345%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3666136807%_)))
                            (let () (declare (not safe)) (_%g3666136807%_)))))
                    (let () (declare (not safe)) (_%g3666136807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3666136807%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3666136807%_)))))))
                      (if (gx#stx-null? _%tl3666937358%_)
                          (_%__kont3969539696%_
                           _%hd3667037355%_
                           _%hd3666737345%_)
                          (let () (declare (not safe)) (_%g3666136807%_)))))
              (if (gx#stx-pair? _%tl3666937358%_)
                  (let ((_%e3673937117%_ (gx#syntax-e _%tl3666937358%_)))
                    (let ((_%tl3673737124%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3673937117%_)))
                          (_%hd3673837121%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3673937117%_))))
                      (if (gx#stx-null? _%tl3673737124%_)
                          (_%__kont3969339694%_
                           _%hd3673837121%_
                           _%hd3667037355%_)
                          (if (gx#identifier? _%hd3673837121%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g40136_|
                                   _%hd3673837121%_)
                                  (if (gx#stx-pair? _%tl3673737124%_)
                                      (let ((_%e3676237017%_
                                             (gx#syntax-e _%tl3673737124%_)))
                                        (let ((_%tl3676037024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3676237017%_)))
                                              (_%hd3676137021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3676237017%_))))
                                          (if (gx#stx-null? _%tl3676037024%_)
                                              (_%__kont3969739698%_
                                               _%hd3676137021%_
                                               _%hd3667037355%_
                                               _%hd3666737345%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3666136807%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3666136807%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3666136807%_)))
                              (if (gx#stx-datum? _%hd3673837121%_)
                                  (let ((_%e3677536944%_
                                         (gx#stx-e _%hd3673837121%_)))
                                    (if (equal? _%e3677536944%_ '::)
                                        (if (gx#stx-pair? _%tl3673737124%_)
                                            (let ((_%e3677836948%_
                                                   (gx#syntax-e
                                                    _%tl3673737124%_)))
                                              (let ((_%tl3677636955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3677836948%_)))
                                                    (_%hd3677736952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3677836948%_))))
                                                (if (gx#stx-null?
                                                     _%tl3677636955%_)
                                                    (_%__kont3969939700%_
                                                     _%hd3677736952%_
                                                     _%hd3667037355%_
                                                     _%hd3666737345%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3677636955%_)
                                                        (let ((_%e3679836858%_
                                                               (gx#syntax-e
                                                                _%tl3677636955%_)))
                                                          (let ((_%tl3679636865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3679836858%_)))
                        (_%hd3679736862%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3679836858%_))))
                    (if (gx#identifier? _%hd3679736862%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g40137_|
                             _%hd3679736862%_)
                            (if (gx#stx-pair? _%tl3679636865%_)
                                (let ((_%e3680136868%_
                                       (gx#syntax-e _%tl3679636865%_)))
                                  (let ((_%tl3679936875%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3680136868%_)))
                                        (_%hd3680036872%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3680136868%_))))
                                    (if (gx#stx-null? _%tl3679936875%_)
                                        (_%__kont3970139702%_
                                         _%hd3680036872%_
                                         _%hd3677736952%_
                                         _%hd3667037355%_
                                         _%hd3666737345%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3666136807%_)))
                            (let () (declare (not safe)) (_%g3666136807%_)))
                        (let () (declare (not safe)) (_%g3666136807%_)))))
                (let () (declare (not safe)) (_%g3666136807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3666136807%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3666136807%_)))))))
                  (if (gx#stx-null? _%tl3666937358%_)
                      (_%__kont3969539696%_ _%hd3667037355%_ _%hd3666737345%_)
                      (let () (declare (not safe)) (_%g3666136807%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3666937358%_)
                                              (let ((_%e3673937117%_
                                                     (gx#syntax-e
                                                      _%tl3666937358%_)))
                                                (let ((_%tl3673737124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3673937117%_)))
                                                      (_%hd3673837121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3673937117%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3673737124%_)
                                                      (_%__kont3969339694%_
                                                       _%hd3673837121%_
                                                       _%hd3667037355%_)
                                                      (if (gx#identifier?
                                                           _%hd3673837121%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g40136_|
                                                               _%hd3673837121%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3673737124%_)
                          (let ((_%e3676237017%_
                                 (gx#syntax-e _%tl3673737124%_)))
                            (let ((_%tl3676037024%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3676237017%_)))
                                  (_%hd3676137021%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3676237017%_))))
                              (if (gx#stx-null? _%tl3676037024%_)
                                  (_%__kont3969739698%_
                                   _%hd3676137021%_
                                   _%hd3667037355%_
                                   _%hd3666737345%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3666136807%_)))))
                          (let () (declare (not safe)) (_%g3666136807%_)))
                      (let () (declare (not safe)) (_%g3666136807%_)))
                  (if (gx#stx-datum? _%hd3673837121%_)
                      (let ((_%e3677536944%_ (gx#stx-e _%hd3673837121%_)))
                        (if (equal? _%e3677536944%_ '::)
                            (if (gx#stx-pair? _%tl3673737124%_)
                                (let ((_%e3677836948%_
                                       (gx#syntax-e _%tl3673737124%_)))
                                  (let ((_%tl3677636955%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3677836948%_)))
                                        (_%hd3677736952%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3677836948%_))))
                                    (if (gx#stx-null? _%tl3677636955%_)
                                        (_%__kont3969939700%_
                                         _%hd3677736952%_
                                         _%hd3667037355%_
                                         _%hd3666737345%_)
                                        (if (gx#stx-pair? _%tl3677636955%_)
                                            (let ((_%e3679836858%_
                                                   (gx#syntax-e
                                                    _%tl3677636955%_)))
                                              (let ((_%tl3679636865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3679836858%_)))
                                                    (_%hd3679736862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3679836858%_))))
                                                (if (gx#identifier?
                                                     _%hd3679736862%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g40137_|
                                                         _%hd3679736862%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3679636865%_)
                                                            (let ((_%e3680136868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3679636865%_)))
                      (let ((_%tl3679936875%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3680136868%_)))
                            (_%hd3680036872%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3680136868%_))))
                        (if (gx#stx-null? _%tl3679936875%_)
                            (_%__kont3970139702%_
                             _%hd3680036872%_
                             _%hd3677736952%_
                             _%hd3667037355%_
                             _%hd3666737345%_)
                            (let () (declare (not safe)) (_%g3666136807%_)))))
                    (let () (declare (not safe)) (_%g3666136807%_)))
                (let () (declare (not safe)) (_%g3666136807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3666136807%_)))
                            (let () (declare (not safe)) (_%g3666136807%_))))
                      (let () (declare (not safe)) (_%g3666136807%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3666937358%_)
                                                  (_%__kont3969539696%_
                                                   _%hd3667037355%_
                                                   _%hd3666737345%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3666136807%_)))))))
                                  (if (gx#stx-pair? _%tl3666937358%_)
                                      (let ((_%e3673937117%_
                                             (gx#syntax-e _%tl3666937358%_)))
                                        (let ((_%tl3673737124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3673937117%_)))
                                              (_%hd3673837121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3673937117%_))))
                                          (if (gx#stx-null? _%tl3673737124%_)
                                              (_%__kont3969339694%_
                                               _%hd3673837121%_
                                               _%hd3667037355%_)
                                              (if (gx#identifier?
                                                   _%hd3673837121%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g40136_|
                                                       _%hd3673837121%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3673737124%_)
                                                          (let ((_%e3676237017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3673737124%_)))
                    (let ((_%tl3676037024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3676237017%_)))
                          (_%hd3676137021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3676237017%_))))
                      (if (gx#stx-null? _%tl3676037024%_)
                          (_%__kont3969739698%_
                           _%hd3676137021%_
                           _%hd3667037355%_
                           _%hd3666737345%_)
                          (let () (declare (not safe)) (_%g3666136807%_)))))
                  (let () (declare (not safe)) (_%g3666136807%_)))
              (let () (declare (not safe)) (_%g3666136807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3673837121%_)
                                                      (let ((_%e3677536944%_
                                                             (gx#stx-e
                                                              _%hd3673837121%_)))
                                                        (if (equal? _%e3677536944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3673737124%_)
                        (let ((_%e3677836948%_ (gx#syntax-e _%tl3673737124%_)))
                          (let ((_%tl3677636955%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3677836948%_)))
                                (_%hd3677736952%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3677836948%_))))
                            (if (gx#stx-null? _%tl3677636955%_)
                                (_%__kont3969939700%_
                                 _%hd3677736952%_
                                 _%hd3667037355%_
                                 _%hd3666737345%_)
                                (if (gx#stx-pair? _%tl3677636955%_)
                                    (let ((_%e3679836858%_
                                           (gx#syntax-e _%tl3677636955%_)))
                                      (let ((_%tl3679636865%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3679836858%_)))
                                            (_%hd3679736862%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3679836858%_))))
                                        (if (gx#identifier? _%hd3679736862%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g40137_|
                                                 _%hd3679736862%_)
                                                (if (gx#stx-pair?
                                                     _%tl3679636865%_)
                                                    (let ((_%e3680136868%_
                                                           (gx#syntax-e
                                                            _%tl3679636865%_)))
                                                      (let ((_%tl3679936875%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3680136868%_)))
                    (_%hd3680036872%_
                     (let () (declare (not safe)) (##car _%e3680136868%_))))
                (if (gx#stx-null? _%tl3679936875%_)
                    (_%__kont3970139702%_
                     _%hd3680036872%_
                     _%hd3677736952%_
                     _%hd3667037355%_
                     _%hd3666737345%_)
                    (let () (declare (not safe)) (_%g3666136807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3666136807%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3666136807%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3666136807%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3666136807%_))))))
                        (let () (declare (not safe)) (_%g3666136807%_)))
                    (let () (declare (not safe)) (_%g3666136807%_))))
              (let () (declare (not safe)) (_%g3666136807%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3666937358%_)
                                          (_%__kont3969539696%_
                                           _%hd3667037355%_
                                           _%hd3666737345%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3666136807%_)))))))
                          (let () (declare (not safe)) (_%g3666136807%_)))))
                  (let () (declare (not safe)) (_%g3666136807%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37450%_)
        (let* ((_%__stx3994839949%_ _%$stx37450%_)
               (_%g3745537489%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3994839949%_))))
          (let ((_%__kont3995139952%_
                 (lambda (_%L37593%_ _%L37595%_ _%L37596%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37596%_
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
                                       (cons _%L37595%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37593%_ '()))
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
                (_%__kont3995339954%_
                 (lambda (_%L37526%_ _%L37528%_ _%L37529%_)
                   (cons _%L37529%_
                         (cons _%L37528%_
                               (cons _%L37526%_
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
            (let ((_%__match3998139982%_
                   (lambda (_%e3746237553%_
                            _%hd3746137557%_
                            _%tl3746037560%_
                            _%e3746537563%_
                            _%hd3746437567%_
                            _%tl3746337570%_
                            _%e3746837573%_
                            _%hd3746737577%_
                            _%tl3746637580%_
                            _%e3747137583%_
                            _%hd3747037587%_
                            _%tl3746937590%_)
                     (let ((_%L37593%_ _%hd3747037587%_)
                           (_%L37595%_ _%hd3746737577%_)
                           (_%L37596%_ _%hd3746437567%_))
                       (if (gx#identifier? _%L37596%_)
                           (_%__kont3995139952%_
                            _%L37593%_
                            _%L37595%_
                            _%L37596%_)
                           (let () (declare (not safe)) (_%g3745537489%_)))))))
              (if (gx#stx-pair? _%__stx3994839949%_)
                  (let ((_%e3746237553%_ (gx#syntax-e _%__stx3994839949%_)))
                    (let ((_%tl3746037560%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3746237553%_)))
                          (_%hd3746137557%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3746237553%_))))
                      (if (gx#stx-pair? _%tl3746037560%_)
                          (let ((_%e3746537563%_
                                 (gx#syntax-e _%tl3746037560%_)))
                            (let ((_%tl3746337570%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3746537563%_)))
                                  (_%hd3746437567%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3746537563%_))))
                              (if (gx#stx-pair? _%tl3746337570%_)
                                  (let ((_%e3746837573%_
                                         (gx#syntax-e _%tl3746337570%_)))
                                    (let ((_%tl3746637580%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3746837573%_)))
                                          (_%hd3746737577%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3746837573%_))))
                                      (if (gx#stx-pair? _%tl3746637580%_)
                                          (let ((_%e3747137583%_
                                                 (gx#syntax-e
                                                  _%tl3746637580%_)))
                                            (let ((_%tl3746937590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3747137583%_)))
                                                  (_%hd3747037587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3747137583%_))))
                                              (if (gx#stx-null?
                                                   _%tl3746937590%_)
                                                  (_%__match3998139982%_
                                                   _%e3746237553%_
                                                   _%hd3746137557%_
                                                   _%tl3746037560%_
                                                   _%e3746537563%_
                                                   _%hd3746437567%_
                                                   _%tl3746337570%_
                                                   _%e3746837573%_
                                                   _%hd3746737577%_
                                                   _%tl3746637580%_
                                                   _%e3747137583%_
                                                   _%hd3747037587%_
                                                   _%tl3746937590%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3745537489%_)))))
                                          (if (gx#stx-null? _%tl3746637580%_)
                                              (_%__kont3995339954%_
                                               _%hd3746737577%_
                                               _%hd3746437567%_
                                               _%hd3746137557%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3745537489%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3745537489%_)))))
                          (let () (declare (not safe)) (_%g3745537489%_)))))
                  (let () (declare (not safe)) (_%g3745537489%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37618%_)
        (let* ((_%g3762237637%_
                (lambda (_%g3762337633%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3762337633%_)))
               (_%g3762137680%_
                (lambda (_%g3762337641%_)
                  (if (gx#stx-pair? _%g3762337641%_)
                      (let ((_%e3762837644%_ (gx#syntax-e _%g3762337641%_)))
                        (let ((_%hd3762737648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3762837644%_)))
                              (_%tl3762637651%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3762837644%_))))
                          (if (gx#stx-pair? _%tl3762637651%_)
                              (let ((_%e3763137654%_
                                     (gx#syntax-e _%tl3762637651%_)))
                                (let ((_%hd3763037658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3763137654%_)))
                                      (_%tl3762937661%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3763137654%_))))
                                  ((lambda (_%L37664%_ _%L37666%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37666%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37664%_)
                                                       '()))))
                                   _%tl3762937661%_
                                   _%hd3763037658%_)))
                              (_%g3762237637%_ _%g3762337641%_))))
                      (_%g3762237637%_ _%g3762337641%_)))))
          (_%g3762137680%_ _%$stx37618%_))))))
