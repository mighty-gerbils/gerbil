(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39692_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39693_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39694_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39695_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39696_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39697_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39698_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39699_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39700_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39701_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39702_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39703_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39704_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39705_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39706_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39719_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39727_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39728_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39729_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39734_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39735_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39736_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39737_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39738_|
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
      (lambda _%$args35013%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35013%_)))
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
      (lambda (_%stx35010%_)
        (if (gx#identifier? _%stx35010%_)
            (let ((__tmp39691 (gx#syntax-local-value _%stx35010%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39691))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33312%_ _%match-stx33314%_)
        (letrec ((_%parse133316%_
                  (lambda (_%hd33675%_)
                    (let* ((_%__stx3747937480%_ _%hd33675%_)
                           (_%g3370133843%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3747937480%_))))
                      (let ((_%__kont3748237483%_
                             (lambda (_%g3370334773%_ _%g3370434775%_)
                               (let* ((_%__stx3739937400%_ _%g3370334773%_)
                                      (_%g3479234825%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3739937400%_))))
                                 (let ((_%__kont3740237403%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g3370434775%_ '()))))
                                       (_%__kont3740437405%_
                                        (lambda (_%g3479434966%_)
                                          (cons '?:
                                                (cons _%g3370434775%_
                                                      (cons (_%parse133316%_
                                                             _%g3479434966%_)
                                                            '())))))
                                       (_%__kont3740637407%_
                                        (lambda (_%g3479834936%_)
                                          (cons '?:
                                                (cons _%g3370434775%_
                                                      (cons '=>:
                                                            (cons (_%parse133316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g3479834936%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3740837409%_
                                        (lambda (_%g3480534887%_
                                                 _%g3480634889%_)
                                          (cons '?:
                                                (cons _%g3370434775%_
                                                      (cons '::
                                                            (cons _%g3480634889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133316%_ _%g3480534887%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3741037411%_
                                        (lambda ()
                                          (_%parse-error33323%_ _%hd33675%_))))
                                   (let ((_%g3478834977%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3739937400%_)
                                                (let ((_%e3479534956%_
                                                       (gx#syntax-e
                                                        _%__stx3739937400%_)))
                                                  (let ((_%tl3479734963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3479534956%_)))
                                                        (_%hd3479634960%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3479534956%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3479734963%_)
                                                        (_%__kont3740437405%_
                                                         _%hd3479634960%_)
                                                        (if (gx#identifier?
                                                             _%hd3479634960%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39692_|
                         _%hd3479634960%_)
                        (if (gx#stx-pair? _%tl3479734963%_)
                            (let ((_%e3480234926%_
                                   (gx#syntax-e _%tl3479734963%_)))
                              (let ((_%tl3480434933%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3480234926%_)))
                                    (_%hd3480334930%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3480234926%_))))
                                (if (gx#stx-null? _%tl3480434933%_)
                                    (_%__kont3740637407%_ _%hd3480334930%_)
                                    (_%__kont3741037411%_))))
                            (_%__kont3741037411%_))
                        (_%__kont3741037411%_))
                    (if (gx#stx-datum? _%hd3479634960%_)
                        (let ((_%e3481034853%_ (gx#stx-e _%hd3479634960%_)))
                          (if (equal? _%e3481034853%_ '::)
                              (if (gx#stx-pair? _%tl3479734963%_)
                                  (let ((_%e3481134857%_
                                         (gx#syntax-e _%tl3479734963%_)))
                                    (let ((_%tl3481334864%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3481134857%_)))
                                          (_%hd3481234861%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3481134857%_))))
                                      (if (gx#stx-pair? _%tl3481334864%_)
                                          (let ((_%e3481434867%_
                                                 (gx#syntax-e
                                                  _%tl3481334864%_)))
                                            (let ((_%tl3481634874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3481434867%_)))
                                                  (_%hd3481534871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3481434867%_))))
                                              (if (gx#identifier?
                                                   _%hd3481534871%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39693_|
                                                       _%hd3481534871%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3481634874%_)
                                                          (let ((_%e3481734877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3481634874%_)))
                    (let ((_%tl3481934884%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3481734877%_)))
                          (_%hd3481834881%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3481734877%_))))
                      (if (gx#stx-null? _%tl3481934884%_)
                          (_%__kont3740837409%_
                           _%hd3481834881%_
                           _%hd3481234861%_)
                          (_%__kont3741037411%_))))
                  (_%__kont3741037411%_))
              (_%__kont3741037411%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3741037411%_))))
                                          (_%__kont3741037411%_))))
                                  (_%__kont3741037411%_))
                              (_%__kont3741037411%_)))
                        (_%__kont3741037411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3741037411%_)))))
                                     (if (gx#stx-null? _%__stx3739937400%_)
                                         (_%__kont3740237403%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3478834977%_))))))))
                            (_%__kont3748437485%_
                             (lambda (_%g3371134678%_)
                               (let* ((_%__stx3738137382%_ _%g3371134678%_)
                                      (_%g3469034701%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3738137382%_))))
                                 (let ((_%__kont3738437385%_
                                        (lambda (_%g3469234729%_)
                                          (_%parse133316%_ _%g3469234729%_)))
                                       (_%__kont3738637387%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133316%_
                                                 _%g3371134678%_)))))
                                   (if (gx#stx-pair? _%__stx3738137382%_)
                                       (let ((_%e3469334719%_
                                              (gx#syntax-e
                                               _%__stx3738137382%_)))
                                         (let ((_%tl3469534726%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3469334719%_)))
                                               (_%hd3469434723%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3469334719%_))))
                                           (if (gx#stx-null? _%tl3469534726%_)
                                               (_%__kont3738437385%_
                                                _%hd3469434723%_)
                                               (_%__kont3738637387%_))))
                                       (_%__kont3738637387%_))))))
                            (_%__kont3748637487%_
                             (lambda (_%g3371534593%_)
                               (let* ((_%__stx3736337364%_ _%g3371534593%_)
                                      (_%g3460534616%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3736337364%_))))
                                 (let ((_%__kont3736637367%_
                                        (lambda (_%g3460734644%_)
                                          (_%parse133316%_ _%g3460734644%_)))
                                       (_%__kont3736837369%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133316%_
                                                 _%g3371534593%_)))))
                                   (if (gx#stx-pair? _%__stx3736337364%_)
                                       (let ((_%e3460834634%_
                                              (gx#syntax-e
                                               _%__stx3736337364%_)))
                                         (let ((_%tl3461034641%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3460834634%_)))
                                               (_%hd3460934638%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3460834634%_))))
                                           (if (gx#stx-null? _%tl3461034641%_)
                                               (_%__kont3736637367%_
                                                _%hd3460934638%_)
                                               (_%__kont3736837369%_))))
                                       (_%__kont3736837369%_))))))
                            (_%__kont3748837489%_
                             (lambda (_%g3371934563%_)
                               (cons 'not:
                                     (cons (_%parse133316%_ _%g3371934563%_)
                                           '()))))
                            (_%__kont3749037491%_
                             (lambda (_%g3372634519%_ _%g3372734521%_)
                               (cons 'cons:
                                     (cons (_%parse133316%_ _%g3372734521%_)
                                           (cons (_%parse133316%_
                                                  _%g3372634519%_)
                                                 '())))))
                            (_%__kont3749237493%_
                             (lambda (_%g3373734463%_
                                      _%g3373834465%_
                                      _%g3373934466%_)
                               (if (gx#stx-null? _%g3373734463%_)
                                   (cons 'cons:
                                         (cons (_%parse133316%_
                                                _%g3373934466%_)
                                               (cons (_%parse133316%_
                                                      _%g3373834465%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133316%_
                                                _%g3373934466%_)
                                               (cons (_%parse133316%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g3373834465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g3373734463%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3749437495%_
                             (lambda (_%g3374934415%_)
                               (_%parse-list33318%_ _%g3374934415%_)))
                            (_%__kont3749637497%_
                             (lambda (_%g3375334385%_)
                               (cons 'box:
                                     (cons (_%parse133316%_ _%g3375334385%_)
                                           '()))))
                            (_%__kont3749837499%_
                             (lambda (_%g3376034348%_)
                               (cons 'box:
                                     (cons (_%parse133316%_ _%g3376034348%_)
                                           '()))))
                            (_%__kont3750037501%_
                             (lambda (_%g3376234324%_)
                               (_%parse133316%_ _%g3376234324%_)))
                            (_%__kont3750237503%_
                             (lambda (_%g3376934286%_)
                               (cons 'values:
                                     (cons (_%parse-vector33319%_
                                            _%g3376934286%_)
                                           '()))))
                            (_%__kont3750437505%_
                             (lambda (_%g3377334258%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33319%_
                                            _%g3377334258%_)
                                           '()))))
                            (_%__kont3750637507%_
                             (lambda (_%g3377734219%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33319%_
                                            (foldr (lambda (_%g3423234235%_
                                                            _%g3423334238%_)
                                                     (cons _%g3423234235%_
                                                           _%g3423334238%_))
                                                   '()
                                                   _%g3377734219%_))
                                           '()))))
                            (_%__kont3751037511%_
                             (lambda (_%g3378834167%_ _%g3378934169%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g3378934169%_)
                                           (cons (_%parse-vector33319%_
                                                  _%g3378834167%_)
                                                 '())))))
                            (_%__kont3751237513%_
                             (lambda (_%g3379334137%_ _%g3379434139%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g3379434139%_)
                                           (cons (_%parse-class-body33321%_
                                                  _%g3379334137%_)
                                                 '())))))
                            (_%__kont3751437515%_
                             (lambda (_%g3379834097%_ _%g3379934099%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g3379934099%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g3379834097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3751637517%_
                             (lambda (_%g3380634057%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3380634057%_) '()))))
                            (_%__kont3751837519%_
                             (lambda (_%g3381334017%_)
                               (_%parse-qq33322%_ _%g3381334017%_)))
                            (_%__kont3752037521%_
                             (lambda (_%g3382033973%_ _%g3382133975%_)
                               (cons 'apply:
                                     (cons _%g3382133975%_
                                           (cons (_%parse133316%_
                                                  _%g3382033973%_)
                                                 '())))))
                            (_%__kont3752237523%_
                             (lambda (_%g3383133921%_)
                               (_%parse133316%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g3383133921%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33675%_)
                                  (let ((_%$e33932%_
                                         (gx#stx-source _%hd33675%_)))
                                    (if _%$e33932%_
                                        _%$e33932%_
                                        (gx#stx-source _%stx33312%_))))))))
                            (_%__kont3752437525%_
                             (lambda (_%g3383533895%_) (cons 'any: '())))
                            (_%__kont3752637527%_
                             (lambda (_%g3383633879%_)
                               (cons 'var: (cons _%g3383633879%_ '()))))
                            (_%__kont3752837529%_
                             (lambda (_%g3383733861%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g3383733861%_) '()))))
                            (_%__kont3753037531%_
                             (lambda () (_%parse-error33323%_ _%hd33675%_))))
                        (let* ((_%g3369933872%_
                                (lambda ()
                                  (let ((_%g3383733861%_ _%__stx3747937480%_))
                                    (if (gx#stx-datum? _%g3383733861%_)
                                        (_%__kont3752837529%_ _%g3383733861%_)
                                        (_%__kont3753037531%_)))))
                               (_%g3369833888%_
                                (lambda ()
                                  (let ((_%g3383633879%_ _%__stx3747937480%_))
                                    (if (and (gx#identifier? _%g3383633879%_)
                                             (not (gx#ellipsis?
                                                   _%g3383633879%_)))
                                        (_%__kont3752637527%_ _%g3383633879%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3369933872%_))))))
                               (_%g3369733904%_
                                (lambda ()
                                  (let ((_%g3383533895%_ _%__stx3747937480%_))
                                    (if (gx#underscore? _%g3383533895%_)
                                        (_%__kont3752437525%_ _%g3383533895%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3369833888%_))))))
                               (_%__match3780637807%_
                                (lambda (_%e3383233911%_
                                         _%hd3383333915%_
                                         _%tl3383433918%_)
                                  (let ((_%g3383133921%_ _%hd3383333915%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g3383133921%_)
                                        (_%__kont3752237523%_ _%g3383133921%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3369733904%_))))))
                               (_%__match3774037741%_
                                (lambda (_%e3380034077%_
                                         _%hd3380134081%_
                                         _%tl3380234084%_
                                         _%e3380334087%_
                                         _%hd3380434091%_
                                         _%tl3380534094%_)
                                  (let ((_%g3379834097%_ _%hd3380434091%_)
                                        (_%g3379934099%_ _%hd3380134081%_))
                                    (if (and (gx#identifier? _%g3379934099%_)
                                             (or (gx#free-identifier=?
                                                  _%g3379934099%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g3379934099%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g3379934099%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3751437515%_
                                         _%g3379834097%_
                                         _%g3379934099%_)
                                        (if (gx#identifier? _%hd3380134081%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39694_|
                                                 _%hd3380134081%_)
                                                (_%__kont3751637517%_
                                                 _%hd3380434091%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39695_|
                                                     _%hd3380134081%_)
                                                    (_%__kont3751837519%_
                                                     _%hd3380434091%_)
                                                    (_%__match3780637807%_
                                                     _%e3380034077%_
                                                     _%hd3380134081%_
                                                     _%tl3380234084%_)))
                                            (_%__match3780637807%_
                                             _%e3380034077%_
                                             _%hd3380134081%_
                                             _%tl3380234084%_))))))
                               (_%__match3772637727%_
                                (lambda (_%e3379534127%_
                                         _%hd3379634131%_
                                         _%tl3379734134%_)
                                  (let ((_%g3379334137%_ _%tl3379734134%_)
                                        (_%g3379434139%_ _%hd3379634131%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g3379434139%_))
                                        (_%__kont3751237513%_
                                         _%g3379334137%_
                                         _%g3379434139%_)
                                        (if (gx#stx-pair? _%tl3379734134%_)
                                            (let ((_%e3380334087%_
                                                   (gx#syntax-e
                                                    _%tl3379734134%_)))
                                              (let ((_%tl3380534094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3380334087%_)))
                                                    (_%hd3380434091%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3380334087%_))))
                                                (if (gx#stx-null?
                                                     _%tl3380534094%_)
                                                    (_%__match3774037741%_
                                                     _%e3379534127%_
                                                     _%hd3379634131%_
                                                     _%tl3379734134%_
                                                     _%e3380334087%_
                                                     _%hd3380434091%_
                                                     _%tl3380534094%_)
                                                    (if (gx#identifier?
                                                         _%hd3379634131%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39694_|
                                                             _%hd3379634131%_)
                                                            (_%__match3780637807%_
                                                             _%e3379534127%_
                                                             _%hd3379634131%_
                                                             _%tl3379734134%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39695_|
                         _%hd3379634131%_)
                        (_%__match3780637807%_
                         _%e3379534127%_
                         _%hd3379634131%_
                         _%tl3379734134%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39696_|
                             _%hd3379634131%_)
                            (if (gx#stx-pair? _%tl3380534094%_)
                                (let ((_%e3382833963%_
                                       (gx#syntax-e _%tl3380534094%_)))
                                  (let ((_%tl3383033970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3382833963%_)))
                                        (_%hd3382933967%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3382833963%_))))
                                    (if (gx#stx-null? _%tl3383033970%_)
                                        (_%__kont3752037521%_
                                         _%hd3382933967%_
                                         _%hd3380434091%_)
                                        (_%__match3780637807%_
                                         _%e3379534127%_
                                         _%hd3379634131%_
                                         _%tl3379734134%_))))
                                (_%__match3780637807%_
                                 _%e3379534127%_
                                 _%hd3379634131%_
                                 _%tl3379734134%_))
                            (_%__match3780637807%_
                             _%e3379534127%_
                             _%hd3379634131%_
                             _%tl3379734134%_))))
                (_%__match3780637807%_
                 _%e3379534127%_
                 _%hd3379634131%_
                 _%tl3379734134%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3780637807%_
                                             _%e3379534127%_
                                             _%hd3379634131%_
                                             _%tl3379734134%_))))))
                               (_%__match3772037721%_
                                (lambda (_%e3379034157%_
                                         _%hd3379134161%_
                                         _%tl3379234164%_)
                                  (let ((_%g3378834167%_ _%tl3379234164%_)
                                        (_%g3378934169%_ _%hd3379134161%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g3378934169%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3751037511%_
                                         _%g3378834167%_
                                         _%g3378934169%_)
                                        (_%__match3772637727%_
                                         _%e3379034157%_
                                         _%hd3379134161%_
                                         _%tl3379234164%_)))))
                               (_%__match3771437715%_
                                (lambda (_%e3377834187%_
                                         _%__splice3750837509%_
                                         _%target3377934191%_
                                         _%tl3378134194%_)
                                  (letrec ((_%loop3378234197%_
                                            (lambda (_%hd3378034201%_
                                                     _%body3378634204%_)
                                              (if (gx#stx-pair?
                                                   _%hd3378034201%_)
                                                  (let ((_%e3378334206%_
                                                         (gx#syntax-e
                                                          _%hd3378034201%_)))
                                                    (let ((_%lp-tl3378534213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3378334206%_)))
                                                          (_%lp-hd3378434210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3378334206%_))))
                                                      (_%loop3378234197%_
                                                       _%lp-tl3378534213%_
                                                       (cons _%lp-hd3378434210%_
                                                             _%body3378634204%_))))
                                                  (let ((_%body3378734216%_
                                                         (reverse _%body3378634204%_)))
                                                    (_%__kont3750637507%_
                                                     _%body3378734216%_))))))
                                    (_%loop3378234197%_
                                     _%target3377934191%_
                                     '()))))
                               (_%g3368934241%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3747937480%_)
                                      (let ((_%e3377834187%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3747937480%_))))
                                        (if (gx#stx-pair/null? _%e3377834187%_)
                                            (let ((_%__splice3750837509%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3377834187%_
                                                    '0)))
                                              (let ((_%tl3378134194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3750837509%_
                                                        '1)))
                                                    (_%target3377934191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3750837509%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3378134194%_)
                                                    (_%__match3771437715%_
                                                     _%e3377834187%_
                                                     _%__splice3750837509%_
                                                     _%target3377934191%_
                                                     _%tl3378134194%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3369733904%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3369733904%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3369733904%_)))))
                               (_%g3368534358%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3747937480%_)
                                      (let ((_%e3376134344%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3747937480%_))))
                                        (_%__kont3749837499%_ _%e3376134344%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3368934241%_)))))
                               (_%__match3756837569%_
                                (lambda (_%e3371634583%_
                                         _%hd3371734587%_
                                         _%tl3371834590%_)
                                  (let ((_%g3371534593%_ _%tl3371834590%_))
                                    (if (gx#stx-list? _%g3371534593%_)
                                        (_%__kont3748637487%_ _%g3371534593%_)
                                        (_%__match3772037721%_
                                         _%e3371634583%_
                                         _%hd3371734587%_
                                         _%tl3371834590%_)))))
                               (_%__match3755837559%_
                                (lambda (_%e3371234668%_
                                         _%hd3371334672%_
                                         _%tl3371434675%_)
                                  (let ((_%g3371134678%_ _%tl3371434675%_))
                                    (if (gx#stx-list? _%g3371134678%_)
                                        (_%__kont3748437485%_ _%g3371134678%_)
                                        (_%__match3772037721%_
                                         _%e3371234668%_
                                         _%hd3371334672%_
                                         _%tl3371434675%_))))))
                          (if (gx#stx-pair? _%__stx3747937480%_)
                              (let ((_%e3370534753%_
                                     (gx#syntax-e _%__stx3747937480%_)))
                                (let ((_%tl3370734760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3370534753%_)))
                                      (_%hd3370634757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3370534753%_))))
                                  (if (gx#identifier? _%hd3370634757%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39697_|
                                           _%hd3370634757%_)
                                          (if (gx#stx-pair? _%tl3370734760%_)
                                              (let ((_%e3370834763%_
                                                     (gx#syntax-e
                                                      _%tl3370734760%_)))
                                                (let ((_%tl3371034770%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3370834763%_)))
                                                      (_%hd3370934767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3370834763%_))))
                                                  (_%__kont3748237483%_
                                                   _%tl3371034770%_
                                                   _%hd3370934767%_)))
                                              (_%__match3772037721%_
                                               _%e3370534753%_
                                               _%hd3370634757%_
                                               _%tl3370734760%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39698_|
                                               _%hd3370634757%_)
                                              (_%__match3755837559%_
                                               _%e3370534753%_
                                               _%hd3370634757%_
                                               _%tl3370734760%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39699_|
                                                   _%hd3370634757%_)
                                                  (_%__match3756837569%_
                                                   _%e3370534753%_
                                                   _%hd3370634757%_
                                                   _%tl3370734760%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39700_|
                                                       _%hd3370634757%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3370734760%_)
                                                          (let ((_%e3372334553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3370734760%_)))
                    (let ((_%tl3372534560%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3372334553%_)))
                          (_%hd3372434557%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3372334553%_))))
                      (if (gx#stx-null? _%tl3372534560%_)
                          (_%__kont3748837489%_ _%hd3372434557%_)
                          (_%__match3772037721%_
                           _%e3370534753%_
                           _%hd3370634757%_
                           _%tl3370734760%_))))
                  (_%__match3772037721%_
                   _%e3370534753%_
                   _%hd3370634757%_
                   _%tl3370734760%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39701_|
                   _%hd3370634757%_)
                  (if (gx#stx-pair? _%tl3370734760%_)
                      (let ((_%e3373134499%_ (gx#syntax-e _%tl3370734760%_)))
                        (let ((_%tl3373334506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3373134499%_)))
                              (_%hd3373234503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3373134499%_))))
                          (if (gx#stx-pair? _%tl3373334506%_)
                              (let ((_%e3373434509%_
                                     (gx#syntax-e _%tl3373334506%_)))
                                (let ((_%tl3373634516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3373434509%_)))
                                      (_%hd3373534513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3373434509%_))))
                                  (if (gx#stx-null? _%tl3373634516%_)
                                      (_%__kont3749037491%_
                                       _%hd3373534513%_
                                       _%hd3373234503%_)
                                      (_%__match3772037721%_
                                       _%e3370534753%_
                                       _%hd3370634757%_
                                       _%tl3370734760%_))))
                              (_%__match3772037721%_
                               _%e3370534753%_
                               _%hd3370634757%_
                               _%tl3370734760%_))))
                      (_%__match3772037721%_
                       _%e3370534753%_
                       _%hd3370634757%_
                       _%tl3370734760%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39702_|
                       _%hd3370634757%_)
                      (if (gx#stx-pair? _%tl3370734760%_)
                          (let ((_%e3374334443%_
                                 (gx#syntax-e _%tl3370734760%_)))
                            (let ((_%tl3374534450%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3374334443%_)))
                                  (_%hd3374434447%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3374334443%_))))
                              (if (gx#stx-pair? _%tl3374534450%_)
                                  (let ((_%e3374634453%_
                                         (gx#syntax-e _%tl3374534450%_)))
                                    (let ((_%tl3374834460%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3374634453%_)))
                                          (_%hd3374734457%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3374634453%_))))
                                      (_%__kont3749237493%_
                                       _%tl3374834460%_
                                       _%hd3374734457%_
                                       _%hd3374434447%_)))
                                  (_%__match3772037721%_
                                   _%e3370534753%_
                                   _%hd3370634757%_
                                   _%tl3370734760%_))))
                          (_%__match3772037721%_
                           _%e3370534753%_
                           _%hd3370634757%_
                           _%tl3370734760%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39703_|
                           _%hd3370634757%_)
                          (_%__kont3749437495%_ _%tl3370734760%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39704_|
                               _%hd3370634757%_)
                              (if (gx#stx-pair? _%tl3370734760%_)
                                  (let ((_%e3375734375%_
                                         (gx#syntax-e _%tl3370734760%_)))
                                    (let ((_%tl3375934382%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3375734375%_)))
                                          (_%hd3375834379%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3375734375%_))))
                                      (if (gx#stx-null? _%tl3375934382%_)
                                          (_%__kont3749637497%_
                                           _%hd3375834379%_)
                                          (_%__match3772037721%_
                                           _%e3370534753%_
                                           _%hd3370634757%_
                                           _%tl3370734760%_))))
                                  (_%__match3772037721%_
                                   _%e3370534753%_
                                   _%hd3370634757%_
                                   _%tl3370734760%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39705_|
                                   _%hd3370634757%_)
                                  (if (gx#stx-pair? _%tl3370734760%_)
                                      (let ((_%e3376634314%_
                                             (gx#syntax-e _%tl3370734760%_)))
                                        (let ((_%tl3376834321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3376634314%_)))
                                              (_%hd3376734318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3376634314%_))))
                                          (if (gx#stx-null? _%tl3376834321%_)
                                              (_%__kont3750037501%_
                                               _%hd3376734318%_)
                                              (_%__kont3750237503%_
                                               _%tl3370734760%_))))
                                      (_%__kont3750237503%_ _%tl3370734760%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39706_|
                                       _%hd3370634757%_)
                                      (_%__kont3750437505%_ _%tl3370734760%_)
                                      (_%__match3772037721%_
                                       _%e3370534753%_
                                       _%hd3370634757%_
                                       _%tl3370734760%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3772037721%_
                                       _%e3370534753%_
                                       _%hd3370634757%_
                                       _%tl3370734760%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3368534358%_))))))))
                 (_%parse-list33318%_
                  (lambda (_%body33498%_)
                    (let* ((_%__stx3780937810%_ _%body33498%_)
                           (_%g3350433533%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3780937810%_))))
                      (let ((_%__kont3781237813%_
                             (lambda (_%g3350633657%_)
                               (_%parse133316%_ _%g3350633657%_)))
                            (_%__kont3781437815%_
                             (lambda (_%g3351433609%_
                                      _%g3351533611%_
                                      _%g3351633612%_)
                               (cons 'splice:
                                     (cons (_%parse133316%_ _%g3351633612%_)
                                           (cons (_%parse-list33318%_
                                                  _%g3351433609%_)
                                                 '())))))
                            (_%__kont3781637817%_
                             (lambda (_%g3352333567%_ _%g3352433569%_)
                               (cons 'cons:
                                     (cons (_%parse133316%_ _%g3352433569%_)
                                           (cons (_%parse-list33318%_
                                                  _%g3352333567%_)
                                                 '())))))
                            (_%__kont3781837819%_
                             (lambda ()
                               (if (gx#stx-null? _%body33498%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33498%_)
                                       (_%parse-error33323%_ _%body33498%_)
                                       (_%parse133316%_ _%body33498%_))))))
                        (let* ((_%__match3785837859%_
                                (lambda (_%e3352533557%_
                                         _%hd3352633561%_
                                         _%tl3352733564%_)
                                  (let ((_%g3352333567%_ _%tl3352733564%_)
                                        (_%g3352433569%_ _%hd3352633561%_))
                                    (if (gx#ellipsis? _%g3352433569%_)
                                        (_%__kont3781837819%_)
                                        (_%__kont3781637817%_
                                         _%g3352333567%_
                                         _%g3352433569%_)))))
                               (_%__match3785237853%_
                                (lambda (_%e3351733589%_
                                         _%hd3351833593%_
                                         _%tl3351933596%_
                                         _%e3352033599%_
                                         _%hd3352133603%_
                                         _%tl3352233606%_)
                                  (let ((_%g3351433609%_ _%tl3352233606%_)
                                        (_%g3351533611%_ _%hd3352133603%_)
                                        (_%g3351633612%_ _%hd3351833593%_))
                                    (if (gx#ellipsis? _%g3351533611%_)
                                        (_%__kont3781437815%_
                                         _%g3351433609%_
                                         _%g3351533611%_
                                         _%g3351633612%_)
                                        (_%__match3785837859%_
                                         _%e3351733589%_
                                         _%hd3351833593%_
                                         _%tl3351933596%_))))))
                          (if (gx#stx-pair? _%__stx3780937810%_)
                              (let ((_%e3350733633%_
                                     (gx#syntax-e _%__stx3780937810%_)))
                                (let ((_%tl3350933640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3350733633%_)))
                                      (_%hd3350833637%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3350733633%_))))
                                  (if (gx#stx-datum? _%hd3350833637%_)
                                      (let ((_%e3351033643%_
                                             (gx#stx-e _%hd3350833637%_)))
                                        (if (equal? _%e3351033643%_ '::)
                                            (if (gx#stx-pair? _%tl3350933640%_)
                                                (let ((_%e3351133647%_
                                                       (gx#syntax-e
                                                        _%tl3350933640%_)))
                                                  (let ((_%tl3351333654%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3351133647%_)))
                                                        (_%hd3351233651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3351133647%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3351333654%_)
                                                        (_%__kont3781237813%_
                                                         _%hd3351233651%_)
                                                        (_%__match3785237853%_
                                                         _%e3350733633%_
                                                         _%hd3350833637%_
                                                         _%tl3350933640%_
                                                         _%e3351133647%_
                                                         _%hd3351233651%_
                                                         _%tl3351333654%_))))
                                                (_%__match3785837859%_
                                                 _%e3350733633%_
                                                 _%hd3350833637%_
                                                 _%tl3350933640%_))
                                            (if (gx#stx-pair? _%tl3350933640%_)
                                                (let ((_%e3352033599%_
                                                       (gx#syntax-e
                                                        _%tl3350933640%_)))
                                                  (let ((_%tl3352233606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3352033599%_)))
                                                        (_%hd3352133603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3352033599%_))))
                                                    (_%__match3785237853%_
                                                     _%e3350733633%_
                                                     _%hd3350833637%_
                                                     _%tl3350933640%_
                                                     _%e3352033599%_
                                                     _%hd3352133603%_
                                                     _%tl3352233606%_)))
                                                (_%__match3785837859%_
                                                 _%e3350733633%_
                                                 _%hd3350833637%_
                                                 _%tl3350933640%_))))
                                      (if (gx#stx-pair? _%tl3350933640%_)
                                          (let ((_%e3352033599%_
                                                 (gx#syntax-e
                                                  _%tl3350933640%_)))
                                            (let ((_%tl3352233606%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3352033599%_)))
                                                  (_%hd3352133603%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3352033599%_))))
                                              (_%__match3785237853%_
                                               _%e3350733633%_
                                               _%hd3350833637%_
                                               _%tl3350933640%_
                                               _%e3352033599%_
                                               _%hd3352133603%_
                                               _%tl3352233606%_)))
                                          (_%__match3785837859%_
                                           _%e3350733633%_
                                           _%hd3350833637%_
                                           _%tl3350933640%_)))))
                              (_%__kont3781837819%_)))))))
                 (_%parse-vector33319%_
                  (lambda (_%body33495%_)
                    (if (_%simple-vector?33320%_ _%body33495%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133316%_ _%body33495%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33318%_ _%body33495%_)
                                    '())))))
                 (_%simple-vector?33320%_
                  (lambda (_%body33432%_)
                    (let* ((_%__stx3786137862%_ _%body33432%_)
                           (_%g3343633448%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3786137862%_))))
                      (let ((_%__kont3786437865%_
                             (lambda (_%g3343833476%_ _%g3343933478%_)
                               (if (gx#ellipsis? _%g3343933478%_)
                                   '#f
                                   (_%simple-vector?33320%_ _%g3343833476%_))))
                            (_%__kont3786637867%_
                             (lambda () (gx#stx-null? _%body33432%_))))
                        (if (gx#stx-pair? _%__stx3786137862%_)
                            (let ((_%e3344033466%_
                                   (gx#syntax-e _%__stx3786137862%_)))
                              (let ((_%tl3344233473%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3344033466%_)))
                                    (_%hd3344133470%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3344033466%_))))
                                (_%__kont3786437865%_
                                 _%tl3344233473%_
                                 _%hd3344133470%_)))
                            (_%__kont3786637867%_))))))
                 (_%parse-class-body33321%_
                  (lambda (_%body33341%_)
                    (let _%recur33344%_ ((_%rest33347%_ _%body33341%_))
                      (let* ((_%__stx3787737878%_ _%rest33347%_)
                             (_%g3335133367%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3787737878%_))))
                        (let ((_%__kont3788037881%_
                               (lambda (_%g3335333405%_
                                        _%g3335433407%_
                                        _%g3335533408%_)
                                 (cons _%g3335533408%_
                                       (cons (_%parse133316%_ _%g3335433407%_)
                                             (_%recur33344%_
                                              _%g3335333405%_)))))
                              (_%__kont3788237883%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33347%_)
                                     '()
                                     (_%parse-error33323%_ _%rest33347%_)))))
                          (let ((_%__match3789637897%_
                                 (lambda (_%e3335633385%_
                                          _%hd3335733389%_
                                          _%tl3335833392%_
                                          _%e3335933395%_
                                          _%hd3336033399%_
                                          _%tl3336133402%_)
                                   (let ((_%g3335333405%_ _%tl3336133402%_)
                                         (_%g3335433407%_ _%hd3336033399%_)
                                         (_%g3335533408%_ _%hd3335733389%_))
                                     (if (gx#stx-keyword? _%g3335533408%_)
                                         (_%__kont3788037881%_
                                          _%g3335333405%_
                                          _%g3335433407%_
                                          _%g3335533408%_)
                                         (_%__kont3788237883%_))))))
                            (if (gx#stx-pair? _%__stx3787737878%_)
                                (let ((_%e3335633385%_
                                       (gx#syntax-e _%__stx3787737878%_)))
                                  (let ((_%tl3335833392%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3335633385%_)))
                                        (_%hd3335733389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3335633385%_))))
                                    (if (gx#stx-pair? _%tl3335833392%_)
                                        (let ((_%e3335933395%_
                                               (gx#syntax-e _%tl3335833392%_)))
                                          (let ((_%tl3336133402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3335933395%_)))
                                                (_%hd3336033399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3335933395%_))))
                                            (_%__match3789637897%_
                                             _%e3335633385%_
                                             _%hd3335733389%_
                                             _%tl3335833392%_
                                             _%e3335933395%_
                                             _%hd3336033399%_
                                             _%tl3336133402%_)))
                                        (_%__kont3788237883%_))))
                                (_%__kont3788237883%_))))))))
                 (_%parse-qq33322%_
                  (lambda (_%hd33328%_)
                    (let ((_%g3333033337%_
                           (lambda (_%g3333133333%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3333133333%_))))
                      (_%g3333033337%_ _%hd33328%_))))
                 (_%parse-error33323%_
                  (lambda (_%hd33325%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33314%_
                               (cons _%match-stx33314%_
                                     (cons _%stx33312%_
                                           (cons _%hd33325%_ '())))
                               (cons _%stx33312%_ (cons _%hd33325%_ '())))))))
          (_%parse133316%_ _%stx33312%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35000%_)
        (let ((_%match-stx35003%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35000%_
           _%match-stx35003%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39707_
        (let ((_g39708_ (let () (declare (not safe)) (##length _g39707_))))
          (cond ((let () (declare (not safe)) (##fx= _g39708_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39707_))
                ((let () (declare (not safe)) (##fx= _g39708_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39707_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33297%_)
        (let ((__tmp39709
               (lambda (_%E33300%_)
                 (with-exception-handler
                  (let ((_%E!33303%_ (current-exception-handler)))
                    (lambda (_%e33306%_)
                      (if (syntax-error? _%e33306%_)
                          (_%E33300%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33303%_ _%e33306%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33297%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39709))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32032%_)
        (letrec ((_%loop32035%_
                  (lambda (_%ptree32322%_ _%vars32324%_ _%K32325%_)
                    (let* ((_%__stx3799537996%_ _%ptree32322%_)
                           (_%g3233832448%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3799537996%_))))
                      (let ((_%__kont3799837999%_
                             (lambda (_%g3234033078%_)
                               (let* ((_%__stx3791537916%_ _%g3234033078%_)
                                      (_%g3309533129%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3791537916%_))))
                                 (let ((_%__kont3791837919%_
                                        (lambda (_%g3309733278%_)
                                          (_%loop32035%_
                                           _%g3309733278%_
                                           _%vars32324%_
                                           _%K32325%_)))
                                       (_%__kont3792037921%_
                                        (lambda (_%g3310133247%_)
                                          (_%loop32035%_
                                           _%g3310133247%_
                                           _%vars32324%_
                                           _%K32325%_)))
                                       (_%__kont3792237923%_
                                        (lambda (_%g3310933195%_)
                                          (_%loop32035%_
                                           _%g3310933195%_
                                           _%vars32324%_
                                           _%K32325%_)))
                                       (_%__kont3792437925%_
                                        (lambda ()
                                          (_%K32325%_ _%vars32324%_))))
                                   (if (gx#stx-pair? _%__stx3791537916%_)
                                       (let ((_%e3309833268%_
                                              (gx#syntax-e
                                               _%__stx3791537916%_)))
                                         (let ((_%tl3310033275%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3309833268%_)))
                                               (_%hd3309933272%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3309833268%_))))
                                           (if (gx#stx-null? _%tl3310033275%_)
                                               (_%__kont3791837919%_
                                                _%hd3309933272%_)
                                               (if (gx#stx-datum?
                                                    _%hd3309933272%_)
                                                   (let ((_%e3310533233%_
                                                          (gx#stx-e
                                                           _%hd3309933272%_)))
                                                     (if (equal? _%e3310533233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3310033275%_)
                     (let ((_%e3310633237%_ (gx#syntax-e _%tl3310033275%_)))
                       (let ((_%tl3310833244%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3310633237%_)))
                             (_%hd3310733241%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3310633237%_))))
                         (if (gx#stx-null? _%tl3310833244%_)
                             (_%__kont3792037921%_ _%hd3310733241%_)
                             (_%__kont3792437925%_))))
                     (_%__kont3792437925%_))
                 (if (equal? _%e3310533233%_ '::)
                     (if (gx#stx-pair? _%tl3310033275%_)
                         (let ((_%e3311433161%_
                                (gx#syntax-e _%tl3310033275%_)))
                           (let ((_%tl3311633168%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3311433161%_)))
                                 (_%hd3311533165%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3311433161%_))))
                             (if (gx#stx-pair? _%tl3311633168%_)
                                 (let ((_%e3311733171%_
                                        (gx#syntax-e _%tl3311633168%_)))
                                   (let ((_%tl3311933178%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3311733171%_)))
                                         (_%hd3311833175%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3311733171%_))))
                                     (if (gx#stx-datum? _%hd3311833175%_)
                                         (let ((_%e3312033181%_
                                                (gx#stx-e _%hd3311833175%_)))
                                           (if (equal? _%e3312033181%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3311933178%_)
                                                   (let ((_%e3312133185%_
                                                          (gx#syntax-e
                                                           _%tl3311933178%_)))
                                                     (let ((_%tl3312333192%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3312133185%_)))
                                                           (_%hd3312233189%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3312133185%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3312333192%_)
                                                           (_%__kont3792237923%_
                                                            _%hd3312233189%_)
                                                           (_%__kont3792437925%_))))
                                                   (_%__kont3792437925%_))
                                               (_%__kont3792437925%_)))
                                         (_%__kont3792437925%_))))
                                 (_%__kont3792437925%_))))
                         (_%__kont3792437925%_))
                     (_%__kont3792437925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3792437925%_)))))
                                       (_%__kont3792437925%_))))))
                            (_%__kont3800038001%_
                             (lambda (_%g3234832965%_ _%g3234932967%_)
                               (let* ((_%__stx3789937900%_ _%g3234832965%_)
                                      (_%g3298332995%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3789937900%_))))
                                 (let ((_%__kont3790237903%_
                                        (lambda (_%g3298533023%_
                                                 _%g3298633025%_)
                                          (_%loop32035%_
                                           _%g3298633025%_
                                           _%vars32324%_
                                           (lambda (_%g3303733039%_)
                                             (_%loop32035%_
                                              (cons _%g3234932967%_
                                                    _%g3298533023%_)
                                              _%g3303733039%_
                                              _%K32325%_)))))
                                       (_%__kont3790437905%_
                                        (lambda ()
                                          (_%K32325%_ _%vars32324%_))))
                                   (if (gx#stx-pair? _%__stx3789937900%_)
                                       (let ((_%e3298733013%_
                                              (gx#syntax-e
                                               _%__stx3789937900%_)))
                                         (let ((_%tl3298933020%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3298733013%_)))
                                               (_%hd3298833017%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3298733013%_))))
                                           (_%__kont3790237903%_
                                            _%tl3298933020%_
                                            _%hd3298833017%_)))
                                       (_%__kont3790437905%_))))))
                            (_%__kont3800238003%_
                             (lambda (_%g3235332934%_)
                               (_%loop32035%_
                                _%g3235332934%_
                                _%vars32324%_
                                _%K32325%_)))
                            (_%__kont3800438005%_
                             (lambda (_%g3236132880%_ _%g3236232882%_)
                               (_%loop32035%_
                                _%g3236232882%_
                                _%vars32324%_
                                (lambda (_%g3289732899%_)
                                  (_%loop32035%_
                                   _%g3236132880%_
                                   _%g3289732899%_
                                   _%K32325%_)))))
                            (_%__kont3800638007%_
                             (lambda (_%g3237332816%_ _%g3237432818%_)
                               (_%loop32035%_
                                _%g3237432818%_
                                _%vars32324%_
                                (lambda (_%g3283332835%_)
                                  (_%loop32035%_
                                   _%g3237332816%_
                                   _%g3283332835%_
                                   _%K32325%_)))))
                            (_%__kont3800838009%_
                             (lambda (_%g3238532761%_)
                               (_%loop32035%_
                                _%g3238532761%_
                                _%vars32324%_
                                _%K32325%_)))
                            (_%__kont3801038011%_
                             (lambda (_%g3239332711%_ _%g3239432713%_)
                               (_%loop-vector32037%_
                                _%g3239332711%_
                                _%vars32324%_
                                _%K32325%_)))
                            (_%__kont3801238013%_
                             (lambda (_%g3240132668%_)
                               (_%loop-vector32037%_
                                _%g3240132668%_
                                _%vars32324%_
                                _%K32325%_)))
                            (_%__kont3801438015%_
                             (lambda (_%g3241232611%_)
                               (_%loop-class-list32039%_
                                _%g3241232611%_
                                _%vars32324%_
                                _%K32325%_)))
                            (_%__kont3801638017%_
                             (lambda (_%g3242332552%_ _%g3242432554%_)
                               (_%loop32035%_
                                _%g3242332552%_
                                _%vars32324%_
                                _%K32325%_)))
                            (_%__kont3801838019%_
                             (lambda (_%g3243532490%_)
                               (if (find (lambda (_%g3250532507%_)
                                           (gx#bound-identifier=?
                                            _%g3250532507%_
                                            _%g3243532490%_))
                                         _%vars32324%_)
                                   (_%K32325%_ _%vars32324%_)
                                   (_%K32325%_
                                    (cons _%g3243532490%_ _%vars32324%_)))))
                            (_%__kont3802038021%_
                             (lambda () (_%K32325%_ _%vars32324%_))))
                        (let* ((_%__match3815238153%_
                                (lambda (_%e3239532691%_
                                         _%hd3239632695%_
                                         _%tl3239732698%_
                                         _%e3239832701%_
                                         _%hd3239932705%_
                                         _%tl3240032708%_)
                                  (let ((_%g3239332711%_ _%hd3239932705%_)
                                        (_%g3239432713%_ _%hd3239632695%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g3239432713%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g3239432713%_))
                                        (_%__kont3801038011%_
                                         _%g3239332711%_
                                         _%g3239432713%_)
                                        (if (gx#stx-datum? _%hd3239632695%_)
                                            (let ((_%e3240532644%_
                                                   (gx#stx-e
                                                    _%hd3239632695%_)))
                                              (if (equal? _%e3240532644%_
                                                          'struct:)
                                                  (_%__kont3802038021%_)
                                                  (if (equal? _%e3240532644%_
                                                              'class:)
                                                      (_%__kont3802038021%_)
                                                      (if (equal? _%e3240532644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3802038021%_)
                  (if (equal? _%e3240532644%_ 'var:)
                      (_%__kont3801838019%_ _%hd3239932705%_)
                      (_%__kont3802038021%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3802038021%_))))))
                               (_%__match3804638047%_
                                (lambda (_%e3235032955%_
                                         _%hd3235132959%_
                                         _%tl3235232962%_)
                                  (let ((_%g3234832965%_ _%tl3235232962%_)
                                        (_%g3234932967%_ _%hd3235132959%_))
                                    (if (or (gx#stx-eq? 'and: _%g3234932967%_)
                                            (gx#stx-eq? 'or: _%g3234932967%_))
                                        (_%__kont3800038001%_
                                         _%g3234832965%_
                                         _%g3234932967%_)
                                        (if (gx#stx-datum? _%hd3235132959%_)
                                            (let ((_%e3235732920%_
                                                   (gx#stx-e
                                                    _%hd3235132959%_)))
                                              (if (equal? _%e3235732920%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3235232962%_)
                                                      (let ((_%e3235832924%_
                                                             (gx#syntax-e
                                                              _%tl3235232962%_)))
                                                        (let ((_%tl3236032931%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3235832924%_)))
                      (_%hd3235932928%_
                       (let () (declare (not safe)) (##car _%e3235832924%_))))
                  (if (gx#stx-null? _%tl3236032931%_)
                      (_%__kont3800238003%_ _%hd3235932928%_)
                      (_%__kont3802038021%_))))
              (_%__kont3802038021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3235732920%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3235232962%_)
                                                          (let ((_%e3236732860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3235232962%_)))
                    (let ((_%tl3236932867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3236732860%_)))
                          (_%hd3236832864%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3236732860%_))))
                      (if (gx#stx-pair? _%tl3236932867%_)
                          (let ((_%e3237032870%_
                                 (gx#syntax-e _%tl3236932867%_)))
                            (let ((_%tl3237232877%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3237032870%_)))
                                  (_%hd3237132874%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3237032870%_))))
                              (if (gx#stx-null? _%tl3237232877%_)
                                  (_%__kont3800438005%_
                                   _%hd3237132874%_
                                   _%hd3236832864%_)
                                  (_%__kont3802038021%_))))
                          (if (gx#stx-null? _%tl3236932867%_)
                              (_%__match3815238153%_
                               _%e3235032955%_
                               _%hd3235132959%_
                               _%tl3235232962%_
                               _%e3236732860%_
                               _%hd3236832864%_
                               _%tl3236932867%_)
                              (_%__kont3802038021%_)))))
                  (_%__kont3802038021%_))
              (if (equal? _%e3235732920%_ 'splice:)
                  (if (gx#stx-pair? _%tl3235232962%_)
                      (let ((_%e3237932796%_ (gx#syntax-e _%tl3235232962%_)))
                        (let ((_%tl3238132803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3237932796%_)))
                              (_%hd3238032800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3237932796%_))))
                          (if (gx#stx-pair? _%tl3238132803%_)
                              (let ((_%e3238232806%_
                                     (gx#syntax-e _%tl3238132803%_)))
                                (let ((_%tl3238432813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3238232806%_)))
                                      (_%hd3238332810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3238232806%_))))
                                  (if (gx#stx-null? _%tl3238432813%_)
                                      (_%__kont3800638007%_
                                       _%hd3238332810%_
                                       _%hd3238032800%_)
                                      (_%__kont3802038021%_))))
                              (if (gx#stx-null? _%tl3238132803%_)
                                  (_%__match3815238153%_
                                   _%e3235032955%_
                                   _%hd3235132959%_
                                   _%tl3235232962%_
                                   _%e3237932796%_
                                   _%hd3238032800%_
                                   _%tl3238132803%_)
                                  (_%__kont3802038021%_)))))
                      (_%__kont3802038021%_))
                  (if (equal? _%e3235732920%_ 'box:)
                      (if (gx#stx-pair? _%tl3235232962%_)
                          (let ((_%e3239032751%_
                                 (gx#syntax-e _%tl3235232962%_)))
                            (let ((_%tl3239232758%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3239032751%_)))
                                  (_%hd3239132755%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3239032751%_))))
                              (if (gx#stx-null? _%tl3239232758%_)
                                  (_%__kont3800838009%_ _%hd3239132755%_)
                                  (_%__kont3802038021%_))))
                          (_%__kont3802038021%_))
                      (if (gx#stx-pair? _%tl3235232962%_)
                          (let ((_%e3239832701%_
                                 (gx#syntax-e _%tl3235232962%_)))
                            (let ((_%tl3240032708%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3239832701%_)))
                                  (_%hd3239932705%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3239832701%_))))
                              (if (gx#stx-null? _%tl3240032708%_)
                                  (_%__match3815238153%_
                                   _%e3235032955%_
                                   _%hd3235132959%_
                                   _%tl3235232962%_
                                   _%e3239832701%_
                                   _%hd3239932705%_
                                   _%tl3240032708%_)
                                  (if (equal? _%e3235732920%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3240032708%_)
                                          (let ((_%e3240932658%_
                                                 (gx#syntax-e
                                                  _%tl3240032708%_)))
                                            (let ((_%tl3241132665%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3240932658%_)))
                                                  (_%hd3241032662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3240932658%_))))
                                              (if (gx#stx-null?
                                                   _%tl3241132665%_)
                                                  (_%__kont3801238013%_
                                                   _%hd3241032662%_)
                                                  (_%__kont3802038021%_))))
                                          (_%__kont3802038021%_))
                                      (if (equal? _%e3235732920%_ 'class:)
                                          (if (gx#stx-pair? _%tl3240032708%_)
                                              (let ((_%e3242032601%_
                                                     (gx#syntax-e
                                                      _%tl3240032708%_)))
                                                (let ((_%tl3242232608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3242032601%_)))
                                                      (_%hd3242132605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3242032601%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3242232608%_)
                                                      (_%__kont3801438015%_
                                                       _%hd3242132605%_)
                                                      (_%__kont3802038021%_))))
                                              (_%__kont3802038021%_))
                                          (if (equal? _%e3235732920%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3240032708%_)
                                                  (let ((_%e3243232542%_
                                                         (gx#syntax-e
                                                          _%tl3240032708%_)))
                                                    (let ((_%tl3243432549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3243232542%_)))
                                                          (_%hd3243332546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3243232542%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3243432549%_)
                                                          (_%__kont3801638017%_
                                                           _%hd3243332546%_
                                                           _%hd3239932705%_)
                                                          (_%__kont3802038021%_))))
                                                  (_%__kont3802038021%_))
                                              (_%__kont3802038021%_)))))))
                          (_%__kont3802038021%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3235232962%_)
                                                (let ((_%e3239832701%_
                                                       (gx#syntax-e
                                                        _%tl3235232962%_)))
                                                  (let ((_%tl3240032708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3239832701%_)))
                                                        (_%hd3239932705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3239832701%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3240032708%_)
                                                        (_%__match3815238153%_
                                                         _%e3235032955%_
                                                         _%hd3235132959%_
                                                         _%tl3235232962%_
                                                         _%e3239832701%_
                                                         _%hd3239932705%_
                                                         _%tl3240032708%_)
                                                        (_%__kont3802038021%_))))
                                                (_%__kont3802038021%_))))))))
                          (if (gx#stx-pair? _%__stx3799537996%_)
                              (let ((_%e3234133054%_
                                     (gx#syntax-e _%__stx3799537996%_)))
                                (let ((_%tl3234333061%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3234133054%_)))
                                      (_%hd3234233058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3234133054%_))))
                                  (if (gx#stx-datum? _%hd3234233058%_)
                                      (let ((_%e3234433064%_
                                             (gx#stx-e _%hd3234233058%_)))
                                        (if (equal? _%e3234433064%_ '?:)
                                            (if (gx#stx-pair? _%tl3234333061%_)
                                                (let ((_%e3234533068%_
                                                       (gx#syntax-e
                                                        _%tl3234333061%_)))
                                                  (let ((_%tl3234733075%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3234533068%_)))
                                                        (_%hd3234633072%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3234533068%_))))
                                                    (_%__kont3799837999%_
                                                     _%tl3234733075%_)))
                                                (_%__match3804638047%_
                                                 _%e3234133054%_
                                                 _%hd3234233058%_
                                                 _%tl3234333061%_))
                                            (_%__match3804638047%_
                                             _%e3234133054%_
                                             _%hd3234233058%_
                                             _%tl3234333061%_)))
                                      (_%__match3804638047%_
                                       _%e3234133054%_
                                       _%hd3234233058%_
                                       _%tl3234333061%_))))
                              (_%__kont3802038021%_)))))))
                 (_%loop-vector32037%_
                  (lambda (_%body32198%_ _%vars32200%_ _%K32201%_)
                    (let* ((_%__stx3825338254%_ _%body32198%_)
                           (_%g3220432227%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3825338254%_))))
                      (let ((_%__kont3825638257%_
                             (lambda (_%g3220632304%_)
                               (_%loop-list32038%_
                                _%g3220632304%_
                                _%vars32200%_
                                _%K32201%_)))
                            (_%__kont3825838259%_
                             (lambda (_%g3221432258%_)
                               (_%loop32035%_
                                _%g3221432258%_
                                _%vars32200%_
                                _%K32201%_))))
                        (if (gx#stx-pair? _%__stx3825338254%_)
                            (let ((_%e3220732280%_
                                   (gx#syntax-e _%__stx3825338254%_)))
                              (let ((_%tl3220932287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3220732280%_)))
                                    (_%hd3220832284%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3220732280%_))))
                                (if (gx#stx-datum? _%hd3220832284%_)
                                    (let ((_%e3221032290%_
                                           (gx#stx-e _%hd3220832284%_)))
                                      (if (equal? _%e3221032290%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3220932287%_)
                                              (let ((_%e3221132294%_
                                                     (gx#syntax-e
                                                      _%tl3220932287%_)))
                                                (let ((_%tl3221332301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3221132294%_)))
                                                      (_%hd3221232298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3221132294%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3221332301%_)
                                                      (_%__kont3825638257%_
                                                       _%hd3221232298%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3220432227%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3220432227%_)))
                                          (if (equal? _%e3221032290%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3220932287%_)
                                                  (let ((_%e3221932248%_
                                                         (gx#syntax-e
                                                          _%tl3220932287%_)))
                                                    (let ((_%tl3222132255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3221932248%_)))
                                                          (_%hd3222032252%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3221932248%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3222132255%_)
                                                          (_%__kont3825838259%_
                                                           _%hd3222032252%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3220432227%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3220432227%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3220432227%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3220432227%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3220432227%_)))))))
                 (_%loop-list32038%_
                  (lambda (_%rest32128%_ _%vars32130%_ _%K32131%_)
                    (let* ((_%__stx3830338304%_ _%rest32128%_)
                           (_%g3213432146%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3830338304%_))))
                      (let ((_%__kont3830638307%_
                             (lambda (_%g3213632174%_ _%g3213732176%_)
                               (_%loop32035%_
                                _%g3213732176%_
                                _%vars32130%_
                                (lambda (_%g3218832190%_)
                                  (_%loop-list32038%_
                                   _%g3213632174%_
                                   _%g3218832190%_
                                   _%K32131%_)))))
                            (_%__kont3830838309%_
                             (lambda () (_%K32131%_ _%vars32130%_))))
                        (if (gx#stx-pair? _%__stx3830338304%_)
                            (let ((_%e3213832164%_
                                   (gx#syntax-e _%__stx3830338304%_)))
                              (let ((_%tl3214032171%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3213832164%_)))
                                    (_%hd3213932168%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3213832164%_))))
                                (_%__kont3830638307%_
                                 _%tl3214032171%_
                                 _%hd3213932168%_)))
                            (_%__kont3830838309%_))))))
                 (_%loop-class-list32039%_
                  (lambda (_%rest32041%_ _%vars32043%_ _%K32044%_)
                    (let* ((_%__stx3831938320%_ _%rest32041%_)
                           (_%g3204732062%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3831938320%_))))
                      (let ((_%__kont3832238323%_
                             (lambda (_%g3204932100%_ _%g3205032102%_)
                               (_%loop32035%_
                                _%g3205032102%_
                                _%vars32043%_
                                (lambda (_%g3211832120%_)
                                  (_%loop-class-list32039%_
                                   _%g3204932100%_
                                   _%g3211832120%_
                                   _%K32044%_)))))
                            (_%__kont3832438325%_
                             (lambda () (_%K32044%_ _%vars32043%_))))
                        (if (gx#stx-pair? _%__stx3831938320%_)
                            (let ((_%e3205132080%_
                                   (gx#syntax-e _%__stx3831938320%_)))
                              (let ((_%tl3205332087%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3205132080%_)))
                                    (_%hd3205232084%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3205132080%_))))
                                (if (gx#stx-pair? _%tl3205332087%_)
                                    (let ((_%e3205432090%_
                                           (gx#syntax-e _%tl3205332087%_)))
                                      (let ((_%tl3205632097%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3205432090%_)))
                                            (_%hd3205532094%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3205432090%_))))
                                        (_%__kont3832238323%_
                                         _%tl3205632097%_
                                         _%hd3205532094%_)))
                                    (_%__kont3832438325%_))))
                            (_%__kont3832438325%_)))))))
          (_%loop32035%_ _%ptree32032%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx28964%_ _%tgt28966%_ _%ptree28967%_ _%K28968%_ _%E28969%_)
        (letrec ((_%generate128971%_
                  (lambda (_%tgt30231%_ _%ptree30233%_ _%K30234%_ _%E30235%_)
                    (let* ((_%g3023730245%_
                            (lambda (_%g3023830241%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3023830241%_)))
                           (_%g3023632028%_
                            (lambda (_%g3023830249%_)
                              ((lambda (_%g3023930252%_)
                                 (let* ((_%__stx3855538556%_ _%ptree30233%_)
                                        (_%g3027930421%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3855538556%_))))
                                   (let ((_%__kont3855838559%_
                                          (lambda (_%g3028131743%_
                                                   _%g3028231745%_)
                                            (let* ((_%__stx3847338474%_
                                                    _%g3028131743%_)
                                                   (_%g3176231797%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3847338474%_))))
                                              (let ((_%__kont3847638477%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3028231745%_
                                       (cons _%g3023930252%_ '())))
                           (cons _%K30234%_ (cons _%E30235%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3847838479%_
                                                     (lambda (_%g3176431998%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g3028231745%_
                                       (cons _%g3023930252%_ '())))
                           (cons (_%generate128971%_
                                  _%tgt30231%_
                                  _%g3176431998%_
                                  _%K30234%_
                                  _%E30235%_)
                                 (cons _%E30235%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3848038481%_
                                                     (lambda (_%g3176831936%_)
                                                       (let* ((_%g3195031958%_
                                                               (lambda (_%g3195131954%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3195131954%_)))
                      (_%g3194931977%_
                       (lambda (_%g3195131962%_)
                         ((lambda (_%g3195231965%_)
                            (cons 'let
                                  (cons (cons (cons _%g3195231965%_
                                                    (cons (cons _%g3028231745%_
                                                                (cons _%g3023930252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g3195231965%_
                                                          (cons (_%generate128971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3195231965%_
                         _%g3176831936%_
                         _%K30234%_
                         _%E30235%_)
                        (cons _%E30235%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3195131962%_))))
                 (_%g3194931977%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3848238483%_
                                                     (lambda (_%g3177631852%_
                                                              _%g3177731854%_)
                                                       (let* ((_%g3187431882%_
                                                               (lambda (_%g3187531878%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3187531878%_)))
                      (_%g3187331901%_
                       (lambda (_%g3187531886%_)
                         ((lambda (_%g3187631889%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g3028231745%_
                                                    (cons _%g3023930252%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g3187631889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g3177731854%_
                                          (cons _%g3023930252%_ '()))
                                    '()))
                        '())
                  (cons (_%generate128971%_
                         _%g3187631889%_
                         _%g3177631852%_
                         _%K30234%_
                         _%E30235%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30235%_ '())))))
                          _%g3187531886%_))))
                 (_%g3187331901%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3175932009%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3847338474%_)
                                                             (let ((_%e3176531988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3847338474%_)))
                       (let ((_%tl3176731995%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3176531988%_)))
                             (_%hd3176631992%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3176531988%_))))
                         (if (gx#stx-null? _%tl3176731995%_)
                             (_%__kont3847838479%_ _%hd3176631992%_)
                             (if (gx#stx-datum? _%hd3176631992%_)
                                 (let ((_%e3177231922%_
                                        (gx#stx-e _%hd3176631992%_)))
                                   (if (equal? _%e3177231922%_ '=>:)
                                       (if (gx#stx-pair? _%tl3176731995%_)
                                           (let ((_%e3177331926%_
                                                  (gx#syntax-e
                                                   _%tl3176731995%_)))
                                             (let ((_%tl3177531933%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3177331926%_)))
                                                   (_%hd3177431930%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3177331926%_))))
                                               (if (gx#stx-null?
                                                    _%tl3177531933%_)
                                                   (_%__kont3848038481%_
                                                    _%hd3177431930%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3176231797%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3176231797%_)))
                                       (if (equal? _%e3177231922%_ '::)
                                           (if (gx#stx-pair? _%tl3176731995%_)
                                               (let ((_%e3178231818%_
                                                      (gx#syntax-e
                                                       _%tl3176731995%_)))
                                                 (let ((_%tl3178431825%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3178231818%_)))
                                                       (_%hd3178331822%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3178231818%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3178431825%_)
                                                       (let ((_%e3178531828%_
                                                              (gx#syntax-e
                                                               _%tl3178431825%_)))
                                                         (let ((_%tl3178731835%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3178531828%_)))
                       (_%hd3178631832%_
                        (let () (declare (not safe)) (##car _%e3178531828%_))))
                   (if (gx#stx-datum? _%hd3178631832%_)
                       (let ((_%e3178831838%_ (gx#stx-e _%hd3178631832%_)))
                         (if (equal? _%e3178831838%_ '=>:)
                             (if (gx#stx-pair? _%tl3178731835%_)
                                 (let ((_%e3178931842%_
                                        (gx#syntax-e _%tl3178731835%_)))
                                   (let ((_%tl3179131849%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3178931842%_)))
                                         (_%hd3179031846%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3178931842%_))))
                                     (if (gx#stx-null? _%tl3179131849%_)
                                         (_%__kont3848238483%_
                                          _%hd3179031846%_
                                          _%hd3178331822%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3176231797%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3176231797%_)))
                             (let () (declare (not safe)) (_%g3176231797%_))))
                       (let () (declare (not safe)) (_%g3176231797%_)))))
               (let () (declare (not safe)) (_%g3176231797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3176231797%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3176231797%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3176231797%_))))))
                     (let () (declare (not safe)) (_%g3176231797%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3847338474%_)
                                                      (_%__kont3847638477%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3175932009%_))))))))
                                         (_%__kont3856038561%_
                                          (lambda (_%g3029031640%_)
                                            (let* ((_%__stx3845738458%_
                                                    _%g3029031640%_)
                                                   (_%g3165331665%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3845738458%_))))
                                              (let ((_%__kont3846038461%_
                                                     (lambda (_%g3165531693%_
                                                              _%g3165631695%_)
                                                       (_%generate128971%_
                                                        _%tgt30231%_
                                                        _%g3165631695%_
                                                        (_%generate128971%_
                                                         _%tgt30231%_
                                                         (cons 'and:
                                                               _%g3165531693%_)
                                                         _%K30234%_
                                                         _%E30235%_)
                                                        _%E30235%_)))
                                                    (_%__kont3846238463%_
                                                     (lambda () _%K30234%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3845738458%_)
                                                    (let ((_%e3165731683%_
                                                           (gx#syntax-e
                                                            _%__stx3845738458%_)))
                                                      (let ((_%tl3165931690%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3165731683%_)))
                    (_%hd3165831687%_
                     (let () (declare (not safe)) (##car _%e3165731683%_))))
                (_%__kont3846038461%_ _%tl3165931690%_ _%hd3165831687%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3846238463%_))))))
                                         (_%__kont3856238563%_
                                          (lambda (_%g3029531547%_)
                                            (let* ((_%__stx3844138442%_
                                                    _%g3029531547%_)
                                                   (_%g3156031572%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3844138442%_))))
                                              (let ((_%__kont3844438445%_
                                                     (lambda (_%g3156231600%_
                                                              _%g3156331602%_)
                                                       (_%generate128971%_
                                                        _%tgt30231%_
                                                        _%g3156331602%_
                                                        _%K30234%_
                                                        (_%generate128971%_
                                                         _%tgt30231%_
                                                         (cons 'or:
                                                               _%g3156231600%_)
                                                         _%K30234%_
                                                         _%E30235%_))))
                                                    (_%__kont3844638447%_
                                                     (lambda () _%E30235%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3844138442%_)
                                                    (let ((_%e3156431590%_
                                                           (gx#syntax-e
                                                            _%__stx3844138442%_)))
                                                      (let ((_%tl3156631597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3156431590%_)))
                    (_%hd3156531594%_
                     (let () (declare (not safe)) (##car _%e3156431590%_))))
                (_%__kont3844438445%_ _%tl3156631597%_ _%hd3156531594%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3844638447%_))))))
                                         (_%__kont3856438565%_
                                          (lambda (_%g3030031512%_)
                                            (_%generate128971%_
                                             _%tgt30231%_
                                             _%g3030031512%_
                                             _%E30235%_
                                             _%K30234%_)))
                                         (_%__kont3856638567%_
                                          (lambda (_%g3030831386%_
                                                   _%g3030931388%_)
                                            (let* ((_%g3140531420%_
                                                    (lambda (_%g3140631416%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3140631416%_)))
                                                   (_%g3140431477%_
                                                    (lambda (_%g3140631424%_)
                                                      (if (gx#stx-pair?
                                                           _%g3140631424%_)
                                                          (let ((_%e3140931427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3140631424%_)))
                    (let ((_%hd3141031431%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3140931427%_)))
                          (_%tl3141131434%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3140931427%_))))
                      (if (gx#stx-pair? _%tl3141131434%_)
                          (let ((_%e3141231437%_
                                 (gx#syntax-e _%tl3141131434%_)))
                            (let ((_%hd3141331441%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3141231437%_)))
                                  (_%tl3141431444%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3141231437%_))))
                              (if (gx#stx-null? _%tl3141431444%_)
                                  ((lambda (_%g3140731447%_ _%g3140831449%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g3023930252%_
                                                             '()))
                                                 (cons (let ((_%hd-pat31465%_
                                                              (gx#stx-e
                                                               _%g3030931388%_))
                                                             (_%tl-pat31467%_
                                                              (gx#stx-e
                                                               _%g3030831386%_)))
                                                         (if (and (equal? _%hd-pat31465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31467%_ '(any:)))
                     _%K30234%_
                     (if (equal? _%tl-pat31467%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g3140831449%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g3023930252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate128971%_
                                            _%g3140831449%_
                                            _%g3030931388%_
                                            _%K30234%_
                                            _%E30235%_)
                                           '())))
                         (if (equal? _%hd-pat31465%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g3140731447%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g3023930252%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate128971%_
                                                _%g3140731447%_
                                                _%g3030831386%_
                                                _%K30234%_
                                                _%E30235%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g3140831449%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g3023930252%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g3140731447%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g3023930252%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate128971%_
                                                _%g3140831449%_
                                                _%g3030931388%_
                                                (_%generate128971%_
                                                 _%g3140731447%_
                                                 _%g3030831386%_
                                                 _%K30234%_
                                                 _%E30235%_)
                                                _%E30235%_)
                                               '())))))))
               (cons _%E30235%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3141331441%_
                                   _%hd3141031431%_)
                                  (_%g3140531420%_ _%g3140631424%_))))
                          (_%g3140531420%_ _%g3140631424%_))))
                  (_%g3140531420%_ _%g3140631424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3140431477%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3856838569%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g3023930252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30234%_ (cons _%E30235%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3857038571%_
                                          (lambda (_%g3032431302%_
                                                   _%g3032531304%_)
                                            (_%generate-splice28973%_
                                             _%tgt30231%_
                                             _%g3032531304%_
                                             _%g3032431302%_
                                             _%K30234%_
                                             _%E30235%_)))
                                         (_%__kont3857238573%_
                                          (lambda (_%g3033631216%_)
                                            (let* ((_%g3123031238%_
                                                    (lambda (_%g3123131234%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3123131234%_)))
                                                   (_%g3122931257%_
                                                    (lambda (_%g3123131242%_)
                                                      ((lambda (_%g3123231245%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g3023930252%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g3123231245%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g3023930252%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate128971%_
                                                      _%g3123231245%_
                                                      _%g3033631216%_
                                                      _%K30234%_
                                                      _%E30235%_)
                                                     '())))
                                   (cons _%E30235%_ '())))))
               _%g3123131242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3122931257%_
                                               (gx#genident 'e)))))
                                         (_%__kont3857438575%_
                                          (lambda (_%g3034431021%_)
                                            (let* ((_%__stx3839138392%_
                                                    _%g3034431021%_)
                                                   (_%g3103631059%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3839138392%_))))
                                              (let ((_%__kont3839438395%_
                                                     (lambda (_%g3103831136%_)
                                                       (let* ((_%g3115031158%_
                                                               (lambda (_%g3115131154%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3115131154%_)))
                      (_%g3114931177%_
                       (lambda (_%g3115131162%_)
                         ((lambda (_%g3115231165%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g3023930252%_
                                                                '()))
                                                    (cons _%g3115231165%_
                                                          '())))
                                        (cons (_%generate-simple-vector28974%_
                                               _%tgt30231%_
                                               _%g3103831136%_
                                               '0
                                               '##values-ref
                                               _%K30234%_
                                               _%E30235%_)
                                              (cons _%E30235%_ '())))))
                          _%g3115131162%_))))
                 (_%g3114931177%_ (gx#stx-length _%g3103831136%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3839638397%_
                                                     (lambda (_%g3104631090%_)
                                                       (_%generate-list-vector28975%_
                                                        _%tgt30231%_
                                                        _%g3104631090%_
                                                        'values->list
                                                        _%K30234%_
                                                        _%E30235%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3839138392%_)
                                                    (let ((_%e3103931112%_
                                                           (gx#syntax-e
                                                            _%__stx3839138392%_)))
                                                      (let ((_%tl3104131119%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3103931112%_)))
                    (_%hd3104031116%_
                     (let () (declare (not safe)) (##car _%e3103931112%_))))
                (if (gx#stx-datum? _%hd3104031116%_)
                    (let ((_%e3104231122%_ (gx#stx-e _%hd3104031116%_)))
                      (if (equal? _%e3104231122%_ 'simple:)
                          (if (gx#stx-pair? _%tl3104131119%_)
                              (let ((_%e3104331126%_
                                     (gx#syntax-e _%tl3104131119%_)))
                                (let ((_%tl3104531133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3104331126%_)))
                                      (_%hd3104431130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3104331126%_))))
                                  (if (gx#stx-null? _%tl3104531133%_)
                                      (_%__kont3839438395%_ _%hd3104431130%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3103631059%_)))))
                              (let () (declare (not safe)) (_%g3103631059%_)))
                          (if (equal? _%e3104231122%_ 'list:)
                              (if (gx#stx-pair? _%tl3104131119%_)
                                  (let ((_%e3105131080%_
                                         (gx#syntax-e _%tl3104131119%_)))
                                    (let ((_%tl3105331087%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3105131080%_)))
                                          (_%hd3105231084%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3105131080%_))))
                                      (if (gx#stx-null? _%tl3105331087%_)
                                          (_%__kont3839638397%_
                                           _%hd3105231084%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3103631059%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3103631059%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3103631059%_)))))
                    (let () (declare (not safe)) (_%g3103631059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3103631059%_)))))))
                                         (_%__kont3857638577%_
                                          (lambda (_%g3035230826%_)
                                            (let* ((_%__stx3834138342%_
                                                    _%g3035230826%_)
                                                   (_%g3084130864%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3834138342%_))))
                                              (let ((_%__kont3834438345%_
                                                     (lambda (_%g3084330941%_)
                                                       (let* ((_%g3095530963%_
                                                               (lambda (_%g3095630959%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3095630959%_)))
                      (_%g3095430982%_
                       (lambda (_%g3095630967%_)
                         ((lambda (_%g3095730970%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g3023930252%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g3023930252%_ '()))
                              (cons _%g3095730970%_ '())))
                  (cons (_%generate-simple-vector28974%_
                         _%tgt30231%_
                         _%g3084330941%_
                         '0
                         '##vector-ref
                         _%K30234%_
                         _%E30235%_)
                        (cons _%E30235%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30235%_ '())))))
                          _%g3095630967%_))))
                 (_%g3095430982%_ (gx#stx-length _%g3084330941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3834638347%_
                                                     (lambda (_%g3085130895%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g3023930252%_ '()))
                           (cons (_%generate-list-vector28975%_
                                  _%tgt30231%_
                                  _%g3085130895%_
                                  'vector->list
                                  _%K30234%_
                                  _%E30235%_)
                                 (cons _%E30235%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3834138342%_)
                                                    (let ((_%e3084430917%_
                                                           (gx#syntax-e
                                                            _%__stx3834138342%_)))
                                                      (let ((_%tl3084630924%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3084430917%_)))
                    (_%hd3084530921%_
                     (let () (declare (not safe)) (##car _%e3084430917%_))))
                (if (gx#stx-datum? _%hd3084530921%_)
                    (let ((_%e3084730927%_ (gx#stx-e _%hd3084530921%_)))
                      (if (equal? _%e3084730927%_ 'simple:)
                          (if (gx#stx-pair? _%tl3084630924%_)
                              (let ((_%e3084830931%_
                                     (gx#syntax-e _%tl3084630924%_)))
                                (let ((_%tl3085030938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3084830931%_)))
                                      (_%hd3084930935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3084830931%_))))
                                  (if (gx#stx-null? _%tl3085030938%_)
                                      (_%__kont3834438345%_ _%hd3084930935%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3084130864%_)))))
                              (let () (declare (not safe)) (_%g3084130864%_)))
                          (if (equal? _%e3084730927%_ 'list:)
                              (if (gx#stx-pair? _%tl3084630924%_)
                                  (let ((_%e3085630885%_
                                         (gx#syntax-e _%tl3084630924%_)))
                                    (let ((_%tl3085830892%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3085630885%_)))
                                          (_%hd3085730889%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3085630885%_))))
                                      (if (gx#stx-null? _%tl3085830892%_)
                                          (_%__kont3834638347%_
                                           _%hd3085730889%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3084130864%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3084130864%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3084130864%_)))))
                    (let () (declare (not safe)) (_%g3084130864%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3084130864%_)))))))
                                         (_%__kont3857838579%_
                                          (lambda (_%g3036030777%_
                                                   _%g3036130779%_)
                                            (_%generate-struct28976%_
                                             (gx#stx-e _%g3036130779%_)
                                             _%tgt30231%_
                                             _%g3036030777%_
                                             _%K30234%_
                                             _%E30235%_)))
                                         (_%__kont3858038581%_
                                          (lambda (_%g3037230718%_
                                                   _%g3037330720%_)
                                            (_%generate-class28979%_
                                             (gx#stx-e _%g3037330720%_)
                                             _%tgt30231%_
                                             _%g3037230718%_
                                             _%K30234%_
                                             _%E30235%_)))
                                         (_%__kont3858238583%_
                                          (lambda (_%g3038430615%_)
                                            (let* ((_%g3062930637%_
                                                    (lambda (_%g3063030633%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3063030633%_)))
                                                   (_%g3062830656%_
                                                    (lambda (_%g3063030641%_)
                                                      ((lambda (_%g3063130644%_)
                                                         (cons 'if
                                                               (cons (cons _%g3063130644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g3023930252%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g3038430615%_
                                                           '()))
                                               '())))
                             (cons _%K30234%_ (cons _%E30235%_ '())))))
               _%g3063030641%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3062830656%_
                                               (let ((_%e30660%_
                                                      (gx#stx-e
                                                       _%g3038430615%_)))
                                                 (if (or (symbol? _%e30660%_)
                                                         (keyword? _%e30660%_)
                                                         (immediate?
                                                          _%e30660%_))
                                                     '##eq?
                                                     (if (number? _%e30660%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3858438585%_
                                          (lambda (_%g3039230535%_
                                                   _%g3039330537%_)
                                            (let* ((_%g3055330561%_
                                                    (lambda (_%g3055430557%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3055430557%_)))
                                                   (_%g3055230580%_
                                                    (lambda (_%g3055430565%_)
                                                      ((lambda (_%g3055530568%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g3055530568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g3039330537%_
                                                     (cons _%g3023930252%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate128971%_
                                    _%g3055530568%_
                                    _%g3039230535%_
                                    _%K30234%_
                                    _%E30235%_)
                                   '()))))
               _%g3055430565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3055230580%_
                                               (gx#genident 'e)))))
                                         (_%__kont3858638587%_
                                          (lambda (_%g3040430477%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g3040430477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g3023930252%_ '()))
                      '())
                (cons _%K30234%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3858838589%_
                                          (lambda () _%K30234%_)))
                                     (if (gx#stx-pair? _%__stx3855538556%_)
                                         (let ((_%e3028331719%_
                                                (gx#syntax-e
                                                 _%__stx3855538556%_)))
                                           (let ((_%tl3028531726%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3028331719%_)))
                                                 (_%hd3028431723%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3028331719%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3028431723%_)
                                                 (let ((_%e3028631729%_
                                                        (gx#stx-e
                                                         _%hd3028431723%_)))
                                                   (if (equal? _%e3028631729%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3028531726%_)
                                                           (let ((_%e3028731733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3028531726%_)))
                     (let ((_%tl3028931740%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3028731733%_)))
                           (_%hd3028831737%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3028731733%_))))
                       (_%__kont3855838559%_
                        _%tl3028931740%_
                        _%hd3028831737%_)))
                   (let () (declare (not safe)) (_%g3027930421%_)))
               (if (equal? _%e3028631729%_ 'and:)
                   (_%__kont3856038561%_ _%tl3028531726%_)
                   (if (equal? _%e3028631729%_ 'or:)
                       (_%__kont3856238563%_ _%tl3028531726%_)
                       (if (equal? _%e3028631729%_ 'not:)
                           (if (gx#stx-pair? _%tl3028531726%_)
                               (let ((_%e3030531502%_
                                      (gx#syntax-e _%tl3028531726%_)))
                                 (let ((_%tl3030731509%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3030531502%_)))
                                       (_%hd3030631506%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3030531502%_))))
                                   (if (gx#stx-null? _%tl3030731509%_)
                                       (_%__kont3856438565%_ _%hd3030631506%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3027930421%_)))))
                               (let () (declare (not safe)) (_%g3027930421%_)))
                           (if (equal? _%e3028631729%_ 'cons:)
                               (if (gx#stx-pair? _%tl3028531726%_)
                                   (let ((_%e3031431366%_
                                          (gx#syntax-e _%tl3028531726%_)))
                                     (let ((_%tl3031631373%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3031431366%_)))
                                           (_%hd3031531370%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3031431366%_))))
                                       (if (gx#stx-pair? _%tl3031631373%_)
                                           (let ((_%e3031731376%_
                                                  (gx#syntax-e
                                                   _%tl3031631373%_)))
                                             (let ((_%tl3031931383%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3031731376%_)))
                                                   (_%hd3031831380%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3031731376%_))))
                                               (if (gx#stx-null?
                                                    _%tl3031931383%_)
                                                   (_%__kont3856638567%_
                                                    _%hd3031831380%_
                                                    _%hd3031531370%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3027930421%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3027930421%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3027930421%_)))
                               (if (equal? _%e3028631729%_ 'null:)
                                   (if (gx#stx-null? _%tl3028531726%_)
                                       (_%__kont3856838569%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3027930421%_)))
                                   (if (equal? _%e3028631729%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3028531726%_)
                                           (let ((_%e3033031282%_
                                                  (gx#syntax-e
                                                   _%tl3028531726%_)))
                                             (let ((_%tl3033231289%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3033031282%_)))
                                                   (_%hd3033131286%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3033031282%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3033231289%_)
                                                   (let ((_%e3033331292%_
                                                          (gx#syntax-e
                                                           _%tl3033231289%_)))
                                                     (let ((_%tl3033531299%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3033331292%_)))
                                                           (_%hd3033431296%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3033331292%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3033531299%_)
                                                           (_%__kont3857038571%_
                                                            _%hd3033431296%_
                                                            _%hd3033131286%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3027930421%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3027930421%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3027930421%_)))
                                       (if (equal? _%e3028631729%_ 'box:)
                                           (if (gx#stx-pair? _%tl3028531726%_)
                                               (let ((_%e3034131206%_
                                                      (gx#syntax-e
                                                       _%tl3028531726%_)))
                                                 (let ((_%tl3034331213%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3034131206%_)))
                                                       (_%hd3034231210%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3034131206%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3034331213%_)
                                                       (_%__kont3857238573%_
                                                        _%hd3034231210%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3027930421%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3027930421%_)))
                                           (if (equal? _%e3028631729%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3028531726%_)
                                                   (let ((_%e3034931011%_
                                                          (gx#syntax-e
                                                           _%tl3028531726%_)))
                                                     (let ((_%tl3035131018%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3034931011%_)))
                                                           (_%hd3035031015%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3034931011%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3035131018%_)
                                                           (_%__kont3857438575%_
                                                            _%hd3035031015%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3027930421%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3027930421%_)))
                                               (if (equal? _%e3028631729%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3028531726%_)
                                                       (let ((_%e3035730816%_
                                                              (gx#syntax-e
                                                               _%tl3028531726%_)))
                                                         (let ((_%tl3035930823%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3035730816%_)))
                       (_%hd3035830820%_
                        (let () (declare (not safe)) (##car _%e3035730816%_))))
                   (if (gx#stx-null? _%tl3035930823%_)
                       (_%__kont3857638577%_ _%hd3035830820%_)
                       (let () (declare (not safe)) (_%g3027930421%_)))))
               (let () (declare (not safe)) (_%g3027930421%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3028631729%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3028531726%_)
                                                           (let ((_%e3036630757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3028531726%_)))
                     (let ((_%tl3036830764%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3036630757%_)))
                           (_%hd3036730761%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3036630757%_))))
                       (if (gx#stx-pair? _%tl3036830764%_)
                           (let ((_%e3036930767%_
                                  (gx#syntax-e _%tl3036830764%_)))
                             (let ((_%tl3037130774%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3036930767%_)))
                                   (_%hd3037030771%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3036930767%_))))
                               (if (gx#stx-null? _%tl3037130774%_)
                                   (_%__kont3857838579%_
                                    _%hd3037030771%_
                                    _%hd3036730761%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3027930421%_)))))
                           (let () (declare (not safe)) (_%g3027930421%_)))))
                   (let () (declare (not safe)) (_%g3027930421%_)))
               (if (equal? _%e3028631729%_ 'class:)
                   (if (gx#stx-pair? _%tl3028531726%_)
                       (let ((_%e3037830698%_ (gx#syntax-e _%tl3028531726%_)))
                         (let ((_%tl3038030705%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3037830698%_)))
                               (_%hd3037930702%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3037830698%_))))
                           (if (gx#stx-pair? _%tl3038030705%_)
                               (let ((_%e3038130708%_
                                      (gx#syntax-e _%tl3038030705%_)))
                                 (let ((_%tl3038330715%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3038130708%_)))
                                       (_%hd3038230712%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3038130708%_))))
                                   (if (gx#stx-null? _%tl3038330715%_)
                                       (_%__kont3858038581%_
                                        _%hd3038230712%_
                                        _%hd3037930702%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3027930421%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3027930421%_)))))
                       (let () (declare (not safe)) (_%g3027930421%_)))
                   (if (equal? _%e3028631729%_ 'datum:)
                       (if (gx#stx-pair? _%tl3028531726%_)
                           (let ((_%e3038930605%_
                                  (gx#syntax-e _%tl3028531726%_)))
                             (let ((_%tl3039130612%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3038930605%_)))
                                   (_%hd3039030609%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3038930605%_))))
                               (if (gx#stx-null? _%tl3039130612%_)
                                   (_%__kont3858238583%_ _%hd3039030609%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3027930421%_)))))
                           (let () (declare (not safe)) (_%g3027930421%_)))
                       (if (equal? _%e3028631729%_ 'apply:)
                           (if (gx#stx-pair? _%tl3028531726%_)
                               (let ((_%e3039830515%_
                                      (gx#syntax-e _%tl3028531726%_)))
                                 (let ((_%tl3040030522%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3039830515%_)))
                                       (_%hd3039930519%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3039830515%_))))
                                   (if (gx#stx-pair? _%tl3040030522%_)
                                       (let ((_%e3040130525%_
                                              (gx#syntax-e _%tl3040030522%_)))
                                         (let ((_%tl3040330532%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3040130525%_)))
                                               (_%hd3040230529%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3040130525%_))))
                                           (if (gx#stx-null? _%tl3040330532%_)
                                               (_%__kont3858438585%_
                                                _%hd3040230529%_
                                                _%hd3039930519%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3027930421%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3027930421%_)))))
                               (let () (declare (not safe)) (_%g3027930421%_)))
                           (if (equal? _%e3028631729%_ 'var:)
                               (if (gx#stx-pair? _%tl3028531726%_)
                                   (let ((_%e3040930467%_
                                          (gx#syntax-e _%tl3028531726%_)))
                                     (let ((_%tl3041130474%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3040930467%_)))
                                           (_%hd3041030471%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3040930467%_))))
                                       (if (gx#stx-null? _%tl3041130474%_)
                                           (_%__kont3858638587%_
                                            _%hd3041030471%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3027930421%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3027930421%_)))
                               (if (equal? _%e3028631729%_ 'any:)
                                   (if (gx#stx-null? _%tl3028531726%_)
                                       (_%__kont3858838589%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3027930421%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3027930421%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3027930421%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3027930421%_))))))
                               _%g3023830249%_))))
                      (_%g3023632028%_ _%tgt30231%_))))
                 (_%generate-splice28973%_
                  (lambda (_%tgt29609%_
                           _%hd29611%_
                           _%rest29612%_
                           _%K29613%_
                           _%E29614%_)
                    (let* ((_%g2961629633%_
                            (lambda (_%g2961729629%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2961729629%_)))
                           (_%g2961530227%_
                            (lambda (_%g2961729637%_)
                              (if (gx#stx-pair/null? _%g2961729637%_)
                                  (let ((_g39710_
                                         (gx#syntax-split-splice
                                          _%g2961729637%_
                                          '0)))
                                    (begin
                                      (let ((_g39711_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39710_)
                                                   (##values-length _g39710_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39711_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39711_)))
                                      (let ((_%target2961929640%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39710_ 0)))
                                            (_%tl2962129643%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39710_ 1))))
                                        (if (gx#stx-null? _%tl2962129643%_)
                                            (letrec ((_%loop2962229646%_
                                                      (lambda (_%hd2962029650%_
                                                               _%var2962629653%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2962029650%_)
                                                            (let ((_%e2962329655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2962029650%_)))
                      (let ((_%lp-hd2962429659%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2962329655%_)))
                            (_%lp-tl2962529662%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2962329655%_))))
                        (_%loop2962229646%_
                         _%lp-tl2962529662%_
                         (cons _%lp-hd2962429659%_ _%var2962629653%_))))
                    (let ((_%var2962729665%_ (reverse _%var2962629653%_)))
                      ((lambda (_%g2961829668%_)
                         (let* ((_%g2968429701%_
                                 (lambda (_%g2968529697%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2968529697%_)))
                                (_%g2968330215%_
                                 (lambda (_%g2968529705%_)
                                   (if (gx#stx-pair/null? _%g2968529705%_)
                                       (let ((_g39712_
                                              (gx#syntax-split-splice
                                               _%g2968529705%_
                                               '0)))
                                         (begin
                                           (let ((_g39713_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39712_)
                                                        (##values-length
                                                         _g39712_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39713_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39713_)))
                                           (let ((_%target2968729708%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39712_ 0)))
                                                 (_%tl2968929711%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39712_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2968929711%_)
                                                 (letrec ((_%loop2969029714%_
                                                           (lambda (_%hd2968829718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2969429721%_)
                     (if (gx#stx-pair? _%hd2968829718%_)
                         (let ((_%e2969129723%_
                                (gx#syntax-e _%hd2968829718%_)))
                           (let ((_%lp-hd2969229727%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2969129723%_)))
                                 (_%lp-tl2969329730%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2969129723%_))))
                             (_%loop2969029714%_
                              _%lp-tl2969329730%_
                              (cons _%lp-hd2969229727%_ _%var-r2969429721%_))))
                         (let ((_%var-r2969529733%_
                                (reverse _%var-r2969429721%_)))
                           ((lambda (_%g2968629736%_)
                              (let* ((_%g2975329770%_
                                      (lambda (_%g2975429766%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2975429766%_)))
                                     (_%g2975230203%_
                                      (lambda (_%g2975429774%_)
                                        (if (gx#stx-pair/null? _%g2975429774%_)
                                            (let ((_g39714_
                                                   (gx#syntax-split-splice
                                                    _%g2975429774%_
                                                    '0)))
                                              (begin
                                                (let ((_g39715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39714_)
                                                             (##values-length
                                                              _g39714_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39715_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2975629777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39714_
                                                          0)))
                                                      (_%tl2975829780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39714_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2975829780%_)
                                                      (letrec ((_%loop2975929783%_
                                                                (lambda (_%hd2975729787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2976329790%_)
                          (if (gx#stx-pair? _%hd2975729787%_)
                              (let ((_%e2976029792%_
                                     (gx#syntax-e _%hd2975729787%_)))
                                (let ((_%lp-hd2976129796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2976029792%_)))
                                      (_%lp-tl2976229799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2976029792%_))))
                                  (_%loop2975929783%_
                                   _%lp-tl2976229799%_
                                   (cons _%lp-hd2976129796%_
                                         _%init2976329790%_))))
                              (let ((_%init2976429802%_
                                     (reverse _%init2976329790%_)))
                                ((lambda (_%g2975529805%_)
                                   (let* ((_%g2982229830%_
                                           (lambda (_%g2982329826%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2982329826%_)))
                                          (_%g2982130199%_
                                           (lambda (_%g2982329834%_)
                                             ((lambda (_%g2982429837%_)
                                                (let* ((_%g2985029858%_
                                                        (lambda (_%g2985129854%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2985129854%_)))
                                                       (_%g2984930195%_
                                                        (lambda (_%g2985129862%_)
                                                          ((lambda (_%g2985229865%_)
                                                             (let* ((_%g2987829886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2987929882%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2987929882%_)))
                            (_%g2987730191%_
                             (lambda (_%g2987929890%_)
                               ((lambda (_%g2988029893%_)
                                  (let* ((_%g2990629914%_
                                          (lambda (_%g2990729910%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2990729910%_)))
                                         (_%g2990530187%_
                                          (lambda (_%g2990729918%_)
                                            ((lambda (_%g2990829921%_)
                                               (let* ((_%g2993429942%_
                                                       (lambda (_%g2993529938%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2993529938%_)))
                                                      (_%g2993330183%_
                                                       (lambda (_%g2993529946%_)
                                                         ((lambda (_%g2993629949%_)
                                                            (let* ((_%g2996229970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2996329966%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2996329966%_)))
                           (_%g2996130179%_
                            (lambda (_%g2996329974%_)
                              ((lambda (_%g2996429977%_)
                                 (let* ((_%g2999029998%_
                                         (lambda (_%g2999129994%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2999129994%_)))
                                        (_%g2998930175%_
                                         (lambda (_%g2999130002%_)
                                           ((lambda (_%g2999230005%_)
                                              (let* ((_%g3001830026%_
                                                      (lambda (_%g3001930022%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3001930022%_)))
                                                     (_%g3001730160%_
                                                      (lambda (_%g3001930030%_)
                                                        ((lambda (_%g3002030033%_)
                                                           (let* ((_%g3004630054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3004730050%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3004730050%_)))
                          (_%g3004530148%_
                           (lambda (_%g3004730058%_)
                             ((lambda (_%g3004830061%_)
                                (let* ((_%g3007430082%_
                                        (lambda (_%g3007530078%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3007530078%_)))
                                       (_%g3007330144%_
                                        (lambda (_%g3007530086%_)
                                          ((lambda (_%g3007630089%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g2985229865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g2996429977%_
                                                     (foldr (lambda (_%g3010330114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3010430117%_)
                      (cons _%g3010330114%_ _%g3010430117%_))
                    '()
                    _%g2961829668%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g2999230005%_ '())))
                                   '()))
                       (cons (cons _%g2990829921%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g2993629949%_
                                                           (cons _%g2996429977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3010530120%_ _%g3010630123%_)
                                  (cons _%g3010530120%_ _%g3010630123%_))
                                '()
                                _%g2968629736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g3007630089%_
                                                           '())))
                                         '()))
                             (cons (cons _%g2988029893%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g2996429977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3010730126%_ _%g3010830129%_)
                                  (cons _%g3010730126%_ _%g3010830129%_))
                                '()
                                _%g2968629736%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g2996429977%_ '()))
                                     (cons (cons _%g2990829921%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g2996429977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g2996429977%_
                     (foldr (lambda (_%g3010930132%_ _%g3011030135%_)
                              (cons _%g3010930132%_ _%g3011030135%_))
                            '()
                            _%g2968629736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g3004830061%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g2988029893%_
                             (cons _%g2982429837%_
                                   (foldr (lambda (_%g3011130138%_
                                                   _%g3011230141%_)
                                            (cons _%g3011130138%_
                                                  _%g3011230141%_))
                                          '()
                                          _%g2975529805%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3007530086%_))))
                                  (_%g3007330144%_
                                   (_%generate128971%_
                                    _%g2993629949%_
                                    _%hd29611%_
                                    _%g3002030033%_
                                    _%g3004830061%_))))
                              _%g3004730058%_))))
                     (_%g3004530148%_
                      (cons _%g2985229865%_
                            (cons _%g2996429977%_
                                  (foldr (lambda (_%g3015130154%_
                                                  _%g3015230157%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3015130154%_
                                                             '()))
                                                 _%g3015230157%_))
                                         '()
                                         _%g2968629736%_))))))
                 _%g3001930030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3001730160%_
                                                 (cons _%g2988029893%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g2996429977%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g2968629736%_
                        _%g2961829668%_)
                       (foldr (lambda (_%g3016330167%_
                                       _%g3016430170%_
                                       _%g3016530172%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3016430170%_
                                                  (cons _%g3016330167%_ '())))
                                      _%g3016530172%_))
                              '()
                              _%g2968629736%_
                              _%g2961829668%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2999130002%_))))
                                   (_%g2998930175%_
                                    (_%generate128971%_
                                     _%g2996429977%_
                                     _%rest29612%_
                                     _%K29613%_
                                     _%E29614%_))))
                               _%g2996329974%_))))
                      (_%g2996130179%_ (gx#genident 'rest))))
                  _%g2993529946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2993330183%_
                                                  (gx#genident 'hd))))
                                             _%g2990729918%_))))
                                    (_%g2990530187%_
                                     (gx#genident 'splice-try))))
                                _%g2987929890%_))))
                       (_%g2987730191%_ (gx#genident 'splice-loop))))
                   _%g2985129862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2984930195%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g2982329834%_))))
                                     (_%g2982130199%_ _%tgt29609%_)))
                                 _%init2976429802%_))))))
                (_%loop2975929783%_ _%target2975629777%_ '()))
              (_%g2975329770%_ _%g2975429774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2975329770%_
                                             _%g2975429774%_)))))
                                (_%g2975230203%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3020630209%_
                                                   _%g3020730212%_)
                                            (cons _%g3020630209%_
                                                  _%g3020730212%_))
                                          '()
                                          _%g2961829668%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2969529733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2969029714%_
                                                    _%target2968729708%_
                                                    '()))
                                                 (_%g2968429701%_
                                                  _%g2968529705%_)))))
                                       (_%g2968429701%_ _%g2968529705%_)))))
                           (_%g2968330215%_
                            (gx#gentemps
                             (foldr (lambda (_%g3021830221%_ _%g3021930224%_)
                                      (cons _%g3021830221%_ _%g3021930224%_))
                                    '()
                                    _%g2961829668%_)))))
                       _%var2962729665%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2962229646%_
                                               _%target2961929640%_
                                               '()))
                                            (_%g2961629633%_
                                             _%g2961729637%_)))))
                                  (_%g2961629633%_ _%g2961729637%_)))))
                      (_%g2961530227%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29611%_)))))
                 (_%generate-simple-vector28974%_
                  (lambda (_%tgt29432%_
                           _%body29434%_
                           _%start29435%_
                           _%ref29436%_
                           _%K29437%_
                           _%E29438%_)
                    (let _%recur29440%_ ((_%rest29443%_ _%body29434%_)
                                         (_%off29445%_ _%start29435%_))
                      (let* ((_%__stx3891338914%_ _%rest29443%_)
                             (_%g2944829460%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3891338914%_))))
                        (let ((_%__kont3891638917%_
                               (lambda (_%g2945029488%_ _%g2945129490%_)
                                 (let* ((_%g2950529528%_
                                         (lambda (_%g2950629524%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2950629524%_)))
                                        (_%g2950429601%_
                                         (lambda (_%g2950629532%_)
                                           (if (gx#stx-pair? _%g2950629532%_)
                                               (let ((_%e2951129535%_
                                                      (gx#syntax-e
                                                       _%g2950629532%_)))
                                                 (let ((_%hd2951229539%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2951129535%_)))
                                                       (_%tl2951329542%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2951129535%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2951329542%_)
                                                       (let ((_%e2951429545%_
                                                              (gx#syntax-e
                                                               _%tl2951329542%_)))
                                                         (let ((_%hd2951529549%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2951429545%_)))
                       (_%tl2951629552%_
                        (let () (declare (not safe)) (##cdr _%e2951429545%_))))
                   (if (gx#stx-pair? _%tl2951629552%_)
                       (let ((_%e2951729555%_ (gx#syntax-e _%tl2951629552%_)))
                         (let ((_%hd2951829559%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2951729555%_)))
                               (_%tl2951929562%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2951729555%_))))
                           (if (gx#stx-pair? _%tl2951929562%_)
                               (let ((_%e2952029565%_
                                      (gx#syntax-e _%tl2951929562%_)))
                                 (let ((_%hd2952129569%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2952029565%_)))
                                       (_%tl2952229572%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2952029565%_))))
                                   (if (gx#stx-null? _%tl2952229572%_)
                                       ((lambda (_%g2950729575%_
                                                 _%g2950829577%_
                                                 _%g2950929578%_
                                                 _%g2951029579%_)
                                          (cons 'let
                                                (cons (cons (cons _%g2951029579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g2950729575%_
                                      (cons _%g2950929578%_
                                            (cons _%g2950829577%_ '())))
                                '()))
                    '())
              (cons (_%generate128971%_
                     _%g2951029579%_
                     _%g2945129490%_
                     (_%recur29440%_ _%g2945029488%_ (fx1+ _%off29445%_))
                     _%E29438%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd2952129569%_
                                        _%hd2951829559%_
                                        _%hd2951529549%_
                                        _%hd2951229539%_)
                                       (_%g2950529528%_ _%g2950629532%_))))
                               (_%g2950529528%_ _%g2950629532%_))))
                       (_%g2950529528%_ _%g2950629532%_))))
               (_%g2950529528%_ _%g2950629532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2950529528%_
                                                _%g2950629532%_)))))
                                   (_%g2950429601%_
                                    (list (gx#genident 'e)
                                          _%tgt29432%_
                                          _%off29445%_
                                          _%ref29436%_)))))
                              (_%__kont3891838919%_ (lambda () _%K29437%_)))
                          (if (gx#stx-pair? _%__stx3891338914%_)
                              (let ((_%e2945229478%_
                                     (gx#syntax-e _%__stx3891338914%_)))
                                (let ((_%tl2945429485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2945229478%_)))
                                      (_%hd2945329482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2945229478%_))))
                                  (_%__kont3891638917%_
                                   _%tl2945429485%_
                                   _%hd2945329482%_)))
                              (_%__kont3891838919%_)))))))
                 (_%generate-list-vector28975%_
                  (lambda (_%tgt29324%_
                           _%body29326%_
                           _%->list29327%_
                           _%K29328%_
                           _%E29329%_)
                    (let* ((_%g2933129339%_
                            (lambda (_%g2933229335%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2933229335%_)))
                           (_%g2933029428%_
                            (lambda (_%g2933229343%_)
                              ((lambda (_%g2933329346%_)
                                 (let* ((_%g2935829366%_
                                         (lambda (_%g2935929362%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2935929362%_)))
                                        (_%g2935729424%_
                                         (lambda (_%g2935929370%_)
                                           ((lambda (_%g2936029373%_)
                                              (let* ((_%g2938629394%_
                                                      (lambda (_%g2938729390%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2938729390%_)))
                                                     (_%g2938529416%_
                                                      (lambda (_%g2938729398%_)
                                                        ((lambda (_%g2938829401%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g2933329346%_
                                           (cons _%g2938829401%_ '()))
                                     '())
                               (cons (_%generate128971%_
                                      _%g2933329346%_
                                      _%body29326%_
                                      _%K29328%_
                                      _%E29329%_)
                                     '()))))
                 _%g2938729398%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2938529416%_
                                                 (let ((_%$e29420%_
                                                        _%->list29327%_))
                                                   (if (eq? 'values->list
                                                            _%$e29420%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g2936029373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29420%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g2936029373%_ '()))
                   (if (eq? 'struct->list _%$e29420%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g2936029373%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx28964%_
                        _%->list29327%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2935929370%_))))
                                   (_%g2935729424%_ _%tgt29324%_)))
                               _%g2933229343%_))))
                      (_%g2933029428%_ (gx#genident 'e)))))
                 (_%generate-struct28976%_
                  (lambda (_%info29195%_
                           _%tgt29197%_
                           _%body29198%_
                           _%K29199%_
                           _%E29200%_)
                    (let* ((_%__stx3892938930%_ _%body29198%_)
                           (_%g2920329226%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3892938930%_))))
                      (let ((_%__kont3893238933%_
                             (lambda (_%g2920529303%_)
                               (let ((_%fields29317%_
                                      (_%struct-field-accessors28978%_
                                       _%info29195%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39683
                                                          _%info29195%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39683
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39683
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39683
                                                          'predicate)))
                                                   (cons _%tgt29197%_ '()))
                                             (cons (_%generate-simple-struct-body28977%_
                                                    _%info29195%_
                                                    _%tgt29197%_
                                                    _%g2920529303%_
                                                    _%K29199%_
                                                    _%E29200%_)
                                                   (cons _%E29200%_ '())))))))
                            (_%__kont3893438935%_
                             (lambda (_%g2921329257%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39684
                                                        _%info29195%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39684
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39684
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39684
                                                        'predicate)))
                                                 (cons _%tgt29197%_ '()))
                                           (cons (_%generate-list-vector28975%_
                                                  _%tgt29197%_
                                                  _%g2921329257%_
                                                  'struct->list
                                                  _%K29199%_
                                                  _%E29200%_)
                                                 (cons _%E29200%_ '())))))))
                        (if (gx#stx-pair? _%__stx3892938930%_)
                            (let ((_%e2920629279%_
                                   (gx#syntax-e _%__stx3892938930%_)))
                              (let ((_%tl2920829286%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2920629279%_)))
                                    (_%hd2920729283%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2920629279%_))))
                                (if (gx#stx-datum? _%hd2920729283%_)
                                    (let ((_%e2920929289%_
                                           (gx#stx-e _%hd2920729283%_)))
                                      (if (equal? _%e2920929289%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2920829286%_)
                                              (let ((_%e2921029293%_
                                                     (gx#syntax-e
                                                      _%tl2920829286%_)))
                                                (let ((_%tl2921229300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2921029293%_)))
                                                      (_%hd2921129297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2921029293%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2921229300%_)
                                                      (_%__kont3893238933%_
                                                       _%hd2921129297%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2920329226%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2920329226%_)))
                                          (if (equal? _%e2920929289%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2920829286%_)
                                                  (let ((_%e2921829247%_
                                                         (gx#syntax-e
                                                          _%tl2920829286%_)))
                                                    (let ((_%tl2922029254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2921829247%_)))
                                                          (_%hd2921929251%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2921829247%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2922029254%_)
                                                          (_%__kont3893438935%_
                                                           _%hd2921929251%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2920329226%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2920329226%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2920329226%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2920329226%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2920329226%_)))))))
                 (_%generate-simple-struct-body28977%_
                  (lambda (_%info29115%_
                           _%tgt29117%_
                           _%body29118%_
                           _%K29119%_
                           _%E29120%_)
                    (let _%recur29122%_ ((_%rest29125%_ _%body29118%_)
                                         (_%fields29127%_
                                          (_%struct-field-accessors28978%_
                                           _%info29115%_)))
                      (let* ((_%__stx3897938980%_ _%rest29125%_)
                             (_%g2913029142%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3897938980%_))))
                        (let ((_%__kont3898238983%_
                               (lambda (_%g2913229170%_ _%g2913329172%_)
                                 (if (null? _%fields29127%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx28964%_
                                      _%info29115%_
                                      (let ((__obj39685 _%info29115%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39685
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39685
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39685
                                             'name))))
                                     (let ((_%$tgt29187%_ (gx#genident 'e))
                                           (_%getf29189%_
                                            (car _%fields29127%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29187%_
                                                               (cons (cons _%getf29189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29117%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate128971%_
                                                          _%$tgt29187%_
                                                          _%g2913329172%_
                                                          (_%recur29122%_
                                                           _%g2913229170%_
                                                           (cdr _%fields29127%_))
                                                          _%E29120%_)
                                                         '())))))))
                              (_%__kont3898438985%_ (lambda () _%K29119%_)))
                          (if (gx#stx-pair? _%__stx3897938980%_)
                              (let ((_%e2913429160%_
                                     (gx#syntax-e _%__stx3897938980%_)))
                                (let ((_%tl2913629167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2913429160%_)))
                                      (_%hd2913529164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2913429160%_))))
                                  (_%__kont3898238983%_
                                   _%tl2913629167%_
                                   _%hd2913529164%_)))
                              (_%__kont3898438985%_)))))))
                 (_%struct-field-accessors28978%_
                  (lambda (_%info29096%_)
                    (let _%recur29099%_ ((_%next29102%_
                                          (cons _%info29096%_ '())))
                      (if (null? _%next29102%_)
                          '()
                          (let ((_%ti29105%_ (car _%next29102%_)))
                            (let ((__tmp39717
                                   (_%recur29099%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39686 _%ti29105%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39686
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39686
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39686
                                                'super))))))
                                  (__tmp39716
                                   (map (lambda (_%slot29108%_)
                                          (let ((_%$e29111%_
                                                 (agetq _%slot29108%_
                                                        (let ((__obj39687
                                                               _%ti29105%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39687
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39687 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39687
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29111%_
                                                _%$e29111%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx28964%_
                                                 _%info29096%_
                                                 _%slot29108%_))))
                                        (let ((__obj39688 _%ti29105%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39688
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39688
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39688
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39717 __tmp39716)))))))
                 (_%generate-class28979%_
                  (lambda (_%info29089%_
                           _%tgt29091%_
                           _%body29092%_
                           _%K29093%_
                           _%E29094%_)
                    (cons 'if
                          (cons (cons (let ((__obj39689 _%info29089%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39689
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39689
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39689
                                             'predicate)))
                                      (cons _%tgt29091%_ '()))
                                (cons (_%generate-class-body28980%_
                                       _%info29089%_
                                       _%tgt29091%_
                                       _%body29092%_
                                       _%K29093%_
                                       _%E29094%_)
                                      (cons _%E29094%_ '()))))))
                 (_%generate-class-body28980%_
                  (lambda (_%info28982%_
                           _%tgt28984%_
                           _%body28985%_
                           _%K28986%_
                           _%E28987%_)
                    (let _%recur28989%_ ((_%rest28992%_ _%body28985%_))
                      (let* ((_%__stx3899538996%_ _%rest28992%_)
                             (_%g2899629012%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3899538996%_))))
                        (let ((_%__kont3899838999%_
                               (lambda (_%g2899829050%_
                                        _%g2899929052%_
                                        _%g2900029053%_)
                                 (let ((_%$e29073%_
                                        (agetq (let ((__tmp39718
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g2900029053%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39718))
                                               (let ((__obj39690
                                                      _%info28982%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39690
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39690
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39690
                                                      'unchecked-accessors))))))
                                   (if _%$e29073%_
                                       ((lambda (_%getf29077%_)
                                          (let ((_%$tgt29080%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29077%_ (cons _%tgt28984%_ '()))
                                  '()))
                      '())
                (cons (_%generate128971%_
                       _%$tgt29080%_
                       _%g2899929052%_
                       (_%recur28989%_ _%g2899829050%_)
                       _%E28987%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29073%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx28964%_
                                        _%info28982%_
                                        _%g2900029053%_)))))
                              (_%__kont3900039001%_ (lambda () _%K28986%_)))
                          (if (gx#stx-pair? _%__stx3899538996%_)
                              (let ((_%e2900129030%_
                                     (gx#syntax-e _%__stx3899538996%_)))
                                (let ((_%tl2900329037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2900129030%_)))
                                      (_%hd2900229034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2900129030%_))))
                                  (if (gx#stx-pair? _%tl2900329037%_)
                                      (let ((_%e2900429040%_
                                             (gx#syntax-e _%tl2900329037%_)))
                                        (let ((_%tl2900629047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2900429040%_)))
                                              (_%hd2900529044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2900429040%_))))
                                          (_%__kont3899838999%_
                                           _%tl2900629047%_
                                           _%hd2900529044%_
                                           _%hd2900229034%_)))
                                      (_%__kont3900039001%_))))
                              (_%__kont3900039001%_))))))))
          (_%generate128971%_
           _%tgt28966%_
           _%ptree28967%_
           _%K28968%_
           _%E28969%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27783%_ _%tgt-lst27785%_ _%clauses27786%_)
        (letrec ((_%parse-body27788%_
                  (lambda (_%hd-len28786%_)
                    (let _%lp28789%_ ((_%rest28792%_ _%clauses27786%_)
                                      (_%r28794%_ '()))
                      (let* ((_%__stx3904539046%_ _%rest28792%_)
                             (_%g2879728809%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3904539046%_))))
                        (let ((_%__kont3904839049%_
                               (lambda (_%g2879928837%_ _%g2880028839%_)
                                 (let* ((_%__stx3901739018%_ _%g2880028839%_)
                                        (_%g2885628872%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3901739018%_))))
                                   (let ((_%__kont3902039021%_
                                          (lambda (_%g2885828941%_)
                                            (if (gx#stx-null? _%g2879928837%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g2885828941%_)
                                 (let ((_%$e28952%_
                                        (gx#stx-source _%g2880028839%_)))
                                   (if _%$e28952%_
                                       _%$e28952%_
                                       (gx#stx-source _%stx27783%_))))
                                '())))
              _%r28794%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27783%_
                                                 _%g2880028839%_))))
                                         (_%__kont3902239023%_
                                          (lambda (_%g2886228900%_
                                                   _%g2886328902%_)
                                            (_%lp28789%_
                                             _%g2879928837%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2891428916%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2891428916%_
                           _%stx27783%_))
                        _%g2886328902%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g2886228900%_)
                              (let ((_%$e28920%_
                                     (gx#stx-source _%g2880028839%_)))
                                (if _%$e28920%_
                                    _%$e28920%_
                                    (gx#stx-source _%stx27783%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r28794%_))))
                                         (_%__kont3902439025%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27783%_
                                             _%g2880028839%_))))
                                     (let* ((_%__match3904239043%_
                                             (lambda (_%e2886428890%_
                                                      _%hd2886528894%_
                                                      _%tl2886628897%_)
                                               (let ((_%g2886228900%_
                                                      _%tl2886628897%_)
                                                     (_%g2886328902%_
                                                      _%hd2886528894%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2886328902%_)
                                                          (fx= (gx#stx-length
                                                                _%g2886328902%_)
                                                               _%hd-len28786%_)
                                                          (gx#stx-list?
                                                           _%g2886228900%_)
                                                          (not (gx#stx-null?
                                                                _%g2886228900%_)))
                                                     (_%__kont3902239023%_
                                                      _%g2886228900%_
                                                      _%g2886328902%_)
                                                     (_%__kont3902439025%_)))))
                                            (_%__match3903639037%_
                                             (lambda (_%e2885928931%_
                                                      _%hd2886028935%_
                                                      _%tl2886128938%_)
                                               (let ((_%g2885828941%_
                                                      _%tl2886128938%_))
                                                 (if (and (gx#stx-list?
                                                           _%g2885828941%_)
                                                          (not (gx#stx-null?
                                                                _%g2885828941%_)))
                                                     (_%__kont3902039021%_
                                                      _%g2885828941%_)
                                                     (_%__match3904239043%_
                                                      _%e2885928931%_
                                                      _%hd2886028935%_
                                                      _%tl2886128938%_))))))
                                       (if (gx#stx-pair? _%__stx3901739018%_)
                                           (let ((_%e2885928931%_
                                                  (gx#syntax-e
                                                   _%__stx3901739018%_)))
                                             (let ((_%tl2886128938%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2885928931%_)))
                                                   (_%hd2886028935%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2885928931%_))))
                                               (if (gx#identifier?
                                                    _%hd2886028935%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39719_|
                                                        _%hd2886028935%_)
                                                       (_%__match3903639037%_
                                                        _%e2885928931%_
                                                        _%hd2886028935%_
                                                        _%tl2886128938%_)
                                                       (_%__match3904239043%_
                                                        _%e2885928931%_
                                                        _%hd2886028935%_
                                                        _%tl2886128938%_))
                                                   (_%__match3904239043%_
                                                    _%e2885928931%_
                                                    _%hd2886028935%_
                                                    _%tl2886128938%_))))
                                           (_%__kont3902439025%_)))))))
                              (_%__kont3905039051%_ (lambda () _%r28794%_)))
                          (if (gx#stx-pair? _%__stx3904539046%_)
                              (let ((_%e2880128827%_
                                     (gx#syntax-e _%__stx3904539046%_)))
                                (let ((_%tl2880328834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2880128827%_)))
                                      (_%hd2880228831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2880128827%_))))
                                  (_%__kont3904839049%_
                                   _%tl2880328834%_
                                   _%hd2880228831%_)))
                              (_%__kont3905039051%_)))))))
                 (_%generate-body27790%_
                  (lambda (_%body28492%_)
                    (let* ((_%g2849528503%_
                            (lambda (_%g2849628499%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2849628499%_)))
                           (_%g2849428782%_
                            (lambda (_%g2849628507%_)
                              ((lambda (_%g2849728510%_)
                                 (let* ((_%g2852228539%_
                                         (lambda (_%g2852328535%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2852328535%_)))
                                        (_%g2852128778%_
                                         (lambda (_%g2852328543%_)
                                           (if (gx#stx-pair/null?
                                                _%g2852328543%_)
                                               (let ((_g39720_
                                                      (gx#syntax-split-splice
                                                       _%g2852328543%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39721_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39720_)
                        (##values-length _g39720_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39721_ 2)))
                 (error "Context expects 2 values" _g39721_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2852528546%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39720_
                                                             0)))
                                                         (_%tl2852728549%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39720_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2852728549%_)
                                                         (letrec ((_%loop2852828552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2852628556%_ _%target2853228559%_)
                             (if (gx#stx-pair? _%hd2852628556%_)
                                 (let ((_%e2852928561%_
                                        (gx#syntax-e _%hd2852628556%_)))
                                   (let ((_%lp-hd2853028565%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2852928561%_)))
                                         (_%lp-tl2853128568%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2852928561%_))))
                                     (_%loop2852828552%_
                                      _%lp-tl2853128568%_
                                      (cons _%lp-hd2853028565%_
                                            _%target2853228559%_))))
                                 (let ((_%target2853328571%_
                                        (reverse _%target2853228559%_)))
                                   ((lambda (_%g2852428574%_)
                                      (let* ((_%g2859128608%_
                                              (lambda (_%g2859228604%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2859228604%_)))
                                             (_%g2859028774%_
                                              (lambda (_%g2859228612%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2859228612%_)
                                                    (let ((_g39722_
                                                           (gx#syntax-split-splice
                                                            _%g2859228612%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39723_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39722_)
                             (##values-length _g39722_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39723_ 2)))
                      (error "Context expects 2 values" _g39723_)))
                (let ((_%target2859428615%_
                       (let () (declare (not safe)) (##values-ref _g39722_ 0)))
                      (_%tl2859628618%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g39722_ 1))))
                  (if (gx#stx-null? _%tl2859628618%_)
                      (letrec ((_%loop2859728621%_
                                (lambda (_%hd2859528625%_
                                         _%fail-diagnostic2860128628%_)
                                  (if (gx#stx-pair? _%hd2859528625%_)
                                      (let ((_%e2859828630%_
                                             (gx#syntax-e _%hd2859528625%_)))
                                        (let ((_%lp-hd2859928634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2859828630%_)))
                                              (_%lp-tl2860028637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2859828630%_))))
                                          (_%loop2859728621%_
                                           _%lp-tl2860028637%_
                                           (cons _%lp-hd2859928634%_
                                                 _%fail-diagnostic2860128628%_))))
                                      (let ((_%fail-diagnostic2860228640%_
                                             (reverse _%fail-diagnostic2860128628%_)))
                                        ((lambda (_%g2859328643%_)
                                           (let* ((_%g2866028668%_
                                                   (lambda (_%g2866128664%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2866128664%_)))
                                                  (_%g2865928754%_
                                                   (lambda (_%g2866128672%_)
                                                     ((lambda (_%g2866228675%_)
                                                        (let* ((_%g2868828696%_
                                                                (lambda (_%g2868928692%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2868928692%_)))
                       (_%g2868728750%_
                        (lambda (_%g2868928700%_)
                          ((lambda (_%g2869028703%_)
                             (let* ((_%g2871628724%_
                                     (lambda (_%g2871728720%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2871728720%_)))
                                    (_%g2871528746%_
                                     (lambda (_%g2871728728%_)
                                       ((lambda (_%g2871828731%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g2871828731%_
                                                            '()))))
                                        _%g2871728728%_))))
                               (_%g2871528746%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g2849728510%_
                                                         (cons _%g2866228675%_
                                                               '()))
                                                   '())
                                             (cons _%g2869028703%_ '())))
                                 (gx#stx-source _%stx27783%_)))))
                           _%g2868928700%_))))
                  (_%g2868728750%_
                   (_%generate-clauses27791%_
                    _%body28492%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g2849728510%_ '()) '())))))))
              _%g2866128672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2865928754%_
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
                                     (foldr (lambda (_%g2875728762%_
                                                     _%g2875828765%_)
                                              (cons _%g2875728762%_
                                                    _%g2875828765%_))
                                            (foldr (lambda (_%g2875928768%_
                                                            _%g2876028771%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2875928768%_ '()))
                   _%g2876028771%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g2859328643%_)
                                            _%g2852428574%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27783%_)))))
                                         _%fail-diagnostic2860228640%_))))))
                        (_%loop2859728621%_ _%target2859428615%_ '()))
                      (_%g2859128608%_ _%g2859228612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2859128608%_
                                                     _%g2859228612%_)))))
                                        (_%g2859028774%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses27786%_))))
                                    _%target2853328571%_))))))
                   (_%loop2852828552%_ _%target2852528546%_ '()))
                 (_%g2852228539%_ _%g2852328543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2852228539%_
                                                _%g2852328543%_)))))
                                   (_%g2852128778%_ _%tgt-lst27785%_)))
                               _%g2849628507%_))))
                      (_%g2849428782%_ (gx#genident 'E)))))
                 (_%generate-clauses27791%_
                  (lambda (_%rest28144%_ _%E28146%_)
                    (let* ((_%__stx3906139062%_ _%rest28144%_)
                           (_%g2815028166%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3906139062%_))))
                      (let ((_%__kont3906439065%_
                             (lambda (_%g2815228400%_)
                               (let* ((_%g2841128429%_
                                       (lambda (_%g2841228425%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2841228425%_)))
                                      (_%g2841028484%_
                                       (lambda (_%g2841228433%_)
                                         (if (gx#stx-pair? _%g2841228433%_)
                                             (let ((_%e2841528436%_
                                                    (gx#syntax-e
                                                     _%g2841228433%_)))
                                               (let ((_%hd2841628440%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2841528436%_)))
                                                     (_%tl2841728443%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2841528436%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2841728443%_)
                                                     (let ((_%e2841828446%_
                                                            (gx#syntax-e
                                                             _%tl2841728443%_)))
                                                       (let ((_%hd2841928450%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2841828446%_)))
                     (_%tl2842028453%_
                      (let () (declare (not safe)) (##cdr _%e2841828446%_))))
                 (if (gx#stx-pair? _%tl2842028453%_)
                     (let ((_%e2842128456%_ (gx#syntax-e _%tl2842028453%_)))
                       (let ((_%hd2842228460%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2842128456%_)))
                             (_%tl2842328463%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2842128456%_))))
                         (if (gx#stx-null? _%tl2842328463%_)
                             ((lambda (_%g2841328466%_ _%g2841428468%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g2841428468%_)
                                                      (_%generate127792%_
                                                       _%g2841428468%_
                                                       _%g2841328466%_
                                                       _%E28146%_)
                                                      _%g2841328466%_)
                                                  '()))))
                              _%hd2842228460%_
                              _%hd2841928450%_)
                             (_%g2841128429%_ _%g2841228433%_))))
                     (_%g2841128429%_ _%g2841228433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2841128429%_
                                                      _%g2841228433%_))))
                                             (_%g2841128429%_
                                              _%g2841228433%_)))))
                                 (_%g2841028484%_ _%g2815228400%_))))
                            (_%__kont3906639067%_
                             (lambda (_%g2815628194%_ _%g2815728196%_)
                               (let* ((_%g2820928228%_
                                       (lambda (_%g2821028224%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2821028224%_)))
                                      (_%g2820828379%_
                                       (lambda (_%g2821028232%_)
                                         (if (gx#stx-pair? _%g2821028232%_)
                                             (let ((_%e2821428235%_
                                                    (gx#syntax-e
                                                     _%g2821028232%_)))
                                               (let ((_%hd2821528239%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2821428235%_)))
                                                     (_%tl2821628242%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2821428235%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2821628242%_)
                                                     (let ((_%e2821728245%_
                                                            (gx#syntax-e
                                                             _%tl2821628242%_)))
                                                       (let ((_%hd2821828249%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2821728245%_)))
                     (_%tl2821928252%_
                      (let () (declare (not safe)) (##cdr _%e2821728245%_))))
                 (if (gx#stx-pair? _%tl2821928252%_)
                     (let ((_%e2822028255%_ (gx#syntax-e _%tl2821928252%_)))
                       (let ((_%hd2822128259%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2822028255%_)))
                             (_%tl2822228262%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2822028255%_))))
                         (if (gx#stx-null? _%tl2822228262%_)
                             ((lambda (_%g2821128265%_
                                       _%g2821228267%_
                                       _%g2821328268%_)
                                (if (gx#stx-e _%g2821228267%_)
                                    (let* ((_%g2828528300%_
                                            (lambda (_%g2828628296%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2828628296%_)))
                                           (_%g2828428345%_
                                            (lambda (_%g2828628304%_)
                                              (if (gx#stx-pair?
                                                   _%g2828628304%_)
                                                  (let ((_%e2828928307%_
                                                         (gx#syntax-e
                                                          _%g2828628304%_)))
                                                    (let ((_%hd2829028311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2828928307%_)))
                                                          (_%tl2829128314%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2828928307%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2829128314%_)
                                                          (let ((_%e2829228317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2829128314%_)))
                    (let ((_%hd2829328321%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2829228317%_)))
                          (_%tl2829428324%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2829228317%_))))
                      (if (gx#stx-null? _%tl2829428324%_)
                          ((lambda (_%g2828728327%_ _%g2828828329%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g2821328268%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g2828828329%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g2828728327%_ '()))))
                           _%hd2829328321%_
                           _%hd2829028311%_)
                          (_%g2828528300%_ _%g2828628304%_))))
                  (_%g2828528300%_ _%g2828628304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2828528300%_
                                                   _%g2828628304%_)))))
                                      (_%g2828428345%_
                                       (list (_%generate127792%_
                                              _%g2821228267%_
                                              _%g2821128265%_
                                              _%E28146%_)
                                             (_%generate-clauses27791%_
                                              _%g2815628194%_
                                              (cons _%g2821328268%_ '())))))
                                    (let* ((_%g2834928357%_
                                            (lambda (_%g2835028353%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2835028353%_)))
                                           (_%g2834828375%_
                                            (lambda (_%g2835028361%_)
                                              ((lambda (_%g2835128364%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g2821328268%_
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
                             (cons _%g2821128265%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g2835128364%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2835028361%_))))
                                      (_%g2834828375%_
                                       (_%generate-clauses27791%_
                                        _%g2815628194%_
                                        (cons _%g2821328268%_ '()))))))
                              _%hd2822128259%_
                              _%hd2821828249%_
                              _%hd2821528239%_)
                             (_%g2820928228%_ _%g2821028232%_))))
                     (_%g2820928228%_ _%g2821028232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2820928228%_
                                                      _%g2821028232%_))))
                                             (_%g2820928228%_
                                              _%g2821028232%_)))))
                                 (_%g2820828379%_ _%g2815728196%_))))
                            (_%__kont3906839069%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28146%_ '()))))))
                        (if (gx#stx-pair? _%__stx3906139062%_)
                            (let ((_%e2815328390%_
                                   (gx#syntax-e _%__stx3906139062%_)))
                              (let ((_%tl2815528397%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2815328390%_)))
                                    (_%hd2815428394%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2815328390%_))))
                                (if (gx#stx-null? _%tl2815528397%_)
                                    (_%__kont3906439065%_ _%hd2815428394%_)
                                    (_%__kont3906639067%_
                                     _%tl2815528397%_
                                     _%hd2815428394%_))))
                            (_%__kont3906839069%_))))))
                 (_%generate127792%_
                  (lambda (_%clause27794%_ _%body27796%_ _%E27797%_)
                    (let* ((_%g2779927823%_
                            (lambda (_%g2780027819%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2780027819%_)))
                           (_%g2779828140%_
                            (lambda (_%g2780027827%_)
                              (if (gx#stx-pair? _%g2780027827%_)
                                  (let ((_%e2780327830%_
                                         (gx#syntax-e _%g2780027827%_)))
                                    (let ((_%hd2780427834%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2780327830%_)))
                                          (_%tl2780527837%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2780327830%_))))
                                      (if (gx#stx-pair? _%tl2780527837%_)
                                          (let ((_%e2780627840%_
                                                 (gx#syntax-e
                                                  _%tl2780527837%_)))
                                            (let ((_%hd2780727844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2780627840%_)))
                                                  (_%tl2780827847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2780627840%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2780727844%_)
                                                  (let ((_g39724_
                                                         (gx#syntax-split-splice
                                                          _%hd2780727844%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39725_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39724_)
                           (##values-length _g39724_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39725_ 2)))
                    (error "Context expects 2 values" _g39725_)))
              (let ((_%target2780927850%_
                     (let () (declare (not safe)) (##values-ref _g39724_ 0)))
                    (_%tl2781127853%_
                     (let () (declare (not safe)) (##values-ref _g39724_ 1))))
                (if (gx#stx-null? _%tl2781127853%_)
                    (letrec ((_%loop2781227856%_
                              (lambda (_%hd2781027860%_ _%var2781627863%_)
                                (if (gx#stx-pair? _%hd2781027860%_)
                                    (let ((_%e2781327865%_
                                           (gx#syntax-e _%hd2781027860%_)))
                                      (let ((_%lp-hd2781427869%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2781327865%_)))
                                            (_%lp-tl2781527872%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2781327865%_))))
                                        (_%loop2781227856%_
                                         _%lp-tl2781527872%_
                                         (cons _%lp-hd2781427869%_
                                               _%var2781627863%_))))
                                    (let ((_%var2781727875%_
                                           (reverse _%var2781627863%_)))
                                      (if (gx#stx-null? _%tl2780827847%_)
                                          ((lambda (_%g2780127878%_
                                                    _%g2780227880%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2790127904%_
                                                                _%g2790227907%_)
                                                         (cons _%g2790127904%_
                                                               _%g2790227907%_))
                                                       '()
                                                       _%g2780127878%_)
                                                _%stx27783%_)
                                               (let* ((_%g2791027918%_
                                                       (lambda (_%g2791127914%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2791127914%_)))
                                                      (_%g2790928012%_
                                                       (lambda (_%g2791127922%_)
                                                         ((lambda (_%g2791227925%_)
                                                            (let* ((_%g2793827946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2793927942%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2793927942%_)))
                           (_%g2793728008%_
                            (lambda (_%g2793927950%_)
                              ((lambda (_%g2794027953%_)
                                 (let* ((_%g2796627974%_
                                         (lambda (_%g2796727970%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2796727970%_)))
                                        (_%g2796527996%_
                                         (lambda (_%g2796727978%_)
                                           ((lambda (_%g2796827981%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g2780227880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2796827981%_ '()))
                   (cons _%g2791227925%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27783%_)))
                                            _%g2796727978%_))))
                                   (_%g2796527996%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2799928002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2800028005%_)
                  (cons _%g2799928002%_ _%g2800028005%_))
                '()
                _%g2780127878%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g2794027953%_ '())))
                                     (gx#stx-source _%stx27783%_)))))
                               _%g2793927950%_))))
                      (_%g2793728008%_ _%body27796%_)))
                  _%g2791127922%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2790928012%_
                                                  (let _%recur28016%_ ((_%rest28019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause27794%_)
                               (_%rest-targets28021%_ _%tgt-lst27785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3908739088%_
                                                            _%rest28019%_)
                                                           (_%g2802428036%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3908739088%_))))
                                                      (let ((_%__kont3909039091%_
                                                             (lambda (_%g2802628072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2802728074%_)
                       (let* ((_%g2808928101%_
                               (lambda (_%g2809028097%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2809028097%_)))
                              (_%g2808828132%_
                               (lambda (_%g2809028105%_)
                                 (if (gx#stx-pair? _%g2809028105%_)
                                     (let ((_%e2809328108%_
                                            (gx#syntax-e _%g2809028105%_)))
                                       (let ((_%hd2809428112%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2809328108%_)))
                                             (_%tl2809528115%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2809328108%_))))
                                         ((lambda (_%g2809128118%_
                                                   _%g2809228120%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27783%_
                                             _%g2809228120%_
                                             _%g2802728074%_
                                             (_%recur28016%_
                                              _%g2802628072%_
                                              _%g2809128118%_)
                                             _%E27797%_))
                                          _%tl2809528115%_
                                          _%hd2809428112%_)))
                                     (_%g2808928101%_ _%g2809028105%_)))))
                         (_%g2808828132%_ _%rest-targets28021%_))))
                    (_%__kont3909239093%_
                     (lambda ()
                       (cons _%g2780227880%_
                             (foldr (lambda (_%g2804628049%_ _%g2804728052%_)
                                      (cons _%g2804628049%_ _%g2804728052%_))
                                    '()
                                    _%g2780127878%_)))))
                (if (gx#stx-pair? _%__stx3908739088%_)
                    (let ((_%e2802828062%_ (gx#syntax-e _%__stx3908739088%_)))
                      (let ((_%tl2803028069%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2802828062%_)))
                            (_%hd2802928066%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2802828062%_))))
                        (_%__kont3909039091%_
                         _%tl2803028069%_
                         _%hd2802928066%_)))
                    (_%__kont3909239093%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2781727875%_
                                           _%hd2780427834%_)
                                          (_%g2779927823%_
                                           _%g2780027827%_)))))))
                      (_%loop2781227856%_ _%target2780927850%_ '()))
                    (_%g2779927823%_ _%g2780027827%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2779927823%_
                                                   _%g2780027827%_))))
                                          (_%g2779927823%_ _%g2780027827%_))))
                                  (_%g2779927823%_ _%g2780027827%_)))))
                      (_%g2779828140%_
                       (list (gx#genident 'K)
                             (let ((__tmp39726
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause27794%_)))
                               (declare (not safe))
                               (##apply append __tmp39726))))))))
          (_%generate-body27790%_
           (_%parse-body27788%_ (gx#stx-length _%tgt-lst27785%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27685%_ _%tgt27687%_ _%clauses27688%_)
        (letrec ((_%reclause27690%_
                  (lambda (_%clause27693%_)
                    (let* ((_%__stx3910339104%_ _%clause27693%_)
                           (_%g2769827713%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3910339104%_))))
                      (let ((_%__kont3910639107%_ (lambda () _%clause27693%_))
                            (_%__kont3910839109%_
                             (lambda (_%g2770327741%_ _%g2770427743%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g2770427743%_ '())
                                      _%g2770327741%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3911039111%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27685%_
                                _%clause27693%_))))
                        (if (gx#stx-pair? _%__stx3910339104%_)
                            (let ((_%e2770027765%_
                                   (gx#syntax-e _%__stx3910339104%_)))
                              (let ((_%tl2770227772%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2770027765%_)))
                                    (_%hd2770127769%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2770027765%_))))
                                (if (gx#identifier? _%hd2770127769%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39727_|
                                         _%hd2770127769%_)
                                        (_%__kont3910639107%_)
                                        (_%__kont3910839109%_
                                         _%tl2770227772%_
                                         _%hd2770127769%_))
                                    (_%__kont3910839109%_
                                     _%tl2770227772%_
                                     _%hd2770127769%_))))
                            (_%__kont3911039111%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27685%_
           (cons _%tgt27687%_ '())
           (gx#stx-map _%reclause27690%_ _%clauses27688%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35026%_)
        (let* ((_%__stx3913139132%_ _%stx35026%_)
               (_%g3503135060%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3913139132%_))))
          (let ((_%__kont3913439135%_
                 (lambda (_%g3503335300%_)
                   (let* ((_%g3531335321%_
                           (lambda (_%g3531435317%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3531435317%_)))
                          (_%g3531235374%_
                           (lambda (_%g3531435325%_)
                             ((lambda (_%g3531535328%_)
                                (let* ((_%g3534035348%_
                                        (lambda (_%g3534135344%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3534135344%_)))
                                       (_%g3533935370%_
                                        (lambda (_%g3534135352%_)
                                          ((lambda (_%g3534235355%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g3531535328%_
                                                               '())
                                                         (cons _%g3534235355%_
                                                               '()))))
                                           _%g3534135352%_))))
                                  (_%g3533935370%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3531535328%_
                                                _%g3503335300%_))
                                    (gx#stx-source _%stx35026%_)))))
                              _%g3531435325%_))))
                     (_%g3531235374%_ (gx#genident 'e)))))
                (_%__kont3913639137%_
                 (lambda (_%g3504035195%_)
                   (let* ((_%g3520835216%_
                           (lambda (_%g3520935212%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3520935212%_)))
                          (_%g3520735269%_
                           (lambda (_%g3520935220%_)
                             ((lambda (_%g3521035223%_)
                                (let* ((_%g3523535243%_
                                        (lambda (_%g3523635239%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3523635239%_)))
                                       (_%g3523435265%_
                                        (lambda (_%g3523635247%_)
                                          ((lambda (_%g3523735250%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g3521035223%_
                                                         (cons _%g3523735250%_
                                                               '()))))
                                           _%g3523635247%_))))
                                  (_%g3523435265%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g3521035223%_
                                                _%g3504035195%_))
                                    (gx#stx-source _%stx35026%_)))))
                              _%g3520935220%_))))
                     (_%g3520735269%_ (gx#genident 'args)))))
                (_%__kont3913839139%_
                 (lambda (_%g3504735087%_ _%g3504835089%_)
                   (let* ((_%g3510335111%_
                           (lambda (_%g3510435107%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3510435107%_)))
                          (_%g3510235164%_
                           (lambda (_%g3510435115%_)
                             ((lambda (_%g3510535118%_)
                                (let* ((_%g3513035138%_
                                        (lambda (_%g3513135134%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3513135134%_)))
                                       (_%g3512935160%_
                                        (lambda (_%g3513135142%_)
                                          ((lambda (_%g3513235145%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g3510535118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g3504835089%_ '()))
                       '())
                 (cons _%g3513235145%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3513135142%_))))
                                  (_%g3512935160%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35026%_
                                    _%g3510535118%_
                                    _%g3504735087%_))))
                              _%g3510435115%_))))
                     (_%g3510235164%_ (gx#genident _%g3504835089%_))))))
            (let* ((_%__match3918439185%_
                    (lambda (_%e3504935067%_
                             _%hd3505035071%_
                             _%tl3505135074%_
                             _%e3505235077%_
                             _%hd3505335081%_
                             _%tl3505435084%_)
                      (let ((_%g3504735087%_ _%tl3505435084%_)
                            (_%g3504835089%_ _%hd3505335081%_))
                        (if (gx#stx-list? _%g3504735087%_)
                            (_%__kont3913839139%_
                             _%g3504735087%_
                             _%g3504835089%_)
                            (let () (declare (not safe)) (_%g3503135060%_))))))
                   (_%__match3917239173%_
                    (lambda (_%e3504135175%_
                             _%hd3504235179%_
                             _%tl3504335182%_
                             _%e3504435185%_
                             _%hd3504535189%_
                             _%tl3504635192%_)
                      (let ((_%g3504035195%_ _%tl3504635192%_))
                        (if (gx#stx-list? _%g3504035195%_)
                            (_%__kont3913639137%_ _%g3504035195%_)
                            (_%__match3918439185%_
                             _%e3504135175%_
                             _%hd3504235179%_
                             _%tl3504335182%_
                             _%e3504435185%_
                             _%hd3504535189%_
                             _%tl3504635192%_)))))
                   (_%__match3915639157%_
                    (lambda (_%e3503435280%_
                             _%hd3503535284%_
                             _%tl3503635287%_
                             _%e3503735290%_
                             _%hd3503835294%_
                             _%tl3503935297%_)
                      (let ((_%g3503335300%_ _%tl3503935297%_))
                        (if (gx#stx-list? _%g3503335300%_)
                            (_%__kont3913439135%_ _%g3503335300%_)
                            (_%__match3918439185%_
                             _%e3503435280%_
                             _%hd3503535284%_
                             _%tl3503635287%_
                             _%e3503735290%_
                             _%hd3503835294%_
                             _%tl3503935297%_))))))
              (if (gx#stx-pair? _%__stx3913139132%_)
                  (let ((_%e3503435280%_ (gx#syntax-e _%__stx3913139132%_)))
                    (let ((_%tl3503635287%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3503435280%_)))
                          (_%hd3503535284%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3503435280%_))))
                      (if (gx#stx-pair? _%tl3503635287%_)
                          (let ((_%e3503735290%_
                                 (gx#syntax-e _%tl3503635287%_)))
                            (let ((_%tl3503935297%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3503735290%_)))
                                  (_%hd3503835294%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3503735290%_))))
                              (if (gx#identifier? _%hd3503835294%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39728_|
                                       _%hd3503835294%_)
                                      (_%__match3915639157%_
                                       _%e3503435280%_
                                       _%hd3503535284%_
                                       _%tl3503635287%_
                                       _%e3503735290%_
                                       _%hd3503835294%_
                                       _%tl3503935297%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39729_|
                                           _%hd3503835294%_)
                                          (_%__match3917239173%_
                                           _%e3503435280%_
                                           _%hd3503535284%_
                                           _%tl3503635287%_
                                           _%e3503735290%_
                                           _%hd3503835294%_
                                           _%tl3503935297%_)
                                          (_%__match3918439185%_
                                           _%e3503435280%_
                                           _%hd3503535284%_
                                           _%tl3503635287%_
                                           _%e3503735290%_
                                           _%hd3503835294%_
                                           _%tl3503935297%_)))
                                  (_%__match3918439185%_
                                   _%e3503435280%_
                                   _%hd3503535284%_
                                   _%tl3503635287%_
                                   _%e3503735290%_
                                   _%hd3503835294%_
                                   _%tl3503935297%_))))
                          (let () (declare (not safe)) (_%g3503135060%_)))))
                  (let () (declare (not safe)) (_%g3503135060%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35382%_)
        (let* ((_%g3538535409%_
                (lambda (_%g3538635405%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3538635405%_)))
               (_%g3538435617%_
                (lambda (_%g3538635413%_)
                  (if (gx#stx-pair? _%g3538635413%_)
                      (let ((_%e3538935416%_ (gx#syntax-e _%g3538635413%_)))
                        (let ((_%hd3539035420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3538935416%_)))
                              (_%tl3539135423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3538935416%_))))
                          (if (gx#stx-pair? _%tl3539135423%_)
                              (let ((_%e3539235426%_
                                     (gx#syntax-e _%tl3539135423%_)))
                                (let ((_%hd3539335430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3539235426%_)))
                                      (_%tl3539435433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3539235426%_))))
                                  (if (gx#stx-pair/null? _%hd3539335430%_)
                                      (let ((_g39730_
                                             (gx#syntax-split-splice
                                              _%hd3539335430%_
                                              '0)))
                                        (begin
                                          (let ((_g39731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39730_)
                                                       (##values-length
                                                        _g39730_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39731_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39731_)))
                                          (let ((_%target3539535436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39730_ 0)))
                                                (_%tl3539735439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39730_ 1))))
                                            (if (gx#stx-null? _%tl3539735439%_)
                                                (letrec ((_%loop3539835442%_
                                                          (lambda (_%hd3539635446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3540235449%_)
                    (if (gx#stx-pair? _%hd3539635446%_)
                        (let ((_%e3539935451%_ (gx#syntax-e _%hd3539635446%_)))
                          (let ((_%lp-hd3540035455%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3539935451%_)))
                                (_%lp-tl3540135458%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3539935451%_))))
                            (_%loop3539835442%_
                             _%lp-tl3540135458%_
                             (cons _%lp-hd3540035455%_ _%e3540235449%_))))
                        (let ((_%e3540335461%_ (reverse _%e3540235449%_)))
                          ((lambda (_%g3538735464%_ _%g3538835466%_)
                             (if (gx#stx-list? _%g3538735464%_)
                                 (let* ((_%g3548435501%_
                                         (lambda (_%g3548535497%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3548535497%_)))
                                        (_%g3548335605%_
                                         (lambda (_%g3548535505%_)
                                           (if (gx#stx-pair/null?
                                                _%g3548535505%_)
                                               (let ((_g39732_
                                                      (gx#syntax-split-splice
                                                       _%g3548535505%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39733_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39732_)
                        (##values-length _g39732_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39733_ 2)))
                 (error "Context expects 2 values" _g39733_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3548735508%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39732_
                                                             0)))
                                                         (_%tl3548935511%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39732_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3548935511%_)
                                                         (letrec ((_%loop3549035514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3548835518%_ _%$e3549435521%_)
                             (if (gx#stx-pair? _%hd3548835518%_)
                                 (let ((_%e3549135523%_
                                        (gx#syntax-e _%hd3548835518%_)))
                                   (let ((_%lp-hd3549235527%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3549135523%_)))
                                         (_%lp-tl3549335530%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3549135523%_))))
                                     (_%loop3549035514%_
                                      _%lp-tl3549335530%_
                                      (cons _%lp-hd3549235527%_
                                            _%$e3549435521%_))))
                                 (let ((_%$e3549535533%_
                                        (reverse _%$e3549435521%_)))
                                   ((lambda (_%g3548635536%_)
                                      (let* ((_%g3555235560%_
                                              (lambda (_%g3555335556%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3555335556%_)))
                                             (_%g3555135593%_
                                              (lambda (_%g3555335564%_)
                                                ((lambda (_%g3555435567%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g3538835466%_
                          _%g3548635536%_)
                         (foldr (lambda (_%g3558135585%_
                                         _%g3558235588%_
                                         _%g3558335590%_)
                                  (cons (cons _%g3558235588%_
                                              (cons _%g3558135585%_ '()))
                                        _%g3558335590%_))
                                '()
                                _%g3538835466%_
                                _%g3548635536%_))
                       (cons _%g3555435567%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3555335564%_))))
                                        (_%g3555135593%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35382%_
                                          (foldr (lambda (_%g3559635599%_
                                                          _%g3559735602%_)
                                                   (cons _%g3559635599%_
                                                         _%g3559735602%_))
                                                 '()
                                                 _%g3548635536%_)
                                          _%g3538735464%_))))
                                    _%$e3549535533%_))))))
                   (_%loop3549035514%_ _%target3548735508%_ '()))
                 (_%g3548435501%_ _%g3548535505%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3548435501%_
                                                _%g3548535505%_)))))
                                   (_%g3548335605%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3560835611%_
                                                     _%g3560935614%_)
                                              (cons _%g3560835611%_
                                                    _%g3560935614%_))
                                            '()
                                            _%g3538835466%_))))
                                 (_%g3538535409%_ _%g3538635413%_)))
                           _%tl3539435433%_
                           _%e3540335461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3539835442%_
                                                   _%target3539535436%_
                                                   '()))
                                                (_%g3538535409%_
                                                 _%g3538635413%_)))))
                                      (_%g3538535409%_ _%g3538635413%_))))
                              (_%g3538535409%_ _%g3538635413%_))))
                      (_%g3538535409%_ _%g3538635413%_)))))
          (_%g3538435617%_ _%stx35382%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35623%_)
        (let* ((_%__stx3918739188%_ _%$stx35623%_)
               (_%g3562935712%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3918739188%_))))
          (let ((_%__kont3919039191%_
                 (lambda (_%g3563136032%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3604836051%_ _%g3604936054%_)
                                        (cons _%g3604836051%_ _%g3604936054%_))
                                      '()
                                      _%g3563136032%_)))))
                (_%__kont3919439195%_
                 (lambda (_%g3564735942%_
                          _%g3564835944%_
                          _%g3564935945%_
                          _%g3565035946%_)
                   (cons _%g3565035946%_
                         (cons (cons (cons _%g3564935945%_
                                           (cons _%g3564835944%_ '()))
                                     '())
                               (foldr (lambda (_%g3596835971%_ _%g3596935974%_)
                                        (cons _%g3596835971%_ _%g3596935974%_))
                                      '()
                                      _%g3564735942%_)))))
                (_%__kont3919839199%_
                 (lambda (_%g3567235817%_ _%g3567335819%_ _%g3567435820%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3584235849%_ _%g3584335852%_)
                                        (cons _%g3584235849%_ _%g3584335852%_))
                                      '()
                                      _%g3567335819%_)
                               (cons (cons (foldr (lambda (_%g3584435855%_
                                                           _%g3584535858%_)
                                                    (cons _%g3584435855%_
                                                          _%g3584535858%_))
                                                  '()
                                                  _%g3567435820%_)
                                           (foldr (lambda (_%g3584635861%_
                                                           _%g3584735864%_)
                                                    (cons _%g3584635861%_
                                                          _%g3584735864%_))
                                                  '()
                                                  _%g3567235817%_))
                                     '()))))))
            (let* ((_%__match3928039281%_
                    (lambda (_%e3567535719%_
                             _%hd3567635723%_
                             _%tl3567735726%_
                             _%e3567835729%_
                             _%hd3567935733%_
                             _%tl3568035736%_
                             _%__splice3920039201%_
                             _%target3568135739%_
                             _%tl3568335742%_)
                      (letrec ((_%loop3568435745%_
                                (lambda (_%hd3568235749%_
                                         _%expr3568835752%_
                                         _%hd3568935753%_)
                                  (if (gx#stx-pair? _%hd3568235749%_)
                                      (let ((_%e3568535755%_
                                             (gx#syntax-e _%hd3568235749%_)))
                                        (let ((_%lp-tl3568735762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3568535755%_)))
                                              (_%lp-hd3568635759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3568535755%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3568635759%_)
                                              (let ((_%e3569235765%_
                                                     (gx#syntax-e
                                                      _%lp-hd3568635759%_)))
                                                (let ((_%tl3569435772%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3569235765%_)))
                                                      (_%hd3569335769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3569235765%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3569435772%_)
                                                      (let ((_%e3569535775%_
                                                             (gx#syntax-e
                                                              _%tl3569435772%_)))
                                                        (let ((_%tl3569735782%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3569535775%_)))
                      (_%hd3569635779%_
                       (let () (declare (not safe)) (##car _%e3569535775%_))))
                  (if (gx#stx-null? _%tl3569735782%_)
                      (_%loop3568435745%_
                       _%lp-tl3568735762%_
                       (cons _%hd3569635779%_ _%expr3568835752%_)
                       (cons _%hd3569335769%_ _%hd3568935753%_))
                      (let () (declare (not safe)) (_%g3562935712%_)))))
              (let () (declare (not safe)) (_%g3562935712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3562935712%_)))))
                                      (let ((_%hd3569135787%_
                                             (reverse _%hd3568935753%_))
                                            (_%expr3569035785%_
                                             (reverse _%expr3568835752%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3568035736%_)
                                            (let ((_%__splice3920239203%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3568035736%_
                                                    '0)))
                                              (let ((_%tl3570035792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3920239203%_
                                                        '1)))
                                                    (_%target3569835789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3920239203%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3570035792%_)
                                                    (letrec ((_%loop3570135795%_
                                                              (lambda (_%hd3569935799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3570535802%_)
                        (if (gx#stx-pair? _%hd3569935799%_)
                            (let ((_%e3570235804%_
                                   (gx#syntax-e _%hd3569935799%_)))
                              (let ((_%lp-tl3570435811%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3570235804%_)))
                                    (_%lp-hd3570335808%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3570235804%_))))
                                (_%loop3570135795%_
                                 _%lp-tl3570435811%_
                                 (cons _%lp-hd3570335808%_
                                       _%body3570535802%_))))
                            (let ((_%body3570635814%_
                                   (reverse _%body3570535802%_)))
                              (_%__kont3919839199%_
                               _%body3570635814%_
                               _%expr3569035785%_
                               _%hd3569135787%_))))))
              (_%loop3570135795%_ _%target3569835789%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3562935712%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3562935712%_))))))))
                        (_%loop3568435745%_ _%target3568135739%_ '() '()))))
                   (_%__match3927239273%_
                    (lambda (_%e3567535719%_
                             _%hd3567635723%_
                             _%tl3567735726%_
                             _%e3567835729%_
                             _%hd3567935733%_
                             _%tl3568035736%_)
                      (if (gx#stx-pair/null? _%hd3567935733%_)
                          (let ((_%__splice3920039201%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3567935733%_
                                  '0)))
                            (let ((_%tl3568335742%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3920039201%_ '1)))
                                  (_%target3568135739%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3920039201%_
                                      '0))))
                              (if (gx#stx-null? _%tl3568335742%_)
                                  (_%__match3928039281%_
                                   _%e3567535719%_
                                   _%hd3567635723%_
                                   _%tl3567735726%_
                                   _%e3567835729%_
                                   _%hd3567935733%_
                                   _%tl3568035736%_
                                   _%__splice3920039201%_
                                   _%target3568135739%_
                                   _%tl3568335742%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3562935712%_)))))
                          (let () (declare (not safe)) (_%g3562935712%_)))))
                   (_%__match3926039261%_
                    (lambda (_%e3565135874%_
                             _%hd3565235878%_
                             _%tl3565335881%_
                             _%e3565435884%_
                             _%hd3565535888%_
                             _%tl3565635891%_
                             _%e3565735894%_
                             _%hd3565835898%_
                             _%tl3565935901%_
                             _%e3566035904%_
                             _%hd3566135908%_
                             _%tl3566235911%_
                             _%__splice3919639197%_
                             _%target3566335914%_
                             _%tl3566535917%_)
                      (letrec ((_%loop3566635920%_
                                (lambda (_%hd3566435924%_ _%body3567035927%_)
                                  (if (gx#stx-pair? _%hd3566435924%_)
                                      (let ((_%e3566735929%_
                                             (gx#syntax-e _%hd3566435924%_)))
                                        (let ((_%lp-tl3566935936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3566735929%_)))
                                              (_%lp-hd3566835933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3566735929%_))))
                                          (_%loop3566635920%_
                                           _%lp-tl3566935936%_
                                           (cons _%lp-hd3566835933%_
                                                 _%body3567035927%_))))
                                      (let ((_%body3567135939%_
                                             (reverse _%body3567035927%_)))
                                        (let ((_%g3564735942%_
                                               _%body3567135939%_)
                                              (_%g3564835944%_
                                               _%hd3566135908%_)
                                              (_%g3564935945%_
                                               _%hd3565835898%_)
                                              (_%g3565035946%_
                                               _%hd3565235878%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g3564935945%_)
                                              (_%__kont3919439195%_
                                               _%g3564735942%_
                                               _%g3564835944%_
                                               _%g3564935945%_
                                               _%g3565035946%_)
                                              (_%__match3927239273%_
                                               _%e3565135874%_
                                               _%hd3565235878%_
                                               _%tl3565335881%_
                                               _%e3565435884%_
                                               _%hd3565535888%_
                                               _%tl3565635891%_))))))))
                        (_%loop3566635920%_ _%target3566335914%_ '()))))
                   (_%__match3922639227%_
                    (lambda (_%e3563235984%_
                             _%hd3563335988%_
                             _%tl3563435991%_
                             _%e3563535994%_
                             _%hd3563635998%_
                             _%tl3563736001%_
                             _%__splice3919239193%_
                             _%target3563836004%_
                             _%tl3564036007%_)
                      (letrec ((_%loop3564136010%_
                                (lambda (_%hd3563936014%_ _%body3564536017%_)
                                  (if (gx#stx-pair? _%hd3563936014%_)
                                      (let ((_%e3564236019%_
                                             (gx#syntax-e _%hd3563936014%_)))
                                        (let ((_%lp-tl3564436026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3564236019%_)))
                                              (_%lp-hd3564336023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3564236019%_))))
                                          (_%loop3564136010%_
                                           _%lp-tl3564436026%_
                                           (cons _%lp-hd3564336023%_
                                                 _%body3564536017%_))))
                                      (let ((_%body3564636029%_
                                             (reverse _%body3564536017%_)))
                                        (_%__kont3919039191%_
                                         _%body3564636029%_))))))
                        (_%loop3564136010%_ _%target3563836004%_ '())))))
              (if (gx#stx-pair? _%__stx3918739188%_)
                  (let ((_%e3563235984%_ (gx#syntax-e _%__stx3918739188%_)))
                    (let ((_%tl3563435991%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3563235984%_)))
                          (_%hd3563335988%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3563235984%_))))
                      (if (gx#stx-pair? _%tl3563435991%_)
                          (let ((_%e3563535994%_
                                 (gx#syntax-e _%tl3563435991%_)))
                            (let ((_%tl3563736001%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3563535994%_)))
                                  (_%hd3563635998%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3563535994%_))))
                              (if (gx#stx-null? _%hd3563635998%_)
                                  (if (gx#stx-pair/null? _%tl3563736001%_)
                                      (let ((_%__splice3919239193%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3563736001%_
                                              '0)))
                                        (let ((_%tl3564036007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3919239193%_
                                                  '1)))
                                              (_%target3563836004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3919239193%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3564036007%_)
                                              (_%__match3922639227%_
                                               _%e3563235984%_
                                               _%hd3563335988%_
                                               _%tl3563435991%_
                                               _%e3563535994%_
                                               _%hd3563635998%_
                                               _%tl3563736001%_
                                               _%__splice3919239193%_
                                               _%target3563836004%_
                                               _%tl3564036007%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3563635998%_)
                                                  (let ((_%__splice3920039201%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3563635998%_
                                                          '0)))
                                                    (let ((_%tl3568335742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3920039201%_
                                                              '1)))
                                                          (_%target3568135739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3920039201%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3568335742%_)
                                                          (_%__match3928039281%_
                                                           _%e3563235984%_
                                                           _%hd3563335988%_
                                                           _%tl3563435991%_
                                                           _%e3563535994%_
                                                           _%hd3563635998%_
                                                           _%tl3563736001%_
                                                           _%__splice3920039201%_
                                                           _%target3568135739%_
                                                           _%tl3568335742%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3562935712%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3562935712%_))))))
                                      (if (gx#stx-pair/null? _%hd3563635998%_)
                                          (let ((_%__splice3920039201%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3563635998%_
                                                  '0)))
                                            (let ((_%tl3568335742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3920039201%_
                                                      '1)))
                                                  (_%target3568135739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3920039201%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3568335742%_)
                                                  (_%__match3928039281%_
                                                   _%e3563235984%_
                                                   _%hd3563335988%_
                                                   _%tl3563435991%_
                                                   _%e3563535994%_
                                                   _%hd3563635998%_
                                                   _%tl3563736001%_
                                                   _%__splice3920039201%_
                                                   _%target3568135739%_
                                                   _%tl3568335742%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3562935712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3562935712%_))))
                                  (if (gx#stx-pair? _%hd3563635998%_)
                                      (let ((_%e3565735894%_
                                             (gx#syntax-e _%hd3563635998%_)))
                                        (let ((_%tl3565935901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3565735894%_)))
                                              (_%hd3565835898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3565735894%_))))
                                          (if (gx#stx-pair? _%tl3565935901%_)
                                              (let ((_%e3566035904%_
                                                     (gx#syntax-e
                                                      _%tl3565935901%_)))
                                                (let ((_%tl3566235911%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3566035904%_)))
                                                      (_%hd3566135908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3566035904%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3566235911%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3563736001%_)
                                                          (let ((_%__splice3919639197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3563736001%_ '0)))
                    (let ((_%tl3566535917%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3919639197%_ '1)))
                          (_%target3566335914%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3919639197%_ '0))))
                      (if (gx#stx-null? _%tl3566535917%_)
                          (_%__match3926039261%_
                           _%e3563235984%_
                           _%hd3563335988%_
                           _%tl3563435991%_
                           _%e3563535994%_
                           _%hd3563635998%_
                           _%tl3563736001%_
                           _%e3565735894%_
                           _%hd3565835898%_
                           _%tl3565935901%_
                           _%e3566035904%_
                           _%hd3566135908%_
                           _%tl3566235911%_
                           _%__splice3919639197%_
                           _%target3566335914%_
                           _%tl3566535917%_)
                          (if (gx#stx-pair/null? _%hd3563635998%_)
                              (let ((_%__splice3920039201%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3563635998%_
                                      '0)))
                                (let ((_%tl3568335742%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3920039201%_
                                          '1)))
                                      (_%target3568135739%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3920039201%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3568335742%_)
                                      (_%__match3928039281%_
                                       _%e3563235984%_
                                       _%hd3563335988%_
                                       _%tl3563435991%_
                                       _%e3563535994%_
                                       _%hd3563635998%_
                                       _%tl3563736001%_
                                       _%__splice3920039201%_
                                       _%target3568135739%_
                                       _%tl3568335742%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3562935712%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3562935712%_))))))
                  (if (gx#stx-pair/null? _%hd3563635998%_)
                      (let ((_%__splice3920039201%_
                             (gx#syntax-split-splice->vector
                              _%hd3563635998%_
                              '0)))
                        (let ((_%tl3568335742%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3920039201%_ '1)))
                              (_%target3568135739%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3920039201%_ '0))))
                          (if (gx#stx-null? _%tl3568335742%_)
                              (_%__match3928039281%_
                               _%e3563235984%_
                               _%hd3563335988%_
                               _%tl3563435991%_
                               _%e3563535994%_
                               _%hd3563635998%_
                               _%tl3563736001%_
                               _%__splice3920039201%_
                               _%target3568135739%_
                               _%tl3568335742%_)
                              (let ()
                                (declare (not safe))
                                (_%g3562935712%_)))))
                      (let () (declare (not safe)) (_%g3562935712%_))))
              (if (gx#stx-pair/null? _%hd3563635998%_)
                  (let ((_%__splice3920039201%_
                         (gx#syntax-split-splice->vector _%hd3563635998%_ '0)))
                    (let ((_%tl3568335742%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3920039201%_ '1)))
                          (_%target3568135739%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3920039201%_ '0))))
                      (if (gx#stx-null? _%tl3568335742%_)
                          (_%__match3928039281%_
                           _%e3563235984%_
                           _%hd3563335988%_
                           _%tl3563435991%_
                           _%e3563535994%_
                           _%hd3563635998%_
                           _%tl3563736001%_
                           _%__splice3920039201%_
                           _%target3568135739%_
                           _%tl3568335742%_)
                          (let () (declare (not safe)) (_%g3562935712%_)))))
                  (let () (declare (not safe)) (_%g3562935712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3563635998%_)
                                                  (let ((_%__splice3920039201%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3563635998%_
                                                          '0)))
                                                    (let ((_%tl3568335742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3920039201%_
                                                              '1)))
                                                          (_%target3568135739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3920039201%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3568335742%_)
                                                          (_%__match3928039281%_
                                                           _%e3563235984%_
                                                           _%hd3563335988%_
                                                           _%tl3563435991%_
                                                           _%e3563535994%_
                                                           _%hd3563635998%_
                                                           _%tl3563736001%_
                                                           _%__splice3920039201%_
                                                           _%target3568135739%_
                                                           _%tl3568335742%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3562935712%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3562935712%_))))))
                                      (if (gx#stx-pair/null? _%hd3563635998%_)
                                          (let ((_%__splice3920039201%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3563635998%_
                                                  '0)))
                                            (let ((_%tl3568335742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3920039201%_
                                                      '1)))
                                                  (_%target3568135739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3920039201%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3568335742%_)
                                                  (_%__match3928039281%_
                                                   _%e3563235984%_
                                                   _%hd3563335988%_
                                                   _%tl3563435991%_
                                                   _%e3563535994%_
                                                   _%hd3563635998%_
                                                   _%tl3563736001%_
                                                   _%__splice3920039201%_
                                                   _%target3568135739%_
                                                   _%tl3568335742%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3562935712%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3562935712%_)))))))
                          (let () (declare (not safe)) (_%g3562935712%_)))))
                  (let () (declare (not safe)) (_%g3562935712%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36065%_)
        (let* ((_%__stx3928339284%_ _%$stx36065%_)
               (_%g3607036122%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3928339284%_))))
          (let ((_%__kont3928639287%_
                 (lambda (_%g3607236288%_
                          _%g3607336290%_
                          _%g3607436291%_
                          _%g3607536292%_
                          _%g3607636293%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g3607536292%_
                                           (cons _%g3607436291%_ '()))
                                     '())
                               (cons (cons _%g3607636293%_
                                           (cons _%g3607336290%_
                                                 (foldr (lambda (_%g3631836321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3631936324%_)
                  (cons _%g3631836321%_ _%g3631936324%_))
                '()
                _%g3607236288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3929039291%_
                 (lambda (_%g3610136177%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3619436197%_ _%g3619536200%_)
                                        (cons _%g3619436197%_ _%g3619536200%_))
                                      '()
                                      _%g3610136177%_))))))
            (let* ((_%__match3935639357%_
                    (lambda (_%e3610236129%_
                             _%hd3610336133%_
                             _%tl3610436136%_
                             _%e3610536139%_
                             _%hd3610636143%_
                             _%tl3610736146%_
                             _%__splice3929239293%_
                             _%target3610836149%_
                             _%tl3611036152%_)
                      (letrec ((_%loop3611136155%_
                                (lambda (_%hd3610936159%_ _%body3611536162%_)
                                  (if (gx#stx-pair? _%hd3610936159%_)
                                      (let ((_%e3611236164%_
                                             (gx#syntax-e _%hd3610936159%_)))
                                        (let ((_%lp-tl3611436171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3611236164%_)))
                                              (_%lp-hd3611336168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3611236164%_))))
                                          (_%loop3611136155%_
                                           _%lp-tl3611436171%_
                                           (cons _%lp-hd3611336168%_
                                                 _%body3611536162%_))))
                                      (let ((_%body3611636174%_
                                             (reverse _%body3611536162%_)))
                                        (_%__kont3929039291%_
                                         _%body3611636174%_))))))
                        (_%loop3611136155%_ _%target3610836149%_ '()))))
                   (_%__match3933439335%_
                    (lambda (_%e3607736210%_
                             _%hd3607836214%_
                             _%tl3607936217%_
                             _%e3608036220%_
                             _%hd3608136224%_
                             _%tl3608236227%_
                             _%e3608336230%_
                             _%hd3608436234%_
                             _%tl3608536237%_
                             _%e3608636240%_
                             _%hd3608736244%_
                             _%tl3608836247%_
                             _%e3608936250%_
                             _%hd3609036254%_
                             _%tl3609136257%_
                             _%__splice3928839289%_
                             _%target3609236260%_
                             _%tl3609436263%_)
                      (letrec ((_%loop3609536266%_
                                (lambda (_%hd3609336270%_ _%body3609936273%_)
                                  (if (gx#stx-pair? _%hd3609336270%_)
                                      (let ((_%e3609636275%_
                                             (gx#syntax-e _%hd3609336270%_)))
                                        (let ((_%lp-tl3609836282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3609636275%_)))
                                              (_%lp-hd3609736279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3609636275%_))))
                                          (_%loop3609536266%_
                                           _%lp-tl3609836282%_
                                           (cons _%lp-hd3609736279%_
                                                 _%body3609936273%_))))
                                      (let ((_%body3610036285%_
                                             (reverse _%body3609936273%_)))
                                        (_%__kont3928639287%_
                                         _%body3610036285%_
                                         _%tl3608536237%_
                                         _%hd3609036254%_
                                         _%hd3608736244%_
                                         _%hd3607836214%_))))))
                        (_%loop3609536266%_ _%target3609236260%_ '())))))
              (if (gx#stx-pair? _%__stx3928339284%_)
                  (let ((_%e3607736210%_ (gx#syntax-e _%__stx3928339284%_)))
                    (let ((_%tl3607936217%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3607736210%_)))
                          (_%hd3607836214%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3607736210%_))))
                      (if (gx#stx-pair? _%tl3607936217%_)
                          (let ((_%e3608036220%_
                                 (gx#syntax-e _%tl3607936217%_)))
                            (let ((_%tl3608236227%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3608036220%_)))
                                  (_%hd3608136224%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3608036220%_))))
                              (if (gx#stx-pair? _%hd3608136224%_)
                                  (let ((_%e3608336230%_
                                         (gx#syntax-e _%hd3608136224%_)))
                                    (let ((_%tl3608536237%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3608336230%_)))
                                          (_%hd3608436234%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3608336230%_))))
                                      (if (gx#stx-pair? _%hd3608436234%_)
                                          (let ((_%e3608636240%_
                                                 (gx#syntax-e
                                                  _%hd3608436234%_)))
                                            (let ((_%tl3608836247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3608636240%_)))
                                                  (_%hd3608736244%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3608636240%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3608836247%_)
                                                  (let ((_%e3608936250%_
                                                         (gx#syntax-e
                                                          _%tl3608836247%_)))
                                                    (let ((_%tl3609136257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3608936250%_)))
                                                          (_%hd3609036254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3608936250%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3609136257%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3608236227%_)
                                                              (let ((_%__splice3928839289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3608236227%_
                              '0)))
                        (let ((_%tl3609436263%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3928839289%_ '1)))
                              (_%target3609236260%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3928839289%_ '0))))
                          (if (gx#stx-null? _%tl3609436263%_)
                              (_%__match3933439335%_
                               _%e3607736210%_
                               _%hd3607836214%_
                               _%tl3607936217%_
                               _%e3608036220%_
                               _%hd3608136224%_
                               _%tl3608236227%_
                               _%e3608336230%_
                               _%hd3608436234%_
                               _%tl3608536237%_
                               _%e3608636240%_
                               _%hd3608736244%_
                               _%tl3608836247%_
                               _%e3608936250%_
                               _%hd3609036254%_
                               _%tl3609136257%_
                               _%__splice3928839289%_
                               _%target3609236260%_
                               _%tl3609436263%_)
                              (let ()
                                (declare (not safe))
                                (_%g3607036122%_)))))
                      (let () (declare (not safe)) (_%g3607036122%_)))
                  (let () (declare (not safe)) (_%g3607036122%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3607036122%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3607036122%_)))))
                                  (if (gx#stx-null? _%hd3608136224%_)
                                      (if (gx#stx-pair/null? _%tl3608236227%_)
                                          (let ((_%__splice3929239293%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3608236227%_
                                                  '0)))
                                            (let ((_%tl3611036152%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3929239293%_
                                                      '1)))
                                                  (_%target3610836149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3929239293%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3611036152%_)
                                                  (_%__match3935639357%_
                                                   _%e3607736210%_
                                                   _%hd3607836214%_
                                                   _%tl3607936217%_
                                                   _%e3608036220%_
                                                   _%hd3608136224%_
                                                   _%tl3608236227%_
                                                   _%__splice3929239293%_
                                                   _%target3610836149%_
                                                   _%tl3611036152%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3607036122%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3607036122%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3607036122%_))))))
                          (let () (declare (not safe)) (_%g3607036122%_)))))
                  (let () (declare (not safe)) (_%g3607036122%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36333%_)
        (let* ((_%__stx3935939360%_ _%$stx36333%_)
               (_%g3634436490%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3935939360%_))))
          (let ((_%__kont3936239363%_
                 (lambda (_%g3634637090%_ _%g3634737092%_ _%g3634837093%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3711437117%_ _%g3711537120%_)
                                  (cons (cons _%g3634837093%_
                                              (cons _%g3711437117%_
                                                    (cons _%g3634637090%_
                                                          '())))
                                        _%g3711537120%_))
                                '()
                                _%g3634737092%_))))
                (_%__kont3936639367%_
                 (lambda (_%g3637036982%_ _%g3637136984%_ _%g3637236985%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3700637009%_ _%g3700737012%_)
                                  (cons (cons _%g3637236985%_
                                              (cons _%g3700637009%_
                                                    (cons _%g3637036982%_
                                                          '())))
                                        _%g3700737012%_))
                                '()
                                _%g3637136984%_))))
                (_%__kont3937039371%_
                 (lambda (_%g3639436884%_ _%g3639536886%_ _%g3639636887%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g3639636887%_
                                     (cons _%g3639536886%_
                                           (cons _%g3639436884%_ '())))
                               '()))))
                (_%__kont3937239373%_
                 (lambda (_%g3641236810%_ _%g3641336812%_)
                   (cons _%g3641336812%_ (cons _%g3641236810%_ '()))))
                (_%__kont3937439375%_
                 (lambda (_%g3642336758%_ _%g3642436760%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g3642436760%_
                                           (cons _%g3642336758%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3937639377%_
                 (lambda (_%g3643136710%_ _%g3643236712%_ _%g3643336713%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g3643336713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g3643236712%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3643136710%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3937839379%_
                 (lambda (_%g3644636641%_ _%g3644736643%_ _%g3644836644%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3644836644%_
                                                       (cons _%g3644736643%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3644636641%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3938039381%_
                 (lambda (_%g3646236561%_
                          _%g3646336563%_
                          _%g3646436564%_
                          _%g3646536565%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g3646536565%_
                                                       (cons _%g3646436564%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g3646236561%_
                                                             (cons (cons _%g3646336563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3953239533%_
                    (lambda (_%e3643436670%_
                             _%hd3643536674%_
                             _%tl3643636677%_
                             _%e3643736680%_
                             _%hd3643836684%_
                             _%tl3643936687%_
                             _%e3644036690%_
                             _%hd3644136694%_
                             _%tl3644236697%_)
                      (if (gx#identifier? _%hd3644136694%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39734_|
                               _%hd3644136694%_)
                              (if (gx#stx-pair? _%tl3644236697%_)
                                  (let ((_%e3644336700%_
                                         (gx#syntax-e _%tl3644236697%_)))
                                    (let ((_%tl3644536707%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3644336700%_)))
                                          (_%hd3644436704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3644336700%_))))
                                      (if (gx#stx-null? _%tl3644536707%_)
                                          (_%__kont3937639377%_
                                           _%hd3644436704%_
                                           _%hd3643836684%_
                                           _%hd3643536674%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634436490%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634436490%_)))
                              (let () (declare (not safe)) (_%g3634436490%_)))
                          (if (gx#stx-datum? _%hd3644136694%_)
                              (let ((_%e3645836627%_
                                     (gx#stx-e _%hd3644136694%_)))
                                (if (equal? _%e3645836627%_ '::)
                                    (if (gx#stx-pair? _%tl3644236697%_)
                                        (let ((_%e3645936631%_
                                               (gx#syntax-e _%tl3644236697%_)))
                                          (let ((_%tl3646136638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3645936631%_)))
                                                (_%hd3646036635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3645936631%_))))
                                            (if (gx#stx-null? _%tl3646136638%_)
                                                (_%__kont3937839379%_
                                                 _%hd3646036635%_
                                                 _%hd3643836684%_
                                                 _%hd3643536674%_)
                                                (if (gx#stx-pair?
                                                     _%tl3646136638%_)
                                                    (let ((_%e3647936541%_
                                                           (gx#syntax-e
                                                            _%tl3646136638%_)))
                                                      (let ((_%tl3648136548%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3647936541%_)))
                    (_%hd3648036545%_
                     (let () (declare (not safe)) (##car _%e3647936541%_))))
                (if (gx#identifier? _%hd3648036545%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39735_|
                         _%hd3648036545%_)
                        (if (gx#stx-pair? _%tl3648136548%_)
                            (let ((_%e3648236551%_
                                   (gx#syntax-e _%tl3648136548%_)))
                              (let ((_%tl3648436558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3648236551%_)))
                                    (_%hd3648336555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3648236551%_))))
                                (if (gx#stx-null? _%tl3648436558%_)
                                    (_%__kont3938039381%_
                                     _%hd3648336555%_
                                     _%hd3646036635%_
                                     _%hd3643836684%_
                                     _%hd3643536674%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_)))))
                            (let () (declare (not safe)) (_%g3634436490%_)))
                        (let () (declare (not safe)) (_%g3634436490%_)))
                    (let () (declare (not safe)) (_%g3634436490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3634436490%_))))))
                   (_%__match3951239513%_
                    (lambda (_%e3642536738%_
                             _%hd3642636742%_
                             _%tl3642736745%_
                             _%e3642836748%_
                             _%hd3642936752%_
                             _%tl3643036755%_)
                      (if (gx#stx-null? _%tl3643036755%_)
                          (_%__kont3937439375%_
                           _%hd3642936752%_
                           _%hd3642636742%_)
                          (if (gx#stx-pair? _%tl3643036755%_)
                              (let ((_%e3644036690%_
                                     (gx#syntax-e _%tl3643036755%_)))
                                (let ((_%tl3644236697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3644036690%_)))
                                      (_%hd3644136694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3644036690%_))))
                                  (if (gx#identifier? _%hd3644136694%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39734_|
                                           _%hd3644136694%_)
                                          (if (gx#stx-pair? _%tl3644236697%_)
                                              (let ((_%e3644336700%_
                                                     (gx#syntax-e
                                                      _%tl3644236697%_)))
                                                (let ((_%tl3644536707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3644336700%_)))
                                                      (_%hd3644436704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3644336700%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3644536707%_)
                                                      (_%__kont3937639377%_
                                                       _%hd3644436704%_
                                                       _%hd3642936752%_
                                                       _%hd3642636742%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3634436490%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3634436490%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634436490%_)))
                                      (if (gx#stx-datum? _%hd3644136694%_)
                                          (let ((_%e3645836627%_
                                                 (gx#stx-e _%hd3644136694%_)))
                                            (if (equal? _%e3645836627%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3644236697%_)
                                                    (let ((_%e3645936631%_
                                                           (gx#syntax-e
                                                            _%tl3644236697%_)))
                                                      (let ((_%tl3646136638%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3645936631%_)))
                    (_%hd3646036635%_
                     (let () (declare (not safe)) (##car _%e3645936631%_))))
                (if (gx#stx-null? _%tl3646136638%_)
                    (_%__kont3937839379%_
                     _%hd3646036635%_
                     _%hd3642936752%_
                     _%hd3642636742%_)
                    (if (gx#stx-pair? _%tl3646136638%_)
                        (let ((_%e3647936541%_ (gx#syntax-e _%tl3646136638%_)))
                          (let ((_%tl3648136548%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3647936541%_)))
                                (_%hd3648036545%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3647936541%_))))
                            (if (gx#identifier? _%hd3648036545%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39735_|
                                     _%hd3648036545%_)
                                    (if (gx#stx-pair? _%tl3648136548%_)
                                        (let ((_%e3648236551%_
                                               (gx#syntax-e _%tl3648136548%_)))
                                          (let ((_%tl3648436558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3648236551%_)))
                                                (_%hd3648336555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3648236551%_))))
                                            (if (gx#stx-null? _%tl3648436558%_)
                                                (_%__kont3938039381%_
                                                 _%hd3648336555%_
                                                 _%hd3646036635%_
                                                 _%hd3642936752%_
                                                 _%hd3642636742%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3634436490%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3634436490%_)))))
                        (let () (declare (not safe)) (_%g3634436490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3634436490%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634436490%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3634436490%_))))))
                   (_%__match3944239443%_
                    (lambda (_%e3637336914%_
                             _%hd3637436918%_
                             _%tl3637536921%_
                             _%e3637636924%_
                             _%hd3637736928%_
                             _%tl3637836931%_
                             _%e3637936934%_
                             _%hd3638036938%_
                             _%tl3638136941%_
                             _%__splice3936839369%_
                             _%target3638236944%_
                             _%tl3638436947%_)
                      (letrec ((_%loop3638536950%_
                                (lambda (_%hd3638336954%_ _%pred3638936957%_)
                                  (if (gx#stx-pair? _%hd3638336954%_)
                                      (let ((_%e3638636959%_
                                             (gx#syntax-e _%hd3638336954%_)))
                                        (let ((_%lp-tl3638836966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3638636959%_)))
                                              (_%lp-hd3638736963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3638636959%_))))
                                          (_%loop3638536950%_
                                           _%lp-tl3638836966%_
                                           (cons _%lp-hd3638736963%_
                                                 _%pred3638936957%_))))
                                      (let ((_%pred3639036969%_
                                             (reverse _%pred3638936957%_)))
                                        (if (gx#stx-pair? _%tl3637836931%_)
                                            (let ((_%e3639136972%_
                                                   (gx#syntax-e
                                                    _%tl3637836931%_)))
                                              (let ((_%tl3639336979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3639136972%_)))
                                                    (_%hd3639236976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3639136972%_))))
                                                (if (gx#stx-null?
                                                     _%tl3639336979%_)
                                                    (_%__kont3936639367%_
                                                     _%hd3639236976%_
                                                     _%pred3639036969%_
                                                     _%hd3637436918%_)
                                                    (_%__match3953239533%_
                                                     _%e3637336914%_
                                                     _%hd3637436918%_
                                                     _%tl3637536921%_
                                                     _%e3637636924%_
                                                     _%hd3637736928%_
                                                     _%tl3637836931%_
                                                     _%e3639136972%_
                                                     _%hd3639236976%_
                                                     _%tl3639336979%_))))
                                            (_%__match3951239513%_
                                             _%e3637336914%_
                                             _%hd3637436918%_
                                             _%tl3637536921%_
                                             _%e3637636924%_
                                             _%hd3637736928%_
                                             _%tl3637836931%_)))))))
                        (_%loop3638536950%_ _%target3638236944%_ '()))))
                   (_%__match3941239413%_
                    (lambda (_%e3634937022%_
                             _%hd3635037026%_
                             _%tl3635137029%_
                             _%e3635237032%_
                             _%hd3635337036%_
                             _%tl3635437039%_
                             _%e3635537042%_
                             _%hd3635637046%_
                             _%tl3635737049%_
                             _%__splice3936439365%_
                             _%target3635837052%_
                             _%tl3636037055%_)
                      (letrec ((_%loop3636137058%_
                                (lambda (_%hd3635937062%_ _%pred3636537065%_)
                                  (if (gx#stx-pair? _%hd3635937062%_)
                                      (let ((_%e3636237067%_
                                             (gx#syntax-e _%hd3635937062%_)))
                                        (let ((_%lp-tl3636437074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3636237067%_)))
                                              (_%lp-hd3636337071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3636237067%_))))
                                          (_%loop3636137058%_
                                           _%lp-tl3636437074%_
                                           (cons _%lp-hd3636337071%_
                                                 _%pred3636537065%_))))
                                      (let ((_%pred3636637077%_
                                             (reverse _%pred3636537065%_)))
                                        (if (gx#stx-pair? _%tl3635437039%_)
                                            (let ((_%e3636737080%_
                                                   (gx#syntax-e
                                                    _%tl3635437039%_)))
                                              (let ((_%tl3636937087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3636737080%_)))
                                                    (_%hd3636837084%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3636737080%_))))
                                                (if (gx#stx-null?
                                                     _%tl3636937087%_)
                                                    (_%__kont3936239363%_
                                                     _%hd3636837084%_
                                                     _%pred3636637077%_
                                                     _%hd3635037026%_)
                                                    (_%__match3953239533%_
                                                     _%e3634937022%_
                                                     _%hd3635037026%_
                                                     _%tl3635137029%_
                                                     _%e3635237032%_
                                                     _%hd3635337036%_
                                                     _%tl3635437039%_
                                                     _%e3636737080%_
                                                     _%hd3636837084%_
                                                     _%tl3636937087%_))))
                                            (_%__match3951239513%_
                                             _%e3634937022%_
                                             _%hd3635037026%_
                                             _%tl3635137029%_
                                             _%e3635237032%_
                                             _%hd3635337036%_
                                             _%tl3635437039%_)))))))
                        (_%loop3636137058%_ _%target3635837052%_ '())))))
              (if (gx#stx-pair? _%__stx3935939360%_)
                  (let ((_%e3634937022%_ (gx#syntax-e _%__stx3935939360%_)))
                    (let ((_%tl3635137029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3634937022%_)))
                          (_%hd3635037026%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3634937022%_))))
                      (if (gx#stx-pair? _%tl3635137029%_)
                          (let ((_%e3635237032%_
                                 (gx#syntax-e _%tl3635137029%_)))
                            (let ((_%tl3635437039%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3635237032%_)))
                                  (_%hd3635337036%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3635237032%_))))
                              (if (gx#stx-pair? _%hd3635337036%_)
                                  (let ((_%e3635537042%_
                                         (gx#syntax-e _%hd3635337036%_)))
                                    (let ((_%tl3635737049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3635537042%_)))
                                          (_%hd3635637046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3635537042%_))))
                                      (if (gx#identifier? _%hd3635637046%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39736_|
                                               _%hd3635637046%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3635737049%_)
                                                  (let ((_%__splice3936439365%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3635737049%_
                                                          '0)))
                                                    (let ((_%tl3636037055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3936439365%_
                                                              '1)))
                                                          (_%target3635837052%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3936439365%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3636037055%_)
                                                          (_%__match3941239413%_
                                                           _%e3634937022%_
                                                           _%hd3635037026%_
                                                           _%tl3635137029%_
                                                           _%e3635237032%_
                                                           _%hd3635337036%_
                                                           _%tl3635437039%_
                                                           _%e3635537042%_
                                                           _%hd3635637046%_
                                                           _%tl3635737049%_
                                                           _%__splice3936439365%_
                                                           _%target3635837052%_
                                                           _%tl3636037055%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3635437039%_)
                                                              (let ((_%e3642036800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3635437039%_)))
                        (let ((_%tl3642236807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3642036800%_)))
                              (_%hd3642136804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3642036800%_))))
                          (if (gx#stx-null? _%tl3642236807%_)
                              (_%__kont3937239373%_
                               _%hd3642136804%_
                               _%hd3635337036%_)
                              (if (gx#identifier? _%hd3642136804%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39734_|
                                       _%hd3642136804%_)
                                      (if (gx#stx-pair? _%tl3642236807%_)
                                          (let ((_%e3644336700%_
                                                 (gx#syntax-e
                                                  _%tl3642236807%_)))
                                            (let ((_%tl3644536707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3644336700%_)))
                                                  (_%hd3644436704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3644336700%_))))
                                              (if (gx#stx-null?
                                                   _%tl3644536707%_)
                                                  (_%__kont3937639377%_
                                                   _%hd3644436704%_
                                                   _%hd3635337036%_
                                                   _%hd3635037026%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3634436490%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634436490%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3634436490%_)))
                                  (if (gx#stx-datum? _%hd3642136804%_)
                                      (let ((_%e3645836627%_
                                             (gx#stx-e _%hd3642136804%_)))
                                        (if (equal? _%e3645836627%_ '::)
                                            (if (gx#stx-pair? _%tl3642236807%_)
                                                (let ((_%e3645936631%_
                                                       (gx#syntax-e
                                                        _%tl3642236807%_)))
                                                  (let ((_%tl3646136638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3645936631%_)))
                                                        (_%hd3646036635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3645936631%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3646136638%_)
                                                        (_%__kont3937839379%_
                                                         _%hd3646036635%_
                                                         _%hd3635337036%_
                                                         _%hd3635037026%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3646136638%_)
                                                            (let ((_%e3647936541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3646136638%_)))
                      (let ((_%tl3648136548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3647936541%_)))
                            (_%hd3648036545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3647936541%_))))
                        (if (gx#identifier? _%hd3648036545%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39735_|
                                 _%hd3648036545%_)
                                (if (gx#stx-pair? _%tl3648136548%_)
                                    (let ((_%e3648236551%_
                                           (gx#syntax-e _%tl3648136548%_)))
                                      (let ((_%tl3648436558%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3648236551%_)))
                                            (_%hd3648336555%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3648236551%_))))
                                        (if (gx#stx-null? _%tl3648436558%_)
                                            (_%__kont3938039381%_
                                             _%hd3648336555%_
                                             _%hd3646036635%_
                                             _%hd3635337036%_
                                             _%hd3635037026%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3634436490%_)))
                            (let () (declare (not safe)) (_%g3634436490%_)))))
                    (let () (declare (not safe)) (_%g3634436490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3634436490%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3634436490%_)))))))
                      (if (gx#stx-null? _%tl3635437039%_)
                          (_%__kont3937439375%_
                           _%hd3635337036%_
                           _%hd3635037026%_)
                          (let () (declare (not safe)) (_%g3634436490%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3635437039%_)
                                                      (let ((_%e3642036800%_
                                                             (gx#syntax-e
                                                              _%tl3635437039%_)))
                                                        (let ((_%tl3642236807%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3642036800%_)))
                      (_%hd3642136804%_
                       (let () (declare (not safe)) (##car _%e3642036800%_))))
                  (if (gx#stx-null? _%tl3642236807%_)
                      (_%__kont3937239373%_ _%hd3642136804%_ _%hd3635337036%_)
                      (if (gx#identifier? _%hd3642136804%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39734_|
                               _%hd3642136804%_)
                              (if (gx#stx-pair? _%tl3642236807%_)
                                  (let ((_%e3644336700%_
                                         (gx#syntax-e _%tl3642236807%_)))
                                    (let ((_%tl3644536707%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3644336700%_)))
                                          (_%hd3644436704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3644336700%_))))
                                      (if (gx#stx-null? _%tl3644536707%_)
                                          (_%__kont3937639377%_
                                           _%hd3644436704%_
                                           _%hd3635337036%_
                                           _%hd3635037026%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634436490%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634436490%_)))
                              (let () (declare (not safe)) (_%g3634436490%_)))
                          (if (gx#stx-datum? _%hd3642136804%_)
                              (let ((_%e3645836627%_
                                     (gx#stx-e _%hd3642136804%_)))
                                (if (equal? _%e3645836627%_ '::)
                                    (if (gx#stx-pair? _%tl3642236807%_)
                                        (let ((_%e3645936631%_
                                               (gx#syntax-e _%tl3642236807%_)))
                                          (let ((_%tl3646136638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3645936631%_)))
                                                (_%hd3646036635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3645936631%_))))
                                            (if (gx#stx-null? _%tl3646136638%_)
                                                (_%__kont3937839379%_
                                                 _%hd3646036635%_
                                                 _%hd3635337036%_
                                                 _%hd3635037026%_)
                                                (if (gx#stx-pair?
                                                     _%tl3646136638%_)
                                                    (let ((_%e3647936541%_
                                                           (gx#syntax-e
                                                            _%tl3646136638%_)))
                                                      (let ((_%tl3648136548%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3647936541%_)))
                    (_%hd3648036545%_
                     (let () (declare (not safe)) (##car _%e3647936541%_))))
                (if (gx#identifier? _%hd3648036545%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39735_|
                         _%hd3648036545%_)
                        (if (gx#stx-pair? _%tl3648136548%_)
                            (let ((_%e3648236551%_
                                   (gx#syntax-e _%tl3648136548%_)))
                              (let ((_%tl3648436558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3648236551%_)))
                                    (_%hd3648336555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3648236551%_))))
                                (if (gx#stx-null? _%tl3648436558%_)
                                    (_%__kont3938039381%_
                                     _%hd3648336555%_
                                     _%hd3646036635%_
                                     _%hd3635337036%_
                                     _%hd3635037026%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_)))))
                            (let () (declare (not safe)) (_%g3634436490%_)))
                        (let () (declare (not safe)) (_%g3634436490%_)))
                    (let () (declare (not safe)) (_%g3634436490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3634436490%_)))))))
              (if (gx#stx-null? _%tl3635437039%_)
                  (_%__kont3937439375%_ _%hd3635337036%_ _%hd3635037026%_)
                  (let () (declare (not safe)) (_%g3634436490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39737_|
                                                   _%hd3635637046%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3635737049%_)
                                                      (let ((_%__splice3936839369%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3635737049%_
                                                              '0)))
                                                        (let ((_%tl3638436947%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3936839369%_ '1)))
                      (_%target3638236944%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3936839369%_ '0))))
                  (if (gx#stx-null? _%tl3638436947%_)
                      (_%__match3944239443%_
                       _%e3634937022%_
                       _%hd3635037026%_
                       _%tl3635137029%_
                       _%e3635237032%_
                       _%hd3635337036%_
                       _%tl3635437039%_
                       _%e3635537042%_
                       _%hd3635637046%_
                       _%tl3635737049%_
                       _%__splice3936839369%_
                       _%target3638236944%_
                       _%tl3638436947%_)
                      (if (gx#stx-pair? _%tl3635437039%_)
                          (let ((_%e3642036800%_
                                 (gx#syntax-e _%tl3635437039%_)))
                            (let ((_%tl3642236807%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3642036800%_)))
                                  (_%hd3642136804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3642036800%_))))
                              (if (gx#stx-null? _%tl3642236807%_)
                                  (_%__kont3937239373%_
                                   _%hd3642136804%_
                                   _%hd3635337036%_)
                                  (if (gx#identifier? _%hd3642136804%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39734_|
                                           _%hd3642136804%_)
                                          (if (gx#stx-pair? _%tl3642236807%_)
                                              (let ((_%e3644336700%_
                                                     (gx#syntax-e
                                                      _%tl3642236807%_)))
                                                (let ((_%tl3644536707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3644336700%_)))
                                                      (_%hd3644436704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3644336700%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3644536707%_)
                                                      (_%__kont3937639377%_
                                                       _%hd3644436704%_
                                                       _%hd3635337036%_
                                                       _%hd3635037026%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3634436490%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3634436490%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634436490%_)))
                                      (if (gx#stx-datum? _%hd3642136804%_)
                                          (let ((_%e3645836627%_
                                                 (gx#stx-e _%hd3642136804%_)))
                                            (if (equal? _%e3645836627%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3642236807%_)
                                                    (let ((_%e3645936631%_
                                                           (gx#syntax-e
                                                            _%tl3642236807%_)))
                                                      (let ((_%tl3646136638%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3645936631%_)))
                    (_%hd3646036635%_
                     (let () (declare (not safe)) (##car _%e3645936631%_))))
                (if (gx#stx-null? _%tl3646136638%_)
                    (_%__kont3937839379%_
                     _%hd3646036635%_
                     _%hd3635337036%_
                     _%hd3635037026%_)
                    (if (gx#stx-pair? _%tl3646136638%_)
                        (let ((_%e3647936541%_ (gx#syntax-e _%tl3646136638%_)))
                          (let ((_%tl3648136548%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3647936541%_)))
                                (_%hd3648036545%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3647936541%_))))
                            (if (gx#identifier? _%hd3648036545%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39735_|
                                     _%hd3648036545%_)
                                    (if (gx#stx-pair? _%tl3648136548%_)
                                        (let ((_%e3648236551%_
                                               (gx#syntax-e _%tl3648136548%_)))
                                          (let ((_%tl3648436558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3648236551%_)))
                                                (_%hd3648336555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3648236551%_))))
                                            (if (gx#stx-null? _%tl3648436558%_)
                                                (_%__kont3938039381%_
                                                 _%hd3648336555%_
                                                 _%hd3646036635%_
                                                 _%hd3635337036%_
                                                 _%hd3635037026%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3634436490%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3634436490%_)))))
                        (let () (declare (not safe)) (_%g3634436490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3634436490%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634436490%_)))))))
                          (if (gx#stx-null? _%tl3635437039%_)
                              (_%__kont3937439375%_
                               _%hd3635337036%_
                               _%hd3635037026%_)
                              (let ()
                                (declare (not safe))
                                (_%g3634436490%_)))))))
              (if (gx#stx-pair? _%tl3635437039%_)
                  (let ((_%e3642036800%_ (gx#syntax-e _%tl3635437039%_)))
                    (let ((_%tl3642236807%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3642036800%_)))
                          (_%hd3642136804%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3642036800%_))))
                      (if (gx#stx-null? _%tl3642236807%_)
                          (_%__kont3937239373%_
                           _%hd3642136804%_
                           _%hd3635337036%_)
                          (if (gx#identifier? _%hd3642136804%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39734_|
                                   _%hd3642136804%_)
                                  (if (gx#stx-pair? _%tl3642236807%_)
                                      (let ((_%e3644336700%_
                                             (gx#syntax-e _%tl3642236807%_)))
                                        (let ((_%tl3644536707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3644336700%_)))
                                              (_%hd3644436704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3644336700%_))))
                                          (if (gx#stx-null? _%tl3644536707%_)
                                              (_%__kont3937639377%_
                                               _%hd3644436704%_
                                               _%hd3635337036%_
                                               _%hd3635037026%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3634436490%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3634436490%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634436490%_)))
                              (if (gx#stx-datum? _%hd3642136804%_)
                                  (let ((_%e3645836627%_
                                         (gx#stx-e _%hd3642136804%_)))
                                    (if (equal? _%e3645836627%_ '::)
                                        (if (gx#stx-pair? _%tl3642236807%_)
                                            (let ((_%e3645936631%_
                                                   (gx#syntax-e
                                                    _%tl3642236807%_)))
                                              (let ((_%tl3646136638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3645936631%_)))
                                                    (_%hd3646036635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3645936631%_))))
                                                (if (gx#stx-null?
                                                     _%tl3646136638%_)
                                                    (_%__kont3937839379%_
                                                     _%hd3646036635%_
                                                     _%hd3635337036%_
                                                     _%hd3635037026%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3646136638%_)
                                                        (let ((_%e3647936541%_
                                                               (gx#syntax-e
                                                                _%tl3646136638%_)))
                                                          (let ((_%tl3648136548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3647936541%_)))
                        (_%hd3648036545%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3647936541%_))))
                    (if (gx#identifier? _%hd3648036545%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39735_|
                             _%hd3648036545%_)
                            (if (gx#stx-pair? _%tl3648136548%_)
                                (let ((_%e3648236551%_
                                       (gx#syntax-e _%tl3648136548%_)))
                                  (let ((_%tl3648436558%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3648236551%_)))
                                        (_%hd3648336555%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3648236551%_))))
                                    (if (gx#stx-null? _%tl3648436558%_)
                                        (_%__kont3938039381%_
                                         _%hd3648336555%_
                                         _%hd3646036635%_
                                         _%hd3635337036%_
                                         _%hd3635037026%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3634436490%_)))
                            (let () (declare (not safe)) (_%g3634436490%_)))
                        (let () (declare (not safe)) (_%g3634436490%_)))))
                (let () (declare (not safe)) (_%g3634436490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634436490%_)))))))
                  (if (gx#stx-null? _%tl3635437039%_)
                      (_%__kont3937439375%_ _%hd3635337036%_ _%hd3635037026%_)
                      (let () (declare (not safe)) (_%g3634436490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39738_|
                                                       _%hd3635637046%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3635737049%_)
                                                          (let ((_%e3640636864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3635737049%_)))
                    (let ((_%tl3640836871%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3640636864%_)))
                          (_%hd3640736868%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3640636864%_))))
                      (if (gx#stx-null? _%tl3640836871%_)
                          (if (gx#stx-pair? _%tl3635437039%_)
                              (let ((_%e3640936874%_
                                     (gx#syntax-e _%tl3635437039%_)))
                                (let ((_%tl3641136881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3640936874%_)))
                                      (_%hd3641036878%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3640936874%_))))
                                  (if (gx#stx-null? _%tl3641136881%_)
                                      (_%__kont3937039371%_
                                       _%hd3641036878%_
                                       _%hd3640736868%_
                                       _%hd3635037026%_)
                                      (if (gx#identifier? _%hd3641036878%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39734_|
                                               _%hd3641036878%_)
                                              (if (gx#stx-pair?
                                                   _%tl3641136881%_)
                                                  (let ((_%e3644336700%_
                                                         (gx#syntax-e
                                                          _%tl3641136881%_)))
                                                    (let ((_%tl3644536707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3644336700%_)))
                                                          (_%hd3644436704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3644336700%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3644536707%_)
                                                          (_%__kont3937639377%_
                                                           _%hd3644436704%_
                                                           _%hd3635337036%_
                                                           _%hd3635037026%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3634436490%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3634436490%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3634436490%_)))
                                          (if (gx#stx-datum? _%hd3641036878%_)
                                              (let ((_%e3645836627%_
                                                     (gx#stx-e
                                                      _%hd3641036878%_)))
                                                (if (equal? _%e3645836627%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3641136881%_)
                                                        (let ((_%e3645936631%_
                                                               (gx#syntax-e
                                                                _%tl3641136881%_)))
                                                          (let ((_%tl3646136638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3645936631%_)))
                        (_%hd3646036635%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3645936631%_))))
                    (if (gx#stx-null? _%tl3646136638%_)
                        (_%__kont3937839379%_
                         _%hd3646036635%_
                         _%hd3635337036%_
                         _%hd3635037026%_)
                        (if (gx#stx-pair? _%tl3646136638%_)
                            (let ((_%e3647936541%_
                                   (gx#syntax-e _%tl3646136638%_)))
                              (let ((_%tl3648136548%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3647936541%_)))
                                    (_%hd3648036545%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3647936541%_))))
                                (if (gx#identifier? _%hd3648036545%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39735_|
                                         _%hd3648036545%_)
                                        (if (gx#stx-pair? _%tl3648136548%_)
                                            (let ((_%e3648236551%_
                                                   (gx#syntax-e
                                                    _%tl3648136548%_)))
                                              (let ((_%tl3648436558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3648236551%_)))
                                                    (_%hd3648336555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3648236551%_))))
                                                (if (gx#stx-null?
                                                     _%tl3648436558%_)
                                                    (_%__kont3938039381%_
                                                     _%hd3648336555%_
                                                     _%hd3646036635%_
                                                     _%hd3635337036%_
                                                     _%hd3635037026%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_)))))
                            (let () (declare (not safe)) (_%g3634436490%_))))))
                (let () (declare (not safe)) (_%g3634436490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3634436490%_)))))))
                              (if (gx#stx-null? _%tl3635437039%_)
                                  (_%__kont3937439375%_
                                   _%hd3635337036%_
                                   _%hd3635037026%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634436490%_))))
                          (if (gx#stx-pair? _%tl3635437039%_)
                              (let ((_%e3642036800%_
                                     (gx#syntax-e _%tl3635437039%_)))
                                (let ((_%tl3642236807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3642036800%_)))
                                      (_%hd3642136804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3642036800%_))))
                                  (if (gx#stx-null? _%tl3642236807%_)
                                      (_%__kont3937239373%_
                                       _%hd3642136804%_
                                       _%hd3635337036%_)
                                      (if (gx#identifier? _%hd3642136804%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39734_|
                                               _%hd3642136804%_)
                                              (if (gx#stx-pair?
                                                   _%tl3642236807%_)
                                                  (let ((_%e3644336700%_
                                                         (gx#syntax-e
                                                          _%tl3642236807%_)))
                                                    (let ((_%tl3644536707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3644336700%_)))
                                                          (_%hd3644436704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3644336700%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3644536707%_)
                                                          (_%__kont3937639377%_
                                                           _%hd3644436704%_
                                                           _%hd3635337036%_
                                                           _%hd3635037026%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3634436490%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3634436490%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3634436490%_)))
                                          (if (gx#stx-datum? _%hd3642136804%_)
                                              (let ((_%e3645836627%_
                                                     (gx#stx-e
                                                      _%hd3642136804%_)))
                                                (if (equal? _%e3645836627%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3642236807%_)
                                                        (let ((_%e3645936631%_
                                                               (gx#syntax-e
                                                                _%tl3642236807%_)))
                                                          (let ((_%tl3646136638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3645936631%_)))
                        (_%hd3646036635%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3645936631%_))))
                    (if (gx#stx-null? _%tl3646136638%_)
                        (_%__kont3937839379%_
                         _%hd3646036635%_
                         _%hd3635337036%_
                         _%hd3635037026%_)
                        (if (gx#stx-pair? _%tl3646136638%_)
                            (let ((_%e3647936541%_
                                   (gx#syntax-e _%tl3646136638%_)))
                              (let ((_%tl3648136548%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3647936541%_)))
                                    (_%hd3648036545%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3647936541%_))))
                                (if (gx#identifier? _%hd3648036545%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39735_|
                                         _%hd3648036545%_)
                                        (if (gx#stx-pair? _%tl3648136548%_)
                                            (let ((_%e3648236551%_
                                                   (gx#syntax-e
                                                    _%tl3648136548%_)))
                                              (let ((_%tl3648436558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3648236551%_)))
                                                    (_%hd3648336555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3648236551%_))))
                                                (if (gx#stx-null?
                                                     _%tl3648436558%_)
                                                    (_%__kont3938039381%_
                                                     _%hd3648336555%_
                                                     _%hd3646036635%_
                                                     _%hd3635337036%_
                                                     _%hd3635037026%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_)))))
                            (let () (declare (not safe)) (_%g3634436490%_))))))
                (let () (declare (not safe)) (_%g3634436490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3634436490%_)))))))
                              (if (gx#stx-null? _%tl3635437039%_)
                                  (_%__kont3937439375%_
                                   _%hd3635337036%_
                                   _%hd3635037026%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634436490%_)))))))
                  (if (gx#stx-pair? _%tl3635437039%_)
                      (let ((_%e3642036800%_ (gx#syntax-e _%tl3635437039%_)))
                        (let ((_%tl3642236807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3642036800%_)))
                              (_%hd3642136804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3642036800%_))))
                          (if (gx#stx-null? _%tl3642236807%_)
                              (_%__kont3937239373%_
                               _%hd3642136804%_
                               _%hd3635337036%_)
                              (if (gx#identifier? _%hd3642136804%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39734_|
                                       _%hd3642136804%_)
                                      (if (gx#stx-pair? _%tl3642236807%_)
                                          (let ((_%e3644336700%_
                                                 (gx#syntax-e
                                                  _%tl3642236807%_)))
                                            (let ((_%tl3644536707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3644336700%_)))
                                                  (_%hd3644436704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3644336700%_))))
                                              (if (gx#stx-null?
                                                   _%tl3644536707%_)
                                                  (_%__kont3937639377%_
                                                   _%hd3644436704%_
                                                   _%hd3635337036%_
                                                   _%hd3635037026%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3634436490%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634436490%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3634436490%_)))
                                  (if (gx#stx-datum? _%hd3642136804%_)
                                      (let ((_%e3645836627%_
                                             (gx#stx-e _%hd3642136804%_)))
                                        (if (equal? _%e3645836627%_ '::)
                                            (if (gx#stx-pair? _%tl3642236807%_)
                                                (let ((_%e3645936631%_
                                                       (gx#syntax-e
                                                        _%tl3642236807%_)))
                                                  (let ((_%tl3646136638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3645936631%_)))
                                                        (_%hd3646036635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3645936631%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3646136638%_)
                                                        (_%__kont3937839379%_
                                                         _%hd3646036635%_
                                                         _%hd3635337036%_
                                                         _%hd3635037026%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3646136638%_)
                                                            (let ((_%e3647936541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3646136638%_)))
                      (let ((_%tl3648136548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3647936541%_)))
                            (_%hd3648036545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3647936541%_))))
                        (if (gx#identifier? _%hd3648036545%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39735_|
                                 _%hd3648036545%_)
                                (if (gx#stx-pair? _%tl3648136548%_)
                                    (let ((_%e3648236551%_
                                           (gx#syntax-e _%tl3648136548%_)))
                                      (let ((_%tl3648436558%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3648236551%_)))
                                            (_%hd3648336555%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3648236551%_))))
                                        (if (gx#stx-null? _%tl3648436558%_)
                                            (_%__kont3938039381%_
                                             _%hd3648336555%_
                                             _%hd3646036635%_
                                             _%hd3635337036%_
                                             _%hd3635037026%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3634436490%_)))
                            (let () (declare (not safe)) (_%g3634436490%_)))))
                    (let () (declare (not safe)) (_%g3634436490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3634436490%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3634436490%_)))))))
                      (if (gx#stx-null? _%tl3635437039%_)
                          (_%__kont3937439375%_
                           _%hd3635337036%_
                           _%hd3635037026%_)
                          (let () (declare (not safe)) (_%g3634436490%_)))))
              (if (gx#stx-pair? _%tl3635437039%_)
                  (let ((_%e3642036800%_ (gx#syntax-e _%tl3635437039%_)))
                    (let ((_%tl3642236807%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3642036800%_)))
                          (_%hd3642136804%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3642036800%_))))
                      (if (gx#stx-null? _%tl3642236807%_)
                          (_%__kont3937239373%_
                           _%hd3642136804%_
                           _%hd3635337036%_)
                          (if (gx#identifier? _%hd3642136804%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39734_|
                                   _%hd3642136804%_)
                                  (if (gx#stx-pair? _%tl3642236807%_)
                                      (let ((_%e3644336700%_
                                             (gx#syntax-e _%tl3642236807%_)))
                                        (let ((_%tl3644536707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3644336700%_)))
                                              (_%hd3644436704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3644336700%_))))
                                          (if (gx#stx-null? _%tl3644536707%_)
                                              (_%__kont3937639377%_
                                               _%hd3644436704%_
                                               _%hd3635337036%_
                                               _%hd3635037026%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3634436490%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3634436490%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634436490%_)))
                              (if (gx#stx-datum? _%hd3642136804%_)
                                  (let ((_%e3645836627%_
                                         (gx#stx-e _%hd3642136804%_)))
                                    (if (equal? _%e3645836627%_ '::)
                                        (if (gx#stx-pair? _%tl3642236807%_)
                                            (let ((_%e3645936631%_
                                                   (gx#syntax-e
                                                    _%tl3642236807%_)))
                                              (let ((_%tl3646136638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3645936631%_)))
                                                    (_%hd3646036635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3645936631%_))))
                                                (if (gx#stx-null?
                                                     _%tl3646136638%_)
                                                    (_%__kont3937839379%_
                                                     _%hd3646036635%_
                                                     _%hd3635337036%_
                                                     _%hd3635037026%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3646136638%_)
                                                        (let ((_%e3647936541%_
                                                               (gx#syntax-e
                                                                _%tl3646136638%_)))
                                                          (let ((_%tl3648136548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3647936541%_)))
                        (_%hd3648036545%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3647936541%_))))
                    (if (gx#identifier? _%hd3648036545%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39735_|
                             _%hd3648036545%_)
                            (if (gx#stx-pair? _%tl3648136548%_)
                                (let ((_%e3648236551%_
                                       (gx#syntax-e _%tl3648136548%_)))
                                  (let ((_%tl3648436558%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3648236551%_)))
                                        (_%hd3648336555%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3648236551%_))))
                                    (if (gx#stx-null? _%tl3648436558%_)
                                        (_%__kont3938039381%_
                                         _%hd3648336555%_
                                         _%hd3646036635%_
                                         _%hd3635337036%_
                                         _%hd3635037026%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3634436490%_)))
                            (let () (declare (not safe)) (_%g3634436490%_)))
                        (let () (declare (not safe)) (_%g3634436490%_)))))
                (let () (declare (not safe)) (_%g3634436490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3634436490%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634436490%_)))))))
                  (if (gx#stx-null? _%tl3635437039%_)
                      (_%__kont3937439375%_ _%hd3635337036%_ _%hd3635037026%_)
                      (let () (declare (not safe)) (_%g3634436490%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3635437039%_)
                                              (let ((_%e3642036800%_
                                                     (gx#syntax-e
                                                      _%tl3635437039%_)))
                                                (let ((_%tl3642236807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3642036800%_)))
                                                      (_%hd3642136804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3642036800%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3642236807%_)
                                                      (_%__kont3937239373%_
                                                       _%hd3642136804%_
                                                       _%hd3635337036%_)
                                                      (if (gx#identifier?
                                                           _%hd3642136804%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39734_|
                                                               _%hd3642136804%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3642236807%_)
                          (let ((_%e3644336700%_
                                 (gx#syntax-e _%tl3642236807%_)))
                            (let ((_%tl3644536707%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3644336700%_)))
                                  (_%hd3644436704%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3644336700%_))))
                              (if (gx#stx-null? _%tl3644536707%_)
                                  (_%__kont3937639377%_
                                   _%hd3644436704%_
                                   _%hd3635337036%_
                                   _%hd3635037026%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3634436490%_)))))
                          (let () (declare (not safe)) (_%g3634436490%_)))
                      (let () (declare (not safe)) (_%g3634436490%_)))
                  (if (gx#stx-datum? _%hd3642136804%_)
                      (let ((_%e3645836627%_ (gx#stx-e _%hd3642136804%_)))
                        (if (equal? _%e3645836627%_ '::)
                            (if (gx#stx-pair? _%tl3642236807%_)
                                (let ((_%e3645936631%_
                                       (gx#syntax-e _%tl3642236807%_)))
                                  (let ((_%tl3646136638%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3645936631%_)))
                                        (_%hd3646036635%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3645936631%_))))
                                    (if (gx#stx-null? _%tl3646136638%_)
                                        (_%__kont3937839379%_
                                         _%hd3646036635%_
                                         _%hd3635337036%_
                                         _%hd3635037026%_)
                                        (if (gx#stx-pair? _%tl3646136638%_)
                                            (let ((_%e3647936541%_
                                                   (gx#syntax-e
                                                    _%tl3646136638%_)))
                                              (let ((_%tl3648136548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3647936541%_)))
                                                    (_%hd3648036545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3647936541%_))))
                                                (if (gx#identifier?
                                                     _%hd3648036545%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39735_|
                                                         _%hd3648036545%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3648136548%_)
                                                            (let ((_%e3648236551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3648136548%_)))
                      (let ((_%tl3648436558%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3648236551%_)))
                            (_%hd3648336555%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3648236551%_))))
                        (if (gx#stx-null? _%tl3648436558%_)
                            (_%__kont3938039381%_
                             _%hd3648336555%_
                             _%hd3646036635%_
                             _%hd3635337036%_
                             _%hd3635037026%_)
                            (let () (declare (not safe)) (_%g3634436490%_)))))
                    (let () (declare (not safe)) (_%g3634436490%_)))
                (let () (declare (not safe)) (_%g3634436490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3634436490%_)))
                            (let () (declare (not safe)) (_%g3634436490%_))))
                      (let () (declare (not safe)) (_%g3634436490%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3635437039%_)
                                                  (_%__kont3937439375%_
                                                   _%hd3635337036%_
                                                   _%hd3635037026%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3634436490%_)))))))
                                  (if (gx#stx-pair? _%tl3635437039%_)
                                      (let ((_%e3642036800%_
                                             (gx#syntax-e _%tl3635437039%_)))
                                        (let ((_%tl3642236807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3642036800%_)))
                                              (_%hd3642136804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3642036800%_))))
                                          (if (gx#stx-null? _%tl3642236807%_)
                                              (_%__kont3937239373%_
                                               _%hd3642136804%_
                                               _%hd3635337036%_)
                                              (if (gx#identifier?
                                                   _%hd3642136804%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39734_|
                                                       _%hd3642136804%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3642236807%_)
                                                          (let ((_%e3644336700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3642236807%_)))
                    (let ((_%tl3644536707%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3644336700%_)))
                          (_%hd3644436704%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3644336700%_))))
                      (if (gx#stx-null? _%tl3644536707%_)
                          (_%__kont3937639377%_
                           _%hd3644436704%_
                           _%hd3635337036%_
                           _%hd3635037026%_)
                          (let () (declare (not safe)) (_%g3634436490%_)))))
                  (let () (declare (not safe)) (_%g3634436490%_)))
              (let () (declare (not safe)) (_%g3634436490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3642136804%_)
                                                      (let ((_%e3645836627%_
                                                             (gx#stx-e
                                                              _%hd3642136804%_)))
                                                        (if (equal? _%e3645836627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3642236807%_)
                        (let ((_%e3645936631%_ (gx#syntax-e _%tl3642236807%_)))
                          (let ((_%tl3646136638%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3645936631%_)))
                                (_%hd3646036635%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3645936631%_))))
                            (if (gx#stx-null? _%tl3646136638%_)
                                (_%__kont3937839379%_
                                 _%hd3646036635%_
                                 _%hd3635337036%_
                                 _%hd3635037026%_)
                                (if (gx#stx-pair? _%tl3646136638%_)
                                    (let ((_%e3647936541%_
                                           (gx#syntax-e _%tl3646136638%_)))
                                      (let ((_%tl3648136548%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3647936541%_)))
                                            (_%hd3648036545%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3647936541%_))))
                                        (if (gx#identifier? _%hd3648036545%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39735_|
                                                 _%hd3648036545%_)
                                                (if (gx#stx-pair?
                                                     _%tl3648136548%_)
                                                    (let ((_%e3648236551%_
                                                           (gx#syntax-e
                                                            _%tl3648136548%_)))
                                                      (let ((_%tl3648436558%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3648236551%_)))
                    (_%hd3648336555%_
                     (let () (declare (not safe)) (##car _%e3648236551%_))))
                (if (gx#stx-null? _%tl3648436558%_)
                    (_%__kont3938039381%_
                     _%hd3648336555%_
                     _%hd3646036635%_
                     _%hd3635337036%_
                     _%hd3635037026%_)
                    (let () (declare (not safe)) (_%g3634436490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3634436490%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3634436490%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3634436490%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3634436490%_))))))
                        (let () (declare (not safe)) (_%g3634436490%_)))
                    (let () (declare (not safe)) (_%g3634436490%_))))
              (let () (declare (not safe)) (_%g3634436490%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3635437039%_)
                                          (_%__kont3937439375%_
                                           _%hd3635337036%_
                                           _%hd3635037026%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3634436490%_)))))))
                          (let () (declare (not safe)) (_%g3634436490%_)))))
                  (let () (declare (not safe)) (_%g3634436490%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37129%_)
        (let* ((_%__stx3962739628%_ _%$stx37129%_)
               (_%g3713437168%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3962739628%_))))
          (let ((_%__kont3963039631%_
                 (lambda (_%g3713637272%_ _%g3713737274%_ _%g3713837275%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g3713837275%_
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
                                       (cons _%g3713737274%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g3713637272%_ '()))
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
                (_%__kont3963239633%_
                 (lambda (_%g3715137205%_ _%g3715237207%_ _%g3715337208%_)
                   (cons _%g3715337208%_
                         (cons _%g3715237207%_
                               (cons _%g3715137205%_
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
            (let ((_%__match3966039661%_
                   (lambda (_%e3713937232%_
                            _%hd3714037236%_
                            _%tl3714137239%_
                            _%e3714237242%_
                            _%hd3714337246%_
                            _%tl3714437249%_
                            _%e3714537252%_
                            _%hd3714637256%_
                            _%tl3714737259%_
                            _%e3714837262%_
                            _%hd3714937266%_
                            _%tl3715037269%_)
                     (let ((_%g3713637272%_ _%hd3714937266%_)
                           (_%g3713737274%_ _%hd3714637256%_)
                           (_%g3713837275%_ _%hd3714337246%_))
                       (if (gx#identifier? _%g3713837275%_)
                           (_%__kont3963039631%_
                            _%g3713637272%_
                            _%g3713737274%_
                            _%g3713837275%_)
                           (let () (declare (not safe)) (_%g3713437168%_)))))))
              (if (gx#stx-pair? _%__stx3962739628%_)
                  (let ((_%e3713937232%_ (gx#syntax-e _%__stx3962739628%_)))
                    (let ((_%tl3714137239%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3713937232%_)))
                          (_%hd3714037236%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3713937232%_))))
                      (if (gx#stx-pair? _%tl3714137239%_)
                          (let ((_%e3714237242%_
                                 (gx#syntax-e _%tl3714137239%_)))
                            (let ((_%tl3714437249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3714237242%_)))
                                  (_%hd3714337246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3714237242%_))))
                              (if (gx#stx-pair? _%tl3714437249%_)
                                  (let ((_%e3714537252%_
                                         (gx#syntax-e _%tl3714437249%_)))
                                    (let ((_%tl3714737259%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3714537252%_)))
                                          (_%hd3714637256%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3714537252%_))))
                                      (if (gx#stx-pair? _%tl3714737259%_)
                                          (let ((_%e3714837262%_
                                                 (gx#syntax-e
                                                  _%tl3714737259%_)))
                                            (let ((_%tl3715037269%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3714837262%_)))
                                                  (_%hd3714937266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3714837262%_))))
                                              (if (gx#stx-null?
                                                   _%tl3715037269%_)
                                                  (_%__match3966039661%_
                                                   _%e3713937232%_
                                                   _%hd3714037236%_
                                                   _%tl3714137239%_
                                                   _%e3714237242%_
                                                   _%hd3714337246%_
                                                   _%tl3714437249%_
                                                   _%e3714537252%_
                                                   _%hd3714637256%_
                                                   _%tl3714737259%_
                                                   _%e3714837262%_
                                                   _%hd3714937266%_
                                                   _%tl3715037269%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3713437168%_)))))
                                          (if (gx#stx-null? _%tl3714737259%_)
                                              (_%__kont3963239633%_
                                               _%hd3714637256%_
                                               _%hd3714337246%_
                                               _%hd3714037236%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3713437168%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3713437168%_)))))
                          (let () (declare (not safe)) (_%g3713437168%_)))))
                  (let () (declare (not safe)) (_%g3713437168%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37297%_)
        (let* ((_%g3730137316%_
                (lambda (_%g3730237312%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3730237312%_)))
               (_%g3730037359%_
                (lambda (_%g3730237320%_)
                  (if (gx#stx-pair? _%g3730237320%_)
                      (let ((_%e3730537323%_ (gx#syntax-e _%g3730237320%_)))
                        (let ((_%hd3730637327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3730537323%_)))
                              (_%tl3730737330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3730537323%_))))
                          (if (gx#stx-pair? _%tl3730737330%_)
                              (let ((_%e3730837333%_
                                     (gx#syntax-e _%tl3730737330%_)))
                                (let ((_%hd3730937337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3730837333%_)))
                                      (_%tl3731037340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3730837333%_))))
                                  ((lambda (_%g3730337343%_ _%g3730437345%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g3730437345%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g3730337343%_)
                                                       '()))))
                                   _%tl3731037340%_
                                   _%hd3730937337%_)))
                              (_%g3730137316%_ _%g3730237320%_))))
                      (_%g3730137316%_ _%g3730237320%_)))))
          (_%g3730037359%_ _%$stx37297%_))))))
