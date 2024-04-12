(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39919_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39920_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39921_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39922_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39923_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39924_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39925_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39926_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39927_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39928_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39929_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39930_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39931_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39932_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39933_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39946_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39954_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39955_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39956_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39961_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39962_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39963_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39964_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39965_|
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
      (lambda _%$args35218%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35218%_)))
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
      (lambda (_%stx35215%_)
        (if (gx#identifier? _%stx35215%_)
            (let ((__tmp39918 (gx#syntax-local-value _%stx35215%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39918))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33515%_ _%match-stx33517%_)
        (letrec ((_%parse133519%_
                  (lambda (_%hd33878%_)
                    (let* ((_%__stx3770637707%_ _%hd33878%_)
                           (_%g3390434046%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3770637707%_))))
                      (let ((_%__kont3770937710%_
                             (lambda (_%L34978%_ _%L34980%_)
                               (let* ((_%__stx3762637627%_ _%L34978%_)
                                      (_%g3499735030%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3762637627%_))))
                                 (let ((_%__kont3762937630%_
                                        (lambda ()
                                          (cons '?: (cons _%L34980%_ '()))))
                                       (_%__kont3763137632%_
                                        (lambda (_%L35171%_)
                                          (cons '?:
                                                (cons _%L34980%_
                                                      (cons (_%parse133519%_
                                                             _%L35171%_)
                                                            '())))))
                                       (_%__kont3763337634%_
                                        (lambda (_%L35141%_)
                                          (cons '?:
                                                (cons _%L34980%_
                                                      (cons '=>:
                                                            (cons (_%parse133519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35141%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3763537636%_
                                        (lambda (_%L35092%_ _%L35094%_)
                                          (cons '?:
                                                (cons _%L34980%_
                                                      (cons '::
                                                            (cons _%L35094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133519%_ _%L35092%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3763737638%_
                                        (lambda ()
                                          (_%parse-error33526%_ _%hd33878%_))))
                                   (let ((_%g3499335182%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3762637627%_)
                                                (let ((_%e3500035161%_
                                                       (gx#syntax-e
                                                        _%__stx3762637627%_)))
                                                  (let ((_%tl3500235168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3500035161%_)))
                                                        (_%hd3500135165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3500035161%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3500235168%_)
                                                        (_%__kont3763137632%_
                                                         _%hd3500135165%_)
                                                        (if (gx#identifier?
                                                             _%hd3500135165%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39919_|
                         _%hd3500135165%_)
                        (if (gx#stx-pair? _%tl3500235168%_)
                            (let ((_%e3500735131%_
                                   (gx#syntax-e _%tl3500235168%_)))
                              (let ((_%tl3500935138%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3500735131%_)))
                                    (_%hd3500835135%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3500735131%_))))
                                (if (gx#stx-null? _%tl3500935138%_)
                                    (_%__kont3763337634%_ _%hd3500835135%_)
                                    (_%__kont3763737638%_))))
                            (_%__kont3763737638%_))
                        (_%__kont3763737638%_))
                    (if (gx#stx-datum? _%hd3500135165%_)
                        (let ((_%e3501535058%_ (gx#stx-e _%hd3500135165%_)))
                          (if (equal? _%e3501535058%_ '::)
                              (if (gx#stx-pair? _%tl3500235168%_)
                                  (let ((_%e3501635062%_
                                         (gx#syntax-e _%tl3500235168%_)))
                                    (let ((_%tl3501835069%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3501635062%_)))
                                          (_%hd3501735066%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3501635062%_))))
                                      (if (gx#stx-pair? _%tl3501835069%_)
                                          (let ((_%e3501935072%_
                                                 (gx#syntax-e
                                                  _%tl3501835069%_)))
                                            (let ((_%tl3502135079%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3501935072%_)))
                                                  (_%hd3502035076%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3501935072%_))))
                                              (if (gx#identifier?
                                                   _%hd3502035076%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39920_|
                                                       _%hd3502035076%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3502135079%_)
                                                          (let ((_%e3502235082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3502135079%_)))
                    (let ((_%tl3502435089%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3502235082%_)))
                          (_%hd3502335086%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3502235082%_))))
                      (if (gx#stx-null? _%tl3502435089%_)
                          (_%__kont3763537636%_
                           _%hd3502335086%_
                           _%hd3501735066%_)
                          (_%__kont3763737638%_))))
                  (_%__kont3763737638%_))
              (_%__kont3763737638%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3763737638%_))))
                                          (_%__kont3763737638%_))))
                                  (_%__kont3763737638%_))
                              (_%__kont3763737638%_)))
                        (_%__kont3763737638%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3763737638%_)))))
                                     (if (gx#stx-null? _%__stx3762637627%_)
                                         (_%__kont3762937630%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3499335182%_))))))))
                            (_%__kont3771137712%_
                             (lambda (_%L34883%_)
                               (let* ((_%__stx3760837609%_ _%L34883%_)
                                      (_%g3489534906%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3760837609%_))))
                                 (let ((_%__kont3761137612%_
                                        (lambda (_%L34934%_)
                                          (_%parse133519%_ _%L34934%_)))
                                       (_%__kont3761337614%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133519%_
                                                 _%L34883%_)))))
                                   (if (gx#stx-pair? _%__stx3760837609%_)
                                       (let ((_%e3489834924%_
                                              (gx#syntax-e
                                               _%__stx3760837609%_)))
                                         (let ((_%tl3490034931%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3489834924%_)))
                                               (_%hd3489934928%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3489834924%_))))
                                           (if (gx#stx-null? _%tl3490034931%_)
                                               (_%__kont3761137612%_
                                                _%hd3489934928%_)
                                               (_%__kont3761337614%_))))
                                       (_%__kont3761337614%_))))))
                            (_%__kont3771337714%_
                             (lambda (_%L34798%_)
                               (let* ((_%__stx3759037591%_ _%L34798%_)
                                      (_%g3481034821%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3759037591%_))))
                                 (let ((_%__kont3759337594%_
                                        (lambda (_%L34849%_)
                                          (_%parse133519%_ _%L34849%_)))
                                       (_%__kont3759537596%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133519%_
                                                 _%L34798%_)))))
                                   (if (gx#stx-pair? _%__stx3759037591%_)
                                       (let ((_%e3481334839%_
                                              (gx#syntax-e
                                               _%__stx3759037591%_)))
                                         (let ((_%tl3481534846%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3481334839%_)))
                                               (_%hd3481434843%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3481334839%_))))
                                           (if (gx#stx-null? _%tl3481534846%_)
                                               (_%__kont3759337594%_
                                                _%hd3481434843%_)
                                               (_%__kont3759537596%_))))
                                       (_%__kont3759537596%_))))))
                            (_%__kont3771537716%_
                             (lambda (_%L34768%_)
                               (cons 'not:
                                     (cons (_%parse133519%_ _%L34768%_) '()))))
                            (_%__kont3771737718%_
                             (lambda (_%L34724%_ _%L34726%_)
                               (cons 'cons:
                                     (cons (_%parse133519%_ _%L34726%_)
                                           (cons (_%parse133519%_ _%L34724%_)
                                                 '())))))
                            (_%__kont3771937720%_
                             (lambda (_%L34668%_ _%L34670%_ _%L34671%_)
                               (if (gx#stx-null? _%L34668%_)
                                   (cons 'cons:
                                         (cons (_%parse133519%_ _%L34671%_)
                                               (cons (_%parse133519%_
                                                      _%L34670%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133519%_ _%L34671%_)
                                               (cons (_%parse133519%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3772137722%_
                             (lambda (_%L34620%_)
                               (_%parse-list33521%_ _%L34620%_)))
                            (_%__kont3772337724%_
                             (lambda (_%L34590%_)
                               (cons 'box:
                                     (cons (_%parse133519%_ _%L34590%_) '()))))
                            (_%__kont3772537726%_
                             (lambda (_%L34553%_)
                               (cons 'box:
                                     (cons (_%parse133519%_ _%L34553%_) '()))))
                            (_%__kont3772737728%_
                             (lambda (_%L34529%_)
                               (_%parse133519%_ _%L34529%_)))
                            (_%__kont3772937730%_
                             (lambda (_%L34491%_)
                               (cons 'values:
                                     (cons (_%parse-vector33522%_ _%L34491%_)
                                           '()))))
                            (_%__kont3773137732%_
                             (lambda (_%L34463%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33522%_ _%L34463%_)
                                           '()))))
                            (_%__kont3773337734%_
                             (lambda (_%L34424%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33522%_
                                            (foldr (lambda (_%g3443734440%_
                                                            _%g3443834443%_)
                                                     (cons _%g3443734440%_
                                                           _%g3443834443%_))
                                                   '()
                                                   _%L34424%_))
                                           '()))))
                            (_%__kont3773737738%_
                             (lambda (_%L34370%_ _%L34372%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34372%_)
                                           (cons (_%parse-vector33522%_
                                                  _%L34370%_)
                                                 '())))))
                            (_%__kont3773937740%_
                             (lambda (_%L34340%_ _%L34342%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34342%_)
                                           (cons (_%parse-class-body33524%_
                                                  _%L34340%_)
                                                 '())))))
                            (_%__kont3774137742%_
                             (lambda (_%L34300%_ _%L34302%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34302%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3774337744%_
                             (lambda (_%L34260%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34260%_) '()))))
                            (_%__kont3774537746%_
                             (lambda (_%L34220%_)
                               (_%parse-qq33525%_ _%L34220%_)))
                            (_%__kont3774737748%_
                             (lambda (_%L34176%_ _%L34178%_)
                               (cons 'apply:
                                     (cons _%L34178%_
                                           (cons (_%parse133519%_ _%L34176%_)
                                                 '())))))
                            (_%__kont3774937750%_
                             (lambda (_%L34124%_)
                               (_%parse133519%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34124%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33878%_)
                                  (let ((_%$e34135%_
                                         (gx#stx-source _%hd33878%_)))
                                    (if _%$e34135%_
                                        _%$e34135%_
                                        (gx#stx-source _%stx33515%_))))))))
                            (_%__kont3775137752%_
                             (lambda (_%L34098%_) (cons 'any: '())))
                            (_%__kont3775337754%_
                             (lambda (_%L34082%_)
                               (cons 'var: (cons _%L34082%_ '()))))
                            (_%__kont3775537756%_
                             (lambda (_%L34064%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34064%_) '()))))
                            (_%__kont3775737758%_
                             (lambda () (_%parse-error33526%_ _%hd33878%_))))
                        (let* ((_%g3390234075%_
                                (lambda ()
                                  (let ((_%L34064%_ _%__stx3770637707%_))
                                    (if (gx#stx-datum? _%L34064%_)
                                        (_%__kont3775537756%_ _%L34064%_)
                                        (_%__kont3775737758%_)))))
                               (_%g3390134091%_
                                (lambda ()
                                  (let ((_%L34082%_ _%__stx3770637707%_))
                                    (if (and (gx#identifier? _%L34082%_)
                                             (not (gx#ellipsis? _%L34082%_)))
                                        (_%__kont3775337754%_ _%L34082%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3390234075%_))))))
                               (_%g3390034107%_
                                (lambda ()
                                  (let ((_%L34098%_ _%__stx3770637707%_))
                                    (if (gx#underscore? _%L34098%_)
                                        (_%__kont3775137752%_ _%L34098%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3390134091%_))))))
                               (_%__match3803338034%_
                                (lambda (_%e3403534114%_
                                         _%hd3403634118%_
                                         _%tl3403734121%_)
                                  (let ((_%L34124%_ _%hd3403634118%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34124%_)
                                        (_%__kont3774937750%_ _%L34124%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3390034107%_))))))
                               (_%__match3796737968%_
                                (lambda (_%e3400334280%_
                                         _%hd3400434284%_
                                         _%tl3400534287%_
                                         _%e3400634290%_
                                         _%hd3400734294%_
                                         _%tl3400834297%_)
                                  (let ((_%L34300%_ _%hd3400734294%_)
                                        (_%L34302%_ _%hd3400434284%_))
                                    (if (and (gx#identifier? _%L34302%_)
                                             (or (gx#free-identifier=?
                                                  _%L34302%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34302%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34302%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3774137742%_
                                         _%L34300%_
                                         _%L34302%_)
                                        (if (gx#identifier? _%hd3400434284%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39921_|
                                                 _%hd3400434284%_)
                                                (_%__kont3774337744%_
                                                 _%hd3400734294%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39922_|
                                                     _%hd3400434284%_)
                                                    (_%__kont3774537746%_
                                                     _%hd3400734294%_)
                                                    (_%__match3803338034%_
                                                     _%e3400334280%_
                                                     _%hd3400434284%_
                                                     _%tl3400534287%_)))
                                            (_%__match3803338034%_
                                             _%e3400334280%_
                                             _%hd3400434284%_
                                             _%tl3400534287%_))))))
                               (_%__match3795337954%_
                                (lambda (_%e3399834330%_
                                         _%hd3399934334%_
                                         _%tl3400034337%_)
                                  (let ((_%L34340%_ _%tl3400034337%_)
                                        (_%L34342%_ _%hd3399934334%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34342%_))
                                        (_%__kont3773937740%_
                                         _%L34340%_
                                         _%L34342%_)
                                        (if (gx#stx-pair? _%tl3400034337%_)
                                            (let ((_%e3400634290%_
                                                   (gx#syntax-e
                                                    _%tl3400034337%_)))
                                              (let ((_%tl3400834297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3400634290%_)))
                                                    (_%hd3400734294%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3400634290%_))))
                                                (if (gx#stx-null?
                                                     _%tl3400834297%_)
                                                    (_%__match3796737968%_
                                                     _%e3399834330%_
                                                     _%hd3399934334%_
                                                     _%tl3400034337%_
                                                     _%e3400634290%_
                                                     _%hd3400734294%_
                                                     _%tl3400834297%_)
                                                    (if (gx#identifier?
                                                         _%hd3399934334%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39921_|
                                                             _%hd3399934334%_)
                                                            (_%__match3803338034%_
                                                             _%e3399834330%_
                                                             _%hd3399934334%_
                                                             _%tl3400034337%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39922_|
                         _%hd3399934334%_)
                        (_%__match3803338034%_
                         _%e3399834330%_
                         _%hd3399934334%_
                         _%tl3400034337%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39923_|
                             _%hd3399934334%_)
                            (if (gx#stx-pair? _%tl3400834297%_)
                                (let ((_%e3403134166%_
                                       (gx#syntax-e _%tl3400834297%_)))
                                  (let ((_%tl3403334173%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3403134166%_)))
                                        (_%hd3403234170%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3403134166%_))))
                                    (if (gx#stx-null? _%tl3403334173%_)
                                        (_%__kont3774737748%_
                                         _%hd3403234170%_
                                         _%hd3400734294%_)
                                        (_%__match3803338034%_
                                         _%e3399834330%_
                                         _%hd3399934334%_
                                         _%tl3400034337%_))))
                                (_%__match3803338034%_
                                 _%e3399834330%_
                                 _%hd3399934334%_
                                 _%tl3400034337%_))
                            (_%__match3803338034%_
                             _%e3399834330%_
                             _%hd3399934334%_
                             _%tl3400034337%_))))
                (_%__match3803338034%_
                 _%e3399834330%_
                 _%hd3399934334%_
                 _%tl3400034337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3803338034%_
                                             _%e3399834330%_
                                             _%hd3399934334%_
                                             _%tl3400034337%_))))))
                               (_%__match3794737948%_
                                (lambda (_%e3399334360%_
                                         _%hd3399434364%_
                                         _%tl3399534367%_)
                                  (let ((_%L34370%_ _%tl3399534367%_)
                                        (_%L34372%_ _%hd3399434364%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34372%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3773737738%_
                                         _%L34370%_
                                         _%L34372%_)
                                        (_%__match3795337954%_
                                         _%e3399334360%_
                                         _%hd3399434364%_
                                         _%tl3399534367%_)))))
                               (_%__match3794137942%_
                                (lambda (_%e3398134390%_
                                         _%__splice3773537736%_
                                         _%target3398234394%_
                                         _%tl3398434397%_)
                                  (letrec ((_%loop3398534400%_
                                            (lambda (_%hd3398334404%_
                                                     _%body3398934407%_)
                                              (if (gx#stx-pair?
                                                   _%hd3398334404%_)
                                                  (let ((_%e3398634410%_
                                                         (gx#syntax-e
                                                          _%hd3398334404%_)))
                                                    (let ((_%lp-tl3398834417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3398634410%_)))
                                                          (_%lp-hd3398734414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3398634410%_))))
                                                      (_%loop3398534400%_
                                                       _%lp-tl3398834417%_
                                                       (cons _%lp-hd3398734414%_
                                                             _%body3398934407%_))))
                                                  (let ((_%body3399034420%_
                                                         (reverse _%body3398934407%_)))
                                                    (_%__kont3773337734%_
                                                     _%body3399034420%_))))))
                                    (_%loop3398534400%_
                                     _%target3398234394%_
                                     '()))))
                               (_%g3389234446%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3770637707%_)
                                      (let ((_%e3398134390%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3770637707%_))))
                                        (if (gx#stx-pair/null? _%e3398134390%_)
                                            (let ((_%__splice3773537736%_
                                                   (gx#syntax-split-splice
                                                    _%e3398134390%_
                                                    '0)))
                                              (let ((_%tl3398434397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3773537736%_
                                                        '1)))
                                                    (_%target3398234394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3773537736%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3398434397%_)
                                                    (_%__match3794137942%_
                                                     _%e3398134390%_
                                                     _%__splice3773537736%_
                                                     _%target3398234394%_
                                                     _%tl3398434397%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3390034107%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3390034107%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3390034107%_)))))
                               (_%g3388834563%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3770637707%_)
                                      (let ((_%e3396434549%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3770637707%_))))
                                        (_%__kont3772537726%_ _%e3396434549%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3389234446%_)))))
                               (_%__match3779537796%_
                                (lambda (_%e3391934788%_
                                         _%hd3392034792%_
                                         _%tl3392134795%_)
                                  (let ((_%L34798%_ _%tl3392134795%_))
                                    (if (gx#stx-list? _%L34798%_)
                                        (_%__kont3771337714%_ _%L34798%_)
                                        (_%__match3794737948%_
                                         _%e3391934788%_
                                         _%hd3392034792%_
                                         _%tl3392134795%_)))))
                               (_%__match3778537786%_
                                (lambda (_%e3391534873%_
                                         _%hd3391634877%_
                                         _%tl3391734880%_)
                                  (let ((_%L34883%_ _%tl3391734880%_))
                                    (if (gx#stx-list? _%L34883%_)
                                        (_%__kont3771137712%_ _%L34883%_)
                                        (_%__match3794737948%_
                                         _%e3391534873%_
                                         _%hd3391634877%_
                                         _%tl3391734880%_))))))
                          (if (gx#stx-pair? _%__stx3770637707%_)
                              (let ((_%e3390834958%_
                                     (gx#syntax-e _%__stx3770637707%_)))
                                (let ((_%tl3391034965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3390834958%_)))
                                      (_%hd3390934962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3390834958%_))))
                                  (if (gx#identifier? _%hd3390934962%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39924_|
                                           _%hd3390934962%_)
                                          (if (gx#stx-pair? _%tl3391034965%_)
                                              (let ((_%e3391134968%_
                                                     (gx#syntax-e
                                                      _%tl3391034965%_)))
                                                (let ((_%tl3391334975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3391134968%_)))
                                                      (_%hd3391234972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3391134968%_))))
                                                  (_%__kont3770937710%_
                                                   _%tl3391334975%_
                                                   _%hd3391234972%_)))
                                              (_%__match3794737948%_
                                               _%e3390834958%_
                                               _%hd3390934962%_
                                               _%tl3391034965%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39925_|
                                               _%hd3390934962%_)
                                              (_%__match3778537786%_
                                               _%e3390834958%_
                                               _%hd3390934962%_
                                               _%tl3391034965%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39926_|
                                                   _%hd3390934962%_)
                                                  (_%__match3779537796%_
                                                   _%e3390834958%_
                                                   _%hd3390934962%_
                                                   _%tl3391034965%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39927_|
                                                       _%hd3390934962%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3391034965%_)
                                                          (let ((_%e3392634758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3391034965%_)))
                    (let ((_%tl3392834765%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3392634758%_)))
                          (_%hd3392734762%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3392634758%_))))
                      (if (gx#stx-null? _%tl3392834765%_)
                          (_%__kont3771537716%_ _%hd3392734762%_)
                          (_%__match3794737948%_
                           _%e3390834958%_
                           _%hd3390934962%_
                           _%tl3391034965%_))))
                  (_%__match3794737948%_
                   _%e3390834958%_
                   _%hd3390934962%_
                   _%tl3391034965%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39928_|
                   _%hd3390934962%_)
                  (if (gx#stx-pair? _%tl3391034965%_)
                      (let ((_%e3393434704%_ (gx#syntax-e _%tl3391034965%_)))
                        (let ((_%tl3393634711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3393434704%_)))
                              (_%hd3393534708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3393434704%_))))
                          (if (gx#stx-pair? _%tl3393634711%_)
                              (let ((_%e3393734714%_
                                     (gx#syntax-e _%tl3393634711%_)))
                                (let ((_%tl3393934721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3393734714%_)))
                                      (_%hd3393834718%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3393734714%_))))
                                  (if (gx#stx-null? _%tl3393934721%_)
                                      (_%__kont3771737718%_
                                       _%hd3393834718%_
                                       _%hd3393534708%_)
                                      (_%__match3794737948%_
                                       _%e3390834958%_
                                       _%hd3390934962%_
                                       _%tl3391034965%_))))
                              (_%__match3794737948%_
                               _%e3390834958%_
                               _%hd3390934962%_
                               _%tl3391034965%_))))
                      (_%__match3794737948%_
                       _%e3390834958%_
                       _%hd3390934962%_
                       _%tl3391034965%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39929_|
                       _%hd3390934962%_)
                      (if (gx#stx-pair? _%tl3391034965%_)
                          (let ((_%e3394634648%_
                                 (gx#syntax-e _%tl3391034965%_)))
                            (let ((_%tl3394834655%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3394634648%_)))
                                  (_%hd3394734652%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3394634648%_))))
                              (if (gx#stx-pair? _%tl3394834655%_)
                                  (let ((_%e3394934658%_
                                         (gx#syntax-e _%tl3394834655%_)))
                                    (let ((_%tl3395134665%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3394934658%_)))
                                          (_%hd3395034662%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3394934658%_))))
                                      (_%__kont3771937720%_
                                       _%tl3395134665%_
                                       _%hd3395034662%_
                                       _%hd3394734652%_)))
                                  (_%__match3794737948%_
                                   _%e3390834958%_
                                   _%hd3390934962%_
                                   _%tl3391034965%_))))
                          (_%__match3794737948%_
                           _%e3390834958%_
                           _%hd3390934962%_
                           _%tl3391034965%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39930_|
                           _%hd3390934962%_)
                          (_%__kont3772137722%_ _%tl3391034965%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39931_|
                               _%hd3390934962%_)
                              (if (gx#stx-pair? _%tl3391034965%_)
                                  (let ((_%e3396034580%_
                                         (gx#syntax-e _%tl3391034965%_)))
                                    (let ((_%tl3396234587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3396034580%_)))
                                          (_%hd3396134584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3396034580%_))))
                                      (if (gx#stx-null? _%tl3396234587%_)
                                          (_%__kont3772337724%_
                                           _%hd3396134584%_)
                                          (_%__match3794737948%_
                                           _%e3390834958%_
                                           _%hd3390934962%_
                                           _%tl3391034965%_))))
                                  (_%__match3794737948%_
                                   _%e3390834958%_
                                   _%hd3390934962%_
                                   _%tl3391034965%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39932_|
                                   _%hd3390934962%_)
                                  (if (gx#stx-pair? _%tl3391034965%_)
                                      (let ((_%e3396934519%_
                                             (gx#syntax-e _%tl3391034965%_)))
                                        (let ((_%tl3397134526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3396934519%_)))
                                              (_%hd3397034523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3396934519%_))))
                                          (if (gx#stx-null? _%tl3397134526%_)
                                              (_%__kont3772737728%_
                                               _%hd3397034523%_)
                                              (_%__kont3772937730%_
                                               _%tl3391034965%_))))
                                      (_%__kont3772937730%_ _%tl3391034965%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39933_|
                                       _%hd3390934962%_)
                                      (_%__kont3773137732%_ _%tl3391034965%_)
                                      (_%__match3794737948%_
                                       _%e3390834958%_
                                       _%hd3390934962%_
                                       _%tl3391034965%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3794737948%_
                                       _%e3390834958%_
                                       _%hd3390934962%_
                                       _%tl3391034965%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3388834563%_))))))))
                 (_%parse-list33521%_
                  (lambda (_%body33701%_)
                    (let* ((_%__stx3803638037%_ _%body33701%_)
                           (_%g3370733736%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3803638037%_))))
                      (let ((_%__kont3803938040%_
                             (lambda (_%L33860%_)
                               (_%parse133519%_ _%L33860%_)))
                            (_%__kont3804138042%_
                             (lambda (_%L33812%_ _%L33814%_ _%L33815%_)
                               (cons 'splice:
                                     (cons (_%parse133519%_ _%L33815%_)
                                           (cons (_%parse-list33521%_
                                                  _%L33812%_)
                                                 '())))))
                            (_%__kont3804338044%_
                             (lambda (_%L33770%_ _%L33772%_)
                               (cons 'cons:
                                     (cons (_%parse133519%_ _%L33772%_)
                                           (cons (_%parse-list33521%_
                                                  _%L33770%_)
                                                 '())))))
                            (_%__kont3804538046%_
                             (lambda ()
                               (if (gx#stx-null? _%body33701%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33701%_)
                                       (_%parse-error33526%_ _%body33701%_)
                                       (_%parse133519%_ _%body33701%_))))))
                        (let* ((_%__match3808538086%_
                                (lambda (_%e3372833760%_
                                         _%hd3372933764%_
                                         _%tl3373033767%_)
                                  (let ((_%L33770%_ _%tl3373033767%_)
                                        (_%L33772%_ _%hd3372933764%_))
                                    (if (gx#ellipsis? _%L33772%_)
                                        (_%__kont3804538046%_)
                                        (_%__kont3804338044%_
                                         _%L33770%_
                                         _%L33772%_)))))
                               (_%__match3807938080%_
                                (lambda (_%e3372033792%_
                                         _%hd3372133796%_
                                         _%tl3372233799%_
                                         _%e3372333802%_
                                         _%hd3372433806%_
                                         _%tl3372533809%_)
                                  (let ((_%L33812%_ _%tl3372533809%_)
                                        (_%L33814%_ _%hd3372433806%_)
                                        (_%L33815%_ _%hd3372133796%_))
                                    (if (gx#ellipsis? _%L33814%_)
                                        (_%__kont3804138042%_
                                         _%L33812%_
                                         _%L33814%_
                                         _%L33815%_)
                                        (_%__match3808538086%_
                                         _%e3372033792%_
                                         _%hd3372133796%_
                                         _%tl3372233799%_))))))
                          (if (gx#stx-pair? _%__stx3803638037%_)
                              (let ((_%e3371033836%_
                                     (gx#syntax-e _%__stx3803638037%_)))
                                (let ((_%tl3371233843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3371033836%_)))
                                      (_%hd3371133840%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3371033836%_))))
                                  (if (gx#stx-datum? _%hd3371133840%_)
                                      (let ((_%e3371333846%_
                                             (gx#stx-e _%hd3371133840%_)))
                                        (if (equal? _%e3371333846%_ '::)
                                            (if (gx#stx-pair? _%tl3371233843%_)
                                                (let ((_%e3371433850%_
                                                       (gx#syntax-e
                                                        _%tl3371233843%_)))
                                                  (let ((_%tl3371633857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3371433850%_)))
                                                        (_%hd3371533854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3371433850%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3371633857%_)
                                                        (_%__kont3803938040%_
                                                         _%hd3371533854%_)
                                                        (_%__match3807938080%_
                                                         _%e3371033836%_
                                                         _%hd3371133840%_
                                                         _%tl3371233843%_
                                                         _%e3371433850%_
                                                         _%hd3371533854%_
                                                         _%tl3371633857%_))))
                                                (_%__match3808538086%_
                                                 _%e3371033836%_
                                                 _%hd3371133840%_
                                                 _%tl3371233843%_))
                                            (if (gx#stx-pair? _%tl3371233843%_)
                                                (let ((_%e3372333802%_
                                                       (gx#syntax-e
                                                        _%tl3371233843%_)))
                                                  (let ((_%tl3372533809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3372333802%_)))
                                                        (_%hd3372433806%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3372333802%_))))
                                                    (_%__match3807938080%_
                                                     _%e3371033836%_
                                                     _%hd3371133840%_
                                                     _%tl3371233843%_
                                                     _%e3372333802%_
                                                     _%hd3372433806%_
                                                     _%tl3372533809%_)))
                                                (_%__match3808538086%_
                                                 _%e3371033836%_
                                                 _%hd3371133840%_
                                                 _%tl3371233843%_))))
                                      (if (gx#stx-pair? _%tl3371233843%_)
                                          (let ((_%e3372333802%_
                                                 (gx#syntax-e
                                                  _%tl3371233843%_)))
                                            (let ((_%tl3372533809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3372333802%_)))
                                                  (_%hd3372433806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3372333802%_))))
                                              (_%__match3807938080%_
                                               _%e3371033836%_
                                               _%hd3371133840%_
                                               _%tl3371233843%_
                                               _%e3372333802%_
                                               _%hd3372433806%_
                                               _%tl3372533809%_)))
                                          (_%__match3808538086%_
                                           _%e3371033836%_
                                           _%hd3371133840%_
                                           _%tl3371233843%_)))))
                              (_%__kont3804538046%_)))))))
                 (_%parse-vector33522%_
                  (lambda (_%body33698%_)
                    (if (_%simple-vector?33523%_ _%body33698%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133519%_ _%body33698%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33521%_ _%body33698%_)
                                    '())))))
                 (_%simple-vector?33523%_
                  (lambda (_%body33635%_)
                    (let* ((_%__stx3808838089%_ _%body33635%_)
                           (_%g3363933651%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3808838089%_))))
                      (let ((_%__kont3809138092%_
                             (lambda (_%L33679%_ _%L33681%_)
                               (if (gx#ellipsis? _%L33681%_)
                                   '#f
                                   (_%simple-vector?33523%_ _%L33679%_))))
                            (_%__kont3809338094%_
                             (lambda () (gx#stx-null? _%body33635%_))))
                        (if (gx#stx-pair? _%__stx3808838089%_)
                            (let ((_%e3364333669%_
                                   (gx#syntax-e _%__stx3808838089%_)))
                              (let ((_%tl3364533676%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3364333669%_)))
                                    (_%hd3364433673%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3364333669%_))))
                                (_%__kont3809138092%_
                                 _%tl3364533676%_
                                 _%hd3364433673%_)))
                            (_%__kont3809338094%_))))))
                 (_%parse-class-body33524%_
                  (lambda (_%body33544%_)
                    (let _%recur33547%_ ((_%rest33550%_ _%body33544%_))
                      (let* ((_%__stx3810438105%_ _%rest33550%_)
                             (_%g3355433570%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3810438105%_))))
                        (let ((_%__kont3810738108%_
                               (lambda (_%L33608%_ _%L33610%_ _%L33611%_)
                                 (cons _%L33611%_
                                       (cons (_%parse133519%_ _%L33610%_)
                                             (_%recur33547%_ _%L33608%_)))))
                              (_%__kont3810938110%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33550%_)
                                     '()
                                     (_%parse-error33526%_ _%rest33550%_)))))
                          (let ((_%__match3812338124%_
                                 (lambda (_%e3355933588%_
                                          _%hd3356033592%_
                                          _%tl3356133595%_
                                          _%e3356233598%_
                                          _%hd3356333602%_
                                          _%tl3356433605%_)
                                   (let ((_%L33608%_ _%tl3356433605%_)
                                         (_%L33610%_ _%hd3356333602%_)
                                         (_%L33611%_ _%hd3356033592%_))
                                     (if (gx#stx-keyword? _%L33611%_)
                                         (_%__kont3810738108%_
                                          _%L33608%_
                                          _%L33610%_
                                          _%L33611%_)
                                         (_%__kont3810938110%_))))))
                            (if (gx#stx-pair? _%__stx3810438105%_)
                                (let ((_%e3355933588%_
                                       (gx#syntax-e _%__stx3810438105%_)))
                                  (let ((_%tl3356133595%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3355933588%_)))
                                        (_%hd3356033592%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3355933588%_))))
                                    (if (gx#stx-pair? _%tl3356133595%_)
                                        (let ((_%e3356233598%_
                                               (gx#syntax-e _%tl3356133595%_)))
                                          (let ((_%tl3356433605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3356233598%_)))
                                                (_%hd3356333602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3356233598%_))))
                                            (_%__match3812338124%_
                                             _%e3355933588%_
                                             _%hd3356033592%_
                                             _%tl3356133595%_
                                             _%e3356233598%_
                                             _%hd3356333602%_
                                             _%tl3356433605%_)))
                                        (_%__kont3810938110%_))))
                                (_%__kont3810938110%_))))))))
                 (_%parse-qq33525%_
                  (lambda (_%hd33531%_)
                    (let ((_%g3353333540%_
                           (lambda (_%g3353433536%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3353433536%_))))
                      (_%g3353333540%_ _%hd33531%_))))
                 (_%parse-error33526%_
                  (lambda (_%hd33528%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33517%_
                               (cons _%match-stx33517%_
                                     (cons _%stx33515%_
                                           (cons _%hd33528%_ '())))
                               (cons _%stx33515%_ (cons _%hd33528%_ '())))))))
          (_%parse133519%_ _%stx33515%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35205%_)
        (let ((_%match-stx35208%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35205%_
           _%match-stx35208%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39935_
        (let ((_g39934_ (let () (declare (not safe)) (##length _g39935_))))
          (cond ((let () (declare (not safe)) (##fx= _g39934_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39935_))
                ((let () (declare (not safe)) (##fx= _g39934_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39935_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33500%_)
        (let ((__tmp39936
               (lambda (_%E33503%_)
                 (with-exception-handler
                  (let ((_%E!33506%_ (current-exception-handler)))
                    (lambda (_%e33509%_)
                      (if (syntax-error? _%e33509%_)
                          (_%E33503%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33506%_ _%e33509%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33500%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39936))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32235%_)
        (letrec ((_%loop32238%_
                  (lambda (_%ptree32525%_ _%vars32527%_ _%K32528%_)
                    (let* ((_%__stx3822238223%_ _%ptree32525%_)
                           (_%g3254132651%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3822238223%_))))
                      (let ((_%__kont3822538226%_
                             (lambda (_%L33281%_)
                               (let* ((_%__stx3814238143%_ _%L33281%_)
                                      (_%g3329833332%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3814238143%_))))
                                 (let ((_%__kont3814538146%_
                                        (lambda (_%L33481%_)
                                          (_%loop32238%_
                                           _%L33481%_
                                           _%vars32527%_
                                           _%K32528%_)))
                                       (_%__kont3814738148%_
                                        (lambda (_%L33450%_)
                                          (_%loop32238%_
                                           _%L33450%_
                                           _%vars32527%_
                                           _%K32528%_)))
                                       (_%__kont3814938150%_
                                        (lambda (_%L33398%_)
                                          (_%loop32238%_
                                           _%L33398%_
                                           _%vars32527%_
                                           _%K32528%_)))
                                       (_%__kont3815138152%_
                                        (lambda ()
                                          (_%K32528%_ _%vars32527%_))))
                                   (if (gx#stx-pair? _%__stx3814238143%_)
                                       (let ((_%e3330133471%_
                                              (gx#syntax-e
                                               _%__stx3814238143%_)))
                                         (let ((_%tl3330333478%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3330133471%_)))
                                               (_%hd3330233475%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3330133471%_))))
                                           (if (gx#stx-null? _%tl3330333478%_)
                                               (_%__kont3814538146%_
                                                _%hd3330233475%_)
                                               (if (gx#stx-datum?
                                                    _%hd3330233475%_)
                                                   (let ((_%e3330833436%_
                                                          (gx#stx-e
                                                           _%hd3330233475%_)))
                                                     (if (equal? _%e3330833436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3330333478%_)
                     (let ((_%e3330933440%_ (gx#syntax-e _%tl3330333478%_)))
                       (let ((_%tl3331133447%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3330933440%_)))
                             (_%hd3331033444%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3330933440%_))))
                         (if (gx#stx-null? _%tl3331133447%_)
                             (_%__kont3814738148%_ _%hd3331033444%_)
                             (_%__kont3815138152%_))))
                     (_%__kont3815138152%_))
                 (if (equal? _%e3330833436%_ '::)
                     (if (gx#stx-pair? _%tl3330333478%_)
                         (let ((_%e3331733364%_
                                (gx#syntax-e _%tl3330333478%_)))
                           (let ((_%tl3331933371%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3331733364%_)))
                                 (_%hd3331833368%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3331733364%_))))
                             (if (gx#stx-pair? _%tl3331933371%_)
                                 (let ((_%e3332033374%_
                                        (gx#syntax-e _%tl3331933371%_)))
                                   (let ((_%tl3332233381%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3332033374%_)))
                                         (_%hd3332133378%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3332033374%_))))
                                     (if (gx#stx-datum? _%hd3332133378%_)
                                         (let ((_%e3332333384%_
                                                (gx#stx-e _%hd3332133378%_)))
                                           (if (equal? _%e3332333384%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3332233381%_)
                                                   (let ((_%e3332433388%_
                                                          (gx#syntax-e
                                                           _%tl3332233381%_)))
                                                     (let ((_%tl3332633395%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3332433388%_)))
                                                           (_%hd3332533392%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3332433388%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3332633395%_)
                                                           (_%__kont3814938150%_
                                                            _%hd3332533392%_)
                                                           (_%__kont3815138152%_))))
                                                   (_%__kont3815138152%_))
                                               (_%__kont3815138152%_)))
                                         (_%__kont3815138152%_))))
                                 (_%__kont3815138152%_))))
                         (_%__kont3815138152%_))
                     (_%__kont3815138152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3815138152%_)))))
                                       (_%__kont3815138152%_))))))
                            (_%__kont3822738228%_
                             (lambda (_%L33168%_ _%L33170%_)
                               (let* ((_%__stx3812638127%_ _%L33168%_)
                                      (_%g3318633198%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3812638127%_))))
                                 (let ((_%__kont3812938130%_
                                        (lambda (_%L33226%_ _%L33228%_)
                                          (_%loop32238%_
                                           _%L33228%_
                                           _%vars32527%_
                                           (lambda (_%g3324033242%_)
                                             (_%loop32238%_
                                              (cons _%L33170%_ _%L33226%_)
                                              _%g3324033242%_
                                              _%K32528%_)))))
                                       (_%__kont3813138132%_
                                        (lambda ()
                                          (_%K32528%_ _%vars32527%_))))
                                   (if (gx#stx-pair? _%__stx3812638127%_)
                                       (let ((_%e3319033216%_
                                              (gx#syntax-e
                                               _%__stx3812638127%_)))
                                         (let ((_%tl3319233223%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3319033216%_)))
                                               (_%hd3319133220%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3319033216%_))))
                                           (_%__kont3812938130%_
                                            _%tl3319233223%_
                                            _%hd3319133220%_)))
                                       (_%__kont3813138132%_))))))
                            (_%__kont3822938230%_
                             (lambda (_%L33137%_)
                               (_%loop32238%_
                                _%L33137%_
                                _%vars32527%_
                                _%K32528%_)))
                            (_%__kont3823138232%_
                             (lambda (_%L33083%_ _%L33085%_)
                               (_%loop32238%_
                                _%L33085%_
                                _%vars32527%_
                                (lambda (_%g3310033102%_)
                                  (_%loop32238%_
                                   _%L33083%_
                                   _%g3310033102%_
                                   _%K32528%_)))))
                            (_%__kont3823338234%_
                             (lambda (_%L33019%_ _%L33021%_)
                               (_%loop32238%_
                                _%L33021%_
                                _%vars32527%_
                                (lambda (_%g3303633038%_)
                                  (_%loop32238%_
                                   _%L33019%_
                                   _%g3303633038%_
                                   _%K32528%_)))))
                            (_%__kont3823538236%_
                             (lambda (_%L32964%_)
                               (_%loop32238%_
                                _%L32964%_
                                _%vars32527%_
                                _%K32528%_)))
                            (_%__kont3823738238%_
                             (lambda (_%L32914%_ _%L32916%_)
                               (_%loop-vector32240%_
                                _%L32914%_
                                _%vars32527%_
                                _%K32528%_)))
                            (_%__kont3823938240%_
                             (lambda (_%L32871%_)
                               (_%loop-vector32240%_
                                _%L32871%_
                                _%vars32527%_
                                _%K32528%_)))
                            (_%__kont3824138242%_
                             (lambda (_%L32814%_)
                               (_%loop-class-list32242%_
                                _%L32814%_
                                _%vars32527%_
                                _%K32528%_)))
                            (_%__kont3824338244%_
                             (lambda (_%L32755%_ _%L32757%_)
                               (_%loop32238%_
                                _%L32755%_
                                _%vars32527%_
                                _%K32528%_)))
                            (_%__kont3824538246%_
                             (lambda (_%L32693%_)
                               (if (find (lambda (_%g3270832710%_)
                                           (gx#bound-identifier=?
                                            _%g3270832710%_
                                            _%L32693%_))
                                         _%vars32527%_)
                                   (_%K32528%_ _%vars32527%_)
                                   (_%K32528%_
                                    (cons _%L32693%_ _%vars32527%_)))))
                            (_%__kont3824738248%_
                             (lambda () (_%K32528%_ _%vars32527%_))))
                        (let* ((_%__match3837938380%_
                                (lambda (_%e3259832894%_
                                         _%hd3259932898%_
                                         _%tl3260032901%_
                                         _%e3260132904%_
                                         _%hd3260232908%_
                                         _%tl3260332911%_)
                                  (let ((_%L32914%_ _%hd3260232908%_)
                                        (_%L32916%_ _%hd3259932898%_))
                                    (if (or (gx#stx-eq? 'values: _%L32916%_)
                                            (gx#stx-eq? 'vector: _%L32916%_))
                                        (_%__kont3823738238%_
                                         _%L32914%_
                                         _%L32916%_)
                                        (if (gx#stx-datum? _%hd3259932898%_)
                                            (let ((_%e3260832847%_
                                                   (gx#stx-e
                                                    _%hd3259932898%_)))
                                              (if (equal? _%e3260832847%_
                                                          'struct:)
                                                  (_%__kont3824738248%_)
                                                  (if (equal? _%e3260832847%_
                                                              'class:)
                                                      (_%__kont3824738248%_)
                                                      (if (equal? _%e3260832847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3824738248%_)
                  (if (equal? _%e3260832847%_ 'var:)
                      (_%__kont3824538246%_ _%hd3260232908%_)
                      (_%__kont3824738248%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3824738248%_))))))
                               (_%__match3827338274%_
                                (lambda (_%e3255333158%_
                                         _%hd3255433162%_
                                         _%tl3255533165%_)
                                  (let ((_%L33168%_ _%tl3255533165%_)
                                        (_%L33170%_ _%hd3255433162%_))
                                    (if (or (gx#stx-eq? 'and: _%L33170%_)
                                            (gx#stx-eq? 'or: _%L33170%_))
                                        (_%__kont3822738228%_
                                         _%L33168%_
                                         _%L33170%_)
                                        (if (gx#stx-datum? _%hd3255433162%_)
                                            (let ((_%e3256033123%_
                                                   (gx#stx-e
                                                    _%hd3255433162%_)))
                                              (if (equal? _%e3256033123%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3255533165%_)
                                                      (let ((_%e3256133127%_
                                                             (gx#syntax-e
                                                              _%tl3255533165%_)))
                                                        (let ((_%tl3256333134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3256133127%_)))
                      (_%hd3256233131%_
                       (let () (declare (not safe)) (##car _%e3256133127%_))))
                  (if (gx#stx-null? _%tl3256333134%_)
                      (_%__kont3822938230%_ _%hd3256233131%_)
                      (_%__kont3824738248%_))))
              (_%__kont3824738248%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3256033123%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3255533165%_)
                                                          (let ((_%e3257033063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3255533165%_)))
                    (let ((_%tl3257233070%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3257033063%_)))
                          (_%hd3257133067%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3257033063%_))))
                      (if (gx#stx-pair? _%tl3257233070%_)
                          (let ((_%e3257333073%_
                                 (gx#syntax-e _%tl3257233070%_)))
                            (let ((_%tl3257533080%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3257333073%_)))
                                  (_%hd3257433077%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3257333073%_))))
                              (if (gx#stx-null? _%tl3257533080%_)
                                  (_%__kont3823138232%_
                                   _%hd3257433077%_
                                   _%hd3257133067%_)
                                  (_%__kont3824738248%_))))
                          (if (gx#stx-null? _%tl3257233070%_)
                              (_%__match3837938380%_
                               _%e3255333158%_
                               _%hd3255433162%_
                               _%tl3255533165%_
                               _%e3257033063%_
                               _%hd3257133067%_
                               _%tl3257233070%_)
                              (_%__kont3824738248%_)))))
                  (_%__kont3824738248%_))
              (if (equal? _%e3256033123%_ 'splice:)
                  (if (gx#stx-pair? _%tl3255533165%_)
                      (let ((_%e3258232999%_ (gx#syntax-e _%tl3255533165%_)))
                        (let ((_%tl3258433006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3258232999%_)))
                              (_%hd3258333003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3258232999%_))))
                          (if (gx#stx-pair? _%tl3258433006%_)
                              (let ((_%e3258533009%_
                                     (gx#syntax-e _%tl3258433006%_)))
                                (let ((_%tl3258733016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3258533009%_)))
                                      (_%hd3258633013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3258533009%_))))
                                  (if (gx#stx-null? _%tl3258733016%_)
                                      (_%__kont3823338234%_
                                       _%hd3258633013%_
                                       _%hd3258333003%_)
                                      (_%__kont3824738248%_))))
                              (if (gx#stx-null? _%tl3258433006%_)
                                  (_%__match3837938380%_
                                   _%e3255333158%_
                                   _%hd3255433162%_
                                   _%tl3255533165%_
                                   _%e3258232999%_
                                   _%hd3258333003%_
                                   _%tl3258433006%_)
                                  (_%__kont3824738248%_)))))
                      (_%__kont3824738248%_))
                  (if (equal? _%e3256033123%_ 'box:)
                      (if (gx#stx-pair? _%tl3255533165%_)
                          (let ((_%e3259332954%_
                                 (gx#syntax-e _%tl3255533165%_)))
                            (let ((_%tl3259532961%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3259332954%_)))
                                  (_%hd3259432958%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3259332954%_))))
                              (if (gx#stx-null? _%tl3259532961%_)
                                  (_%__kont3823538236%_ _%hd3259432958%_)
                                  (_%__kont3824738248%_))))
                          (_%__kont3824738248%_))
                      (if (gx#stx-pair? _%tl3255533165%_)
                          (let ((_%e3260132904%_
                                 (gx#syntax-e _%tl3255533165%_)))
                            (let ((_%tl3260332911%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3260132904%_)))
                                  (_%hd3260232908%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3260132904%_))))
                              (if (gx#stx-null? _%tl3260332911%_)
                                  (_%__match3837938380%_
                                   _%e3255333158%_
                                   _%hd3255433162%_
                                   _%tl3255533165%_
                                   _%e3260132904%_
                                   _%hd3260232908%_
                                   _%tl3260332911%_)
                                  (if (equal? _%e3256033123%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3260332911%_)
                                          (let ((_%e3261232861%_
                                                 (gx#syntax-e
                                                  _%tl3260332911%_)))
                                            (let ((_%tl3261432868%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3261232861%_)))
                                                  (_%hd3261332865%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3261232861%_))))
                                              (if (gx#stx-null?
                                                   _%tl3261432868%_)
                                                  (_%__kont3823938240%_
                                                   _%hd3261332865%_)
                                                  (_%__kont3824738248%_))))
                                          (_%__kont3824738248%_))
                                      (if (equal? _%e3256033123%_ 'class:)
                                          (if (gx#stx-pair? _%tl3260332911%_)
                                              (let ((_%e3262332804%_
                                                     (gx#syntax-e
                                                      _%tl3260332911%_)))
                                                (let ((_%tl3262532811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3262332804%_)))
                                                      (_%hd3262432808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3262332804%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3262532811%_)
                                                      (_%__kont3824138242%_
                                                       _%hd3262432808%_)
                                                      (_%__kont3824738248%_))))
                                              (_%__kont3824738248%_))
                                          (if (equal? _%e3256033123%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3260332911%_)
                                                  (let ((_%e3263532745%_
                                                         (gx#syntax-e
                                                          _%tl3260332911%_)))
                                                    (let ((_%tl3263732752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3263532745%_)))
                                                          (_%hd3263632749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3263532745%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3263732752%_)
                                                          (_%__kont3824338244%_
                                                           _%hd3263632749%_
                                                           _%hd3260232908%_)
                                                          (_%__kont3824738248%_))))
                                                  (_%__kont3824738248%_))
                                              (_%__kont3824738248%_)))))))
                          (_%__kont3824738248%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3255533165%_)
                                                (let ((_%e3260132904%_
                                                       (gx#syntax-e
                                                        _%tl3255533165%_)))
                                                  (let ((_%tl3260332911%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3260132904%_)))
                                                        (_%hd3260232908%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3260132904%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3260332911%_)
                                                        (_%__match3837938380%_
                                                         _%e3255333158%_
                                                         _%hd3255433162%_
                                                         _%tl3255533165%_
                                                         _%e3260132904%_
                                                         _%hd3260232908%_
                                                         _%tl3260332911%_)
                                                        (_%__kont3824738248%_))))
                                                (_%__kont3824738248%_))))))))
                          (if (gx#stx-pair? _%__stx3822238223%_)
                              (let ((_%e3254433257%_
                                     (gx#syntax-e _%__stx3822238223%_)))
                                (let ((_%tl3254633264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3254433257%_)))
                                      (_%hd3254533261%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3254433257%_))))
                                  (if (gx#stx-datum? _%hd3254533261%_)
                                      (let ((_%e3254733267%_
                                             (gx#stx-e _%hd3254533261%_)))
                                        (if (equal? _%e3254733267%_ '?:)
                                            (if (gx#stx-pair? _%tl3254633264%_)
                                                (let ((_%e3254833271%_
                                                       (gx#syntax-e
                                                        _%tl3254633264%_)))
                                                  (let ((_%tl3255033278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3254833271%_)))
                                                        (_%hd3254933275%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3254833271%_))))
                                                    (_%__kont3822538226%_
                                                     _%tl3255033278%_)))
                                                (_%__match3827338274%_
                                                 _%e3254433257%_
                                                 _%hd3254533261%_
                                                 _%tl3254633264%_))
                                            (_%__match3827338274%_
                                             _%e3254433257%_
                                             _%hd3254533261%_
                                             _%tl3254633264%_)))
                                      (_%__match3827338274%_
                                       _%e3254433257%_
                                       _%hd3254533261%_
                                       _%tl3254633264%_))))
                              (_%__kont3824738248%_)))))))
                 (_%loop-vector32240%_
                  (lambda (_%body32401%_ _%vars32403%_ _%K32404%_)
                    (let* ((_%__stx3848038481%_ _%body32401%_)
                           (_%g3240732430%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3848038481%_))))
                      (let ((_%__kont3848338484%_
                             (lambda (_%L32507%_)
                               (_%loop-list32241%_
                                _%L32507%_
                                _%vars32403%_
                                _%K32404%_)))
                            (_%__kont3848538486%_
                             (lambda (_%L32461%_)
                               (_%loop32238%_
                                _%L32461%_
                                _%vars32403%_
                                _%K32404%_))))
                        (if (gx#stx-pair? _%__stx3848038481%_)
                            (let ((_%e3241032483%_
                                   (gx#syntax-e _%__stx3848038481%_)))
                              (let ((_%tl3241232490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3241032483%_)))
                                    (_%hd3241132487%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3241032483%_))))
                                (if (gx#stx-datum? _%hd3241132487%_)
                                    (let ((_%e3241332493%_
                                           (gx#stx-e _%hd3241132487%_)))
                                      (if (equal? _%e3241332493%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3241232490%_)
                                              (let ((_%e3241432497%_
                                                     (gx#syntax-e
                                                      _%tl3241232490%_)))
                                                (let ((_%tl3241632504%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3241432497%_)))
                                                      (_%hd3241532501%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3241432497%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3241632504%_)
                                                      (_%__kont3848338484%_
                                                       _%hd3241532501%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3240732430%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3240732430%_)))
                                          (if (equal? _%e3241332493%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3241232490%_)
                                                  (let ((_%e3242232451%_
                                                         (gx#syntax-e
                                                          _%tl3241232490%_)))
                                                    (let ((_%tl3242432458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3242232451%_)))
                                                          (_%hd3242332455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3242232451%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3242432458%_)
                                                          (_%__kont3848538486%_
                                                           _%hd3242332455%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3240732430%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3240732430%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3240732430%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3240732430%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3240732430%_)))))))
                 (_%loop-list32241%_
                  (lambda (_%rest32331%_ _%vars32333%_ _%K32334%_)
                    (let* ((_%__stx3853038531%_ _%rest32331%_)
                           (_%g3233732349%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3853038531%_))))
                      (let ((_%__kont3853338534%_
                             (lambda (_%L32377%_ _%L32379%_)
                               (_%loop32238%_
                                _%L32379%_
                                _%vars32333%_
                                (lambda (_%g3239132393%_)
                                  (_%loop-list32241%_
                                   _%L32377%_
                                   _%g3239132393%_
                                   _%K32334%_)))))
                            (_%__kont3853538536%_
                             (lambda () (_%K32334%_ _%vars32333%_))))
                        (if (gx#stx-pair? _%__stx3853038531%_)
                            (let ((_%e3234132367%_
                                   (gx#syntax-e _%__stx3853038531%_)))
                              (let ((_%tl3234332374%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3234132367%_)))
                                    (_%hd3234232371%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3234132367%_))))
                                (_%__kont3853338534%_
                                 _%tl3234332374%_
                                 _%hd3234232371%_)))
                            (_%__kont3853538536%_))))))
                 (_%loop-class-list32242%_
                  (lambda (_%rest32244%_ _%vars32246%_ _%K32247%_)
                    (let* ((_%__stx3854638547%_ _%rest32244%_)
                           (_%g3225032265%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3854638547%_))))
                      (let ((_%__kont3854938550%_
                             (lambda (_%L32303%_ _%L32305%_)
                               (_%loop32238%_
                                _%L32305%_
                                _%vars32246%_
                                (lambda (_%g3232132323%_)
                                  (_%loop-class-list32242%_
                                   _%L32303%_
                                   _%g3232132323%_
                                   _%K32247%_)))))
                            (_%__kont3855138552%_
                             (lambda () (_%K32247%_ _%vars32246%_))))
                        (if (gx#stx-pair? _%__stx3854638547%_)
                            (let ((_%e3225432283%_
                                   (gx#syntax-e _%__stx3854638547%_)))
                              (let ((_%tl3225632290%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3225432283%_)))
                                    (_%hd3225532287%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3225432283%_))))
                                (if (gx#stx-pair? _%tl3225632290%_)
                                    (let ((_%e3225732293%_
                                           (gx#syntax-e _%tl3225632290%_)))
                                      (let ((_%tl3225932300%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3225732293%_)))
                                            (_%hd3225832297%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3225732293%_))))
                                        (_%__kont3854938550%_
                                         _%tl3225932300%_
                                         _%hd3225832297%_)))
                                    (_%__kont3855138552%_))))
                            (_%__kont3855138552%_)))))))
          (_%loop32238%_ _%ptree32235%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29180%_ _%tgt29182%_ _%ptree29183%_ _%K29184%_ _%E29185%_)
        (letrec ((_%generate129187%_
                  (lambda (_%tgt30434%_ _%ptree30436%_ _%K30437%_ _%E30438%_)
                    (let* ((_%g3044030448%_
                            (lambda (_%g3044130444%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3044130444%_)))
                           (_%g3043932231%_
                            (lambda (_%g3044130452%_)
                              ((lambda (_%L30455%_)
                                 (let* ((_%__stx3878238783%_ _%ptree30436%_)
                                        (_%g3048230624%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3878238783%_))))
                                   (let ((_%__kont3878538786%_
                                          (lambda (_%L31946%_ _%L31948%_)
                                            (let* ((_%__stx3870038701%_
                                                    _%L31946%_)
                                                   (_%g3196532000%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3870038701%_))))
                                              (let ((_%__kont3870338704%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31948%_ (cons _%L30455%_ '())))
                           (cons _%K30437%_ (cons _%E30438%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3870538706%_
                                                     (lambda (_%L32201%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31948%_ (cons _%L30455%_ '())))
                           (cons (_%generate129187%_
                                  _%tgt30434%_
                                  _%L32201%_
                                  _%K30437%_
                                  _%E30438%_)
                                 (cons _%E30438%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3870738708%_
                                                     (lambda (_%L32139%_)
                                                       (let* ((_%g3215332161%_
                                                               (lambda (_%g3215432157%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3215432157%_)))
                      (_%g3215232180%_
                       (lambda (_%g3215432165%_)
                         ((lambda (_%L32168%_)
                            (cons 'let
                                  (cons (cons (cons _%L32168%_
                                                    (cons (cons _%L31948%_
                                                                (cons _%L30455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32168%_
                                                          (cons (_%generate129187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32168%_
                         _%L32139%_
                         _%K30437%_
                         _%E30438%_)
                        (cons _%E30438%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3215432165%_))))
                 (_%g3215232180%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3870938710%_
                                                     (lambda (_%L32055%_
                                                              _%L32057%_)
                                                       (let* ((_%g3207732085%_
                                                               (lambda (_%g3207832081%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3207832081%_)))
                      (_%g3207632104%_
                       (lambda (_%g3207832089%_)
                         ((lambda (_%L32092%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31948%_
                                                    (cons _%L30455%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L32057%_ (cons _%L30455%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129187%_
                         _%L32092%_
                         _%L32055%_
                         _%K30437%_
                         _%E30438%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30438%_ '())))))
                          _%g3207832089%_))))
                 (_%g3207632104%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3196232212%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3870038701%_)
                                                             (let ((_%e3196832191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3870038701%_)))
                       (let ((_%tl3197032198%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3196832191%_)))
                             (_%hd3196932195%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3196832191%_))))
                         (if (gx#stx-null? _%tl3197032198%_)
                             (_%__kont3870538706%_ _%hd3196932195%_)
                             (if (gx#stx-datum? _%hd3196932195%_)
                                 (let ((_%e3197532125%_
                                        (gx#stx-e _%hd3196932195%_)))
                                   (if (equal? _%e3197532125%_ '=>:)
                                       (if (gx#stx-pair? _%tl3197032198%_)
                                           (let ((_%e3197632129%_
                                                  (gx#syntax-e
                                                   _%tl3197032198%_)))
                                             (let ((_%tl3197832136%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3197632129%_)))
                                                   (_%hd3197732133%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3197632129%_))))
                                               (if (gx#stx-null?
                                                    _%tl3197832136%_)
                                                   (_%__kont3870738708%_
                                                    _%hd3197732133%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3196532000%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3196532000%_)))
                                       (if (equal? _%e3197532125%_ '::)
                                           (if (gx#stx-pair? _%tl3197032198%_)
                                               (let ((_%e3198532021%_
                                                      (gx#syntax-e
                                                       _%tl3197032198%_)))
                                                 (let ((_%tl3198732028%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3198532021%_)))
                                                       (_%hd3198632025%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3198532021%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3198732028%_)
                                                       (let ((_%e3198832031%_
                                                              (gx#syntax-e
                                                               _%tl3198732028%_)))
                                                         (let ((_%tl3199032038%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3198832031%_)))
                       (_%hd3198932035%_
                        (let () (declare (not safe)) (##car _%e3198832031%_))))
                   (if (gx#stx-datum? _%hd3198932035%_)
                       (let ((_%e3199132041%_ (gx#stx-e _%hd3198932035%_)))
                         (if (equal? _%e3199132041%_ '=>:)
                             (if (gx#stx-pair? _%tl3199032038%_)
                                 (let ((_%e3199232045%_
                                        (gx#syntax-e _%tl3199032038%_)))
                                   (let ((_%tl3199432052%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3199232045%_)))
                                         (_%hd3199332049%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3199232045%_))))
                                     (if (gx#stx-null? _%tl3199432052%_)
                                         (_%__kont3870938710%_
                                          _%hd3199332049%_
                                          _%hd3198632025%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3196532000%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3196532000%_)))
                             (let () (declare (not safe)) (_%g3196532000%_))))
                       (let () (declare (not safe)) (_%g3196532000%_)))))
               (let () (declare (not safe)) (_%g3196532000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3196532000%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3196532000%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3196532000%_))))))
                     (let () (declare (not safe)) (_%g3196532000%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3870038701%_)
                                                      (_%__kont3870338704%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3196232212%_))))))))
                                         (_%__kont3878738788%_
                                          (lambda (_%L31843%_)
                                            (let* ((_%__stx3868438685%_
                                                    _%L31843%_)
                                                   (_%g3185631868%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3868438685%_))))
                                              (let ((_%__kont3868738688%_
                                                     (lambda (_%L31896%_
                                                              _%L31898%_)
                                                       (_%generate129187%_
                                                        _%tgt30434%_
                                                        _%L31898%_
                                                        (_%generate129187%_
                                                         _%tgt30434%_
                                                         (cons 'and:
                                                               _%L31896%_)
                                                         _%K30437%_
                                                         _%E30438%_)
                                                        _%E30438%_)))
                                                    (_%__kont3868938690%_
                                                     (lambda () _%K30437%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3868438685%_)
                                                    (let ((_%e3186031886%_
                                                           (gx#syntax-e
                                                            _%__stx3868438685%_)))
                                                      (let ((_%tl3186231893%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3186031886%_)))
                    (_%hd3186131890%_
                     (let () (declare (not safe)) (##car _%e3186031886%_))))
                (_%__kont3868738688%_ _%tl3186231893%_ _%hd3186131890%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3868938690%_))))))
                                         (_%__kont3878938790%_
                                          (lambda (_%L31750%_)
                                            (let* ((_%__stx3866838669%_
                                                    _%L31750%_)
                                                   (_%g3176331775%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3866838669%_))))
                                              (let ((_%__kont3867138672%_
                                                     (lambda (_%L31803%_
                                                              _%L31805%_)
                                                       (_%generate129187%_
                                                        _%tgt30434%_
                                                        _%L31805%_
                                                        _%K30437%_
                                                        (_%generate129187%_
                                                         _%tgt30434%_
                                                         (cons 'or: _%L31803%_)
                                                         _%K30437%_
                                                         _%E30438%_))))
                                                    (_%__kont3867338674%_
                                                     (lambda () _%E30438%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3866838669%_)
                                                    (let ((_%e3176731793%_
                                                           (gx#syntax-e
                                                            _%__stx3866838669%_)))
                                                      (let ((_%tl3176931800%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3176731793%_)))
                    (_%hd3176831797%_
                     (let () (declare (not safe)) (##car _%e3176731793%_))))
                (_%__kont3867138672%_ _%tl3176931800%_ _%hd3176831797%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3867338674%_))))))
                                         (_%__kont3879138792%_
                                          (lambda (_%L31715%_)
                                            (_%generate129187%_
                                             _%tgt30434%_
                                             _%L31715%_
                                             _%E30438%_
                                             _%K30437%_)))
                                         (_%__kont3879338794%_
                                          (lambda (_%L31589%_ _%L31591%_)
                                            (let* ((_%g3160831623%_
                                                    (lambda (_%g3160931619%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3160931619%_)))
                                                   (_%g3160731680%_
                                                    (lambda (_%g3160931627%_)
                                                      (if (gx#stx-pair?
                                                           _%g3160931627%_)
                                                          (let ((_%e3161231630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3160931627%_)))
                    (let ((_%hd3161331634%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3161231630%_)))
                          (_%tl3161431637%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3161231630%_))))
                      (if (gx#stx-pair? _%tl3161431637%_)
                          (let ((_%e3161531640%_
                                 (gx#syntax-e _%tl3161431637%_)))
                            (let ((_%hd3161631644%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3161531640%_)))
                                  (_%tl3161731647%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3161531640%_))))
                              (if (gx#stx-null? _%tl3161731647%_)
                                  ((lambda (_%L31650%_ _%L31652%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##pair?)
                                                       (cons _%L30455%_ '()))
                                                 (cons (let ((_%hd-pat31668%_
                                                              (gx#stx-e
                                                               _%L31591%_))
                                                             (_%tl-pat31670%_
                                                              (gx#stx-e
                                                               _%L31589%_)))
                                                         (if (and (equal? _%hd-pat31668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31670%_ '(any:)))
                     _%K30437%_
                     (if (equal? _%tl-pat31670%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31652%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129187%_
                                            _%L31652%_
                                            _%L31591%_
                                            _%K30437%_
                                            _%E30438%_)
                                           '())))
                         (if (equal? _%hd-pat31668%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31650%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30455%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129187%_
                                                _%L31650%_
                                                _%L31589%_
                                                _%K30437%_
                                                _%E30438%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31652%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30455%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31650%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30455%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129187%_
                                                _%L31652%_
                                                _%L31591%_
                                                (_%generate129187%_
                                                 _%L31650%_
                                                 _%L31589%_
                                                 _%K30437%_
                                                 _%E30438%_)
                                                _%E30438%_)
                                               '())))))))
               (cons _%E30438%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3161631644%_
                                   _%hd3161331634%_)
                                  (_%g3160831623%_ _%g3160931627%_))))
                          (_%g3160831623%_ _%g3160931627%_))))
                  (_%g3160831623%_ _%g3160931627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3160731680%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3879538796%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '##null?)
                                                              (cons _%L30455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30437%_ (cons _%E30438%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3879738798%_
                                          (lambda (_%L31505%_ _%L31507%_)
                                            (_%generate-splice29189%_
                                             _%tgt30434%_
                                             _%L31507%_
                                             _%L31505%_
                                             _%K30437%_
                                             _%E30438%_)))
                                         (_%__kont3879938800%_
                                          (lambda (_%L31419%_)
                                            (let* ((_%g3143331441%_
                                                    (lambda (_%g3143431437%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3143431437%_)))
                                                   (_%g3143231460%_
                                                    (lambda (_%g3143431445%_)
                                                      ((lambda (_%L31448%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##box?)
                                   (cons _%L30455%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31448%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30455%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129187%_
                                                      _%L31448%_
                                                      _%L31419%_
                                                      _%K30437%_
                                                      _%E30438%_)
                                                     '())))
                                   (cons _%E30438%_ '())))))
               _%g3143431445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3143231460%_
                                               (gx#genident 'e)))))
                                         (_%__kont3880138802%_
                                          (lambda (_%L31224%_)
                                            (let* ((_%__stx3861838619%_
                                                    _%L31224%_)
                                                   (_%g3123931262%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3861838619%_))))
                                              (let ((_%__kont3862138622%_
                                                     (lambda (_%L31339%_)
                                                       (let* ((_%g3135331361%_
                                                               (lambda (_%g3135431357%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3135431357%_)))
                      (_%g3135231380%_
                       (lambda (_%g3135431365%_)
                         ((lambda (_%L31368%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30455%_
                                                                '()))
                                                    (cons _%L31368%_ '())))
                                        (cons (_%generate-simple-vector29190%_
                                               _%tgt30434%_
                                               _%L31339%_
                                               '0
                                               _%K30437%_
                                               _%E30438%_)
                                              (cons _%E30438%_ '())))))
                          _%g3135431365%_))))
                 (_%g3135231380%_ (gx#stx-length _%L31339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3862338624%_
                                                     (lambda (_%L31293%_)
                                                       (_%generate-list-vector29191%_
                                                        _%tgt30434%_
                                                        _%L31293%_
                                                        'values->list
                                                        _%K30437%_
                                                        _%E30438%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3861838619%_)
                                                    (let ((_%e3124231315%_
                                                           (gx#syntax-e
                                                            _%__stx3861838619%_)))
                                                      (let ((_%tl3124431322%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3124231315%_)))
                    (_%hd3124331319%_
                     (let () (declare (not safe)) (##car _%e3124231315%_))))
                (if (gx#stx-datum? _%hd3124331319%_)
                    (let ((_%e3124531325%_ (gx#stx-e _%hd3124331319%_)))
                      (if (equal? _%e3124531325%_ 'simple:)
                          (if (gx#stx-pair? _%tl3124431322%_)
                              (let ((_%e3124631329%_
                                     (gx#syntax-e _%tl3124431322%_)))
                                (let ((_%tl3124831336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3124631329%_)))
                                      (_%hd3124731333%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3124631329%_))))
                                  (if (gx#stx-null? _%tl3124831336%_)
                                      (_%__kont3862138622%_ _%hd3124731333%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3123931262%_)))))
                              (let () (declare (not safe)) (_%g3123931262%_)))
                          (if (equal? _%e3124531325%_ 'list:)
                              (if (gx#stx-pair? _%tl3124431322%_)
                                  (let ((_%e3125431283%_
                                         (gx#syntax-e _%tl3124431322%_)))
                                    (let ((_%tl3125631290%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3125431283%_)))
                                          (_%hd3125531287%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3125431283%_))))
                                      (if (gx#stx-null? _%tl3125631290%_)
                                          (_%__kont3862338624%_
                                           _%hd3125531287%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3123931262%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3123931262%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3123931262%_)))))
                    (let () (declare (not safe)) (_%g3123931262%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3123931262%_)))))))
                                         (_%__kont3880338804%_
                                          (lambda (_%L31029%_)
                                            (let* ((_%__stx3856838569%_
                                                    _%L31029%_)
                                                   (_%g3104431067%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3856838569%_))))
                                              (let ((_%__kont3857138572%_
                                                     (lambda (_%L31144%_)
                                                       (let* ((_%g3115831166%_
                                                               (lambda (_%g3115931162%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3115931162%_)))
                      (_%g3115731185%_
                       (lambda (_%g3115931170%_)
                         ((lambda (_%L31173%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##vector?)
                                              (cons _%L30455%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30455%_ '()))
                              (cons _%L31173%_ '())))
                  (cons (_%generate-simple-vector29190%_
                         _%tgt30434%_
                         _%L31144%_
                         '0
                         _%K30437%_
                         _%E30438%_)
                        (cons _%E30438%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30438%_ '())))))
                          _%g3115931170%_))))
                 (_%g3115731185%_ (gx#stx-length _%L31144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3857338574%_
                                                     (lambda (_%L31098%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector?)
                                 (cons _%L30455%_ '()))
                           (cons (_%generate-list-vector29191%_
                                  _%tgt30434%_
                                  _%L31098%_
                                  'vector->list
                                  _%K30437%_
                                  _%E30438%_)
                                 (cons _%E30438%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3856838569%_)
                                                    (let ((_%e3104731120%_
                                                           (gx#syntax-e
                                                            _%__stx3856838569%_)))
                                                      (let ((_%tl3104931127%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3104731120%_)))
                    (_%hd3104831124%_
                     (let () (declare (not safe)) (##car _%e3104731120%_))))
                (if (gx#stx-datum? _%hd3104831124%_)
                    (let ((_%e3105031130%_ (gx#stx-e _%hd3104831124%_)))
                      (if (equal? _%e3105031130%_ 'simple:)
                          (if (gx#stx-pair? _%tl3104931127%_)
                              (let ((_%e3105131134%_
                                     (gx#syntax-e _%tl3104931127%_)))
                                (let ((_%tl3105331141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3105131134%_)))
                                      (_%hd3105231138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3105131134%_))))
                                  (if (gx#stx-null? _%tl3105331141%_)
                                      (_%__kont3857138572%_ _%hd3105231138%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3104431067%_)))))
                              (let () (declare (not safe)) (_%g3104431067%_)))
                          (if (equal? _%e3105031130%_ 'list:)
                              (if (gx#stx-pair? _%tl3104931127%_)
                                  (let ((_%e3105931088%_
                                         (gx#syntax-e _%tl3104931127%_)))
                                    (let ((_%tl3106131095%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3105931088%_)))
                                          (_%hd3106031092%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3105931088%_))))
                                      (if (gx#stx-null? _%tl3106131095%_)
                                          (_%__kont3857338574%_
                                           _%hd3106031092%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3104431067%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3104431067%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3104431067%_)))))
                    (let () (declare (not safe)) (_%g3104431067%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3104431067%_)))))))
                                         (_%__kont3880538806%_
                                          (lambda (_%L30980%_ _%L30982%_)
                                            (_%generate-struct29192%_
                                             (gx#stx-e _%L30982%_)
                                             _%tgt30434%_
                                             _%L30980%_
                                             _%K30437%_
                                             _%E30438%_)))
                                         (_%__kont3880738808%_
                                          (lambda (_%L30921%_ _%L30923%_)
                                            (_%generate-class29195%_
                                             (gx#stx-e _%L30923%_)
                                             _%tgt30434%_
                                             _%L30921%_
                                             _%K30437%_
                                             _%E30438%_)))
                                         (_%__kont3880938810%_
                                          (lambda (_%L30818%_)
                                            (let* ((_%g3083230840%_
                                                    (lambda (_%g3083330836%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3083330836%_)))
                                                   (_%g3083130859%_
                                                    (lambda (_%g3083330844%_)
                                                      ((lambda (_%L30847%_)
                                                         (cons 'if
                                                               (cons (cons _%L30847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30455%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30818%_ '()))
                                               '())))
                             (cons _%K30437%_ (cons _%E30438%_ '())))))
               _%g3083330844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3083130859%_
                                               (let ((_%e30863%_
                                                      (gx#stx-e _%L30818%_)))
                                                 (if (or (symbol? _%e30863%_)
                                                         (keyword? _%e30863%_)
                                                         (immediate?
                                                          _%e30863%_))
                                                     '##eq?
                                                     (if (number? _%e30863%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3881138812%_
                                          (lambda (_%L30738%_ _%L30740%_)
                                            (let* ((_%g3075630764%_
                                                    (lambda (_%g3075730760%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3075730760%_)))
                                                   (_%g3075530783%_
                                                    (lambda (_%g3075730768%_)
                                                      ((lambda (_%L30771%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30740%_
                                                     (cons _%L30455%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129187%_
                                    _%L30771%_
                                    _%L30738%_
                                    _%K30437%_
                                    _%E30438%_)
                                   '()))))
               _%g3075730768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3075530783%_
                                               (gx#genident 'e)))))
                                         (_%__kont3881338814%_
                                          (lambda (_%L30680%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30455%_ '()))
                      '())
                (cons _%K30437%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3881538816%_
                                          (lambda () _%K30437%_)))
                                     (if (gx#stx-pair? _%__stx3878238783%_)
                                         (let ((_%e3048631922%_
                                                (gx#syntax-e
                                                 _%__stx3878238783%_)))
                                           (let ((_%tl3048831929%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3048631922%_)))
                                                 (_%hd3048731926%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3048631922%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3048731926%_)
                                                 (let ((_%e3048931932%_
                                                        (gx#stx-e
                                                         _%hd3048731926%_)))
                                                   (if (equal? _%e3048931932%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3048831929%_)
                                                           (let ((_%e3049031936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3048831929%_)))
                     (let ((_%tl3049231943%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3049031936%_)))
                           (_%hd3049131940%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3049031936%_))))
                       (_%__kont3878538786%_
                        _%tl3049231943%_
                        _%hd3049131940%_)))
                   (let () (declare (not safe)) (_%g3048230624%_)))
               (if (equal? _%e3048931932%_ 'and:)
                   (_%__kont3878738788%_ _%tl3048831929%_)
                   (if (equal? _%e3048931932%_ 'or:)
                       (_%__kont3878938790%_ _%tl3048831929%_)
                       (if (equal? _%e3048931932%_ 'not:)
                           (if (gx#stx-pair? _%tl3048831929%_)
                               (let ((_%e3050831705%_
                                      (gx#syntax-e _%tl3048831929%_)))
                                 (let ((_%tl3051031712%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3050831705%_)))
                                       (_%hd3050931709%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3050831705%_))))
                                   (if (gx#stx-null? _%tl3051031712%_)
                                       (_%__kont3879138792%_ _%hd3050931709%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048230624%_)))))
                               (let () (declare (not safe)) (_%g3048230624%_)))
                           (if (equal? _%e3048931932%_ 'cons:)
                               (if (gx#stx-pair? _%tl3048831929%_)
                                   (let ((_%e3051731569%_
                                          (gx#syntax-e _%tl3048831929%_)))
                                     (let ((_%tl3051931576%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3051731569%_)))
                                           (_%hd3051831573%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3051731569%_))))
                                       (if (gx#stx-pair? _%tl3051931576%_)
                                           (let ((_%e3052031579%_
                                                  (gx#syntax-e
                                                   _%tl3051931576%_)))
                                             (let ((_%tl3052231586%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3052031579%_)))
                                                   (_%hd3052131583%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3052031579%_))))
                                               (if (gx#stx-null?
                                                    _%tl3052231586%_)
                                                   (_%__kont3879338794%_
                                                    _%hd3052131583%_
                                                    _%hd3051831573%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3048230624%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3048230624%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048230624%_)))
                               (if (equal? _%e3048931932%_ 'null:)
                                   (if (gx#stx-null? _%tl3048831929%_)
                                       (_%__kont3879538796%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048230624%_)))
                                   (if (equal? _%e3048931932%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3048831929%_)
                                           (let ((_%e3053331485%_
                                                  (gx#syntax-e
                                                   _%tl3048831929%_)))
                                             (let ((_%tl3053531492%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3053331485%_)))
                                                   (_%hd3053431489%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3053331485%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3053531492%_)
                                                   (let ((_%e3053631495%_
                                                          (gx#syntax-e
                                                           _%tl3053531492%_)))
                                                     (let ((_%tl3053831502%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3053631495%_)))
                                                           (_%hd3053731499%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3053631495%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3053831502%_)
                                                           (_%__kont3879738798%_
                                                            _%hd3053731499%_
                                                            _%hd3053431489%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3048230624%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3048230624%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3048230624%_)))
                                       (if (equal? _%e3048931932%_ 'box:)
                                           (if (gx#stx-pair? _%tl3048831929%_)
                                               (let ((_%e3054431409%_
                                                      (gx#syntax-e
                                                       _%tl3048831929%_)))
                                                 (let ((_%tl3054631416%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3054431409%_)))
                                                       (_%hd3054531413%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3054431409%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3054631416%_)
                                                       (_%__kont3879938800%_
                                                        _%hd3054531413%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3048230624%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3048230624%_)))
                                           (if (equal? _%e3048931932%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3048831929%_)
                                                   (let ((_%e3055231214%_
                                                          (gx#syntax-e
                                                           _%tl3048831929%_)))
                                                     (let ((_%tl3055431221%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3055231214%_)))
                                                           (_%hd3055331218%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3055231214%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3055431221%_)
                                                           (_%__kont3880138802%_
                                                            _%hd3055331218%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3048230624%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3048230624%_)))
                                               (if (equal? _%e3048931932%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3048831929%_)
                                                       (let ((_%e3056031019%_
                                                              (gx#syntax-e
                                                               _%tl3048831929%_)))
                                                         (let ((_%tl3056231026%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3056031019%_)))
                       (_%hd3056131023%_
                        (let () (declare (not safe)) (##car _%e3056031019%_))))
                   (if (gx#stx-null? _%tl3056231026%_)
                       (_%__kont3880338804%_ _%hd3056131023%_)
                       (let () (declare (not safe)) (_%g3048230624%_)))))
               (let () (declare (not safe)) (_%g3048230624%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3048931932%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3048831929%_)
                                                           (let ((_%e3056930960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3048831929%_)))
                     (let ((_%tl3057130967%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3056930960%_)))
                           (_%hd3057030964%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3056930960%_))))
                       (if (gx#stx-pair? _%tl3057130967%_)
                           (let ((_%e3057230970%_
                                  (gx#syntax-e _%tl3057130967%_)))
                             (let ((_%tl3057430977%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3057230970%_)))
                                   (_%hd3057330974%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3057230970%_))))
                               (if (gx#stx-null? _%tl3057430977%_)
                                   (_%__kont3880538806%_
                                    _%hd3057330974%_
                                    _%hd3057030964%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048230624%_)))))
                           (let () (declare (not safe)) (_%g3048230624%_)))))
                   (let () (declare (not safe)) (_%g3048230624%_)))
               (if (equal? _%e3048931932%_ 'class:)
                   (if (gx#stx-pair? _%tl3048831929%_)
                       (let ((_%e3058130901%_ (gx#syntax-e _%tl3048831929%_)))
                         (let ((_%tl3058330908%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3058130901%_)))
                               (_%hd3058230905%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3058130901%_))))
                           (if (gx#stx-pair? _%tl3058330908%_)
                               (let ((_%e3058430911%_
                                      (gx#syntax-e _%tl3058330908%_)))
                                 (let ((_%tl3058630918%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3058430911%_)))
                                       (_%hd3058530915%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3058430911%_))))
                                   (if (gx#stx-null? _%tl3058630918%_)
                                       (_%__kont3880738808%_
                                        _%hd3058530915%_
                                        _%hd3058230905%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048230624%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3048230624%_)))))
                       (let () (declare (not safe)) (_%g3048230624%_)))
                   (if (equal? _%e3048931932%_ 'datum:)
                       (if (gx#stx-pair? _%tl3048831929%_)
                           (let ((_%e3059230808%_
                                  (gx#syntax-e _%tl3048831929%_)))
                             (let ((_%tl3059430815%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3059230808%_)))
                                   (_%hd3059330812%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3059230808%_))))
                               (if (gx#stx-null? _%tl3059430815%_)
                                   (_%__kont3880938810%_ _%hd3059330812%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048230624%_)))))
                           (let () (declare (not safe)) (_%g3048230624%_)))
                       (if (equal? _%e3048931932%_ 'apply:)
                           (if (gx#stx-pair? _%tl3048831929%_)
                               (let ((_%e3060130718%_
                                      (gx#syntax-e _%tl3048831929%_)))
                                 (let ((_%tl3060330725%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3060130718%_)))
                                       (_%hd3060230722%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3060130718%_))))
                                   (if (gx#stx-pair? _%tl3060330725%_)
                                       (let ((_%e3060430728%_
                                              (gx#syntax-e _%tl3060330725%_)))
                                         (let ((_%tl3060630735%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3060430728%_)))
                                               (_%hd3060530732%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3060430728%_))))
                                           (if (gx#stx-null? _%tl3060630735%_)
                                               (_%__kont3881138812%_
                                                _%hd3060530732%_
                                                _%hd3060230722%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3048230624%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048230624%_)))))
                               (let () (declare (not safe)) (_%g3048230624%_)))
                           (if (equal? _%e3048931932%_ 'var:)
                               (if (gx#stx-pair? _%tl3048831929%_)
                                   (let ((_%e3061230670%_
                                          (gx#syntax-e _%tl3048831929%_)))
                                     (let ((_%tl3061430677%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3061230670%_)))
                                           (_%hd3061330674%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3061230670%_))))
                                       (if (gx#stx-null? _%tl3061430677%_)
                                           (_%__kont3881338814%_
                                            _%hd3061330674%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3048230624%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048230624%_)))
                               (if (equal? _%e3048931932%_ 'any:)
                                   (if (gx#stx-null? _%tl3048831929%_)
                                       (_%__kont3881538816%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3048230624%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3048230624%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3048230624%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3048230624%_))))))
                               _%g3044130452%_))))
                      (_%g3043932231%_ _%tgt30434%_))))
                 (_%generate-splice29189%_
                  (lambda (_%tgt29806%_
                           _%hd29808%_
                           _%rest29809%_
                           _%K29810%_
                           _%E29811%_)
                    (let* ((_%g2981329830%_
                            (lambda (_%g2981429826%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2981429826%_)))
                           (_%g2981230430%_
                            (lambda (_%g2981429834%_)
                              (if (gx#stx-pair/null? _%g2981429834%_)
                                  (let ((_g39937_
                                         (gx#syntax-split-splice
                                          _%g2981429834%_
                                          '0)))
                                    (begin
                                      (let ((_g39938_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39937_)
                                                   (##vector-length _g39937_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39938_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39938_)))
                                      (let ((_%target2981629837%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39937_ 0)))
                                            (_%tl2981829840%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g39937_ 1))))
                                        (if (gx#stx-null? _%tl2981829840%_)
                                            (letrec ((_%loop2981929843%_
                                                      (lambda (_%hd2981729847%_
                                                               _%var2982329850%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2981729847%_)
                                                            (let ((_%e2982029853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2981729847%_)))
                      (let ((_%lp-hd2982129857%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2982029853%_)))
                            (_%lp-tl2982229860%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2982029853%_))))
                        (_%loop2981929843%_
                         _%lp-tl2982229860%_
                         (cons _%lp-hd2982129857%_ _%var2982329850%_))))
                    (let ((_%var2982429863%_ (reverse _%var2982329850%_)))
                      ((lambda (_%L29867%_)
                         (let* ((_%g2988329900%_
                                 (lambda (_%g2988429896%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2988429896%_)))
                                (_%g2988230418%_
                                 (lambda (_%g2988429904%_)
                                   (if (gx#stx-pair/null? _%g2988429904%_)
                                       (let ((_g39939_
                                              (gx#syntax-split-splice
                                               _%g2988429904%_
                                               '0)))
                                         (begin
                                           (let ((_g39940_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39939_)
                                                        (##vector-length
                                                         _g39939_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39940_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39940_)))
                                           (let ((_%target2988629907%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g39939_ 0)))
                                                 (_%tl2988829910%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g39939_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2988829910%_)
                                                 (letrec ((_%loop2988929913%_
                                                           (lambda (_%hd2988729917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2989329920%_)
                     (if (gx#stx-pair? _%hd2988729917%_)
                         (let ((_%e2989029923%_
                                (gx#syntax-e _%hd2988729917%_)))
                           (let ((_%lp-hd2989129927%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2989029923%_)))
                                 (_%lp-tl2989229930%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2989029923%_))))
                             (_%loop2988929913%_
                              _%lp-tl2989229930%_
                              (cons _%lp-hd2989129927%_ _%var-r2989329920%_))))
                         (let ((_%var-r2989429933%_
                                (reverse _%var-r2989329920%_)))
                           ((lambda (_%L29937%_)
                              (let* ((_%g2995429971%_
                                      (lambda (_%g2995529967%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2995529967%_)))
                                     (_%g2995330406%_
                                      (lambda (_%g2995529975%_)
                                        (if (gx#stx-pair/null? _%g2995529975%_)
                                            (let ((_g39941_
                                                   (gx#syntax-split-splice
                                                    _%g2995529975%_
                                                    '0)))
                                              (begin
                                                (let ((_g39942_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39941_)
                                                             (##vector-length
                                                              _g39941_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39942_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2995729978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39941_
                                                          0)))
                                                      (_%tl2995929981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g39941_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2995929981%_)
                                                      (letrec ((_%loop2996029984%_
                                                                (lambda (_%hd2995829988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2996429991%_)
                          (if (gx#stx-pair? _%hd2995829988%_)
                              (let ((_%e2996129994%_
                                     (gx#syntax-e _%hd2995829988%_)))
                                (let ((_%lp-hd2996229998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2996129994%_)))
                                      (_%lp-tl2996330001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2996129994%_))))
                                  (_%loop2996029984%_
                                   _%lp-tl2996330001%_
                                   (cons _%lp-hd2996229998%_
                                         _%init2996429991%_))))
                              (let ((_%init2996530004%_
                                     (reverse _%init2996429991%_)))
                                ((lambda (_%L30008%_)
                                   (let* ((_%g3002530033%_
                                           (lambda (_%g3002630029%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3002630029%_)))
                                          (_%g3002430402%_
                                           (lambda (_%g3002630037%_)
                                             ((lambda (_%L30040%_)
                                                (let* ((_%g3005330061%_
                                                        (lambda (_%g3005430057%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3005430057%_)))
                                                       (_%g3005230398%_
                                                        (lambda (_%g3005430065%_)
                                                          ((lambda (_%L30068%_)
                                                             (let* ((_%g3008130089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3008230085%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3008230085%_)))
                            (_%g3008030394%_
                             (lambda (_%g3008230093%_)
                               ((lambda (_%L30096%_)
                                  (let* ((_%g3010930117%_
                                          (lambda (_%g3011030113%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3011030113%_)))
                                         (_%g3010830390%_
                                          (lambda (_%g3011030121%_)
                                            ((lambda (_%L30124%_)
                                               (let* ((_%g3013730145%_
                                                       (lambda (_%g3013830141%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3013830141%_)))
                                                      (_%g3013630386%_
                                                       (lambda (_%g3013830149%_)
                                                         ((lambda (_%L30152%_)
                                                            (let* ((_%g3016530173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3016630169%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3016630169%_)))
                           (_%g3016430382%_
                            (lambda (_%g3016630177%_)
                              ((lambda (_%L30180%_)
                                 (let* ((_%g3019330201%_
                                         (lambda (_%g3019430197%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3019430197%_)))
                                        (_%g3019230378%_
                                         (lambda (_%g3019430205%_)
                                           ((lambda (_%L30208%_)
                                              (let* ((_%g3022130229%_
                                                      (lambda (_%g3022230225%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3022230225%_)))
                                                     (_%g3022030363%_
                                                      (lambda (_%g3022230233%_)
                                                        ((lambda (_%L30236%_)
                                                           (let* ((_%g3024930257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3025030253%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3025030253%_)))
                          (_%g3024830351%_
                           (lambda (_%g3025030261%_)
                             ((lambda (_%L30264%_)
                                (let* ((_%g3027730285%_
                                        (lambda (_%g3027830281%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3027830281%_)))
                                       (_%g3027630347%_
                                        (lambda (_%g3027830289%_)
                                          ((lambda (_%L30292%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L30068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30180%_
                                                     (foldr (lambda (_%g3031430317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3031530320%_)
                      (cons _%g3031430317%_ _%g3031530320%_))
                    '()
                    _%L29867%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30208%_ '())))
                                   '()))
                       (cons (cons _%L30124%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30152%_
                                                           (cons _%L30180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3031230323%_ _%g3031330326%_)
                                  (cons _%g3031230323%_ _%g3031330326%_))
                                '()
                                _%L29937%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30292%_ '())))
                                         '()))
                             (cons (cons _%L30096%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3031030329%_ _%g3031130332%_)
                                  (cons _%g3031030329%_ _%g3031130332%_))
                                '()
                                _%L29937%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30180%_ '()))
                                     (cons (cons _%L30124%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30180%_
                     (foldr (lambda (_%g3030830335%_ _%g3030930338%_)
                              (cons _%g3030830335%_ _%g3030930338%_))
                            '()
                            _%L29937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30264%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30096%_
                             (cons _%L30040%_
                                   (foldr (lambda (_%g3030630341%_
                                                   _%g3030730344%_)
                                            (cons _%g3030630341%_
                                                  _%g3030730344%_))
                                          '()
                                          _%L30008%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3027830289%_))))
                                  (_%g3027630347%_
                                   (_%generate129187%_
                                    _%L30152%_
                                    _%hd29808%_
                                    _%L30236%_
                                    _%L30264%_))))
                              _%g3025030261%_))))
                     (_%g3024830351%_
                      (cons _%L30068%_
                            (cons _%L30180%_
                                  (foldr (lambda (_%g3035430357%_
                                                  _%g3035530360%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3035430357%_
                                                             '()))
                                                 _%g3035530360%_))
                                         '()
                                         _%L29937%_))))))
                 _%g3022230233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3022030363%_
                                                 (cons _%L30096%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30180%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29937%_ _%L29867%_)
                       (foldr (lambda (_%g3036630370%_
                                       _%g3036730373%_
                                       _%g3036830375%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3036730373%_
                                                  (cons _%g3036630370%_ '())))
                                      _%g3036830375%_))
                              '()
                              _%L29937%_
                              _%L29867%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3019430205%_))))
                                   (_%g3019230378%_
                                    (_%generate129187%_
                                     _%L30180%_
                                     _%rest29809%_
                                     _%K29810%_
                                     _%E29811%_))))
                               _%g3016630177%_))))
                      (_%g3016430382%_ (gx#genident 'rest))))
                  _%g3013830149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3013630386%_
                                                  (gx#genident 'hd))))
                                             _%g3011030121%_))))
                                    (_%g3010830390%_
                                     (gx#genident 'splice-try))))
                                _%g3008230093%_))))
                       (_%g3008030394%_ (gx#genident 'splice-loop))))
                   _%g3005430065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3005230398%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3002630037%_))))
                                     (_%g3002430402%_ _%tgt29806%_)))
                                 _%init2996530004%_))))))
                (_%loop2996029984%_ _%target2995729978%_ '()))
              (_%g2995429971%_ _%g2995529975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2995429971%_
                                             _%g2995529975%_)))))
                                (_%g2995330406%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3040930412%_
                                                   _%g3041030415%_)
                                            (cons _%g3040930412%_
                                                  _%g3041030415%_))
                                          '()
                                          _%L29867%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2989429933%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2988929913%_
                                                    _%target2988629907%_
                                                    '()))
                                                 (_%g2988329900%_
                                                  _%g2988429904%_)))))
                                       (_%g2988329900%_ _%g2988429904%_)))))
                           (_%g2988230418%_
                            (gx#gentemps
                             (foldr (lambda (_%g3042130424%_ _%g3042230427%_)
                                      (cons _%g3042130424%_ _%g3042230427%_))
                                    '()
                                    _%L29867%_)))))
                       _%var2982429863%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2981929843%_
                                               _%target2981629837%_
                                               '()))
                                            (_%g2981329830%_
                                             _%g2981429834%_)))))
                                  (_%g2981329830%_ _%g2981429834%_)))))
                      (_%g2981230430%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29808%_)))))
                 (_%generate-simple-vector29190%_
                  (lambda (_%tgt29648%_
                           _%body29650%_
                           _%start29651%_
                           _%K29652%_
                           _%E29653%_)
                    (let _%recur29655%_ ((_%rest29658%_ _%body29650%_)
                                         (_%off29660%_ _%start29651%_))
                      (let* ((_%__stx3914039141%_ _%rest29658%_)
                             (_%g2966329675%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3914039141%_))))
                        (let ((_%__kont3914339144%_
                               (lambda (_%L29703%_ _%L29705%_)
                                 (let* ((_%g2972029739%_
                                         (lambda (_%g2972129735%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2972129735%_)))
                                        (_%g2971929798%_
                                         (lambda (_%g2972129743%_)
                                           (if (gx#stx-pair? _%g2972129743%_)
                                               (let ((_%e2972529746%_
                                                      (gx#syntax-e
                                                       _%g2972129743%_)))
                                                 (let ((_%hd2972629750%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2972529746%_)))
                                                       (_%tl2972729753%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2972529746%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2972729753%_)
                                                       (let ((_%e2972829756%_
                                                              (gx#syntax-e
                                                               _%tl2972729753%_)))
                                                         (let ((_%hd2972929760%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2972829756%_)))
                       (_%tl2973029763%_
                        (let () (declare (not safe)) (##cdr _%e2972829756%_))))
                   (if (gx#stx-pair? _%tl2973029763%_)
                       (let ((_%e2973129766%_ (gx#syntax-e _%tl2973029763%_)))
                         (let ((_%hd2973229770%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2973129766%_)))
                               (_%tl2973329773%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2973129766%_))))
                           (if (gx#stx-null? _%tl2973329773%_)
                               ((lambda (_%L29776%_ _%L29778%_ _%L29779%_)
                                  (cons 'let
                                        (cons (cons (cons _%L29779%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector-ref)
                              (cons _%L29778%_ (cons _%L29776%_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_%generate129187%_
                                                     _%L29779%_
                                                     _%L29705%_
                                                     (_%recur29655%_
                                                      _%L29703%_
                                                      (fx1+ _%off29660%_))
                                                     _%E29653%_)
                                                    '()))))
                                _%hd2973229770%_
                                _%hd2972929760%_
                                _%hd2972629750%_)
                               (_%g2972029739%_ _%g2972129743%_))))
                       (_%g2972029739%_ _%g2972129743%_))))
               (_%g2972029739%_ _%g2972129743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2972029739%_
                                                _%g2972129743%_)))))
                                   (_%g2971929798%_
                                    (list (gx#genident 'e)
                                          _%tgt29648%_
                                          _%off29660%_)))))
                              (_%__kont3914539146%_ (lambda () _%K29652%_)))
                          (if (gx#stx-pair? _%__stx3914039141%_)
                              (let ((_%e2966729693%_
                                     (gx#syntax-e _%__stx3914039141%_)))
                                (let ((_%tl2966929700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2966729693%_)))
                                      (_%hd2966829697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2966729693%_))))
                                  (_%__kont3914339144%_
                                   _%tl2966929700%_
                                   _%hd2966829697%_)))
                              (_%__kont3914539146%_)))))))
                 (_%generate-list-vector29191%_
                  (lambda (_%tgt29540%_
                           _%body29542%_
                           _%->list29543%_
                           _%K29544%_
                           _%E29545%_)
                    (let* ((_%g2954729555%_
                            (lambda (_%g2954829551%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2954829551%_)))
                           (_%g2954629644%_
                            (lambda (_%g2954829559%_)
                              ((lambda (_%L29562%_)
                                 (let* ((_%g2957429582%_
                                         (lambda (_%g2957529578%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2957529578%_)))
                                        (_%g2957329640%_
                                         (lambda (_%g2957529586%_)
                                           ((lambda (_%L29589%_)
                                              (let* ((_%g2960229610%_
                                                      (lambda (_%g2960329606%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2960329606%_)))
                                                     (_%g2960129632%_
                                                      (lambda (_%g2960329614%_)
                                                        ((lambda (_%L29617%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29562%_ (cons _%L29617%_ '()))
                                     '())
                               (cons (_%generate129187%_
                                      _%L29562%_
                                      _%body29542%_
                                      _%K29544%_
                                      _%E29545%_)
                                     '()))))
                 _%g2960329614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2960129632%_
                                                 (let ((_%$e29636%_
                                                        _%->list29543%_))
                                                   (if (eq? 'values->list
                                                            _%$e29636%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29636%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29589%_ '()))
                   (if (eq? 'struct->list _%$e29636%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##structure->list)
                                         (cons _%L29589%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29180%_
                        _%->list29543%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2957529586%_))))
                                   (_%g2957329640%_ _%tgt29540%_)))
                               _%g2954829559%_))))
                      (_%g2954629644%_ (gx#genident 'e)))))
                 (_%generate-struct29192%_
                  (lambda (_%info29411%_
                           _%tgt29413%_
                           _%body29414%_
                           _%K29415%_
                           _%E29416%_)
                    (let* ((_%__stx3915639157%_ _%body29414%_)
                           (_%g2941929442%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3915639157%_))))
                      (let ((_%__kont3915939160%_
                             (lambda (_%L29519%_)
                               (let ((_%fields29533%_
                                      (_%struct-field-accessors29194%_
                                       _%info29411%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39910
                                                          _%info29411%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39910
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39910
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39910
                                                          'predicate)))
                                                   (cons _%tgt29413%_ '()))
                                             (cons (_%generate-simple-struct-body29193%_
                                                    _%info29411%_
                                                    _%tgt29413%_
                                                    _%L29519%_
                                                    _%K29415%_
                                                    _%E29416%_)
                                                   (cons _%E29416%_ '())))))))
                            (_%__kont3916139162%_
                             (lambda (_%L29473%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39911
                                                        _%info29411%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39911
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39911
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39911
                                                        'predicate)))
                                                 (cons _%tgt29413%_ '()))
                                           (cons (_%generate-list-vector29191%_
                                                  _%tgt29413%_
                                                  _%L29473%_
                                                  'struct->list
                                                  _%K29415%_
                                                  _%E29416%_)
                                                 (cons _%E29416%_ '())))))))
                        (if (gx#stx-pair? _%__stx3915639157%_)
                            (let ((_%e2942229495%_
                                   (gx#syntax-e _%__stx3915639157%_)))
                              (let ((_%tl2942429502%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2942229495%_)))
                                    (_%hd2942329499%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2942229495%_))))
                                (if (gx#stx-datum? _%hd2942329499%_)
                                    (let ((_%e2942529505%_
                                           (gx#stx-e _%hd2942329499%_)))
                                      (if (equal? _%e2942529505%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2942429502%_)
                                              (let ((_%e2942629509%_
                                                     (gx#syntax-e
                                                      _%tl2942429502%_)))
                                                (let ((_%tl2942829516%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2942629509%_)))
                                                      (_%hd2942729513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2942629509%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2942829516%_)
                                                      (_%__kont3915939160%_
                                                       _%hd2942729513%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2941929442%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2941929442%_)))
                                          (if (equal? _%e2942529505%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2942429502%_)
                                                  (let ((_%e2943429463%_
                                                         (gx#syntax-e
                                                          _%tl2942429502%_)))
                                                    (let ((_%tl2943629470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2943429463%_)))
                                                          (_%hd2943529467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2943429463%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2943629470%_)
                                                          (_%__kont3916139162%_
                                                           _%hd2943529467%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2941929442%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2941929442%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2941929442%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2941929442%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2941929442%_)))))))
                 (_%generate-simple-struct-body29193%_
                  (lambda (_%info29331%_
                           _%tgt29333%_
                           _%body29334%_
                           _%K29335%_
                           _%E29336%_)
                    (let _%recur29338%_ ((_%rest29341%_ _%body29334%_)
                                         (_%fields29343%_
                                          (_%struct-field-accessors29194%_
                                           _%info29331%_)))
                      (let* ((_%__stx3920639207%_ _%rest29341%_)
                             (_%g2934629358%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3920639207%_))))
                        (let ((_%__kont3920939210%_
                               (lambda (_%L29386%_ _%L29388%_)
                                 (if (null? _%fields29343%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29180%_
                                      _%info29331%_
                                      (let ((__obj39912 _%info29331%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39912
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39912
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39912
                                             'name))))
                                     (let ((_%$tgt29403%_ (gx#genident 'e))
                                           (_%getf29405%_
                                            (car _%fields29343%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29403%_
                                                               (cons (cons _%getf29405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29333%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129187%_
                                                          _%$tgt29403%_
                                                          _%L29388%_
                                                          (_%recur29338%_
                                                           _%L29386%_
                                                           (cdr _%fields29343%_))
                                                          _%E29336%_)
                                                         '())))))))
                              (_%__kont3921139212%_ (lambda () _%K29335%_)))
                          (if (gx#stx-pair? _%__stx3920639207%_)
                              (let ((_%e2935029376%_
                                     (gx#syntax-e _%__stx3920639207%_)))
                                (let ((_%tl2935229383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2935029376%_)))
                                      (_%hd2935129380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2935029376%_))))
                                  (_%__kont3920939210%_
                                   _%tl2935229383%_
                                   _%hd2935129380%_)))
                              (_%__kont3921139212%_)))))))
                 (_%struct-field-accessors29194%_
                  (lambda (_%info29312%_)
                    (let _%recur29315%_ ((_%next29318%_
                                          (cons _%info29312%_ '())))
                      (if (null? _%next29318%_)
                          '()
                          (let ((_%ti29321%_ (car _%next29318%_)))
                            (let ((__tmp39944
                                   (_%recur29315%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39913 _%ti29321%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39913
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39913
                                                  '3
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39913
                                                'super))))))
                                  (__tmp39943
                                   (map (lambda (_%slot29324%_)
                                          (let ((_%$e29327%_
                                                 (assgetq _%slot29324%_
                                                          (let ((__obj39914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ti29321%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj39914
                           'gerbil.core#class-type-info::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj39914 '17 '#f '#f))
                        (class-slot-ref
                         gerbil/core/mop~MOP-2#class-type-info::t
                         __obj39914
                         'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29327%_
                                                _%$e29327%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29180%_
                                                 _%info29312%_
                                                 _%slot29324%_))))
                                        (let ((__obj39915 _%ti29321%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39915
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39915
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39915
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39944 __tmp39943)))))))
                 (_%generate-class29195%_
                  (lambda (_%info29305%_
                           _%tgt29307%_
                           _%body29308%_
                           _%K29309%_
                           _%E29310%_)
                    (cons 'if
                          (cons (cons (let ((__obj39916 _%info29305%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39916
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39916
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39916
                                             'predicate)))
                                      (cons _%tgt29307%_ '()))
                                (cons (_%generate-class-body29196%_
                                       _%info29305%_
                                       _%tgt29307%_
                                       _%body29308%_
                                       _%K29309%_
                                       _%E29310%_)
                                      (cons _%E29310%_ '()))))))
                 (_%generate-class-body29196%_
                  (lambda (_%info29198%_
                           _%tgt29200%_
                           _%body29201%_
                           _%K29202%_
                           _%E29203%_)
                    (let _%recur29205%_ ((_%rest29208%_ _%body29201%_))
                      (let* ((_%__stx3922239223%_ _%rest29208%_)
                             (_%g2921229228%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3922239223%_))))
                        (let ((_%__kont3922539226%_
                               (lambda (_%L29266%_ _%L29268%_ _%L29269%_)
                                 (let ((_%$e29289%_
                                        (assgetq (let ((__tmp39945
                                                        (keyword->string
                                                         (gx#stx-e
                                                          _%L29269%_))))
                                                   (declare (not safe))
                                                   (##string->symbol
                                                    __tmp39945))
                                                 (let ((__obj39917
                                                        _%info29198%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39917
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39917
                                                          '17
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39917
                                                        'unchecked-accessors))))))
                                   (if _%$e29289%_
                                       ((lambda (_%getf29293%_)
                                          (let ((_%$tgt29296%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29293%_ (cons _%tgt29200%_ '()))
                                  '()))
                      '())
                (cons (_%generate129187%_
                       _%$tgt29296%_
                       _%L29268%_
                       (_%recur29205%_ _%L29266%_)
                       _%E29203%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29289%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29180%_
                                        _%info29198%_
                                        _%L29269%_)))))
                              (_%__kont3922739228%_ (lambda () _%K29202%_)))
                          (if (gx#stx-pair? _%__stx3922239223%_)
                              (let ((_%e2921729246%_
                                     (gx#syntax-e _%__stx3922239223%_)))
                                (let ((_%tl2921929253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2921729246%_)))
                                      (_%hd2921829250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2921729246%_))))
                                  (if (gx#stx-pair? _%tl2921929253%_)
                                      (let ((_%e2922029256%_
                                             (gx#syntax-e _%tl2921929253%_)))
                                        (let ((_%tl2922229263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2922029256%_)))
                                              (_%hd2922129260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2922029256%_))))
                                          (_%__kont3922539226%_
                                           _%tl2922229263%_
                                           _%hd2922129260%_
                                           _%hd2921829250%_)))
                                      (_%__kont3922739228%_))))
                              (_%__kont3922739228%_))))))))
          (_%generate129187%_
           _%tgt29182%_
           _%ptree29183%_
           _%K29184%_
           _%E29185%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx27993%_ _%tgt-lst27995%_ _%clauses27996%_)
        (letrec ((_%parse-body27998%_
                  (lambda (_%hd-len29002%_)
                    (let _%lp29005%_ ((_%rest29008%_ _%clauses27996%_)
                                      (_%r29010%_ '()))
                      (let* ((_%__stx3927239273%_ _%rest29008%_)
                             (_%g2901329025%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3927239273%_))))
                        (let ((_%__kont3927539276%_
                               (lambda (_%L29053%_ _%L29055%_)
                                 (let* ((_%__stx3924439245%_ _%L29055%_)
                                        (_%g2907229088%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3924439245%_))))
                                   (let ((_%__kont3924739248%_
                                          (lambda (_%L29157%_)
                                            (if (gx#stx-null? _%L29053%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29157%_)
                                 (let ((_%$e29168%_
                                        (gx#stx-source _%L29055%_)))
                                   (if _%$e29168%_
                                       _%$e29168%_
                                       (gx#stx-source _%stx27993%_))))
                                '())))
              _%r29010%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx27993%_
                                                 _%L29055%_))))
                                         (_%__kont3924939250%_
                                          (lambda (_%L29116%_ _%L29118%_)
                                            (_%lp29005%_
                                             _%L29053%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2913029132%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2913029132%_
                           _%stx27993%_))
                        _%L29118%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29116%_)
                              (let ((_%$e29136%_ (gx#stx-source _%L29055%_)))
                                (if _%$e29136%_
                                    _%$e29136%_
                                    (gx#stx-source _%stx27993%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29010%_))))
                                         (_%__kont3925139252%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx27993%_
                                             _%L29055%_))))
                                     (let* ((_%__match3926939270%_
                                             (lambda (_%e2908029106%_
                                                      _%hd2908129110%_
                                                      _%tl2908229113%_)
                                               (let ((_%L29116%_
                                                      _%tl2908229113%_)
                                                     (_%L29118%_
                                                      _%hd2908129110%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29118%_)
                                                          (fx= (gx#stx-length
                                                                _%L29118%_)
                                                               _%hd-len29002%_)
                                                          (gx#stx-list?
                                                           _%L29116%_)
                                                          (not (gx#stx-null?
                                                                _%L29116%_)))
                                                     (_%__kont3924939250%_
                                                      _%L29116%_
                                                      _%L29118%_)
                                                     (_%__kont3925139252%_)))))
                                            (_%__match3926339264%_
                                             (lambda (_%e2907529147%_
                                                      _%hd2907629151%_
                                                      _%tl2907729154%_)
                                               (let ((_%L29157%_
                                                      _%tl2907729154%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29157%_)
                                                          (not (gx#stx-null?
                                                                _%L29157%_)))
                                                     (_%__kont3924739248%_
                                                      _%L29157%_)
                                                     (_%__match3926939270%_
                                                      _%e2907529147%_
                                                      _%hd2907629151%_
                                                      _%tl2907729154%_))))))
                                       (if (gx#stx-pair? _%__stx3924439245%_)
                                           (let ((_%e2907529147%_
                                                  (gx#syntax-e
                                                   _%__stx3924439245%_)))
                                             (let ((_%tl2907729154%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2907529147%_)))
                                                   (_%hd2907629151%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2907529147%_))))
                                               (if (gx#identifier?
                                                    _%hd2907629151%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39946_|
                                                        _%hd2907629151%_)
                                                       (_%__match3926339264%_
                                                        _%e2907529147%_
                                                        _%hd2907629151%_
                                                        _%tl2907729154%_)
                                                       (_%__match3926939270%_
                                                        _%e2907529147%_
                                                        _%hd2907629151%_
                                                        _%tl2907729154%_))
                                                   (_%__match3926939270%_
                                                    _%e2907529147%_
                                                    _%hd2907629151%_
                                                    _%tl2907729154%_))))
                                           (_%__kont3925139252%_)))))))
                              (_%__kont3927739278%_ (lambda () _%r29010%_)))
                          (if (gx#stx-pair? _%__stx3927239273%_)
                              (let ((_%e2901729043%_
                                     (gx#syntax-e _%__stx3927239273%_)))
                                (let ((_%tl2901929050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2901729043%_)))
                                      (_%hd2901829047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2901729043%_))))
                                  (_%__kont3927539276%_
                                   _%tl2901929050%_
                                   _%hd2901829047%_)))
                              (_%__kont3927739278%_)))))))
                 (_%generate-body28000%_
                  (lambda (_%body28704%_)
                    (let* ((_%g2870728715%_
                            (lambda (_%g2870828711%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2870828711%_)))
                           (_%g2870628998%_
                            (lambda (_%g2870828719%_)
                              ((lambda (_%L28722%_)
                                 (let* ((_%g2873428751%_
                                         (lambda (_%g2873528747%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2873528747%_)))
                                        (_%g2873328994%_
                                         (lambda (_%g2873528755%_)
                                           (if (gx#stx-pair/null?
                                                _%g2873528755%_)
                                               (let ((_g39947_
                                                      (gx#syntax-split-splice
                                                       _%g2873528755%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39948_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39947_)
                        (##vector-length _g39947_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39948_ 2)))
                 (error "Context expects 2 values" _g39948_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2873728758%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39947_
                                                             0)))
                                                         (_%tl2873928761%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39947_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2873928761%_)
                                                         (letrec ((_%loop2874028764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2873828768%_ _%target2874428771%_)
                             (if (gx#stx-pair? _%hd2873828768%_)
                                 (let ((_%e2874128774%_
                                        (gx#syntax-e _%hd2873828768%_)))
                                   (let ((_%lp-hd2874228778%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2874128774%_)))
                                         (_%lp-tl2874328781%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2874128774%_))))
                                     (_%loop2874028764%_
                                      _%lp-tl2874328781%_
                                      (cons _%lp-hd2874228778%_
                                            _%target2874428771%_))))
                                 (let ((_%target2874528784%_
                                        (reverse _%target2874428771%_)))
                                   ((lambda (_%L28788%_)
                                      (let* ((_%g2880528822%_
                                              (lambda (_%g2880628818%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2880628818%_)))
                                             (_%g2880428990%_
                                              (lambda (_%g2880628826%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2880628826%_)
                                                    (let ((_g39949_
                                                           (gx#syntax-split-splice
                                                            _%g2880628826%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39950_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39949_)
                             (##vector-length _g39949_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39950_ 2)))
                      (error "Context expects 2 values" _g39950_)))
                (let ((_%target2880828829%_
                       (let () (declare (not safe)) (##vector-ref _g39949_ 0)))
                      (_%tl2881028832%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g39949_ 1))))
                  (if (gx#stx-null? _%tl2881028832%_)
                      (letrec ((_%loop2881128835%_
                                (lambda (_%hd2880928839%_
                                         _%fail-diagnostic2881528842%_)
                                  (if (gx#stx-pair? _%hd2880928839%_)
                                      (let ((_%e2881228845%_
                                             (gx#syntax-e _%hd2880928839%_)))
                                        (let ((_%lp-hd2881328849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2881228845%_)))
                                              (_%lp-tl2881428852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2881228845%_))))
                                          (_%loop2881128835%_
                                           _%lp-tl2881428852%_
                                           (cons _%lp-hd2881328849%_
                                                 _%fail-diagnostic2881528842%_))))
                                      (let ((_%fail-diagnostic2881628855%_
                                             (reverse _%fail-diagnostic2881528842%_)))
                                        ((lambda (_%L28859%_)
                                           (let* ((_%g2887628884%_
                                                   (lambda (_%g2887728880%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2887728880%_)))
                                                  (_%g2887528970%_
                                                   (lambda (_%g2887728888%_)
                                                     ((lambda (_%L28891%_)
                                                        (let* ((_%g2890428912%_
                                                                (lambda (_%g2890528908%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2890528908%_)))
                       (_%g2890328966%_
                        (lambda (_%g2890528916%_)
                          ((lambda (_%L28919%_)
                             (let* ((_%g2893228940%_
                                     (lambda (_%g2893328936%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2893328936%_)))
                                    (_%g2893128962%_
                                     (lambda (_%g2893328944%_)
                                       ((lambda (_%L28947%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28947%_ '()))))
                                        _%g2893328944%_))))
                               (_%g2893128962%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28722%_
                                                         (cons _%L28891%_ '()))
                                                   '())
                                             (cons _%L28919%_ '())))
                                 (gx#stx-source _%stx27993%_)))))
                           _%g2890528916%_))))
                  (_%g2890328966%_
                   (_%generate-clauses28001%_
                    _%body28704%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28722%_ '()) '())))))))
              _%g2887728888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2887528970%_
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
                                     (foldr (lambda (_%g2897328978%_
                                                     _%g2897428981%_)
                                              (cons _%g2897328978%_
                                                    _%g2897428981%_))
                                            (foldr (lambda (_%g2897528984%_
                                                            _%g2897628987%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2897528984%_ '()))
                   _%g2897628987%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28859%_)
                                            _%L28788%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27993%_)))))
                                         _%fail-diagnostic2881628855%_))))))
                        (_%loop2881128835%_ _%target2880828829%_ '()))
                      (_%g2880528822%_ _%g2880628826%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2880528822%_
                                                     _%g2880628826%_)))))
                                        (_%g2880428990%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses27996%_))))
                                    _%target2874528784%_))))))
                   (_%loop2874028764%_ _%target2873728758%_ '()))
                 (_%g2873428751%_ _%g2873528755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2873428751%_
                                                _%g2873528755%_)))))
                                   (_%g2873328994%_ _%tgt-lst27995%_)))
                               _%g2870828719%_))))
                      (_%g2870628998%_ (gx#genident 'E)))))
                 (_%generate-clauses28001%_
                  (lambda (_%rest28356%_ _%E28358%_)
                    (let* ((_%__stx3928839289%_ _%rest28356%_)
                           (_%g2836228378%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3928839289%_))))
                      (let ((_%__kont3929139292%_
                             (lambda (_%L28612%_)
                               (let* ((_%g2862328641%_
                                       (lambda (_%g2862428637%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2862428637%_)))
                                      (_%g2862228696%_
                                       (lambda (_%g2862428645%_)
                                         (if (gx#stx-pair? _%g2862428645%_)
                                             (let ((_%e2862728648%_
                                                    (gx#syntax-e
                                                     _%g2862428645%_)))
                                               (let ((_%hd2862828652%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2862728648%_)))
                                                     (_%tl2862928655%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2862728648%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2862928655%_)
                                                     (let ((_%e2863028658%_
                                                            (gx#syntax-e
                                                             _%tl2862928655%_)))
                                                       (let ((_%hd2863128662%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2863028658%_)))
                     (_%tl2863228665%_
                      (let () (declare (not safe)) (##cdr _%e2863028658%_))))
                 (if (gx#stx-pair? _%tl2863228665%_)
                     (let ((_%e2863328668%_ (gx#syntax-e _%tl2863228665%_)))
                       (let ((_%hd2863428672%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2863328668%_)))
                             (_%tl2863528675%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2863328668%_))))
                         (if (gx#stx-null? _%tl2863528675%_)
                             ((lambda (_%L28678%_ _%L28680%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28680%_)
                                                      (_%generate128002%_
                                                       _%L28680%_
                                                       _%L28678%_
                                                       _%E28358%_)
                                                      _%L28678%_)
                                                  '()))))
                              _%hd2863428672%_
                              _%hd2863128662%_)
                             (_%g2862328641%_ _%g2862428645%_))))
                     (_%g2862328641%_ _%g2862428645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2862328641%_
                                                      _%g2862428645%_))))
                                             (_%g2862328641%_
                                              _%g2862428645%_)))))
                                 (_%g2862228696%_ _%L28612%_))))
                            (_%__kont3929339294%_
                             (lambda (_%L28406%_ _%L28408%_)
                               (let* ((_%g2842128440%_
                                       (lambda (_%g2842228436%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2842228436%_)))
                                      (_%g2842028591%_
                                       (lambda (_%g2842228444%_)
                                         (if (gx#stx-pair? _%g2842228444%_)
                                             (let ((_%e2842628447%_
                                                    (gx#syntax-e
                                                     _%g2842228444%_)))
                                               (let ((_%hd2842728451%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2842628447%_)))
                                                     (_%tl2842828454%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2842628447%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2842828454%_)
                                                     (let ((_%e2842928457%_
                                                            (gx#syntax-e
                                                             _%tl2842828454%_)))
                                                       (let ((_%hd2843028461%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2842928457%_)))
                     (_%tl2843128464%_
                      (let () (declare (not safe)) (##cdr _%e2842928457%_))))
                 (if (gx#stx-pair? _%tl2843128464%_)
                     (let ((_%e2843228467%_ (gx#syntax-e _%tl2843128464%_)))
                       (let ((_%hd2843328471%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2843228467%_)))
                             (_%tl2843428474%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2843228467%_))))
                         (if (gx#stx-null? _%tl2843428474%_)
                             ((lambda (_%L28477%_ _%L28479%_ _%L28480%_)
                                (if (gx#stx-e _%L28479%_)
                                    (let* ((_%g2849728512%_
                                            (lambda (_%g2849828508%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2849828508%_)))
                                           (_%g2849628557%_
                                            (lambda (_%g2849828516%_)
                                              (if (gx#stx-pair?
                                                   _%g2849828516%_)
                                                  (let ((_%e2850128519%_
                                                         (gx#syntax-e
                                                          _%g2849828516%_)))
                                                    (let ((_%hd2850228523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2850128519%_)))
                                                          (_%tl2850328526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2850128519%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2850328526%_)
                                                          (let ((_%e2850428529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2850328526%_)))
                    (let ((_%hd2850528533%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2850428529%_)))
                          (_%tl2850628536%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2850428529%_))))
                      (if (gx#stx-null? _%tl2850628536%_)
                          ((lambda (_%L28539%_ _%L28541%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28480%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28541%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28539%_ '()))))
                           _%hd2850528533%_
                           _%hd2850228523%_)
                          (_%g2849728512%_ _%g2849828516%_))))
                  (_%g2849728512%_ _%g2849828516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2849728512%_
                                                   _%g2849828516%_)))))
                                      (_%g2849628557%_
                                       (list (_%generate128002%_
                                              _%L28479%_
                                              _%L28477%_
                                              _%E28358%_)
                                             (_%generate-clauses28001%_
                                              _%L28406%_
                                              (cons _%L28480%_ '())))))
                                    (let* ((_%g2856128569%_
                                            (lambda (_%g2856228565%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2856228565%_)))
                                           (_%g2856028587%_
                                            (lambda (_%g2856228573%_)
                                              ((lambda (_%L28576%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28480%_
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
                             (cons _%L28477%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28576%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2856228573%_))))
                                      (_%g2856028587%_
                                       (_%generate-clauses28001%_
                                        _%L28406%_
                                        (cons _%L28480%_ '()))))))
                              _%hd2843328471%_
                              _%hd2843028461%_
                              _%hd2842728451%_)
                             (_%g2842128440%_ _%g2842228444%_))))
                     (_%g2842128440%_ _%g2842228444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2842128440%_
                                                      _%g2842228444%_))))
                                             (_%g2842128440%_
                                              _%g2842228444%_)))))
                                 (_%g2842028591%_ _%L28408%_))))
                            (_%__kont3929539296%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28358%_ '()))))))
                        (if (gx#stx-pair? _%__stx3928839289%_)
                            (let ((_%e2836528602%_
                                   (gx#syntax-e _%__stx3928839289%_)))
                              (let ((_%tl2836728609%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2836528602%_)))
                                    (_%hd2836628606%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2836528602%_))))
                                (if (gx#stx-null? _%tl2836728609%_)
                                    (_%__kont3929139292%_ _%hd2836628606%_)
                                    (_%__kont3929339294%_
                                     _%tl2836728609%_
                                     _%hd2836628606%_))))
                            (_%__kont3929539296%_))))))
                 (_%generate128002%_
                  (lambda (_%clause28004%_ _%body28006%_ _%E28007%_)
                    (let* ((_%g2800928033%_
                            (lambda (_%g2801028029%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2801028029%_)))
                           (_%g2800828352%_
                            (lambda (_%g2801028037%_)
                              (if (gx#stx-pair? _%g2801028037%_)
                                  (let ((_%e2801328040%_
                                         (gx#syntax-e _%g2801028037%_)))
                                    (let ((_%hd2801428044%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2801328040%_)))
                                          (_%tl2801528047%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2801328040%_))))
                                      (if (gx#stx-pair? _%tl2801528047%_)
                                          (let ((_%e2801628050%_
                                                 (gx#syntax-e
                                                  _%tl2801528047%_)))
                                            (let ((_%hd2801728054%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2801628050%_)))
                                                  (_%tl2801828057%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2801628050%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2801728054%_)
                                                  (let ((_g39951_
                                                         (gx#syntax-split-splice
                                                          _%hd2801728054%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39952_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39951_)
                           (##vector-length _g39951_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39952_ 2)))
                    (error "Context expects 2 values" _g39952_)))
              (let ((_%target2801928060%_
                     (let () (declare (not safe)) (##vector-ref _g39951_ 0)))
                    (_%tl2802128063%_
                     (let () (declare (not safe)) (##vector-ref _g39951_ 1))))
                (if (gx#stx-null? _%tl2802128063%_)
                    (letrec ((_%loop2802228066%_
                              (lambda (_%hd2802028070%_ _%var2802628073%_)
                                (if (gx#stx-pair? _%hd2802028070%_)
                                    (let ((_%e2802328076%_
                                           (gx#syntax-e _%hd2802028070%_)))
                                      (let ((_%lp-hd2802428080%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2802328076%_)))
                                            (_%lp-tl2802528083%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2802328076%_))))
                                        (_%loop2802228066%_
                                         _%lp-tl2802528083%_
                                         (cons _%lp-hd2802428080%_
                                               _%var2802628073%_))))
                                    (let ((_%var2802728086%_
                                           (reverse _%var2802628073%_)))
                                      (if (gx#stx-null? _%tl2801828057%_)
                                          ((lambda (_%L28090%_ _%L28092%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2811328116%_
                                                                _%g2811428119%_)
                                                         (cons _%g2811328116%_
                                                               _%g2811428119%_))
                                                       '()
                                                       _%L28090%_)
                                                _%stx27993%_)
                                               (let* ((_%g2812228130%_
                                                       (lambda (_%g2812328126%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2812328126%_)))
                                                      (_%g2812128224%_
                                                       (lambda (_%g2812328134%_)
                                                         ((lambda (_%L28137%_)
                                                            (let* ((_%g2815028158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2815128154%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2815128154%_)))
                           (_%g2814928220%_
                            (lambda (_%g2815128162%_)
                              ((lambda (_%L28165%_)
                                 (let* ((_%g2817828186%_
                                         (lambda (_%g2817928182%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2817928182%_)))
                                        (_%g2817728208%_
                                         (lambda (_%g2817928190%_)
                                           ((lambda (_%L28193%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28193%_ '()))
                   (cons _%L28137%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx27993%_)))
                                            _%g2817928190%_))))
                                   (_%g2817728208%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2821128214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2821228217%_)
                  (cons _%g2821128214%_ _%g2821228217%_))
                '()
                _%L28090%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28165%_ '())))
                                     (gx#stx-source _%stx27993%_)))))
                               _%g2815128162%_))))
                      (_%g2814928220%_ _%body28006%_)))
                  _%g2812328134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2812128224%_
                                                  (let _%recur28228%_ ((_%rest28231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28004%_)
                               (_%rest-targets28233%_ _%tgt-lst27995%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3931439315%_
                                                            _%rest28231%_)
                                                           (_%g2823628248%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3931439315%_))))
                                                      (let ((_%__kont3931739318%_
                                                             (lambda (_%L28284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28286%_)
                       (let* ((_%g2830128313%_
                               (lambda (_%g2830228309%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2830228309%_)))
                              (_%g2830028344%_
                               (lambda (_%g2830228317%_)
                                 (if (gx#stx-pair? _%g2830228317%_)
                                     (let ((_%e2830528320%_
                                            (gx#syntax-e _%g2830228317%_)))
                                       (let ((_%hd2830628324%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2830528320%_)))
                                             (_%tl2830728327%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2830528320%_))))
                                         ((lambda (_%L28330%_ _%L28332%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx27993%_
                                             _%L28332%_
                                             _%L28286%_
                                             (_%recur28228%_
                                              _%L28284%_
                                              _%L28330%_)
                                             _%E28007%_))
                                          _%tl2830728327%_
                                          _%hd2830628324%_)))
                                     (_%g2830128313%_ _%g2830228317%_)))))
                         (_%g2830028344%_ _%rest-targets28233%_))))
                    (_%__kont3931939320%_
                     (lambda ()
                       (cons _%L28092%_
                             (foldr (lambda (_%g2825828261%_ _%g2825928264%_)
                                      (cons _%g2825828261%_ _%g2825928264%_))
                                    '()
                                    _%L28090%_)))))
                (if (gx#stx-pair? _%__stx3931439315%_)
                    (let ((_%e2824028274%_ (gx#syntax-e _%__stx3931439315%_)))
                      (let ((_%tl2824228281%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2824028274%_)))
                            (_%hd2824128278%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2824028274%_))))
                        (_%__kont3931739318%_
                         _%tl2824228281%_
                         _%hd2824128278%_)))
                    (_%__kont3931939320%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2802728086%_
                                           _%hd2801428044%_)
                                          (_%g2800928033%_
                                           _%g2801028037%_)))))))
                      (_%loop2802228066%_ _%target2801928060%_ '()))
                    (_%g2800928033%_ _%g2801028037%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2800928033%_
                                                   _%g2801028037%_))))
                                          (_%g2800928033%_ _%g2801028037%_))))
                                  (_%g2800928033%_ _%g2801028037%_)))))
                      (_%g2800828352%_
                       (list (gx#genident 'K)
                             (let ((__tmp39953
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28004%_)))
                               (declare (not safe))
                               (##apply append __tmp39953))))))))
          (_%generate-body28000%_
           (_%parse-body27998%_ (gx#stx-length _%tgt-lst27995%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27895%_ _%tgt27897%_ _%clauses27898%_)
        (letrec ((_%reclause27900%_
                  (lambda (_%clause27903%_)
                    (let* ((_%__stx3933039331%_ _%clause27903%_)
                           (_%g2790827923%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3933039331%_))))
                      (let ((_%__kont3933339334%_ (lambda () _%clause27903%_))
                            (_%__kont3933539336%_
                             (lambda (_%L27951%_ _%L27953%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27953%_ '()) _%L27951%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3933739338%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27895%_
                                _%clause27903%_))))
                        (if (gx#stx-pair? _%__stx3933039331%_)
                            (let ((_%e2791027975%_
                                   (gx#syntax-e _%__stx3933039331%_)))
                              (let ((_%tl2791227982%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2791027975%_)))
                                    (_%hd2791127979%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2791027975%_))))
                                (if (gx#identifier? _%hd2791127979%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39954_|
                                         _%hd2791127979%_)
                                        (_%__kont3933339334%_)
                                        (_%__kont3933539336%_
                                         _%tl2791227982%_
                                         _%hd2791127979%_))
                                    (_%__kont3933539336%_
                                     _%tl2791227982%_
                                     _%hd2791127979%_))))
                            (_%__kont3933739338%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27895%_
           (cons _%tgt27897%_ '())
           (gx#stx-map _%reclause27900%_ _%clauses27898%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35231%_)
        (let* ((_%__stx3935839359%_ _%stx35231%_)
               (_%g3523635265%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3935839359%_))))
          (let ((_%__kont3936139362%_
                 (lambda (_%L35505%_)
                   (let* ((_%g3551835526%_
                           (lambda (_%g3551935522%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3551935522%_)))
                          (_%g3551735579%_
                           (lambda (_%g3551935530%_)
                             ((lambda (_%L35533%_)
                                (let* ((_%g3554535553%_
                                        (lambda (_%g3554635549%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3554635549%_)))
                                       (_%g3554435575%_
                                        (lambda (_%g3554635557%_)
                                          ((lambda (_%L35560%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35533%_ '())
                                                         (cons _%L35560%_
                                                               '()))))
                                           _%g3554635557%_))))
                                  (_%g3554435575%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35533%_ _%L35505%_))
                                    (gx#stx-source _%stx35231%_)))))
                              _%g3551935530%_))))
                     (_%g3551735579%_ (gx#genident 'e)))))
                (_%__kont3936339364%_
                 (lambda (_%L35400%_)
                   (let* ((_%g3541335421%_
                           (lambda (_%g3541435417%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3541435417%_)))
                          (_%g3541235474%_
                           (lambda (_%g3541435425%_)
                             ((lambda (_%L35428%_)
                                (let* ((_%g3544035448%_
                                        (lambda (_%g3544135444%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3544135444%_)))
                                       (_%g3543935470%_
                                        (lambda (_%g3544135452%_)
                                          ((lambda (_%L35455%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35428%_
                                                         (cons _%L35455%_
                                                               '()))))
                                           _%g3544135452%_))))
                                  (_%g3543935470%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35428%_ _%L35400%_))
                                    (gx#stx-source _%stx35231%_)))))
                              _%g3541435425%_))))
                     (_%g3541235474%_ (gx#genident 'args)))))
                (_%__kont3936539366%_
                 (lambda (_%L35292%_ _%L35294%_)
                   (let* ((_%g3530835316%_
                           (lambda (_%g3530935312%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3530935312%_)))
                          (_%g3530735369%_
                           (lambda (_%g3530935320%_)
                             ((lambda (_%L35323%_)
                                (let* ((_%g3533535343%_
                                        (lambda (_%g3533635339%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3533635339%_)))
                                       (_%g3533435365%_
                                        (lambda (_%g3533635347%_)
                                          ((lambda (_%L35350%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35294%_ '()))
                       '())
                 (cons _%L35350%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3533635347%_))))
                                  (_%g3533435365%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35231%_
                                    _%L35323%_
                                    _%L35292%_))))
                              _%g3530935320%_))))
                     (_%g3530735369%_ (gx#genident _%L35294%_))))))
            (let* ((_%__match3941139412%_
                    (lambda (_%e3525435272%_
                             _%hd3525535276%_
                             _%tl3525635279%_
                             _%e3525735282%_
                             _%hd3525835286%_
                             _%tl3525935289%_)
                      (let ((_%L35292%_ _%tl3525935289%_)
                            (_%L35294%_ _%hd3525835286%_))
                        (if (gx#stx-list? _%L35292%_)
                            (_%__kont3936539366%_ _%L35292%_ _%L35294%_)
                            (let () (declare (not safe)) (_%g3523635265%_))))))
                   (_%__match3939939400%_
                    (lambda (_%e3524635380%_
                             _%hd3524735384%_
                             _%tl3524835387%_
                             _%e3524935390%_
                             _%hd3525035394%_
                             _%tl3525135397%_)
                      (let ((_%L35400%_ _%tl3525135397%_))
                        (if (gx#stx-list? _%L35400%_)
                            (_%__kont3936339364%_ _%L35400%_)
                            (_%__match3941139412%_
                             _%e3524635380%_
                             _%hd3524735384%_
                             _%tl3524835387%_
                             _%e3524935390%_
                             _%hd3525035394%_
                             _%tl3525135397%_)))))
                   (_%__match3938339384%_
                    (lambda (_%e3523935485%_
                             _%hd3524035489%_
                             _%tl3524135492%_
                             _%e3524235495%_
                             _%hd3524335499%_
                             _%tl3524435502%_)
                      (let ((_%L35505%_ _%tl3524435502%_))
                        (if (gx#stx-list? _%L35505%_)
                            (_%__kont3936139362%_ _%L35505%_)
                            (_%__match3941139412%_
                             _%e3523935485%_
                             _%hd3524035489%_
                             _%tl3524135492%_
                             _%e3524235495%_
                             _%hd3524335499%_
                             _%tl3524435502%_))))))
              (if (gx#stx-pair? _%__stx3935839359%_)
                  (let ((_%e3523935485%_ (gx#syntax-e _%__stx3935839359%_)))
                    (let ((_%tl3524135492%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3523935485%_)))
                          (_%hd3524035489%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3523935485%_))))
                      (if (gx#stx-pair? _%tl3524135492%_)
                          (let ((_%e3524235495%_
                                 (gx#syntax-e _%tl3524135492%_)))
                            (let ((_%tl3524435502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3524235495%_)))
                                  (_%hd3524335499%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3524235495%_))))
                              (if (gx#identifier? _%hd3524335499%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39955_|
                                       _%hd3524335499%_)
                                      (_%__match3938339384%_
                                       _%e3523935485%_
                                       _%hd3524035489%_
                                       _%tl3524135492%_
                                       _%e3524235495%_
                                       _%hd3524335499%_
                                       _%tl3524435502%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39956_|
                                           _%hd3524335499%_)
                                          (_%__match3939939400%_
                                           _%e3523935485%_
                                           _%hd3524035489%_
                                           _%tl3524135492%_
                                           _%e3524235495%_
                                           _%hd3524335499%_
                                           _%tl3524435502%_)
                                          (_%__match3941139412%_
                                           _%e3523935485%_
                                           _%hd3524035489%_
                                           _%tl3524135492%_
                                           _%e3524235495%_
                                           _%hd3524335499%_
                                           _%tl3524435502%_)))
                                  (_%__match3941139412%_
                                   _%e3523935485%_
                                   _%hd3524035489%_
                                   _%tl3524135492%_
                                   _%e3524235495%_
                                   _%hd3524335499%_
                                   _%tl3524435502%_))))
                          (let () (declare (not safe)) (_%g3523635265%_)))))
                  (let () (declare (not safe)) (_%g3523635265%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35587%_)
        (let* ((_%g3559035614%_
                (lambda (_%g3559135610%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3559135610%_)))
               (_%g3558935826%_
                (lambda (_%g3559135618%_)
                  (if (gx#stx-pair? _%g3559135618%_)
                      (let ((_%e3559435621%_ (gx#syntax-e _%g3559135618%_)))
                        (let ((_%hd3559535625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3559435621%_)))
                              (_%tl3559635628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3559435621%_))))
                          (if (gx#stx-pair? _%tl3559635628%_)
                              (let ((_%e3559735631%_
                                     (gx#syntax-e _%tl3559635628%_)))
                                (let ((_%hd3559835635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3559735631%_)))
                                      (_%tl3559935638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3559735631%_))))
                                  (if (gx#stx-pair/null? _%hd3559835635%_)
                                      (let ((_g39957_
                                             (gx#syntax-split-splice
                                              _%hd3559835635%_
                                              '0)))
                                        (begin
                                          (let ((_g39958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39957_)
                                                       (##vector-length
                                                        _g39957_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39958_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39958_)))
                                          (let ((_%target3560035641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39957_ 0)))
                                                (_%tl3560235644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g39957_ 1))))
                                            (if (gx#stx-null? _%tl3560235644%_)
                                                (letrec ((_%loop3560335647%_
                                                          (lambda (_%hd3560135651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3560735654%_)
                    (if (gx#stx-pair? _%hd3560135651%_)
                        (let ((_%e3560435657%_ (gx#syntax-e _%hd3560135651%_)))
                          (let ((_%lp-hd3560535661%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3560435657%_)))
                                (_%lp-tl3560635664%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3560435657%_))))
                            (_%loop3560335647%_
                             _%lp-tl3560635664%_
                             (cons _%lp-hd3560535661%_ _%e3560735654%_))))
                        (let ((_%e3560835667%_ (reverse _%e3560735654%_)))
                          ((lambda (_%L35671%_ _%L35673%_)
                             (if (gx#stx-list? _%L35671%_)
                                 (let* ((_%g3569135708%_
                                         (lambda (_%g3569235704%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3569235704%_)))
                                        (_%g3569035814%_
                                         (lambda (_%g3569235712%_)
                                           (if (gx#stx-pair/null?
                                                _%g3569235712%_)
                                               (let ((_g39959_
                                                      (gx#syntax-split-splice
                                                       _%g3569235712%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39960_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39959_)
                        (##vector-length _g39959_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39960_ 2)))
                 (error "Context expects 2 values" _g39960_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3569435715%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39959_
                                                             0)))
                                                         (_%tl3569635718%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g39959_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3569635718%_)
                                                         (letrec ((_%loop3569735721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3569535725%_ _%$e3570135728%_)
                             (if (gx#stx-pair? _%hd3569535725%_)
                                 (let ((_%e3569835731%_
                                        (gx#syntax-e _%hd3569535725%_)))
                                   (let ((_%lp-hd3569935735%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3569835731%_)))
                                         (_%lp-tl3570035738%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3569835731%_))))
                                     (_%loop3569735721%_
                                      _%lp-tl3570035738%_
                                      (cons _%lp-hd3569935735%_
                                            _%$e3570135728%_))))
                                 (let ((_%$e3570235741%_
                                        (reverse _%$e3570135728%_)))
                                   ((lambda (_%L35745%_)
                                      (let* ((_%g3576135769%_
                                              (lambda (_%g3576235765%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3576235765%_)))
                                             (_%g3576035802%_
                                              (lambda (_%g3576235773%_)
                                                ((lambda (_%L35776%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35673%_ _%L35745%_)
                         (foldr (lambda (_%g3579035794%_
                                         _%g3579135797%_
                                         _%g3579235799%_)
                                  (cons (cons _%g3579135797%_
                                              (cons _%g3579035794%_ '()))
                                        _%g3579235799%_))
                                '()
                                _%L35673%_
                                _%L35745%_))
                       (cons _%L35776%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3576235773%_))))
                                        (_%g3576035802%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35587%_
                                          (foldr (lambda (_%g3580535808%_
                                                          _%g3580635811%_)
                                                   (cons _%g3580535808%_
                                                         _%g3580635811%_))
                                                 '()
                                                 _%L35745%_)
                                          _%L35671%_))))
                                    _%$e3570235741%_))))))
                   (_%loop3569735721%_ _%target3569435715%_ '()))
                 (_%g3569135708%_ _%g3569235712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3569135708%_
                                                _%g3569235712%_)))))
                                   (_%g3569035814%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3581735820%_
                                                     _%g3581835823%_)
                                              (cons _%g3581735820%_
                                                    _%g3581835823%_))
                                            '()
                                            _%L35673%_))))
                                 (_%g3559035614%_ _%g3559135618%_)))
                           _%tl3559935638%_
                           _%e3560835667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3560335647%_
                                                   _%target3560035641%_
                                                   '()))
                                                (_%g3559035614%_
                                                 _%g3559135618%_)))))
                                      (_%g3559035614%_ _%g3559135618%_))))
                              (_%g3559035614%_ _%g3559135618%_))))
                      (_%g3559035614%_ _%g3559135618%_)))))
          (_%g3558935826%_ _%stx35587%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35832%_)
        (let* ((_%__stx3941439415%_ _%$stx35832%_)
               (_%g3583835921%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3941439415%_))))
          (let ((_%__kont3941739418%_
                 (lambda (_%L36251%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3626736270%_ _%g3626836273%_)
                                        (cons _%g3626736270%_ _%g3626836273%_))
                                      '()
                                      _%L36251%_)))))
                (_%__kont3942139422%_
                 (lambda (_%L36159%_ _%L36161%_ _%L36162%_ _%L36163%_)
                   (cons _%L36163%_
                         (cons (cons (cons _%L36162%_ (cons _%L36161%_ '()))
                                     '())
                               (foldr (lambda (_%g3618536188%_ _%g3618636191%_)
                                        (cons _%g3618536188%_ _%g3618636191%_))
                                      '()
                                      _%L36159%_)))))
                (_%__kont3942539426%_
                 (lambda (_%L36032%_ _%L36034%_ _%L36035%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3606136064%_ _%g3606236067%_)
                                        (cons _%g3606136064%_ _%g3606236067%_))
                                      '()
                                      _%L36034%_)
                               (cons (cons (foldr (lambda (_%g3605936070%_
                                                           _%g3606036073%_)
                                                    (cons _%g3605936070%_
                                                          _%g3606036073%_))
                                                  '()
                                                  _%L36035%_)
                                           (foldr (lambda (_%g3605736076%_
                                                           _%g3605836079%_)
                                                    (cons _%g3605736076%_
                                                          _%g3605836079%_))
                                                  '()
                                                  _%L36032%_))
                                     '()))))))
            (let* ((_%__match3950739508%_
                    (lambda (_%e3588435928%_
                             _%hd3588535932%_
                             _%tl3588635935%_
                             _%e3588735938%_
                             _%hd3588835942%_
                             _%tl3588935945%_
                             _%__splice3942739428%_
                             _%target3589035948%_
                             _%tl3589235951%_)
                      (letrec ((_%loop3589335954%_
                                (lambda (_%hd3589135958%_
                                         _%expr3589735961%_
                                         _%hd3589835963%_)
                                  (if (gx#stx-pair? _%hd3589135958%_)
                                      (let ((_%e3589435966%_
                                             (gx#syntax-e _%hd3589135958%_)))
                                        (let ((_%lp-tl3589635973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3589435966%_)))
                                              (_%lp-hd3589535970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3589435966%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3589535970%_)
                                              (let ((_%e3591035976%_
                                                     (gx#syntax-e
                                                      _%lp-hd3589535970%_)))
                                                (let ((_%tl3591235983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3591035976%_)))
                                                      (_%hd3591135980%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3591035976%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3591235983%_)
                                                      (let ((_%e3591335986%_
                                                             (gx#syntax-e
                                                              _%tl3591235983%_)))
                                                        (let ((_%tl3591535993%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3591335986%_)))
                      (_%hd3591435990%_
                       (let () (declare (not safe)) (##car _%e3591335986%_))))
                  (if (gx#stx-null? _%tl3591535993%_)
                      (_%loop3589335954%_
                       _%lp-tl3589635973%_
                       (cons _%hd3591435990%_ _%expr3589735961%_)
                       (cons _%hd3591135980%_ _%hd3589835963%_))
                      (let () (declare (not safe)) (_%g3583835921%_)))))
              (let () (declare (not safe)) (_%g3583835921%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3583835921%_)))))
                                      (let ((_%hd3590035999%_
                                             (reverse _%hd3589835963%_))
                                            (_%expr3589935996%_
                                             (reverse _%expr3589735961%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3588935945%_)
                                            (let ((_%__splice3942939430%_
                                                   (gx#syntax-split-splice
                                                    _%tl3588935945%_
                                                    '0)))
                                              (let ((_%tl3590336005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3942939430%_
                                                        '1)))
                                                    (_%target3590136002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3942939430%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3590336005%_)
                                                    (letrec ((_%loop3590436008%_
                                                              (lambda (_%hd3590236012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3590836015%_)
                        (if (gx#stx-pair? _%hd3590236012%_)
                            (let ((_%e3590536018%_
                                   (gx#syntax-e _%hd3590236012%_)))
                              (let ((_%lp-tl3590736025%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3590536018%_)))
                                    (_%lp-hd3590636022%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3590536018%_))))
                                (_%loop3590436008%_
                                 _%lp-tl3590736025%_
                                 (cons _%lp-hd3590636022%_
                                       _%body3590836015%_))))
                            (let ((_%body3590936028%_
                                   (reverse _%body3590836015%_)))
                              (_%__kont3942539426%_
                               _%body3590936028%_
                               _%expr3589935996%_
                               _%hd3590035999%_))))))
              (_%loop3590436008%_ _%target3590136002%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3583835921%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3583835921%_))))))))
                        (_%loop3589335954%_ _%target3589035948%_ '() '()))))
                   (_%__match3949939500%_
                    (lambda (_%e3588435928%_
                             _%hd3588535932%_
                             _%tl3588635935%_
                             _%e3588735938%_
                             _%hd3588835942%_
                             _%tl3588935945%_)
                      (if (gx#stx-pair/null? _%hd3588835942%_)
                          (let ((_%__splice3942739428%_
                                 (gx#syntax-split-splice _%hd3588835942%_ '0)))
                            (let ((_%tl3589235951%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3942739428%_ '1)))
                                  (_%target3589035948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3942739428%_
                                      '0))))
                              (if (gx#stx-null? _%tl3589235951%_)
                                  (_%__match3950739508%_
                                   _%e3588435928%_
                                   _%hd3588535932%_
                                   _%tl3588635935%_
                                   _%e3588735938%_
                                   _%hd3588835942%_
                                   _%tl3588935945%_
                                   _%__splice3942739428%_
                                   _%target3589035948%_
                                   _%tl3589235951%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3583835921%_)))))
                          (let () (declare (not safe)) (_%g3583835921%_)))))
                   (_%__match3948739488%_
                    (lambda (_%e3586036089%_
                             _%hd3586136093%_
                             _%tl3586236096%_
                             _%e3586336099%_
                             _%hd3586436103%_
                             _%tl3586536106%_
                             _%e3586636109%_
                             _%hd3586736113%_
                             _%tl3586836116%_
                             _%e3586936119%_
                             _%hd3587036123%_
                             _%tl3587136126%_
                             _%__splice3942339424%_
                             _%target3587236129%_
                             _%tl3587436132%_)
                      (letrec ((_%loop3587536135%_
                                (lambda (_%hd3587336139%_ _%body3587936142%_)
                                  (if (gx#stx-pair? _%hd3587336139%_)
                                      (let ((_%e3587636145%_
                                             (gx#syntax-e _%hd3587336139%_)))
                                        (let ((_%lp-tl3587836152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3587636145%_)))
                                              (_%lp-hd3587736149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3587636145%_))))
                                          (_%loop3587536135%_
                                           _%lp-tl3587836152%_
                                           (cons _%lp-hd3587736149%_
                                                 _%body3587936142%_))))
                                      (let ((_%body3588036155%_
                                             (reverse _%body3587936142%_)))
                                        (let ((_%L36159%_ _%body3588036155%_)
                                              (_%L36161%_ _%hd3587036123%_)
                                              (_%L36162%_ _%hd3586736113%_)
                                              (_%L36163%_ _%hd3586136093%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36162%_)
                                              (_%__kont3942139422%_
                                               _%L36159%_
                                               _%L36161%_
                                               _%L36162%_
                                               _%L36163%_)
                                              (_%__match3949939500%_
                                               _%e3586036089%_
                                               _%hd3586136093%_
                                               _%tl3586236096%_
                                               _%e3586336099%_
                                               _%hd3586436103%_
                                               _%tl3586536106%_))))))))
                        (_%loop3587536135%_ _%target3587236129%_ '()))))
                   (_%__match3945339454%_
                    (lambda (_%e3584136201%_
                             _%hd3584236205%_
                             _%tl3584336208%_
                             _%e3584436211%_
                             _%hd3584536215%_
                             _%tl3584636218%_
                             _%__splice3941939420%_
                             _%target3584736221%_
                             _%tl3584936224%_)
                      (letrec ((_%loop3585036227%_
                                (lambda (_%hd3584836231%_ _%body3585436234%_)
                                  (if (gx#stx-pair? _%hd3584836231%_)
                                      (let ((_%e3585136237%_
                                             (gx#syntax-e _%hd3584836231%_)))
                                        (let ((_%lp-tl3585336244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3585136237%_)))
                                              (_%lp-hd3585236241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3585136237%_))))
                                          (_%loop3585036227%_
                                           _%lp-tl3585336244%_
                                           (cons _%lp-hd3585236241%_
                                                 _%body3585436234%_))))
                                      (let ((_%body3585536247%_
                                             (reverse _%body3585436234%_)))
                                        (_%__kont3941739418%_
                                         _%body3585536247%_))))))
                        (_%loop3585036227%_ _%target3584736221%_ '())))))
              (if (gx#stx-pair? _%__stx3941439415%_)
                  (let ((_%e3584136201%_ (gx#syntax-e _%__stx3941439415%_)))
                    (let ((_%tl3584336208%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3584136201%_)))
                          (_%hd3584236205%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3584136201%_))))
                      (if (gx#stx-pair? _%tl3584336208%_)
                          (let ((_%e3584436211%_
                                 (gx#syntax-e _%tl3584336208%_)))
                            (let ((_%tl3584636218%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3584436211%_)))
                                  (_%hd3584536215%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3584436211%_))))
                              (if (gx#stx-null? _%hd3584536215%_)
                                  (if (gx#stx-pair/null? _%tl3584636218%_)
                                      (let ((_%__splice3941939420%_
                                             (gx#syntax-split-splice
                                              _%tl3584636218%_
                                              '0)))
                                        (let ((_%tl3584936224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3941939420%_
                                                  '1)))
                                              (_%target3584736221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3941939420%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3584936224%_)
                                              (_%__match3945339454%_
                                               _%e3584136201%_
                                               _%hd3584236205%_
                                               _%tl3584336208%_
                                               _%e3584436211%_
                                               _%hd3584536215%_
                                               _%tl3584636218%_
                                               _%__splice3941939420%_
                                               _%target3584736221%_
                                               _%tl3584936224%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3584536215%_)
                                                  (let ((_%__splice3942739428%_
                                                         (gx#syntax-split-splice
                                                          _%hd3584536215%_
                                                          '0)))
                                                    (let ((_%tl3589235951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3942739428%_
                                                              '1)))
                                                          (_%target3589035948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3942739428%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3589235951%_)
                                                          (_%__match3950739508%_
                                                           _%e3584136201%_
                                                           _%hd3584236205%_
                                                           _%tl3584336208%_
                                                           _%e3584436211%_
                                                           _%hd3584536215%_
                                                           _%tl3584636218%_
                                                           _%__splice3942739428%_
                                                           _%target3589035948%_
                                                           _%tl3589235951%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3583835921%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3583835921%_))))))
                                      (if (gx#stx-pair/null? _%hd3584536215%_)
                                          (let ((_%__splice3942739428%_
                                                 (gx#syntax-split-splice
                                                  _%hd3584536215%_
                                                  '0)))
                                            (let ((_%tl3589235951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3942739428%_
                                                      '1)))
                                                  (_%target3589035948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3942739428%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3589235951%_)
                                                  (_%__match3950739508%_
                                                   _%e3584136201%_
                                                   _%hd3584236205%_
                                                   _%tl3584336208%_
                                                   _%e3584436211%_
                                                   _%hd3584536215%_
                                                   _%tl3584636218%_
                                                   _%__splice3942739428%_
                                                   _%target3589035948%_
                                                   _%tl3589235951%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3583835921%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3583835921%_))))
                                  (if (gx#stx-pair? _%hd3584536215%_)
                                      (let ((_%e3586636109%_
                                             (gx#syntax-e _%hd3584536215%_)))
                                        (let ((_%tl3586836116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3586636109%_)))
                                              (_%hd3586736113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3586636109%_))))
                                          (if (gx#stx-pair? _%tl3586836116%_)
                                              (let ((_%e3586936119%_
                                                     (gx#syntax-e
                                                      _%tl3586836116%_)))
                                                (let ((_%tl3587136126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3586936119%_)))
                                                      (_%hd3587036123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3586936119%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3587136126%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3584636218%_)
                                                          (let ((_%__splice3942339424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl3584636218%_ '0)))
                    (let ((_%tl3587436132%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3942339424%_ '1)))
                          (_%target3587236129%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3942339424%_ '0))))
                      (if (gx#stx-null? _%tl3587436132%_)
                          (_%__match3948739488%_
                           _%e3584136201%_
                           _%hd3584236205%_
                           _%tl3584336208%_
                           _%e3584436211%_
                           _%hd3584536215%_
                           _%tl3584636218%_
                           _%e3586636109%_
                           _%hd3586736113%_
                           _%tl3586836116%_
                           _%e3586936119%_
                           _%hd3587036123%_
                           _%tl3587136126%_
                           _%__splice3942339424%_
                           _%target3587236129%_
                           _%tl3587436132%_)
                          (if (gx#stx-pair/null? _%hd3584536215%_)
                              (let ((_%__splice3942739428%_
                                     (gx#syntax-split-splice
                                      _%hd3584536215%_
                                      '0)))
                                (let ((_%tl3589235951%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3942739428%_
                                          '1)))
                                      (_%target3589035948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3942739428%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3589235951%_)
                                      (_%__match3950739508%_
                                       _%e3584136201%_
                                       _%hd3584236205%_
                                       _%tl3584336208%_
                                       _%e3584436211%_
                                       _%hd3584536215%_
                                       _%tl3584636218%_
                                       _%__splice3942739428%_
                                       _%target3589035948%_
                                       _%tl3589235951%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3583835921%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3583835921%_))))))
                  (if (gx#stx-pair/null? _%hd3584536215%_)
                      (let ((_%__splice3942739428%_
                             (gx#syntax-split-splice _%hd3584536215%_ '0)))
                        (let ((_%tl3589235951%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3942739428%_ '1)))
                              (_%target3589035948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3942739428%_ '0))))
                          (if (gx#stx-null? _%tl3589235951%_)
                              (_%__match3950739508%_
                               _%e3584136201%_
                               _%hd3584236205%_
                               _%tl3584336208%_
                               _%e3584436211%_
                               _%hd3584536215%_
                               _%tl3584636218%_
                               _%__splice3942739428%_
                               _%target3589035948%_
                               _%tl3589235951%_)
                              (let ()
                                (declare (not safe))
                                (_%g3583835921%_)))))
                      (let () (declare (not safe)) (_%g3583835921%_))))
              (if (gx#stx-pair/null? _%hd3584536215%_)
                  (let ((_%__splice3942739428%_
                         (gx#syntax-split-splice _%hd3584536215%_ '0)))
                    (let ((_%tl3589235951%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3942739428%_ '1)))
                          (_%target3589035948%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3942739428%_ '0))))
                      (if (gx#stx-null? _%tl3589235951%_)
                          (_%__match3950739508%_
                           _%e3584136201%_
                           _%hd3584236205%_
                           _%tl3584336208%_
                           _%e3584436211%_
                           _%hd3584536215%_
                           _%tl3584636218%_
                           _%__splice3942739428%_
                           _%target3589035948%_
                           _%tl3589235951%_)
                          (let () (declare (not safe)) (_%g3583835921%_)))))
                  (let () (declare (not safe)) (_%g3583835921%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3584536215%_)
                                                  (let ((_%__splice3942739428%_
                                                         (gx#syntax-split-splice
                                                          _%hd3584536215%_
                                                          '0)))
                                                    (let ((_%tl3589235951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3942739428%_
                                                              '1)))
                                                          (_%target3589035948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3942739428%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3589235951%_)
                                                          (_%__match3950739508%_
                                                           _%e3584136201%_
                                                           _%hd3584236205%_
                                                           _%tl3584336208%_
                                                           _%e3584436211%_
                                                           _%hd3584536215%_
                                                           _%tl3584636218%_
                                                           _%__splice3942739428%_
                                                           _%target3589035948%_
                                                           _%tl3589235951%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3583835921%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3583835921%_))))))
                                      (if (gx#stx-pair/null? _%hd3584536215%_)
                                          (let ((_%__splice3942739428%_
                                                 (gx#syntax-split-splice
                                                  _%hd3584536215%_
                                                  '0)))
                                            (let ((_%tl3589235951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3942739428%_
                                                      '1)))
                                                  (_%target3589035948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3942739428%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3589235951%_)
                                                  (_%__match3950739508%_
                                                   _%e3584136201%_
                                                   _%hd3584236205%_
                                                   _%tl3584336208%_
                                                   _%e3584436211%_
                                                   _%hd3584536215%_
                                                   _%tl3584636218%_
                                                   _%__splice3942739428%_
                                                   _%target3589035948%_
                                                   _%tl3589235951%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3583835921%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3583835921%_)))))))
                          (let () (declare (not safe)) (_%g3583835921%_)))))
                  (let () (declare (not safe)) (_%g3583835921%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36284%_)
        (let* ((_%__stx3951039511%_ _%$stx36284%_)
               (_%g3628936341%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3951039511%_))))
          (let ((_%__kont3951339514%_
                 (lambda (_%L36511%_
                          _%L36513%_
                          _%L36514%_
                          _%L36515%_
                          _%L36516%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36515%_ (cons _%L36514%_ '()))
                                     '())
                               (cons (cons _%L36516%_
                                           (cons _%L36513%_
                                                 (foldr (lambda (_%g3654136544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3654236547%_)
                  (cons _%g3654136544%_ _%g3654236547%_))
                '()
                _%L36511%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3951739518%_
                 (lambda (_%L36398%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3641536418%_ _%g3641636421%_)
                                        (cons _%g3641536418%_ _%g3641636421%_))
                                      '()
                                      _%L36398%_))))))
            (let* ((_%__match3958339584%_
                    (lambda (_%e3632136348%_
                             _%hd3632236352%_
                             _%tl3632336355%_
                             _%e3632436358%_
                             _%hd3632536362%_
                             _%tl3632636365%_
                             _%__splice3951939520%_
                             _%target3632736368%_
                             _%tl3632936371%_)
                      (letrec ((_%loop3633036374%_
                                (lambda (_%hd3632836378%_ _%body3633436381%_)
                                  (if (gx#stx-pair? _%hd3632836378%_)
                                      (let ((_%e3633136384%_
                                             (gx#syntax-e _%hd3632836378%_)))
                                        (let ((_%lp-tl3633336391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3633136384%_)))
                                              (_%lp-hd3633236388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3633136384%_))))
                                          (_%loop3633036374%_
                                           _%lp-tl3633336391%_
                                           (cons _%lp-hd3633236388%_
                                                 _%body3633436381%_))))
                                      (let ((_%body3633536394%_
                                             (reverse _%body3633436381%_)))
                                        (_%__kont3951739518%_
                                         _%body3633536394%_))))))
                        (_%loop3633036374%_ _%target3632736368%_ '()))))
                   (_%__match3956139562%_
                    (lambda (_%e3629636431%_
                             _%hd3629736435%_
                             _%tl3629836438%_
                             _%e3629936441%_
                             _%hd3630036445%_
                             _%tl3630136448%_
                             _%e3630236451%_
                             _%hd3630336455%_
                             _%tl3630436458%_
                             _%e3630536461%_
                             _%hd3630636465%_
                             _%tl3630736468%_
                             _%e3630836471%_
                             _%hd3630936475%_
                             _%tl3631036478%_
                             _%__splice3951539516%_
                             _%target3631136481%_
                             _%tl3631336484%_)
                      (letrec ((_%loop3631436487%_
                                (lambda (_%hd3631236491%_ _%body3631836494%_)
                                  (if (gx#stx-pair? _%hd3631236491%_)
                                      (let ((_%e3631536497%_
                                             (gx#syntax-e _%hd3631236491%_)))
                                        (let ((_%lp-tl3631736504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3631536497%_)))
                                              (_%lp-hd3631636501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3631536497%_))))
                                          (_%loop3631436487%_
                                           _%lp-tl3631736504%_
                                           (cons _%lp-hd3631636501%_
                                                 _%body3631836494%_))))
                                      (let ((_%body3631936507%_
                                             (reverse _%body3631836494%_)))
                                        (_%__kont3951339514%_
                                         _%body3631936507%_
                                         _%tl3630436458%_
                                         _%hd3630936475%_
                                         _%hd3630636465%_
                                         _%hd3629736435%_))))))
                        (_%loop3631436487%_ _%target3631136481%_ '())))))
              (if (gx#stx-pair? _%__stx3951039511%_)
                  (let ((_%e3629636431%_ (gx#syntax-e _%__stx3951039511%_)))
                    (let ((_%tl3629836438%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3629636431%_)))
                          (_%hd3629736435%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3629636431%_))))
                      (if (gx#stx-pair? _%tl3629836438%_)
                          (let ((_%e3629936441%_
                                 (gx#syntax-e _%tl3629836438%_)))
                            (let ((_%tl3630136448%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3629936441%_)))
                                  (_%hd3630036445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3629936441%_))))
                              (if (gx#stx-pair? _%hd3630036445%_)
                                  (let ((_%e3630236451%_
                                         (gx#syntax-e _%hd3630036445%_)))
                                    (let ((_%tl3630436458%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3630236451%_)))
                                          (_%hd3630336455%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3630236451%_))))
                                      (if (gx#stx-pair? _%hd3630336455%_)
                                          (let ((_%e3630536461%_
                                                 (gx#syntax-e
                                                  _%hd3630336455%_)))
                                            (let ((_%tl3630736468%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3630536461%_)))
                                                  (_%hd3630636465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3630536461%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3630736468%_)
                                                  (let ((_%e3630836471%_
                                                         (gx#syntax-e
                                                          _%tl3630736468%_)))
                                                    (let ((_%tl3631036478%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3630836471%_)))
                                                          (_%hd3630936475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3630836471%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3631036478%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3630136448%_)
                                                              (let ((_%__splice3951539516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl3630136448%_ '0)))
                        (let ((_%tl3631336484%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3951539516%_ '1)))
                              (_%target3631136481%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3951539516%_ '0))))
                          (if (gx#stx-null? _%tl3631336484%_)
                              (_%__match3956139562%_
                               _%e3629636431%_
                               _%hd3629736435%_
                               _%tl3629836438%_
                               _%e3629936441%_
                               _%hd3630036445%_
                               _%tl3630136448%_
                               _%e3630236451%_
                               _%hd3630336455%_
                               _%tl3630436458%_
                               _%e3630536461%_
                               _%hd3630636465%_
                               _%tl3630736468%_
                               _%e3630836471%_
                               _%hd3630936475%_
                               _%tl3631036478%_
                               _%__splice3951539516%_
                               _%target3631136481%_
                               _%tl3631336484%_)
                              (let ()
                                (declare (not safe))
                                (_%g3628936341%_)))))
                      (let () (declare (not safe)) (_%g3628936341%_)))
                  (let () (declare (not safe)) (_%g3628936341%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3628936341%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3628936341%_)))))
                                  (if (gx#stx-null? _%hd3630036445%_)
                                      (if (gx#stx-pair/null? _%tl3630136448%_)
                                          (let ((_%__splice3951939520%_
                                                 (gx#syntax-split-splice
                                                  _%tl3630136448%_
                                                  '0)))
                                            (let ((_%tl3632936371%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3951939520%_
                                                      '1)))
                                                  (_%target3632736368%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3951939520%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3632936371%_)
                                                  (_%__match3958339584%_
                                                   _%e3629636431%_
                                                   _%hd3629736435%_
                                                   _%tl3629836438%_
                                                   _%e3629936441%_
                                                   _%hd3630036445%_
                                                   _%tl3630136448%_
                                                   _%__splice3951939520%_
                                                   _%target3632736368%_
                                                   _%tl3632936371%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3628936341%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3628936341%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3628936341%_))))))
                          (let () (declare (not safe)) (_%g3628936341%_)))))
                  (let () (declare (not safe)) (_%g3628936341%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36556%_)
        (let* ((_%__stx3958639587%_ _%$stx36556%_)
               (_%g3656736713%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3958639587%_))))
          (let ((_%__kont3958939590%_
                 (lambda (_%L37317%_ _%L37319%_ _%L37320%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3734137344%_ _%g3734237347%_)
                                  (cons (cons _%L37320%_
                                              (cons _%g3734137344%_
                                                    (cons _%L37317%_ '())))
                                        _%g3734237347%_))
                                '()
                                _%L37319%_))))
                (_%__kont3959339594%_
                 (lambda (_%L37207%_ _%L37209%_ _%L37210%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3723137234%_ _%g3723237237%_)
                                  (cons (cons _%L37210%_
                                              (cons _%g3723137234%_
                                                    (cons _%L37207%_ '())))
                                        _%g3723237237%_))
                                '()
                                _%L37209%_))))
                (_%__kont3959739598%_
                 (lambda (_%L37107%_ _%L37109%_ _%L37110%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37110%_
                                     (cons _%L37109%_ (cons _%L37107%_ '())))
                               '()))))
                (_%__kont3959939600%_
                 (lambda (_%L37033%_ _%L37035%_)
                   (cons _%L37035%_ (cons _%L37033%_ '()))))
                (_%__kont3960139602%_
                 (lambda (_%L36981%_ _%L36983%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L36983%_
                                           (cons _%L36981%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3960339604%_
                 (lambda (_%L36933%_ _%L36935%_ _%L36936%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36935%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36933%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3960539606%_
                 (lambda (_%L36864%_ _%L36866%_ _%L36867%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36867%_
                                                       (cons _%L36866%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36864%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3960739608%_
                 (lambda (_%L36784%_ _%L36786%_ _%L36787%_ _%L36788%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36788%_
                                                       (cons _%L36787%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36784%_
                                                             (cons (cons _%L36786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3975939760%_
                    (lambda (_%e3665736893%_
                             _%hd3665836897%_
                             _%tl3665936900%_
                             _%e3666036903%_
                             _%hd3666136907%_
                             _%tl3666236910%_
                             _%e3666336913%_
                             _%hd3666436917%_
                             _%tl3666536920%_)
                      (if (gx#identifier? _%hd3666436917%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39961_|
                               _%hd3666436917%_)
                              (if (gx#stx-pair? _%tl3666536920%_)
                                  (let ((_%e3666636923%_
                                         (gx#syntax-e _%tl3666536920%_)))
                                    (let ((_%tl3666836930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3666636923%_)))
                                          (_%hd3666736927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3666636923%_))))
                                      (if (gx#stx-null? _%tl3666836930%_)
                                          (_%__kont3960339604%_
                                           _%hd3666736927%_
                                           _%hd3666136907%_
                                           _%hd3665836897%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656736713%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656736713%_)))
                              (let () (declare (not safe)) (_%g3656736713%_)))
                          (if (gx#stx-datum? _%hd3666436917%_)
                              (let ((_%e3668136850%_
                                     (gx#stx-e _%hd3666436917%_)))
                                (if (equal? _%e3668136850%_ '::)
                                    (if (gx#stx-pair? _%tl3666536920%_)
                                        (let ((_%e3668236854%_
                                               (gx#syntax-e _%tl3666536920%_)))
                                          (let ((_%tl3668436861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3668236854%_)))
                                                (_%hd3668336858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3668236854%_))))
                                            (if (gx#stx-null? _%tl3668436861%_)
                                                (_%__kont3960539606%_
                                                 _%hd3668336858%_
                                                 _%hd3666136907%_
                                                 _%hd3665836897%_)
                                                (if (gx#stx-pair?
                                                     _%tl3668436861%_)
                                                    (let ((_%e3670236764%_
                                                           (gx#syntax-e
                                                            _%tl3668436861%_)))
                                                      (let ((_%tl3670436771%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670236764%_)))
                    (_%hd3670336768%_
                     (let () (declare (not safe)) (##car _%e3670236764%_))))
                (if (gx#identifier? _%hd3670336768%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39962_|
                         _%hd3670336768%_)
                        (if (gx#stx-pair? _%tl3670436771%_)
                            (let ((_%e3670536774%_
                                   (gx#syntax-e _%tl3670436771%_)))
                              (let ((_%tl3670736781%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3670536774%_)))
                                    (_%hd3670636778%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3670536774%_))))
                                (if (gx#stx-null? _%tl3670736781%_)
                                    (_%__kont3960739608%_
                                     _%hd3670636778%_
                                     _%hd3668336858%_
                                     _%hd3666136907%_
                                     _%hd3665836897%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_)))))
                            (let () (declare (not safe)) (_%g3656736713%_)))
                        (let () (declare (not safe)) (_%g3656736713%_)))
                    (let () (declare (not safe)) (_%g3656736713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3656736713%_))))))
                   (_%__match3973939740%_
                    (lambda (_%e3664836961%_
                             _%hd3664936965%_
                             _%tl3665036968%_
                             _%e3665136971%_
                             _%hd3665236975%_
                             _%tl3665336978%_)
                      (if (gx#stx-null? _%tl3665336978%_)
                          (_%__kont3960139602%_
                           _%hd3665236975%_
                           _%hd3664936965%_)
                          (if (gx#stx-pair? _%tl3665336978%_)
                              (let ((_%e3666336913%_
                                     (gx#syntax-e _%tl3665336978%_)))
                                (let ((_%tl3666536920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3666336913%_)))
                                      (_%hd3666436917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3666336913%_))))
                                  (if (gx#identifier? _%hd3666436917%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39961_|
                                           _%hd3666436917%_)
                                          (if (gx#stx-pair? _%tl3666536920%_)
                                              (let ((_%e3666636923%_
                                                     (gx#syntax-e
                                                      _%tl3666536920%_)))
                                                (let ((_%tl3666836930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3666636923%_)))
                                                      (_%hd3666736927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3666636923%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3666836930%_)
                                                      (_%__kont3960339604%_
                                                       _%hd3666736927%_
                                                       _%hd3665236975%_
                                                       _%hd3664936965%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3656736713%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656736713%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656736713%_)))
                                      (if (gx#stx-datum? _%hd3666436917%_)
                                          (let ((_%e3668136850%_
                                                 (gx#stx-e _%hd3666436917%_)))
                                            (if (equal? _%e3668136850%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3666536920%_)
                                                    (let ((_%e3668236854%_
                                                           (gx#syntax-e
                                                            _%tl3666536920%_)))
                                                      (let ((_%tl3668436861%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3668236854%_)))
                    (_%hd3668336858%_
                     (let () (declare (not safe)) (##car _%e3668236854%_))))
                (if (gx#stx-null? _%tl3668436861%_)
                    (_%__kont3960539606%_
                     _%hd3668336858%_
                     _%hd3665236975%_
                     _%hd3664936965%_)
                    (if (gx#stx-pair? _%tl3668436861%_)
                        (let ((_%e3670236764%_ (gx#syntax-e _%tl3668436861%_)))
                          (let ((_%tl3670436771%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3670236764%_)))
                                (_%hd3670336768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3670236764%_))))
                            (if (gx#identifier? _%hd3670336768%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39962_|
                                     _%hd3670336768%_)
                                    (if (gx#stx-pair? _%tl3670436771%_)
                                        (let ((_%e3670536774%_
                                               (gx#syntax-e _%tl3670436771%_)))
                                          (let ((_%tl3670736781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3670536774%_)))
                                                (_%hd3670636778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3670536774%_))))
                                            (if (gx#stx-null? _%tl3670736781%_)
                                                (_%__kont3960739608%_
                                                 _%hd3670636778%_
                                                 _%hd3668336858%_
                                                 _%hd3665236975%_
                                                 _%hd3664936965%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656736713%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656736713%_)))))
                        (let () (declare (not safe)) (_%g3656736713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656736713%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656736713%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3656736713%_))))))
                   (_%__match3966939670%_
                    (lambda (_%e3659637137%_
                             _%hd3659737141%_
                             _%tl3659837144%_
                             _%e3659937147%_
                             _%hd3660037151%_
                             _%tl3660137154%_
                             _%e3660237157%_
                             _%hd3660337161%_
                             _%tl3660437164%_
                             _%__splice3959539596%_
                             _%target3660537167%_
                             _%tl3660737170%_)
                      (letrec ((_%loop3660837173%_
                                (lambda (_%hd3660637177%_ _%pred3661237180%_)
                                  (if (gx#stx-pair? _%hd3660637177%_)
                                      (let ((_%e3660937183%_
                                             (gx#syntax-e _%hd3660637177%_)))
                                        (let ((_%lp-tl3661137190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3660937183%_)))
                                              (_%lp-hd3661037187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3660937183%_))))
                                          (_%loop3660837173%_
                                           _%lp-tl3661137190%_
                                           (cons _%lp-hd3661037187%_
                                                 _%pred3661237180%_))))
                                      (let ((_%pred3661337193%_
                                             (reverse _%pred3661237180%_)))
                                        (if (gx#stx-pair? _%tl3660137154%_)
                                            (let ((_%e3661437197%_
                                                   (gx#syntax-e
                                                    _%tl3660137154%_)))
                                              (let ((_%tl3661637204%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3661437197%_)))
                                                    (_%hd3661537201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3661437197%_))))
                                                (if (gx#stx-null?
                                                     _%tl3661637204%_)
                                                    (_%__kont3959339594%_
                                                     _%hd3661537201%_
                                                     _%pred3661337193%_
                                                     _%hd3659737141%_)
                                                    (_%__match3975939760%_
                                                     _%e3659637137%_
                                                     _%hd3659737141%_
                                                     _%tl3659837144%_
                                                     _%e3659937147%_
                                                     _%hd3660037151%_
                                                     _%tl3660137154%_
                                                     _%e3661437197%_
                                                     _%hd3661537201%_
                                                     _%tl3661637204%_))))
                                            (_%__match3973939740%_
                                             _%e3659637137%_
                                             _%hd3659737141%_
                                             _%tl3659837144%_
                                             _%e3659937147%_
                                             _%hd3660037151%_
                                             _%tl3660137154%_)))))))
                        (_%loop3660837173%_ _%target3660537167%_ '()))))
                   (_%__match3963939640%_
                    (lambda (_%e3657237247%_
                             _%hd3657337251%_
                             _%tl3657437254%_
                             _%e3657537257%_
                             _%hd3657637261%_
                             _%tl3657737264%_
                             _%e3657837267%_
                             _%hd3657937271%_
                             _%tl3658037274%_
                             _%__splice3959139592%_
                             _%target3658137277%_
                             _%tl3658337280%_)
                      (letrec ((_%loop3658437283%_
                                (lambda (_%hd3658237287%_ _%pred3658837290%_)
                                  (if (gx#stx-pair? _%hd3658237287%_)
                                      (let ((_%e3658537293%_
                                             (gx#syntax-e _%hd3658237287%_)))
                                        (let ((_%lp-tl3658737300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3658537293%_)))
                                              (_%lp-hd3658637297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3658537293%_))))
                                          (_%loop3658437283%_
                                           _%lp-tl3658737300%_
                                           (cons _%lp-hd3658637297%_
                                                 _%pred3658837290%_))))
                                      (let ((_%pred3658937303%_
                                             (reverse _%pred3658837290%_)))
                                        (if (gx#stx-pair? _%tl3657737264%_)
                                            (let ((_%e3659037307%_
                                                   (gx#syntax-e
                                                    _%tl3657737264%_)))
                                              (let ((_%tl3659237314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3659037307%_)))
                                                    (_%hd3659137311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3659037307%_))))
                                                (if (gx#stx-null?
                                                     _%tl3659237314%_)
                                                    (_%__kont3958939590%_
                                                     _%hd3659137311%_
                                                     _%pred3658937303%_
                                                     _%hd3657337251%_)
                                                    (_%__match3975939760%_
                                                     _%e3657237247%_
                                                     _%hd3657337251%_
                                                     _%tl3657437254%_
                                                     _%e3657537257%_
                                                     _%hd3657637261%_
                                                     _%tl3657737264%_
                                                     _%e3659037307%_
                                                     _%hd3659137311%_
                                                     _%tl3659237314%_))))
                                            (_%__match3973939740%_
                                             _%e3657237247%_
                                             _%hd3657337251%_
                                             _%tl3657437254%_
                                             _%e3657537257%_
                                             _%hd3657637261%_
                                             _%tl3657737264%_)))))))
                        (_%loop3658437283%_ _%target3658137277%_ '())))))
              (if (gx#stx-pair? _%__stx3958639587%_)
                  (let ((_%e3657237247%_ (gx#syntax-e _%__stx3958639587%_)))
                    (let ((_%tl3657437254%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3657237247%_)))
                          (_%hd3657337251%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3657237247%_))))
                      (if (gx#stx-pair? _%tl3657437254%_)
                          (let ((_%e3657537257%_
                                 (gx#syntax-e _%tl3657437254%_)))
                            (let ((_%tl3657737264%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3657537257%_)))
                                  (_%hd3657637261%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3657537257%_))))
                              (if (gx#stx-pair? _%hd3657637261%_)
                                  (let ((_%e3657837267%_
                                         (gx#syntax-e _%hd3657637261%_)))
                                    (let ((_%tl3658037274%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3657837267%_)))
                                          (_%hd3657937271%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3657837267%_))))
                                      (if (gx#identifier? _%hd3657937271%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39963_|
                                               _%hd3657937271%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3658037274%_)
                                                  (let ((_%__splice3959139592%_
                                                         (gx#syntax-split-splice
                                                          _%tl3658037274%_
                                                          '0)))
                                                    (let ((_%tl3658337280%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3959139592%_
                                                              '1)))
                                                          (_%target3658137277%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3959139592%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3658337280%_)
                                                          (_%__match3963939640%_
                                                           _%e3657237247%_
                                                           _%hd3657337251%_
                                                           _%tl3657437254%_
                                                           _%e3657537257%_
                                                           _%hd3657637261%_
                                                           _%tl3657737264%_
                                                           _%e3657837267%_
                                                           _%hd3657937271%_
                                                           _%tl3658037274%_
                                                           _%__splice3959139592%_
                                                           _%target3658137277%_
                                                           _%tl3658337280%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3657737264%_)
                                                              (let ((_%e3664337023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3657737264%_)))
                        (let ((_%tl3664537030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3664337023%_)))
                              (_%hd3664437027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3664337023%_))))
                          (if (gx#stx-null? _%tl3664537030%_)
                              (_%__kont3959939600%_
                               _%hd3664437027%_
                               _%hd3657637261%_)
                              (if (gx#identifier? _%hd3664437027%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39961_|
                                       _%hd3664437027%_)
                                      (if (gx#stx-pair? _%tl3664537030%_)
                                          (let ((_%e3666636923%_
                                                 (gx#syntax-e
                                                  _%tl3664537030%_)))
                                            (let ((_%tl3666836930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3666636923%_)))
                                                  (_%hd3666736927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3666636923%_))))
                                              (if (gx#stx-null?
                                                   _%tl3666836930%_)
                                                  (_%__kont3960339604%_
                                                   _%hd3666736927%_
                                                   _%hd3657637261%_
                                                   _%hd3657337251%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656736713%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656736713%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656736713%_)))
                                  (if (gx#stx-datum? _%hd3664437027%_)
                                      (let ((_%e3668136850%_
                                             (gx#stx-e _%hd3664437027%_)))
                                        (if (equal? _%e3668136850%_ '::)
                                            (if (gx#stx-pair? _%tl3664537030%_)
                                                (let ((_%e3668236854%_
                                                       (gx#syntax-e
                                                        _%tl3664537030%_)))
                                                  (let ((_%tl3668436861%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3668236854%_)))
                                                        (_%hd3668336858%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3668236854%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3668436861%_)
                                                        (_%__kont3960539606%_
                                                         _%hd3668336858%_
                                                         _%hd3657637261%_
                                                         _%hd3657337251%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3668436861%_)
                                                            (let ((_%e3670236764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3668436861%_)))
                      (let ((_%tl3670436771%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3670236764%_)))
                            (_%hd3670336768%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3670236764%_))))
                        (if (gx#identifier? _%hd3670336768%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39962_|
                                 _%hd3670336768%_)
                                (if (gx#stx-pair? _%tl3670436771%_)
                                    (let ((_%e3670536774%_
                                           (gx#syntax-e _%tl3670436771%_)))
                                      (let ((_%tl3670736781%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3670536774%_)))
                                            (_%hd3670636778%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3670536774%_))))
                                        (if (gx#stx-null? _%tl3670736781%_)
                                            (_%__kont3960739608%_
                                             _%hd3670636778%_
                                             _%hd3668336858%_
                                             _%hd3657637261%_
                                             _%hd3657337251%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656736713%_)))
                            (let () (declare (not safe)) (_%g3656736713%_)))))
                    (let () (declare (not safe)) (_%g3656736713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656736713%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656736713%_)))))))
                      (if (gx#stx-null? _%tl3657737264%_)
                          (_%__kont3960139602%_
                           _%hd3657637261%_
                           _%hd3657337251%_)
                          (let () (declare (not safe)) (_%g3656736713%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3657737264%_)
                                                      (let ((_%e3664337023%_
                                                             (gx#syntax-e
                                                              _%tl3657737264%_)))
                                                        (let ((_%tl3664537030%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3664337023%_)))
                      (_%hd3664437027%_
                       (let () (declare (not safe)) (##car _%e3664337023%_))))
                  (if (gx#stx-null? _%tl3664537030%_)
                      (_%__kont3959939600%_ _%hd3664437027%_ _%hd3657637261%_)
                      (if (gx#identifier? _%hd3664437027%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39961_|
                               _%hd3664437027%_)
                              (if (gx#stx-pair? _%tl3664537030%_)
                                  (let ((_%e3666636923%_
                                         (gx#syntax-e _%tl3664537030%_)))
                                    (let ((_%tl3666836930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3666636923%_)))
                                          (_%hd3666736927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3666636923%_))))
                                      (if (gx#stx-null? _%tl3666836930%_)
                                          (_%__kont3960339604%_
                                           _%hd3666736927%_
                                           _%hd3657637261%_
                                           _%hd3657337251%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656736713%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656736713%_)))
                              (let () (declare (not safe)) (_%g3656736713%_)))
                          (if (gx#stx-datum? _%hd3664437027%_)
                              (let ((_%e3668136850%_
                                     (gx#stx-e _%hd3664437027%_)))
                                (if (equal? _%e3668136850%_ '::)
                                    (if (gx#stx-pair? _%tl3664537030%_)
                                        (let ((_%e3668236854%_
                                               (gx#syntax-e _%tl3664537030%_)))
                                          (let ((_%tl3668436861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3668236854%_)))
                                                (_%hd3668336858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3668236854%_))))
                                            (if (gx#stx-null? _%tl3668436861%_)
                                                (_%__kont3960539606%_
                                                 _%hd3668336858%_
                                                 _%hd3657637261%_
                                                 _%hd3657337251%_)
                                                (if (gx#stx-pair?
                                                     _%tl3668436861%_)
                                                    (let ((_%e3670236764%_
                                                           (gx#syntax-e
                                                            _%tl3668436861%_)))
                                                      (let ((_%tl3670436771%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670236764%_)))
                    (_%hd3670336768%_
                     (let () (declare (not safe)) (##car _%e3670236764%_))))
                (if (gx#identifier? _%hd3670336768%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39962_|
                         _%hd3670336768%_)
                        (if (gx#stx-pair? _%tl3670436771%_)
                            (let ((_%e3670536774%_
                                   (gx#syntax-e _%tl3670436771%_)))
                              (let ((_%tl3670736781%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3670536774%_)))
                                    (_%hd3670636778%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3670536774%_))))
                                (if (gx#stx-null? _%tl3670736781%_)
                                    (_%__kont3960739608%_
                                     _%hd3670636778%_
                                     _%hd3668336858%_
                                     _%hd3657637261%_
                                     _%hd3657337251%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_)))))
                            (let () (declare (not safe)) (_%g3656736713%_)))
                        (let () (declare (not safe)) (_%g3656736713%_)))
                    (let () (declare (not safe)) (_%g3656736713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3656736713%_)))))))
              (if (gx#stx-null? _%tl3657737264%_)
                  (_%__kont3960139602%_ _%hd3657637261%_ _%hd3657337251%_)
                  (let () (declare (not safe)) (_%g3656736713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39964_|
                                                   _%hd3657937271%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3658037274%_)
                                                      (let ((_%__splice3959539596%_
                                                             (gx#syntax-split-splice
                                                              _%tl3658037274%_
                                                              '0)))
                                                        (let ((_%tl3660737170%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3959539596%_ '1)))
                      (_%target3660537167%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3959539596%_ '0))))
                  (if (gx#stx-null? _%tl3660737170%_)
                      (_%__match3966939670%_
                       _%e3657237247%_
                       _%hd3657337251%_
                       _%tl3657437254%_
                       _%e3657537257%_
                       _%hd3657637261%_
                       _%tl3657737264%_
                       _%e3657837267%_
                       _%hd3657937271%_
                       _%tl3658037274%_
                       _%__splice3959539596%_
                       _%target3660537167%_
                       _%tl3660737170%_)
                      (if (gx#stx-pair? _%tl3657737264%_)
                          (let ((_%e3664337023%_
                                 (gx#syntax-e _%tl3657737264%_)))
                            (let ((_%tl3664537030%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3664337023%_)))
                                  (_%hd3664437027%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3664337023%_))))
                              (if (gx#stx-null? _%tl3664537030%_)
                                  (_%__kont3959939600%_
                                   _%hd3664437027%_
                                   _%hd3657637261%_)
                                  (if (gx#identifier? _%hd3664437027%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39961_|
                                           _%hd3664437027%_)
                                          (if (gx#stx-pair? _%tl3664537030%_)
                                              (let ((_%e3666636923%_
                                                     (gx#syntax-e
                                                      _%tl3664537030%_)))
                                                (let ((_%tl3666836930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3666636923%_)))
                                                      (_%hd3666736927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3666636923%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3666836930%_)
                                                      (_%__kont3960339604%_
                                                       _%hd3666736927%_
                                                       _%hd3657637261%_
                                                       _%hd3657337251%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3656736713%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656736713%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656736713%_)))
                                      (if (gx#stx-datum? _%hd3664437027%_)
                                          (let ((_%e3668136850%_
                                                 (gx#stx-e _%hd3664437027%_)))
                                            (if (equal? _%e3668136850%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3664537030%_)
                                                    (let ((_%e3668236854%_
                                                           (gx#syntax-e
                                                            _%tl3664537030%_)))
                                                      (let ((_%tl3668436861%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3668236854%_)))
                    (_%hd3668336858%_
                     (let () (declare (not safe)) (##car _%e3668236854%_))))
                (if (gx#stx-null? _%tl3668436861%_)
                    (_%__kont3960539606%_
                     _%hd3668336858%_
                     _%hd3657637261%_
                     _%hd3657337251%_)
                    (if (gx#stx-pair? _%tl3668436861%_)
                        (let ((_%e3670236764%_ (gx#syntax-e _%tl3668436861%_)))
                          (let ((_%tl3670436771%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3670236764%_)))
                                (_%hd3670336768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3670236764%_))))
                            (if (gx#identifier? _%hd3670336768%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39962_|
                                     _%hd3670336768%_)
                                    (if (gx#stx-pair? _%tl3670436771%_)
                                        (let ((_%e3670536774%_
                                               (gx#syntax-e _%tl3670436771%_)))
                                          (let ((_%tl3670736781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3670536774%_)))
                                                (_%hd3670636778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3670536774%_))))
                                            (if (gx#stx-null? _%tl3670736781%_)
                                                (_%__kont3960739608%_
                                                 _%hd3670636778%_
                                                 _%hd3668336858%_
                                                 _%hd3657637261%_
                                                 _%hd3657337251%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656736713%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656736713%_)))))
                        (let () (declare (not safe)) (_%g3656736713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656736713%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656736713%_)))))))
                          (if (gx#stx-null? _%tl3657737264%_)
                              (_%__kont3960139602%_
                               _%hd3657637261%_
                               _%hd3657337251%_)
                              (let ()
                                (declare (not safe))
                                (_%g3656736713%_)))))))
              (if (gx#stx-pair? _%tl3657737264%_)
                  (let ((_%e3664337023%_ (gx#syntax-e _%tl3657737264%_)))
                    (let ((_%tl3664537030%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3664337023%_)))
                          (_%hd3664437027%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3664337023%_))))
                      (if (gx#stx-null? _%tl3664537030%_)
                          (_%__kont3959939600%_
                           _%hd3664437027%_
                           _%hd3657637261%_)
                          (if (gx#identifier? _%hd3664437027%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39961_|
                                   _%hd3664437027%_)
                                  (if (gx#stx-pair? _%tl3664537030%_)
                                      (let ((_%e3666636923%_
                                             (gx#syntax-e _%tl3664537030%_)))
                                        (let ((_%tl3666836930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3666636923%_)))
                                              (_%hd3666736927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3666636923%_))))
                                          (if (gx#stx-null? _%tl3666836930%_)
                                              (_%__kont3960339604%_
                                               _%hd3666736927%_
                                               _%hd3657637261%_
                                               _%hd3657337251%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656736713%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656736713%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656736713%_)))
                              (if (gx#stx-datum? _%hd3664437027%_)
                                  (let ((_%e3668136850%_
                                         (gx#stx-e _%hd3664437027%_)))
                                    (if (equal? _%e3668136850%_ '::)
                                        (if (gx#stx-pair? _%tl3664537030%_)
                                            (let ((_%e3668236854%_
                                                   (gx#syntax-e
                                                    _%tl3664537030%_)))
                                              (let ((_%tl3668436861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3668236854%_)))
                                                    (_%hd3668336858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3668236854%_))))
                                                (if (gx#stx-null?
                                                     _%tl3668436861%_)
                                                    (_%__kont3960539606%_
                                                     _%hd3668336858%_
                                                     _%hd3657637261%_
                                                     _%hd3657337251%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3668436861%_)
                                                        (let ((_%e3670236764%_
                                                               (gx#syntax-e
                                                                _%tl3668436861%_)))
                                                          (let ((_%tl3670436771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3670236764%_)))
                        (_%hd3670336768%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3670236764%_))))
                    (if (gx#identifier? _%hd3670336768%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39962_|
                             _%hd3670336768%_)
                            (if (gx#stx-pair? _%tl3670436771%_)
                                (let ((_%e3670536774%_
                                       (gx#syntax-e _%tl3670436771%_)))
                                  (let ((_%tl3670736781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3670536774%_)))
                                        (_%hd3670636778%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3670536774%_))))
                                    (if (gx#stx-null? _%tl3670736781%_)
                                        (_%__kont3960739608%_
                                         _%hd3670636778%_
                                         _%hd3668336858%_
                                         _%hd3657637261%_
                                         _%hd3657337251%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656736713%_)))
                            (let () (declare (not safe)) (_%g3656736713%_)))
                        (let () (declare (not safe)) (_%g3656736713%_)))))
                (let () (declare (not safe)) (_%g3656736713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656736713%_)))))))
                  (if (gx#stx-null? _%tl3657737264%_)
                      (_%__kont3960139602%_ _%hd3657637261%_ _%hd3657337251%_)
                      (let () (declare (not safe)) (_%g3656736713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39965_|
                                                       _%hd3657937271%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3658037274%_)
                                                          (let ((_%e3662937087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3658037274%_)))
                    (let ((_%tl3663137094%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3662937087%_)))
                          (_%hd3663037091%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3662937087%_))))
                      (if (gx#stx-null? _%tl3663137094%_)
                          (if (gx#stx-pair? _%tl3657737264%_)
                              (let ((_%e3663237097%_
                                     (gx#syntax-e _%tl3657737264%_)))
                                (let ((_%tl3663437104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3663237097%_)))
                                      (_%hd3663337101%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3663237097%_))))
                                  (if (gx#stx-null? _%tl3663437104%_)
                                      (_%__kont3959739598%_
                                       _%hd3663337101%_
                                       _%hd3663037091%_
                                       _%hd3657337251%_)
                                      (if (gx#identifier? _%hd3663337101%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39961_|
                                               _%hd3663337101%_)
                                              (if (gx#stx-pair?
                                                   _%tl3663437104%_)
                                                  (let ((_%e3666636923%_
                                                         (gx#syntax-e
                                                          _%tl3663437104%_)))
                                                    (let ((_%tl3666836930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3666636923%_)))
                                                          (_%hd3666736927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3666636923%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3666836930%_)
                                                          (_%__kont3960339604%_
                                                           _%hd3666736927%_
                                                           _%hd3657637261%_
                                                           _%hd3657337251%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3656736713%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656736713%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656736713%_)))
                                          (if (gx#stx-datum? _%hd3663337101%_)
                                              (let ((_%e3668136850%_
                                                     (gx#stx-e
                                                      _%hd3663337101%_)))
                                                (if (equal? _%e3668136850%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3663437104%_)
                                                        (let ((_%e3668236854%_
                                                               (gx#syntax-e
                                                                _%tl3663437104%_)))
                                                          (let ((_%tl3668436861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3668236854%_)))
                        (_%hd3668336858%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3668236854%_))))
                    (if (gx#stx-null? _%tl3668436861%_)
                        (_%__kont3960539606%_
                         _%hd3668336858%_
                         _%hd3657637261%_
                         _%hd3657337251%_)
                        (if (gx#stx-pair? _%tl3668436861%_)
                            (let ((_%e3670236764%_
                                   (gx#syntax-e _%tl3668436861%_)))
                              (let ((_%tl3670436771%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3670236764%_)))
                                    (_%hd3670336768%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3670236764%_))))
                                (if (gx#identifier? _%hd3670336768%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39962_|
                                         _%hd3670336768%_)
                                        (if (gx#stx-pair? _%tl3670436771%_)
                                            (let ((_%e3670536774%_
                                                   (gx#syntax-e
                                                    _%tl3670436771%_)))
                                              (let ((_%tl3670736781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670536774%_)))
                                                    (_%hd3670636778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670536774%_))))
                                                (if (gx#stx-null?
                                                     _%tl3670736781%_)
                                                    (_%__kont3960739608%_
                                                     _%hd3670636778%_
                                                     _%hd3668336858%_
                                                     _%hd3657637261%_
                                                     _%hd3657337251%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_)))))
                            (let () (declare (not safe)) (_%g3656736713%_))))))
                (let () (declare (not safe)) (_%g3656736713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656736713%_)))))))
                              (if (gx#stx-null? _%tl3657737264%_)
                                  (_%__kont3960139602%_
                                   _%hd3657637261%_
                                   _%hd3657337251%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656736713%_))))
                          (if (gx#stx-pair? _%tl3657737264%_)
                              (let ((_%e3664337023%_
                                     (gx#syntax-e _%tl3657737264%_)))
                                (let ((_%tl3664537030%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3664337023%_)))
                                      (_%hd3664437027%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3664337023%_))))
                                  (if (gx#stx-null? _%tl3664537030%_)
                                      (_%__kont3959939600%_
                                       _%hd3664437027%_
                                       _%hd3657637261%_)
                                      (if (gx#identifier? _%hd3664437027%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39961_|
                                               _%hd3664437027%_)
                                              (if (gx#stx-pair?
                                                   _%tl3664537030%_)
                                                  (let ((_%e3666636923%_
                                                         (gx#syntax-e
                                                          _%tl3664537030%_)))
                                                    (let ((_%tl3666836930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3666636923%_)))
                                                          (_%hd3666736927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3666636923%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3666836930%_)
                                                          (_%__kont3960339604%_
                                                           _%hd3666736927%_
                                                           _%hd3657637261%_
                                                           _%hd3657337251%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3656736713%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656736713%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656736713%_)))
                                          (if (gx#stx-datum? _%hd3664437027%_)
                                              (let ((_%e3668136850%_
                                                     (gx#stx-e
                                                      _%hd3664437027%_)))
                                                (if (equal? _%e3668136850%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3664537030%_)
                                                        (let ((_%e3668236854%_
                                                               (gx#syntax-e
                                                                _%tl3664537030%_)))
                                                          (let ((_%tl3668436861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3668236854%_)))
                        (_%hd3668336858%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3668236854%_))))
                    (if (gx#stx-null? _%tl3668436861%_)
                        (_%__kont3960539606%_
                         _%hd3668336858%_
                         _%hd3657637261%_
                         _%hd3657337251%_)
                        (if (gx#stx-pair? _%tl3668436861%_)
                            (let ((_%e3670236764%_
                                   (gx#syntax-e _%tl3668436861%_)))
                              (let ((_%tl3670436771%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3670236764%_)))
                                    (_%hd3670336768%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3670236764%_))))
                                (if (gx#identifier? _%hd3670336768%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39962_|
                                         _%hd3670336768%_)
                                        (if (gx#stx-pair? _%tl3670436771%_)
                                            (let ((_%e3670536774%_
                                                   (gx#syntax-e
                                                    _%tl3670436771%_)))
                                              (let ((_%tl3670736781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670536774%_)))
                                                    (_%hd3670636778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670536774%_))))
                                                (if (gx#stx-null?
                                                     _%tl3670736781%_)
                                                    (_%__kont3960739608%_
                                                     _%hd3670636778%_
                                                     _%hd3668336858%_
                                                     _%hd3657637261%_
                                                     _%hd3657337251%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_)))))
                            (let () (declare (not safe)) (_%g3656736713%_))))))
                (let () (declare (not safe)) (_%g3656736713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656736713%_)))))))
                              (if (gx#stx-null? _%tl3657737264%_)
                                  (_%__kont3960139602%_
                                   _%hd3657637261%_
                                   _%hd3657337251%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656736713%_)))))))
                  (if (gx#stx-pair? _%tl3657737264%_)
                      (let ((_%e3664337023%_ (gx#syntax-e _%tl3657737264%_)))
                        (let ((_%tl3664537030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3664337023%_)))
                              (_%hd3664437027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3664337023%_))))
                          (if (gx#stx-null? _%tl3664537030%_)
                              (_%__kont3959939600%_
                               _%hd3664437027%_
                               _%hd3657637261%_)
                              (if (gx#identifier? _%hd3664437027%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39961_|
                                       _%hd3664437027%_)
                                      (if (gx#stx-pair? _%tl3664537030%_)
                                          (let ((_%e3666636923%_
                                                 (gx#syntax-e
                                                  _%tl3664537030%_)))
                                            (let ((_%tl3666836930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3666636923%_)))
                                                  (_%hd3666736927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3666636923%_))))
                                              (if (gx#stx-null?
                                                   _%tl3666836930%_)
                                                  (_%__kont3960339604%_
                                                   _%hd3666736927%_
                                                   _%hd3657637261%_
                                                   _%hd3657337251%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656736713%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656736713%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656736713%_)))
                                  (if (gx#stx-datum? _%hd3664437027%_)
                                      (let ((_%e3668136850%_
                                             (gx#stx-e _%hd3664437027%_)))
                                        (if (equal? _%e3668136850%_ '::)
                                            (if (gx#stx-pair? _%tl3664537030%_)
                                                (let ((_%e3668236854%_
                                                       (gx#syntax-e
                                                        _%tl3664537030%_)))
                                                  (let ((_%tl3668436861%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3668236854%_)))
                                                        (_%hd3668336858%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3668236854%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3668436861%_)
                                                        (_%__kont3960539606%_
                                                         _%hd3668336858%_
                                                         _%hd3657637261%_
                                                         _%hd3657337251%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3668436861%_)
                                                            (let ((_%e3670236764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3668436861%_)))
                      (let ((_%tl3670436771%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3670236764%_)))
                            (_%hd3670336768%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3670236764%_))))
                        (if (gx#identifier? _%hd3670336768%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39962_|
                                 _%hd3670336768%_)
                                (if (gx#stx-pair? _%tl3670436771%_)
                                    (let ((_%e3670536774%_
                                           (gx#syntax-e _%tl3670436771%_)))
                                      (let ((_%tl3670736781%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3670536774%_)))
                                            (_%hd3670636778%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3670536774%_))))
                                        (if (gx#stx-null? _%tl3670736781%_)
                                            (_%__kont3960739608%_
                                             _%hd3670636778%_
                                             _%hd3668336858%_
                                             _%hd3657637261%_
                                             _%hd3657337251%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656736713%_)))
                            (let () (declare (not safe)) (_%g3656736713%_)))))
                    (let () (declare (not safe)) (_%g3656736713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656736713%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656736713%_)))))))
                      (if (gx#stx-null? _%tl3657737264%_)
                          (_%__kont3960139602%_
                           _%hd3657637261%_
                           _%hd3657337251%_)
                          (let () (declare (not safe)) (_%g3656736713%_)))))
              (if (gx#stx-pair? _%tl3657737264%_)
                  (let ((_%e3664337023%_ (gx#syntax-e _%tl3657737264%_)))
                    (let ((_%tl3664537030%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3664337023%_)))
                          (_%hd3664437027%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3664337023%_))))
                      (if (gx#stx-null? _%tl3664537030%_)
                          (_%__kont3959939600%_
                           _%hd3664437027%_
                           _%hd3657637261%_)
                          (if (gx#identifier? _%hd3664437027%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39961_|
                                   _%hd3664437027%_)
                                  (if (gx#stx-pair? _%tl3664537030%_)
                                      (let ((_%e3666636923%_
                                             (gx#syntax-e _%tl3664537030%_)))
                                        (let ((_%tl3666836930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3666636923%_)))
                                              (_%hd3666736927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3666636923%_))))
                                          (if (gx#stx-null? _%tl3666836930%_)
                                              (_%__kont3960339604%_
                                               _%hd3666736927%_
                                               _%hd3657637261%_
                                               _%hd3657337251%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3656736713%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3656736713%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656736713%_)))
                              (if (gx#stx-datum? _%hd3664437027%_)
                                  (let ((_%e3668136850%_
                                         (gx#stx-e _%hd3664437027%_)))
                                    (if (equal? _%e3668136850%_ '::)
                                        (if (gx#stx-pair? _%tl3664537030%_)
                                            (let ((_%e3668236854%_
                                                   (gx#syntax-e
                                                    _%tl3664537030%_)))
                                              (let ((_%tl3668436861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3668236854%_)))
                                                    (_%hd3668336858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3668236854%_))))
                                                (if (gx#stx-null?
                                                     _%tl3668436861%_)
                                                    (_%__kont3960539606%_
                                                     _%hd3668336858%_
                                                     _%hd3657637261%_
                                                     _%hd3657337251%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3668436861%_)
                                                        (let ((_%e3670236764%_
                                                               (gx#syntax-e
                                                                _%tl3668436861%_)))
                                                          (let ((_%tl3670436771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3670236764%_)))
                        (_%hd3670336768%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3670236764%_))))
                    (if (gx#identifier? _%hd3670336768%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39962_|
                             _%hd3670336768%_)
                            (if (gx#stx-pair? _%tl3670436771%_)
                                (let ((_%e3670536774%_
                                       (gx#syntax-e _%tl3670436771%_)))
                                  (let ((_%tl3670736781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3670536774%_)))
                                        (_%hd3670636778%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3670536774%_))))
                                    (if (gx#stx-null? _%tl3670736781%_)
                                        (_%__kont3960739608%_
                                         _%hd3670636778%_
                                         _%hd3668336858%_
                                         _%hd3657637261%_
                                         _%hd3657337251%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656736713%_)))
                            (let () (declare (not safe)) (_%g3656736713%_)))
                        (let () (declare (not safe)) (_%g3656736713%_)))))
                (let () (declare (not safe)) (_%g3656736713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3656736713%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656736713%_)))))))
                  (if (gx#stx-null? _%tl3657737264%_)
                      (_%__kont3960139602%_ _%hd3657637261%_ _%hd3657337251%_)
                      (let () (declare (not safe)) (_%g3656736713%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3657737264%_)
                                              (let ((_%e3664337023%_
                                                     (gx#syntax-e
                                                      _%tl3657737264%_)))
                                                (let ((_%tl3664537030%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3664337023%_)))
                                                      (_%hd3664437027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3664337023%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3664537030%_)
                                                      (_%__kont3959939600%_
                                                       _%hd3664437027%_
                                                       _%hd3657637261%_)
                                                      (if (gx#identifier?
                                                           _%hd3664437027%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39961_|
                                                               _%hd3664437027%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3664537030%_)
                          (let ((_%e3666636923%_
                                 (gx#syntax-e _%tl3664537030%_)))
                            (let ((_%tl3666836930%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3666636923%_)))
                                  (_%hd3666736927%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3666636923%_))))
                              (if (gx#stx-null? _%tl3666836930%_)
                                  (_%__kont3960339604%_
                                   _%hd3666736927%_
                                   _%hd3657637261%_
                                   _%hd3657337251%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3656736713%_)))))
                          (let () (declare (not safe)) (_%g3656736713%_)))
                      (let () (declare (not safe)) (_%g3656736713%_)))
                  (if (gx#stx-datum? _%hd3664437027%_)
                      (let ((_%e3668136850%_ (gx#stx-e _%hd3664437027%_)))
                        (if (equal? _%e3668136850%_ '::)
                            (if (gx#stx-pair? _%tl3664537030%_)
                                (let ((_%e3668236854%_
                                       (gx#syntax-e _%tl3664537030%_)))
                                  (let ((_%tl3668436861%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3668236854%_)))
                                        (_%hd3668336858%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3668236854%_))))
                                    (if (gx#stx-null? _%tl3668436861%_)
                                        (_%__kont3960539606%_
                                         _%hd3668336858%_
                                         _%hd3657637261%_
                                         _%hd3657337251%_)
                                        (if (gx#stx-pair? _%tl3668436861%_)
                                            (let ((_%e3670236764%_
                                                   (gx#syntax-e
                                                    _%tl3668436861%_)))
                                              (let ((_%tl3670436771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670236764%_)))
                                                    (_%hd3670336768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670236764%_))))
                                                (if (gx#identifier?
                                                     _%hd3670336768%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39962_|
                                                         _%hd3670336768%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3670436771%_)
                                                            (let ((_%e3670536774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3670436771%_)))
                      (let ((_%tl3670736781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3670536774%_)))
                            (_%hd3670636778%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3670536774%_))))
                        (if (gx#stx-null? _%tl3670736781%_)
                            (_%__kont3960739608%_
                             _%hd3670636778%_
                             _%hd3668336858%_
                             _%hd3657637261%_
                             _%hd3657337251%_)
                            (let () (declare (not safe)) (_%g3656736713%_)))))
                    (let () (declare (not safe)) (_%g3656736713%_)))
                (let () (declare (not safe)) (_%g3656736713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3656736713%_)))
                            (let () (declare (not safe)) (_%g3656736713%_))))
                      (let () (declare (not safe)) (_%g3656736713%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3657737264%_)
                                                  (_%__kont3960139602%_
                                                   _%hd3657637261%_
                                                   _%hd3657337251%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3656736713%_)))))))
                                  (if (gx#stx-pair? _%tl3657737264%_)
                                      (let ((_%e3664337023%_
                                             (gx#syntax-e _%tl3657737264%_)))
                                        (let ((_%tl3664537030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3664337023%_)))
                                              (_%hd3664437027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3664337023%_))))
                                          (if (gx#stx-null? _%tl3664537030%_)
                                              (_%__kont3959939600%_
                                               _%hd3664437027%_
                                               _%hd3657637261%_)
                                              (if (gx#identifier?
                                                   _%hd3664437027%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39961_|
                                                       _%hd3664437027%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3664537030%_)
                                                          (let ((_%e3666636923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3664537030%_)))
                    (let ((_%tl3666836930%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3666636923%_)))
                          (_%hd3666736927%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3666636923%_))))
                      (if (gx#stx-null? _%tl3666836930%_)
                          (_%__kont3960339604%_
                           _%hd3666736927%_
                           _%hd3657637261%_
                           _%hd3657337251%_)
                          (let () (declare (not safe)) (_%g3656736713%_)))))
                  (let () (declare (not safe)) (_%g3656736713%_)))
              (let () (declare (not safe)) (_%g3656736713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3664437027%_)
                                                      (let ((_%e3668136850%_
                                                             (gx#stx-e
                                                              _%hd3664437027%_)))
                                                        (if (equal? _%e3668136850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3664537030%_)
                        (let ((_%e3668236854%_ (gx#syntax-e _%tl3664537030%_)))
                          (let ((_%tl3668436861%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3668236854%_)))
                                (_%hd3668336858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3668236854%_))))
                            (if (gx#stx-null? _%tl3668436861%_)
                                (_%__kont3960539606%_
                                 _%hd3668336858%_
                                 _%hd3657637261%_
                                 _%hd3657337251%_)
                                (if (gx#stx-pair? _%tl3668436861%_)
                                    (let ((_%e3670236764%_
                                           (gx#syntax-e _%tl3668436861%_)))
                                      (let ((_%tl3670436771%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3670236764%_)))
                                            (_%hd3670336768%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3670236764%_))))
                                        (if (gx#identifier? _%hd3670336768%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39962_|
                                                 _%hd3670336768%_)
                                                (if (gx#stx-pair?
                                                     _%tl3670436771%_)
                                                    (let ((_%e3670536774%_
                                                           (gx#syntax-e
                                                            _%tl3670436771%_)))
                                                      (let ((_%tl3670736781%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670536774%_)))
                    (_%hd3670636778%_
                     (let () (declare (not safe)) (##car _%e3670536774%_))))
                (if (gx#stx-null? _%tl3670736781%_)
                    (_%__kont3960739608%_
                     _%hd3670636778%_
                     _%hd3668336858%_
                     _%hd3657637261%_
                     _%hd3657337251%_)
                    (let () (declare (not safe)) (_%g3656736713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3656736713%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3656736713%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3656736713%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3656736713%_))))))
                        (let () (declare (not safe)) (_%g3656736713%_)))
                    (let () (declare (not safe)) (_%g3656736713%_))))
              (let () (declare (not safe)) (_%g3656736713%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3657737264%_)
                                          (_%__kont3960139602%_
                                           _%hd3657637261%_
                                           _%hd3657337251%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3656736713%_)))))))
                          (let () (declare (not safe)) (_%g3656736713%_)))))
                  (let () (declare (not safe)) (_%g3656736713%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37356%_)
        (let* ((_%__stx3985439855%_ _%$stx37356%_)
               (_%g3736137395%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3985439855%_))))
          (let ((_%__kont3985739858%_
                 (lambda (_%L37499%_ _%L37501%_ _%L37502%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37502%_
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
                                       (cons _%L37501%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37499%_ '()))
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
                (_%__kont3985939860%_
                 (lambda (_%L37432%_ _%L37434%_ _%L37435%_)
                   (cons _%L37435%_
                         (cons _%L37434%_
                               (cons _%L37432%_
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
            (let ((_%__match3988739888%_
                   (lambda (_%e3736637459%_
                            _%hd3736737463%_
                            _%tl3736837466%_
                            _%e3736937469%_
                            _%hd3737037473%_
                            _%tl3737137476%_
                            _%e3737237479%_
                            _%hd3737337483%_
                            _%tl3737437486%_
                            _%e3737537489%_
                            _%hd3737637493%_
                            _%tl3737737496%_)
                     (let ((_%L37499%_ _%hd3737637493%_)
                           (_%L37501%_ _%hd3737337483%_)
                           (_%L37502%_ _%hd3737037473%_))
                       (if (gx#identifier? _%L37502%_)
                           (_%__kont3985739858%_
                            _%L37499%_
                            _%L37501%_
                            _%L37502%_)
                           (let () (declare (not safe)) (_%g3736137395%_)))))))
              (if (gx#stx-pair? _%__stx3985439855%_)
                  (let ((_%e3736637459%_ (gx#syntax-e _%__stx3985439855%_)))
                    (let ((_%tl3736837466%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3736637459%_)))
                          (_%hd3736737463%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3736637459%_))))
                      (if (gx#stx-pair? _%tl3736837466%_)
                          (let ((_%e3736937469%_
                                 (gx#syntax-e _%tl3736837466%_)))
                            (let ((_%tl3737137476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3736937469%_)))
                                  (_%hd3737037473%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3736937469%_))))
                              (if (gx#stx-pair? _%tl3737137476%_)
                                  (let ((_%e3737237479%_
                                         (gx#syntax-e _%tl3737137476%_)))
                                    (let ((_%tl3737437486%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3737237479%_)))
                                          (_%hd3737337483%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3737237479%_))))
                                      (if (gx#stx-pair? _%tl3737437486%_)
                                          (let ((_%e3737537489%_
                                                 (gx#syntax-e
                                                  _%tl3737437486%_)))
                                            (let ((_%tl3737737496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3737537489%_)))
                                                  (_%hd3737637493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3737537489%_))))
                                              (if (gx#stx-null?
                                                   _%tl3737737496%_)
                                                  (_%__match3988739888%_
                                                   _%e3736637459%_
                                                   _%hd3736737463%_
                                                   _%tl3736837466%_
                                                   _%e3736937469%_
                                                   _%hd3737037473%_
                                                   _%tl3737137476%_
                                                   _%e3737237479%_
                                                   _%hd3737337483%_
                                                   _%tl3737437486%_
                                                   _%e3737537489%_
                                                   _%hd3737637493%_
                                                   _%tl3737737496%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3736137395%_)))))
                                          (if (gx#stx-null? _%tl3737437486%_)
                                              (_%__kont3985939860%_
                                               _%hd3737337483%_
                                               _%hd3737037473%_
                                               _%hd3736737463%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3736137395%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3736137395%_)))))
                          (let () (declare (not safe)) (_%g3736137395%_)))))
                  (let () (declare (not safe)) (_%g3736137395%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37524%_)
        (let* ((_%g3752837543%_
                (lambda (_%g3752937539%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3752937539%_)))
               (_%g3752737586%_
                (lambda (_%g3752937547%_)
                  (if (gx#stx-pair? _%g3752937547%_)
                      (let ((_%e3753237550%_ (gx#syntax-e _%g3752937547%_)))
                        (let ((_%hd3753337554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3753237550%_)))
                              (_%tl3753437557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3753237550%_))))
                          (if (gx#stx-pair? _%tl3753437557%_)
                              (let ((_%e3753537560%_
                                     (gx#syntax-e _%tl3753437557%_)))
                                (let ((_%hd3753637564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3753537560%_)))
                                      (_%tl3753737567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3753537560%_))))
                                  ((lambda (_%L37570%_ _%L37572%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37572%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37570%_)
                                                       '()))))
                                   _%tl3753737567%_
                                   _%hd3753637564%_)))
                              (_%g3752837543%_ _%g3752937547%_))))
                      (_%g3752837543%_ _%g3752937547%_)))))
          (_%g3752737586%_ _%$stx37524%_))))))
