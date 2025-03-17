(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g39937_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39938_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39939_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39940_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39941_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39942_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39943_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39944_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39945_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39946_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39947_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39948_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39949_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39950_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39951_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39964_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39972_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39973_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39974_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g39979_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39980_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39981_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39982_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g39983_|
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
      (lambda _%$args35236%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args35236%_)))
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
      (lambda (_%stx35233%_)
        (if (gx#identifier? _%stx35233%_)
            (let ((__tmp39936 (gx#syntax-local-value _%stx35233%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp39936))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx33533%_ _%match-stx33535%_)
        (letrec ((_%parse133537%_
                  (lambda (_%hd33896%_)
                    (let* ((_%__stx3772437725%_ _%hd33896%_)
                           (_%g3392234064%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3772437725%_))))
                      (let ((_%__kont3772737728%_
                             (lambda (_%L34996%_ _%L34998%_)
                               (let* ((_%__stx3764437645%_ _%L34996%_)
                                      (_%g3501535048%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3764437645%_))))
                                 (let ((_%__kont3764737648%_
                                        (lambda ()
                                          (cons '?: (cons _%L34998%_ '()))))
                                       (_%__kont3764937650%_
                                        (lambda (_%L35189%_)
                                          (cons '?:
                                                (cons _%L34998%_
                                                      (cons (_%parse133537%_
                                                             _%L35189%_)
                                                            '())))))
                                       (_%__kont3765137652%_
                                        (lambda (_%L35159%_)
                                          (cons '?:
                                                (cons _%L34998%_
                                                      (cons '=>:
                                                            (cons (_%parse133537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L35159%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3765337654%_
                                        (lambda (_%L35110%_ _%L35112%_)
                                          (cons '?:
                                                (cons _%L34998%_
                                                      (cons '::
                                                            (cons _%L35112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse133537%_ _%L35110%_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont3765537656%_
                                        (lambda ()
                                          (_%parse-error33544%_ _%hd33896%_))))
                                   (let ((_%g3501135200%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx3764437645%_)
                                                (let ((_%e3501835179%_
                                                       (gx#syntax-e
                                                        _%__stx3764437645%_)))
                                                  (let ((_%tl3502035186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3501835179%_)))
                                                        (_%hd3501935183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3501835179%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3502035186%_)
                                                        (_%__kont3764937650%_
                                                         _%hd3501935183%_)
                                                        (if (gx#identifier?
                                                             _%hd3501935183%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39937_|
                         _%hd3501935183%_)
                        (if (gx#stx-pair? _%tl3502035186%_)
                            (let ((_%e3502535149%_
                                   (gx#syntax-e _%tl3502035186%_)))
                              (let ((_%tl3502735156%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3502535149%_)))
                                    (_%hd3502635153%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3502535149%_))))
                                (if (gx#stx-null? _%tl3502735156%_)
                                    (_%__kont3765137652%_ _%hd3502635153%_)
                                    (_%__kont3765537656%_))))
                            (_%__kont3765537656%_))
                        (_%__kont3765537656%_))
                    (if (gx#stx-datum? _%hd3501935183%_)
                        (let ((_%e3503335076%_ (gx#stx-e _%hd3501935183%_)))
                          (if (equal? _%e3503335076%_ '::)
                              (if (gx#stx-pair? _%tl3502035186%_)
                                  (let ((_%e3503435080%_
                                         (gx#syntax-e _%tl3502035186%_)))
                                    (let ((_%tl3503635087%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3503435080%_)))
                                          (_%hd3503535084%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3503435080%_))))
                                      (if (gx#stx-pair? _%tl3503635087%_)
                                          (let ((_%e3503735090%_
                                                 (gx#syntax-e
                                                  _%tl3503635087%_)))
                                            (let ((_%tl3503935097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3503735090%_)))
                                                  (_%hd3503835094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3503735090%_))))
                                              (if (gx#identifier?
                                                   _%hd3503835094%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39938_|
                                                       _%hd3503835094%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3503935097%_)
                                                          (let ((_%e3504035100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3503935097%_)))
                    (let ((_%tl3504235107%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3504035100%_)))
                          (_%hd3504135104%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3504035100%_))))
                      (if (gx#stx-null? _%tl3504235107%_)
                          (_%__kont3765337654%_
                           _%hd3504135104%_
                           _%hd3503535084%_)
                          (_%__kont3765537656%_))))
                  (_%__kont3765537656%_))
              (_%__kont3765537656%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont3765537656%_))))
                                          (_%__kont3765537656%_))))
                                  (_%__kont3765537656%_))
                              (_%__kont3765537656%_)))
                        (_%__kont3765537656%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont3765537656%_)))))
                                     (if (gx#stx-null? _%__stx3764437645%_)
                                         (_%__kont3764737648%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3501135200%_))))))))
                            (_%__kont3772937730%_
                             (lambda (_%L34901%_)
                               (let* ((_%__stx3762637627%_ _%L34901%_)
                                      (_%g3491334924%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3762637627%_))))
                                 (let ((_%__kont3762937630%_
                                        (lambda (_%L34952%_)
                                          (_%parse133537%_ _%L34952%_)))
                                       (_%__kont3763137632%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse133537%_
                                                 _%L34901%_)))))
                                   (if (gx#stx-pair? _%__stx3762637627%_)
                                       (let ((_%e3491634942%_
                                              (gx#syntax-e
                                               _%__stx3762637627%_)))
                                         (let ((_%tl3491834949%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3491634942%_)))
                                               (_%hd3491734946%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3491634942%_))))
                                           (if (gx#stx-null? _%tl3491834949%_)
                                               (_%__kont3762937630%_
                                                _%hd3491734946%_)
                                               (_%__kont3763137632%_))))
                                       (_%__kont3763137632%_))))))
                            (_%__kont3773137732%_
                             (lambda (_%L34816%_)
                               (let* ((_%__stx3760837609%_ _%L34816%_)
                                      (_%g3482834839%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3760837609%_))))
                                 (let ((_%__kont3761137612%_
                                        (lambda (_%L34867%_)
                                          (_%parse133537%_ _%L34867%_)))
                                       (_%__kont3761337614%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse133537%_
                                                 _%L34816%_)))))
                                   (if (gx#stx-pair? _%__stx3760837609%_)
                                       (let ((_%e3483134857%_
                                              (gx#syntax-e
                                               _%__stx3760837609%_)))
                                         (let ((_%tl3483334864%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3483134857%_)))
                                               (_%hd3483234861%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3483134857%_))))
                                           (if (gx#stx-null? _%tl3483334864%_)
                                               (_%__kont3761137612%_
                                                _%hd3483234861%_)
                                               (_%__kont3761337614%_))))
                                       (_%__kont3761337614%_))))))
                            (_%__kont3773337734%_
                             (lambda (_%L34786%_)
                               (cons 'not:
                                     (cons (_%parse133537%_ _%L34786%_) '()))))
                            (_%__kont3773537736%_
                             (lambda (_%L34742%_ _%L34744%_)
                               (cons 'cons:
                                     (cons (_%parse133537%_ _%L34744%_)
                                           (cons (_%parse133537%_ _%L34742%_)
                                                 '())))))
                            (_%__kont3773737738%_
                             (lambda (_%L34686%_ _%L34688%_ _%L34689%_)
                               (if (gx#stx-null? _%L34686%_)
                                   (cons 'cons:
                                         (cons (_%parse133537%_ _%L34689%_)
                                               (cons (_%parse133537%_
                                                      _%L34688%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse133537%_ _%L34689%_)
                                               (cons (_%parse133537%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%L34688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L34686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont3773937740%_
                             (lambda (_%L34638%_)
                               (_%parse-list33539%_ _%L34638%_)))
                            (_%__kont3774137742%_
                             (lambda (_%L34608%_)
                               (cons 'box:
                                     (cons (_%parse133537%_ _%L34608%_) '()))))
                            (_%__kont3774337744%_
                             (lambda (_%L34571%_)
                               (cons 'box:
                                     (cons (_%parse133537%_ _%L34571%_) '()))))
                            (_%__kont3774537746%_
                             (lambda (_%L34547%_)
                               (_%parse133537%_ _%L34547%_)))
                            (_%__kont3774737748%_
                             (lambda (_%L34509%_)
                               (cons 'values:
                                     (cons (_%parse-vector33540%_ _%L34509%_)
                                           '()))))
                            (_%__kont3774937750%_
                             (lambda (_%L34481%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33540%_ _%L34481%_)
                                           '()))))
                            (_%__kont3775137752%_
                             (lambda (_%L34442%_)
                               (cons 'vector:
                                     (cons (_%parse-vector33540%_
                                            (foldr (lambda (_%g3445534458%_
                                                            _%g3445634461%_)
                                                     (cons _%g3445534458%_
                                                           _%g3445634461%_))
                                                   '()
                                                   _%L34442%_))
                                           '()))))
                            (_%__kont3775537756%_
                             (lambda (_%L34388%_ _%L34390%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _%L34390%_)
                                           (cons (_%parse-vector33540%_
                                                  _%L34388%_)
                                                 '())))))
                            (_%__kont3775737758%_
                             (lambda (_%L34358%_ _%L34360%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _%L34360%_)
                                           (cons (_%parse-class-body33542%_
                                                  _%L34358%_)
                                                 '())))))
                            (_%__kont3775937760%_
                             (lambda (_%L34318%_ _%L34320%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%L34320%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%L34318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont3776137762%_
                             (lambda (_%L34278%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34278%_) '()))))
                            (_%__kont3776337764%_
                             (lambda (_%L34238%_)
                               (_%parse-qq33543%_ _%L34238%_)))
                            (_%__kont3776537766%_
                             (lambda (_%L34194%_ _%L34196%_)
                               (cons 'apply:
                                     (cons _%L34196%_
                                           (cons (_%parse133537%_ _%L34194%_)
                                                 '())))))
                            (_%__kont3776737768%_
                             (lambda (_%L34142%_)
                               (_%parse133537%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%L34142%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd33896%_)
                                  (let ((_%$e34153%_
                                         (gx#stx-source _%hd33896%_)))
                                    (if _%$e34153%_
                                        _%$e34153%_
                                        (gx#stx-source _%stx33533%_))))))))
                            (_%__kont3776937770%_
                             (lambda (_%L34116%_) (cons 'any: '())))
                            (_%__kont3777137772%_
                             (lambda (_%L34100%_)
                               (cons 'var: (cons _%L34100%_ '()))))
                            (_%__kont3777337774%_
                             (lambda (_%L34082%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%L34082%_) '()))))
                            (_%__kont3777537776%_
                             (lambda () (_%parse-error33544%_ _%hd33896%_))))
                        (let* ((_%g3392034093%_
                                (lambda ()
                                  (let ((_%L34082%_ _%__stx3772437725%_))
                                    (if (gx#stx-datum? _%L34082%_)
                                        (_%__kont3777337774%_ _%L34082%_)
                                        (_%__kont3777537776%_)))))
                               (_%g3391934109%_
                                (lambda ()
                                  (let ((_%L34100%_ _%__stx3772437725%_))
                                    (if (and (gx#identifier? _%L34100%_)
                                             (not (gx#ellipsis? _%L34100%_)))
                                        (_%__kont3777137772%_ _%L34100%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3392034093%_))))))
                               (_%g3391834125%_
                                (lambda ()
                                  (let ((_%L34116%_ _%__stx3772437725%_))
                                    (if (gx#underscore? _%L34116%_)
                                        (_%__kont3776937770%_ _%L34116%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3391934109%_))))))
                               (_%__match3805138052%_
                                (lambda (_%e3405334132%_
                                         _%hd3405434136%_
                                         _%tl3405534139%_)
                                  (let ((_%L34142%_ _%hd3405434136%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%L34142%_)
                                        (_%__kont3776737768%_ _%L34142%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3391834125%_))))))
                               (_%__match3798537986%_
                                (lambda (_%e3402134298%_
                                         _%hd3402234302%_
                                         _%tl3402334305%_
                                         _%e3402434308%_
                                         _%hd3402534312%_
                                         _%tl3402634315%_)
                                  (let ((_%L34318%_ _%hd3402534312%_)
                                        (_%L34320%_ _%hd3402234302%_))
                                    (if (and (gx#identifier? _%L34320%_)
                                             (or (gx#free-identifier=?
                                                  _%L34320%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%L34320%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%L34320%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont3775937760%_
                                         _%L34318%_
                                         _%L34320%_)
                                        (if (gx#identifier? _%hd3402234302%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39939_|
                                                 _%hd3402234302%_)
                                                (_%__kont3776137762%_
                                                 _%hd3402534312%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g39940_|
                                                     _%hd3402234302%_)
                                                    (_%__kont3776337764%_
                                                     _%hd3402534312%_)
                                                    (_%__match3805138052%_
                                                     _%e3402134298%_
                                                     _%hd3402234302%_
                                                     _%tl3402334305%_)))
                                            (_%__match3805138052%_
                                             _%e3402134298%_
                                             _%hd3402234302%_
                                             _%tl3402334305%_))))))
                               (_%__match3797137972%_
                                (lambda (_%e3401634348%_
                                         _%hd3401734352%_
                                         _%tl3401834355%_)
                                  (let ((_%L34358%_ _%tl3401834355%_)
                                        (_%L34360%_ _%hd3401734352%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%L34360%_))
                                        (_%__kont3775737758%_
                                         _%L34358%_
                                         _%L34360%_)
                                        (if (gx#stx-pair? _%tl3401834355%_)
                                            (let ((_%e3402434308%_
                                                   (gx#syntax-e
                                                    _%tl3401834355%_)))
                                              (let ((_%tl3402634315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3402434308%_)))
                                                    (_%hd3402534312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3402434308%_))))
                                                (if (gx#stx-null?
                                                     _%tl3402634315%_)
                                                    (_%__match3798537986%_
                                                     _%e3401634348%_
                                                     _%hd3401734352%_
                                                     _%tl3401834355%_
                                                     _%e3402434308%_
                                                     _%hd3402534312%_
                                                     _%tl3402634315%_)
                                                    (if (gx#identifier?
                                                         _%hd3401734352%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g39939_|
                                                             _%hd3401734352%_)
                                                            (_%__match3805138052%_
                                                             _%e3401634348%_
                                                             _%hd3401734352%_
                                                             _%tl3401834355%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g39940_|
                         _%hd3401734352%_)
                        (_%__match3805138052%_
                         _%e3401634348%_
                         _%hd3401734352%_
                         _%tl3401834355%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39941_|
                             _%hd3401734352%_)
                            (if (gx#stx-pair? _%tl3402634315%_)
                                (let ((_%e3404934184%_
                                       (gx#syntax-e _%tl3402634315%_)))
                                  (let ((_%tl3405134191%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3404934184%_)))
                                        (_%hd3405034188%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3404934184%_))))
                                    (if (gx#stx-null? _%tl3405134191%_)
                                        (_%__kont3776537766%_
                                         _%hd3405034188%_
                                         _%hd3402534312%_)
                                        (_%__match3805138052%_
                                         _%e3401634348%_
                                         _%hd3401734352%_
                                         _%tl3401834355%_))))
                                (_%__match3805138052%_
                                 _%e3401634348%_
                                 _%hd3401734352%_
                                 _%tl3401834355%_))
                            (_%__match3805138052%_
                             _%e3401634348%_
                             _%hd3401734352%_
                             _%tl3401834355%_))))
                (_%__match3805138052%_
                 _%e3401634348%_
                 _%hd3401734352%_
                 _%tl3401834355%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match3805138052%_
                                             _%e3401634348%_
                                             _%hd3401734352%_
                                             _%tl3401834355%_))))))
                               (_%__match3796537966%_
                                (lambda (_%e3401134378%_
                                         _%hd3401234382%_
                                         _%tl3401334385%_)
                                  (let ((_%L34388%_ _%tl3401334385%_)
                                        (_%L34390%_ _%hd3401234382%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%L34390%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont3775537756%_
                                         _%L34388%_
                                         _%L34390%_)
                                        (_%__match3797137972%_
                                         _%e3401134378%_
                                         _%hd3401234382%_
                                         _%tl3401334385%_)))))
                               (_%__match3795937960%_
                                (lambda (_%e3399934408%_
                                         _%__splice3775337754%_
                                         _%target3400034412%_
                                         _%tl3400234415%_)
                                  (letrec ((_%loop3400334418%_
                                            (lambda (_%hd3400134422%_
                                                     _%body3400734425%_)
                                              (if (gx#stx-pair?
                                                   _%hd3400134422%_)
                                                  (let ((_%e3400434428%_
                                                         (gx#syntax-e
                                                          _%hd3400134422%_)))
                                                    (let ((_%lp-tl3400634435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3400434428%_)))
                                                          (_%lp-hd3400534432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3400434428%_))))
                                                      (_%loop3400334418%_
                                                       _%lp-tl3400634435%_
                                                       (cons _%lp-hd3400534432%_
                                                             _%body3400734425%_))))
                                                  (let ((_%body3400834438%_
                                                         (reverse _%body3400734425%_)))
                                                    (_%__kont3775137752%_
                                                     _%body3400834438%_))))))
                                    (_%loop3400334418%_
                                     _%target3400034412%_
                                     '()))))
                               (_%g3391034464%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx3772437725%_)
                                      (let ((_%e3399934408%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx3772437725%_))))
                                        (if (gx#stx-pair/null? _%e3399934408%_)
                                            (let ((_%__splice3775337754%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e3399934408%_
                                                    '0)))
                                              (let ((_%tl3400234415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3775337754%_
                                                        '1)))
                                                    (_%target3400034412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3775337754%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3400234415%_)
                                                    (_%__match3795937960%_
                                                     _%e3399934408%_
                                                     _%__splice3775337754%_
                                                     _%target3400034412%_
                                                     _%tl3400234415%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3391834125%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3391834125%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3391834125%_)))))
                               (_%g3390634581%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx3772437725%_)
                                      (let ((_%e3398234567%_
                                             (unbox (gx#syntax-e
                                                     _%__stx3772437725%_))))
                                        (_%__kont3774337744%_ _%e3398234567%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3391034464%_)))))
                               (_%__match3781337814%_
                                (lambda (_%e3393734806%_
                                         _%hd3393834810%_
                                         _%tl3393934813%_)
                                  (let ((_%L34816%_ _%tl3393934813%_))
                                    (if (gx#stx-list? _%L34816%_)
                                        (_%__kont3773137732%_ _%L34816%_)
                                        (_%__match3796537966%_
                                         _%e3393734806%_
                                         _%hd3393834810%_
                                         _%tl3393934813%_)))))
                               (_%__match3780337804%_
                                (lambda (_%e3393334891%_
                                         _%hd3393434895%_
                                         _%tl3393534898%_)
                                  (let ((_%L34901%_ _%tl3393534898%_))
                                    (if (gx#stx-list? _%L34901%_)
                                        (_%__kont3772937730%_ _%L34901%_)
                                        (_%__match3796537966%_
                                         _%e3393334891%_
                                         _%hd3393434895%_
                                         _%tl3393534898%_))))))
                          (if (gx#stx-pair? _%__stx3772437725%_)
                              (let ((_%e3392634976%_
                                     (gx#syntax-e _%__stx3772437725%_)))
                                (let ((_%tl3392834983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3392634976%_)))
                                      (_%hd3392734980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3392634976%_))))
                                  (if (gx#identifier? _%hd3392734980%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39942_|
                                           _%hd3392734980%_)
                                          (if (gx#stx-pair? _%tl3392834983%_)
                                              (let ((_%e3392934986%_
                                                     (gx#syntax-e
                                                      _%tl3392834983%_)))
                                                (let ((_%tl3393134993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3392934986%_)))
                                                      (_%hd3393034990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3392934986%_))))
                                                  (_%__kont3772737728%_
                                                   _%tl3393134993%_
                                                   _%hd3393034990%_)))
                                              (_%__match3796537966%_
                                               _%e3392634976%_
                                               _%hd3392734980%_
                                               _%tl3392834983%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39943_|
                                               _%hd3392734980%_)
                                              (_%__match3780337804%_
                                               _%e3392634976%_
                                               _%hd3392734980%_
                                               _%tl3392834983%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39944_|
                                                   _%hd3392734980%_)
                                                  (_%__match3781337814%_
                                                   _%e3392634976%_
                                                   _%hd3392734980%_
                                                   _%tl3392834983%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39945_|
                                                       _%hd3392734980%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3392834983%_)
                                                          (let ((_%e3394434776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3392834983%_)))
                    (let ((_%tl3394634783%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3394434776%_)))
                          (_%hd3394534780%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3394434776%_))))
                      (if (gx#stx-null? _%tl3394634783%_)
                          (_%__kont3773337734%_ _%hd3394534780%_)
                          (_%__match3796537966%_
                           _%e3392634976%_
                           _%hd3392734980%_
                           _%tl3392834983%_))))
                  (_%__match3796537966%_
                   _%e3392634976%_
                   _%hd3392734980%_
                   _%tl3392834983%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g39946_|
                   _%hd3392734980%_)
                  (if (gx#stx-pair? _%tl3392834983%_)
                      (let ((_%e3395234722%_ (gx#syntax-e _%tl3392834983%_)))
                        (let ((_%tl3395434729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3395234722%_)))
                              (_%hd3395334726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3395234722%_))))
                          (if (gx#stx-pair? _%tl3395434729%_)
                              (let ((_%e3395534732%_
                                     (gx#syntax-e _%tl3395434729%_)))
                                (let ((_%tl3395734739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3395534732%_)))
                                      (_%hd3395634736%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3395534732%_))))
                                  (if (gx#stx-null? _%tl3395734739%_)
                                      (_%__kont3773537736%_
                                       _%hd3395634736%_
                                       _%hd3395334726%_)
                                      (_%__match3796537966%_
                                       _%e3392634976%_
                                       _%hd3392734980%_
                                       _%tl3392834983%_))))
                              (_%__match3796537966%_
                               _%e3392634976%_
                               _%hd3392734980%_
                               _%tl3392834983%_))))
                      (_%__match3796537966%_
                       _%e3392634976%_
                       _%hd3392734980%_
                       _%tl3392834983%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g39947_|
                       _%hd3392734980%_)
                      (if (gx#stx-pair? _%tl3392834983%_)
                          (let ((_%e3396434666%_
                                 (gx#syntax-e _%tl3392834983%_)))
                            (let ((_%tl3396634673%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3396434666%_)))
                                  (_%hd3396534670%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3396434666%_))))
                              (if (gx#stx-pair? _%tl3396634673%_)
                                  (let ((_%e3396734676%_
                                         (gx#syntax-e _%tl3396634673%_)))
                                    (let ((_%tl3396934683%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3396734676%_)))
                                          (_%hd3396834680%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3396734676%_))))
                                      (_%__kont3773737738%_
                                       _%tl3396934683%_
                                       _%hd3396834680%_
                                       _%hd3396534670%_)))
                                  (_%__match3796537966%_
                                   _%e3392634976%_
                                   _%hd3392734980%_
                                   _%tl3392834983%_))))
                          (_%__match3796537966%_
                           _%e3392634976%_
                           _%hd3392734980%_
                           _%tl3392834983%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g39948_|
                           _%hd3392734980%_)
                          (_%__kont3773937740%_ _%tl3392834983%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39949_|
                               _%hd3392734980%_)
                              (if (gx#stx-pair? _%tl3392834983%_)
                                  (let ((_%e3397834598%_
                                         (gx#syntax-e _%tl3392834983%_)))
                                    (let ((_%tl3398034605%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3397834598%_)))
                                          (_%hd3397934602%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3397834598%_))))
                                      (if (gx#stx-null? _%tl3398034605%_)
                                          (_%__kont3774137742%_
                                           _%hd3397934602%_)
                                          (_%__match3796537966%_
                                           _%e3392634976%_
                                           _%hd3392734980%_
                                           _%tl3392834983%_))))
                                  (_%__match3796537966%_
                                   _%e3392634976%_
                                   _%hd3392734980%_
                                   _%tl3392834983%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39950_|
                                   _%hd3392734980%_)
                                  (if (gx#stx-pair? _%tl3392834983%_)
                                      (let ((_%e3398734537%_
                                             (gx#syntax-e _%tl3392834983%_)))
                                        (let ((_%tl3398934544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3398734537%_)))
                                              (_%hd3398834541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3398734537%_))))
                                          (if (gx#stx-null? _%tl3398934544%_)
                                              (_%__kont3774537746%_
                                               _%hd3398834541%_)
                                              (_%__kont3774737748%_
                                               _%tl3392834983%_))))
                                      (_%__kont3774737748%_ _%tl3392834983%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39951_|
                                       _%hd3392734980%_)
                                      (_%__kont3774937750%_ _%tl3392834983%_)
                                      (_%__match3796537966%_
                                       _%e3392634976%_
                                       _%hd3392734980%_
                                       _%tl3392834983%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match3796537966%_
                                       _%e3392634976%_
                                       _%hd3392734980%_
                                       _%tl3392834983%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3390634581%_))))))))
                 (_%parse-list33539%_
                  (lambda (_%body33719%_)
                    (let* ((_%__stx3805438055%_ _%body33719%_)
                           (_%g3372533754%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3805438055%_))))
                      (let ((_%__kont3805738058%_
                             (lambda (_%L33878%_)
                               (_%parse133537%_ _%L33878%_)))
                            (_%__kont3805938060%_
                             (lambda (_%L33830%_ _%L33832%_ _%L33833%_)
                               (cons 'splice:
                                     (cons (_%parse133537%_ _%L33833%_)
                                           (cons (_%parse-list33539%_
                                                  _%L33830%_)
                                                 '())))))
                            (_%__kont3806138062%_
                             (lambda (_%L33788%_ _%L33790%_)
                               (cons 'cons:
                                     (cons (_%parse133537%_ _%L33790%_)
                                           (cons (_%parse-list33539%_
                                                  _%L33788%_)
                                                 '())))))
                            (_%__kont3806338064%_
                             (lambda ()
                               (if (gx#stx-null? _%body33719%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body33719%_)
                                       (_%parse-error33544%_ _%body33719%_)
                                       (_%parse133537%_ _%body33719%_))))))
                        (let* ((_%__match3810338104%_
                                (lambda (_%e3374633778%_
                                         _%hd3374733782%_
                                         _%tl3374833785%_)
                                  (let ((_%L33788%_ _%tl3374833785%_)
                                        (_%L33790%_ _%hd3374733782%_))
                                    (if (gx#ellipsis? _%L33790%_)
                                        (_%__kont3806338064%_)
                                        (_%__kont3806138062%_
                                         _%L33788%_
                                         _%L33790%_)))))
                               (_%__match3809738098%_
                                (lambda (_%e3373833810%_
                                         _%hd3373933814%_
                                         _%tl3374033817%_
                                         _%e3374133820%_
                                         _%hd3374233824%_
                                         _%tl3374333827%_)
                                  (let ((_%L33830%_ _%tl3374333827%_)
                                        (_%L33832%_ _%hd3374233824%_)
                                        (_%L33833%_ _%hd3373933814%_))
                                    (if (gx#ellipsis? _%L33832%_)
                                        (_%__kont3805938060%_
                                         _%L33830%_
                                         _%L33832%_
                                         _%L33833%_)
                                        (_%__match3810338104%_
                                         _%e3373833810%_
                                         _%hd3373933814%_
                                         _%tl3374033817%_))))))
                          (if (gx#stx-pair? _%__stx3805438055%_)
                              (let ((_%e3372833854%_
                                     (gx#syntax-e _%__stx3805438055%_)))
                                (let ((_%tl3373033861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3372833854%_)))
                                      (_%hd3372933858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3372833854%_))))
                                  (if (gx#stx-datum? _%hd3372933858%_)
                                      (let ((_%e3373133864%_
                                             (gx#stx-e _%hd3372933858%_)))
                                        (if (equal? _%e3373133864%_ '::)
                                            (if (gx#stx-pair? _%tl3373033861%_)
                                                (let ((_%e3373233868%_
                                                       (gx#syntax-e
                                                        _%tl3373033861%_)))
                                                  (let ((_%tl3373433875%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3373233868%_)))
                                                        (_%hd3373333872%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3373233868%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3373433875%_)
                                                        (_%__kont3805738058%_
                                                         _%hd3373333872%_)
                                                        (_%__match3809738098%_
                                                         _%e3372833854%_
                                                         _%hd3372933858%_
                                                         _%tl3373033861%_
                                                         _%e3373233868%_
                                                         _%hd3373333872%_
                                                         _%tl3373433875%_))))
                                                (_%__match3810338104%_
                                                 _%e3372833854%_
                                                 _%hd3372933858%_
                                                 _%tl3373033861%_))
                                            (if (gx#stx-pair? _%tl3373033861%_)
                                                (let ((_%e3374133820%_
                                                       (gx#syntax-e
                                                        _%tl3373033861%_)))
                                                  (let ((_%tl3374333827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3374133820%_)))
                                                        (_%hd3374233824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3374133820%_))))
                                                    (_%__match3809738098%_
                                                     _%e3372833854%_
                                                     _%hd3372933858%_
                                                     _%tl3373033861%_
                                                     _%e3374133820%_
                                                     _%hd3374233824%_
                                                     _%tl3374333827%_)))
                                                (_%__match3810338104%_
                                                 _%e3372833854%_
                                                 _%hd3372933858%_
                                                 _%tl3373033861%_))))
                                      (if (gx#stx-pair? _%tl3373033861%_)
                                          (let ((_%e3374133820%_
                                                 (gx#syntax-e
                                                  _%tl3373033861%_)))
                                            (let ((_%tl3374333827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3374133820%_)))
                                                  (_%hd3374233824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3374133820%_))))
                                              (_%__match3809738098%_
                                               _%e3372833854%_
                                               _%hd3372933858%_
                                               _%tl3373033861%_
                                               _%e3374133820%_
                                               _%hd3374233824%_
                                               _%tl3374333827%_)))
                                          (_%__match3810338104%_
                                           _%e3372833854%_
                                           _%hd3372933858%_
                                           _%tl3373033861%_)))))
                              (_%__kont3806338064%_)))))))
                 (_%parse-vector33540%_
                  (lambda (_%body33716%_)
                    (if (_%simple-vector?33541%_ _%body33716%_)
                        (cons 'simple:
                              (cons (gx#stx-map _%parse133537%_ _%body33716%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list33539%_ _%body33716%_)
                                    '())))))
                 (_%simple-vector?33541%_
                  (lambda (_%body33653%_)
                    (let* ((_%__stx3810638107%_ _%body33653%_)
                           (_%g3365733669%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3810638107%_))))
                      (let ((_%__kont3810938110%_
                             (lambda (_%L33697%_ _%L33699%_)
                               (if (gx#ellipsis? _%L33699%_)
                                   '#f
                                   (_%simple-vector?33541%_ _%L33697%_))))
                            (_%__kont3811138112%_
                             (lambda () (gx#stx-null? _%body33653%_))))
                        (if (gx#stx-pair? _%__stx3810638107%_)
                            (let ((_%e3366133687%_
                                   (gx#syntax-e _%__stx3810638107%_)))
                              (let ((_%tl3366333694%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3366133687%_)))
                                    (_%hd3366233691%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3366133687%_))))
                                (_%__kont3810938110%_
                                 _%tl3366333694%_
                                 _%hd3366233691%_)))
                            (_%__kont3811138112%_))))))
                 (_%parse-class-body33542%_
                  (lambda (_%body33562%_)
                    (let _%recur33565%_ ((_%rest33568%_ _%body33562%_))
                      (let* ((_%__stx3812238123%_ _%rest33568%_)
                             (_%g3357233588%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3812238123%_))))
                        (let ((_%__kont3812538126%_
                               (lambda (_%L33626%_ _%L33628%_ _%L33629%_)
                                 (cons _%L33629%_
                                       (cons (_%parse133537%_ _%L33628%_)
                                             (_%recur33565%_ _%L33626%_)))))
                              (_%__kont3812738128%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest33568%_)
                                     '()
                                     (_%parse-error33544%_ _%rest33568%_)))))
                          (let ((_%__match3814138142%_
                                 (lambda (_%e3357733606%_
                                          _%hd3357833610%_
                                          _%tl3357933613%_
                                          _%e3358033616%_
                                          _%hd3358133620%_
                                          _%tl3358233623%_)
                                   (let ((_%L33626%_ _%tl3358233623%_)
                                         (_%L33628%_ _%hd3358133620%_)
                                         (_%L33629%_ _%hd3357833610%_))
                                     (if (gx#stx-keyword? _%L33629%_)
                                         (_%__kont3812538126%_
                                          _%L33626%_
                                          _%L33628%_
                                          _%L33629%_)
                                         (_%__kont3812738128%_))))))
                            (if (gx#stx-pair? _%__stx3812238123%_)
                                (let ((_%e3357733606%_
                                       (gx#syntax-e _%__stx3812238123%_)))
                                  (let ((_%tl3357933613%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3357733606%_)))
                                        (_%hd3357833610%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3357733606%_))))
                                    (if (gx#stx-pair? _%tl3357933613%_)
                                        (let ((_%e3358033616%_
                                               (gx#syntax-e _%tl3357933613%_)))
                                          (let ((_%tl3358233623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3358033616%_)))
                                                (_%hd3358133620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3358033616%_))))
                                            (_%__match3814138142%_
                                             _%e3357733606%_
                                             _%hd3357833610%_
                                             _%tl3357933613%_
                                             _%e3358033616%_
                                             _%hd3358133620%_
                                             _%tl3358233623%_)))
                                        (_%__kont3812738128%_))))
                                (_%__kont3812738128%_))))))))
                 (_%parse-qq33543%_
                  (lambda (_%hd33549%_)
                    (let ((_%g3355133558%_
                           (lambda (_%g3355233554%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3355233554%_))))
                      (_%g3355133558%_ _%hd33549%_))))
                 (_%parse-error33544%_
                  (lambda (_%hd33546%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx33535%_
                               (cons _%match-stx33535%_
                                     (cons _%stx33533%_
                                           (cons _%hd33546%_ '())))
                               (cons _%stx33533%_ (cons _%hd33546%_ '())))))))
          (_%parse133537%_ _%stx33533%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx35223%_)
        (let ((_%match-stx35226%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx35223%_
           _%match-stx35226%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g39953_
        (let ((_g39952_ (let () (declare (not safe)) (##length _g39953_))))
          (cond ((let () (declare (not safe)) (##fx= _g39952_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g39953_))
                ((let () (declare (not safe)) (##fx= _g39952_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g39953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g39953_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx33518%_)
        (let ((__tmp39954
               (lambda (_%E33521%_)
                 (with-exception-handler
                  (let ((_%E!33524%_ (current-exception-handler)))
                    (lambda (_%e33527%_)
                      (if (syntax-error? _%e33527%_)
                          (_%E33521%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!33524%_ _%e33527%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx33518%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp39954))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree32253%_)
        (letrec ((_%loop32256%_
                  (lambda (_%ptree32543%_ _%vars32545%_ _%K32546%_)
                    (let* ((_%__stx3824038241%_ _%ptree32543%_)
                           (_%g3255932669%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3824038241%_))))
                      (let ((_%__kont3824338244%_
                             (lambda (_%L33299%_)
                               (let* ((_%__stx3816038161%_ _%L33299%_)
                                      (_%g3331633350%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3816038161%_))))
                                 (let ((_%__kont3816338164%_
                                        (lambda (_%L33499%_)
                                          (_%loop32256%_
                                           _%L33499%_
                                           _%vars32545%_
                                           _%K32546%_)))
                                       (_%__kont3816538166%_
                                        (lambda (_%L33468%_)
                                          (_%loop32256%_
                                           _%L33468%_
                                           _%vars32545%_
                                           _%K32546%_)))
                                       (_%__kont3816738168%_
                                        (lambda (_%L33416%_)
                                          (_%loop32256%_
                                           _%L33416%_
                                           _%vars32545%_
                                           _%K32546%_)))
                                       (_%__kont3816938170%_
                                        (lambda ()
                                          (_%K32546%_ _%vars32545%_))))
                                   (if (gx#stx-pair? _%__stx3816038161%_)
                                       (let ((_%e3331933489%_
                                              (gx#syntax-e
                                               _%__stx3816038161%_)))
                                         (let ((_%tl3332133496%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3331933489%_)))
                                               (_%hd3332033493%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3331933489%_))))
                                           (if (gx#stx-null? _%tl3332133496%_)
                                               (_%__kont3816338164%_
                                                _%hd3332033493%_)
                                               (if (gx#stx-datum?
                                                    _%hd3332033493%_)
                                                   (let ((_%e3332633454%_
                                                          (gx#stx-e
                                                           _%hd3332033493%_)))
                                                     (if (equal? _%e3332633454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl3332133496%_)
                     (let ((_%e3332733458%_ (gx#syntax-e _%tl3332133496%_)))
                       (let ((_%tl3332933465%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3332733458%_)))
                             (_%hd3332833462%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3332733458%_))))
                         (if (gx#stx-null? _%tl3332933465%_)
                             (_%__kont3816538166%_ _%hd3332833462%_)
                             (_%__kont3816938170%_))))
                     (_%__kont3816938170%_))
                 (if (equal? _%e3332633454%_ '::)
                     (if (gx#stx-pair? _%tl3332133496%_)
                         (let ((_%e3333533382%_
                                (gx#syntax-e _%tl3332133496%_)))
                           (let ((_%tl3333733389%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e3333533382%_)))
                                 (_%hd3333633386%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e3333533382%_))))
                             (if (gx#stx-pair? _%tl3333733389%_)
                                 (let ((_%e3333833392%_
                                        (gx#syntax-e _%tl3333733389%_)))
                                   (let ((_%tl3334033399%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3333833392%_)))
                                         (_%hd3333933396%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3333833392%_))))
                                     (if (gx#stx-datum? _%hd3333933396%_)
                                         (let ((_%e3334133402%_
                                                (gx#stx-e _%hd3333933396%_)))
                                           (if (equal? _%e3334133402%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl3334033399%_)
                                                   (let ((_%e3334233406%_
                                                          (gx#syntax-e
                                                           _%tl3334033399%_)))
                                                     (let ((_%tl3334433413%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3334233406%_)))
                                                           (_%hd3334333410%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3334233406%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3334433413%_)
                                                           (_%__kont3816738168%_
                                                            _%hd3334333410%_)
                                                           (_%__kont3816938170%_))))
                                                   (_%__kont3816938170%_))
                                               (_%__kont3816938170%_)))
                                         (_%__kont3816938170%_))))
                                 (_%__kont3816938170%_))))
                         (_%__kont3816938170%_))
                     (_%__kont3816938170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont3816938170%_)))))
                                       (_%__kont3816938170%_))))))
                            (_%__kont3824538246%_
                             (lambda (_%L33186%_ _%L33188%_)
                               (let* ((_%__stx3814438145%_ _%L33186%_)
                                      (_%g3320433216%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx3814438145%_))))
                                 (let ((_%__kont3814738148%_
                                        (lambda (_%L33244%_ _%L33246%_)
                                          (_%loop32256%_
                                           _%L33246%_
                                           _%vars32545%_
                                           (lambda (_%g3325833260%_)
                                             (_%loop32256%_
                                              (cons _%L33188%_ _%L33244%_)
                                              _%g3325833260%_
                                              _%K32546%_)))))
                                       (_%__kont3814938150%_
                                        (lambda ()
                                          (_%K32546%_ _%vars32545%_))))
                                   (if (gx#stx-pair? _%__stx3814438145%_)
                                       (let ((_%e3320833234%_
                                              (gx#syntax-e
                                               _%__stx3814438145%_)))
                                         (let ((_%tl3321033241%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3320833234%_)))
                                               (_%hd3320933238%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3320833234%_))))
                                           (_%__kont3814738148%_
                                            _%tl3321033241%_
                                            _%hd3320933238%_)))
                                       (_%__kont3814938150%_))))))
                            (_%__kont3824738248%_
                             (lambda (_%L33155%_)
                               (_%loop32256%_
                                _%L33155%_
                                _%vars32545%_
                                _%K32546%_)))
                            (_%__kont3824938250%_
                             (lambda (_%L33101%_ _%L33103%_)
                               (_%loop32256%_
                                _%L33103%_
                                _%vars32545%_
                                (lambda (_%g3311833120%_)
                                  (_%loop32256%_
                                   _%L33101%_
                                   _%g3311833120%_
                                   _%K32546%_)))))
                            (_%__kont3825138252%_
                             (lambda (_%L33037%_ _%L33039%_)
                               (_%loop32256%_
                                _%L33039%_
                                _%vars32545%_
                                (lambda (_%g3305433056%_)
                                  (_%loop32256%_
                                   _%L33037%_
                                   _%g3305433056%_
                                   _%K32546%_)))))
                            (_%__kont3825338254%_
                             (lambda (_%L32982%_)
                               (_%loop32256%_
                                _%L32982%_
                                _%vars32545%_
                                _%K32546%_)))
                            (_%__kont3825538256%_
                             (lambda (_%L32932%_ _%L32934%_)
                               (_%loop-vector32258%_
                                _%L32932%_
                                _%vars32545%_
                                _%K32546%_)))
                            (_%__kont3825738258%_
                             (lambda (_%L32889%_)
                               (_%loop-vector32258%_
                                _%L32889%_
                                _%vars32545%_
                                _%K32546%_)))
                            (_%__kont3825938260%_
                             (lambda (_%L32832%_)
                               (_%loop-class-list32260%_
                                _%L32832%_
                                _%vars32545%_
                                _%K32546%_)))
                            (_%__kont3826138262%_
                             (lambda (_%L32773%_ _%L32775%_)
                               (_%loop32256%_
                                _%L32773%_
                                _%vars32545%_
                                _%K32546%_)))
                            (_%__kont3826338264%_
                             (lambda (_%L32711%_)
                               (if (find (lambda (_%g3272632728%_)
                                           (gx#bound-identifier=?
                                            _%g3272632728%_
                                            _%L32711%_))
                                         _%vars32545%_)
                                   (_%K32546%_ _%vars32545%_)
                                   (_%K32546%_
                                    (cons _%L32711%_ _%vars32545%_)))))
                            (_%__kont3826538266%_
                             (lambda () (_%K32546%_ _%vars32545%_))))
                        (let* ((_%__match3839738398%_
                                (lambda (_%e3261632912%_
                                         _%hd3261732916%_
                                         _%tl3261832919%_
                                         _%e3261932922%_
                                         _%hd3262032926%_
                                         _%tl3262132929%_)
                                  (let ((_%L32932%_ _%hd3262032926%_)
                                        (_%L32934%_ _%hd3261732916%_))
                                    (if (or (gx#stx-eq? 'values: _%L32934%_)
                                            (gx#stx-eq? 'vector: _%L32934%_))
                                        (_%__kont3825538256%_
                                         _%L32932%_
                                         _%L32934%_)
                                        (if (gx#stx-datum? _%hd3261732916%_)
                                            (let ((_%e3262632865%_
                                                   (gx#stx-e
                                                    _%hd3261732916%_)))
                                              (if (equal? _%e3262632865%_
                                                          'struct:)
                                                  (_%__kont3826538266%_)
                                                  (if (equal? _%e3262632865%_
                                                              'class:)
                                                      (_%__kont3826538266%_)
                                                      (if (equal? _%e3262632865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont3826538266%_)
                  (if (equal? _%e3262632865%_ 'var:)
                      (_%__kont3826338264%_ _%hd3262032926%_)
                      (_%__kont3826538266%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont3826538266%_))))))
                               (_%__match3829138292%_
                                (lambda (_%e3257133176%_
                                         _%hd3257233180%_
                                         _%tl3257333183%_)
                                  (let ((_%L33186%_ _%tl3257333183%_)
                                        (_%L33188%_ _%hd3257233180%_))
                                    (if (or (gx#stx-eq? 'and: _%L33188%_)
                                            (gx#stx-eq? 'or: _%L33188%_))
                                        (_%__kont3824538246%_
                                         _%L33186%_
                                         _%L33188%_)
                                        (if (gx#stx-datum? _%hd3257233180%_)
                                            (let ((_%e3257833141%_
                                                   (gx#stx-e
                                                    _%hd3257233180%_)))
                                              (if (equal? _%e3257833141%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl3257333183%_)
                                                      (let ((_%e3257933145%_
                                                             (gx#syntax-e
                                                              _%tl3257333183%_)))
                                                        (let ((_%tl3258133152%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3257933145%_)))
                      (_%hd3258033149%_
                       (let () (declare (not safe)) (##car _%e3257933145%_))))
                  (if (gx#stx-null? _%tl3258133152%_)
                      (_%__kont3824738248%_ _%hd3258033149%_)
                      (_%__kont3826538266%_))))
              (_%__kont3826538266%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e3257833141%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl3257333183%_)
                                                          (let ((_%e3258833081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3257333183%_)))
                    (let ((_%tl3259033088%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3258833081%_)))
                          (_%hd3258933085%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3258833081%_))))
                      (if (gx#stx-pair? _%tl3259033088%_)
                          (let ((_%e3259133091%_
                                 (gx#syntax-e _%tl3259033088%_)))
                            (let ((_%tl3259333098%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3259133091%_)))
                                  (_%hd3259233095%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3259133091%_))))
                              (if (gx#stx-null? _%tl3259333098%_)
                                  (_%__kont3824938250%_
                                   _%hd3259233095%_
                                   _%hd3258933085%_)
                                  (_%__kont3826538266%_))))
                          (if (gx#stx-null? _%tl3259033088%_)
                              (_%__match3839738398%_
                               _%e3257133176%_
                               _%hd3257233180%_
                               _%tl3257333183%_
                               _%e3258833081%_
                               _%hd3258933085%_
                               _%tl3259033088%_)
                              (_%__kont3826538266%_)))))
                  (_%__kont3826538266%_))
              (if (equal? _%e3257833141%_ 'splice:)
                  (if (gx#stx-pair? _%tl3257333183%_)
                      (let ((_%e3260033017%_ (gx#syntax-e _%tl3257333183%_)))
                        (let ((_%tl3260233024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3260033017%_)))
                              (_%hd3260133021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3260033017%_))))
                          (if (gx#stx-pair? _%tl3260233024%_)
                              (let ((_%e3260333027%_
                                     (gx#syntax-e _%tl3260233024%_)))
                                (let ((_%tl3260533034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3260333027%_)))
                                      (_%hd3260433031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3260333027%_))))
                                  (if (gx#stx-null? _%tl3260533034%_)
                                      (_%__kont3825138252%_
                                       _%hd3260433031%_
                                       _%hd3260133021%_)
                                      (_%__kont3826538266%_))))
                              (if (gx#stx-null? _%tl3260233024%_)
                                  (_%__match3839738398%_
                                   _%e3257133176%_
                                   _%hd3257233180%_
                                   _%tl3257333183%_
                                   _%e3260033017%_
                                   _%hd3260133021%_
                                   _%tl3260233024%_)
                                  (_%__kont3826538266%_)))))
                      (_%__kont3826538266%_))
                  (if (equal? _%e3257833141%_ 'box:)
                      (if (gx#stx-pair? _%tl3257333183%_)
                          (let ((_%e3261132972%_
                                 (gx#syntax-e _%tl3257333183%_)))
                            (let ((_%tl3261332979%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3261132972%_)))
                                  (_%hd3261232976%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3261132972%_))))
                              (if (gx#stx-null? _%tl3261332979%_)
                                  (_%__kont3825338254%_ _%hd3261232976%_)
                                  (_%__kont3826538266%_))))
                          (_%__kont3826538266%_))
                      (if (gx#stx-pair? _%tl3257333183%_)
                          (let ((_%e3261932922%_
                                 (gx#syntax-e _%tl3257333183%_)))
                            (let ((_%tl3262132929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3261932922%_)))
                                  (_%hd3262032926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3261932922%_))))
                              (if (gx#stx-null? _%tl3262132929%_)
                                  (_%__match3839738398%_
                                   _%e3257133176%_
                                   _%hd3257233180%_
                                   _%tl3257333183%_
                                   _%e3261932922%_
                                   _%hd3262032926%_
                                   _%tl3262132929%_)
                                  (if (equal? _%e3257833141%_ 'struct:)
                                      (if (gx#stx-pair? _%tl3262132929%_)
                                          (let ((_%e3263032879%_
                                                 (gx#syntax-e
                                                  _%tl3262132929%_)))
                                            (let ((_%tl3263232886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3263032879%_)))
                                                  (_%hd3263132883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3263032879%_))))
                                              (if (gx#stx-null?
                                                   _%tl3263232886%_)
                                                  (_%__kont3825738258%_
                                                   _%hd3263132883%_)
                                                  (_%__kont3826538266%_))))
                                          (_%__kont3826538266%_))
                                      (if (equal? _%e3257833141%_ 'class:)
                                          (if (gx#stx-pair? _%tl3262132929%_)
                                              (let ((_%e3264132822%_
                                                     (gx#syntax-e
                                                      _%tl3262132929%_)))
                                                (let ((_%tl3264332829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3264132822%_)))
                                                      (_%hd3264232826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3264132822%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3264332829%_)
                                                      (_%__kont3825938260%_
                                                       _%hd3264232826%_)
                                                      (_%__kont3826538266%_))))
                                              (_%__kont3826538266%_))
                                          (if (equal? _%e3257833141%_ 'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl3262132929%_)
                                                  (let ((_%e3265332763%_
                                                         (gx#syntax-e
                                                          _%tl3262132929%_)))
                                                    (let ((_%tl3265532770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3265332763%_)))
                                                          (_%hd3265432767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3265332763%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3265532770%_)
                                                          (_%__kont3826138262%_
                                                           _%hd3265432767%_
                                                           _%hd3262032926%_)
                                                          (_%__kont3826538266%_))))
                                                  (_%__kont3826538266%_))
                                              (_%__kont3826538266%_)))))))
                          (_%__kont3826538266%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%tl3257333183%_)
                                                (let ((_%e3261932922%_
                                                       (gx#syntax-e
                                                        _%tl3257333183%_)))
                                                  (let ((_%tl3262132929%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3261932922%_)))
                                                        (_%hd3262032926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3261932922%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3262132929%_)
                                                        (_%__match3839738398%_
                                                         _%e3257133176%_
                                                         _%hd3257233180%_
                                                         _%tl3257333183%_
                                                         _%e3261932922%_
                                                         _%hd3262032926%_
                                                         _%tl3262132929%_)
                                                        (_%__kont3826538266%_))))
                                                (_%__kont3826538266%_))))))))
                          (if (gx#stx-pair? _%__stx3824038241%_)
                              (let ((_%e3256233275%_
                                     (gx#syntax-e _%__stx3824038241%_)))
                                (let ((_%tl3256433282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3256233275%_)))
                                      (_%hd3256333279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3256233275%_))))
                                  (if (gx#stx-datum? _%hd3256333279%_)
                                      (let ((_%e3256533285%_
                                             (gx#stx-e _%hd3256333279%_)))
                                        (if (equal? _%e3256533285%_ '?:)
                                            (if (gx#stx-pair? _%tl3256433282%_)
                                                (let ((_%e3256633289%_
                                                       (gx#syntax-e
                                                        _%tl3256433282%_)))
                                                  (let ((_%tl3256833296%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3256633289%_)))
                                                        (_%hd3256733293%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3256633289%_))))
                                                    (_%__kont3824338244%_
                                                     _%tl3256833296%_)))
                                                (_%__match3829138292%_
                                                 _%e3256233275%_
                                                 _%hd3256333279%_
                                                 _%tl3256433282%_))
                                            (_%__match3829138292%_
                                             _%e3256233275%_
                                             _%hd3256333279%_
                                             _%tl3256433282%_)))
                                      (_%__match3829138292%_
                                       _%e3256233275%_
                                       _%hd3256333279%_
                                       _%tl3256433282%_))))
                              (_%__kont3826538266%_)))))))
                 (_%loop-vector32258%_
                  (lambda (_%body32419%_ _%vars32421%_ _%K32422%_)
                    (let* ((_%__stx3849838499%_ _%body32419%_)
                           (_%g3242532448%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3849838499%_))))
                      (let ((_%__kont3850138502%_
                             (lambda (_%L32525%_)
                               (_%loop-list32259%_
                                _%L32525%_
                                _%vars32421%_
                                _%K32422%_)))
                            (_%__kont3850338504%_
                             (lambda (_%L32479%_)
                               (_%loop32256%_
                                _%L32479%_
                                _%vars32421%_
                                _%K32422%_))))
                        (if (gx#stx-pair? _%__stx3849838499%_)
                            (let ((_%e3242832501%_
                                   (gx#syntax-e _%__stx3849838499%_)))
                              (let ((_%tl3243032508%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3242832501%_)))
                                    (_%hd3242932505%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3242832501%_))))
                                (if (gx#stx-datum? _%hd3242932505%_)
                                    (let ((_%e3243132511%_
                                           (gx#stx-e _%hd3242932505%_)))
                                      (if (equal? _%e3243132511%_ 'simple:)
                                          (if (gx#stx-pair? _%tl3243032508%_)
                                              (let ((_%e3243232515%_
                                                     (gx#syntax-e
                                                      _%tl3243032508%_)))
                                                (let ((_%tl3243432522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3243232515%_)))
                                                      (_%hd3243332519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3243232515%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3243432522%_)
                                                      (_%__kont3850138502%_
                                                       _%hd3243332519%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3242532448%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3242532448%_)))
                                          (if (equal? _%e3243132511%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl3243032508%_)
                                                  (let ((_%e3244032469%_
                                                         (gx#syntax-e
                                                          _%tl3243032508%_)))
                                                    (let ((_%tl3244232476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3244032469%_)))
                                                          (_%hd3244132473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3244032469%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3244232476%_)
                                                          (_%__kont3850338504%_
                                                           _%hd3244132473%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3242532448%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3242532448%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3242532448%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3242532448%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g3242532448%_)))))))
                 (_%loop-list32259%_
                  (lambda (_%rest32349%_ _%vars32351%_ _%K32352%_)
                    (let* ((_%__stx3854838549%_ _%rest32349%_)
                           (_%g3235532367%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3854838549%_))))
                      (let ((_%__kont3855138552%_
                             (lambda (_%L32395%_ _%L32397%_)
                               (_%loop32256%_
                                _%L32397%_
                                _%vars32351%_
                                (lambda (_%g3240932411%_)
                                  (_%loop-list32259%_
                                   _%L32395%_
                                   _%g3240932411%_
                                   _%K32352%_)))))
                            (_%__kont3855338554%_
                             (lambda () (_%K32352%_ _%vars32351%_))))
                        (if (gx#stx-pair? _%__stx3854838549%_)
                            (let ((_%e3235932385%_
                                   (gx#syntax-e _%__stx3854838549%_)))
                              (let ((_%tl3236132392%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3235932385%_)))
                                    (_%hd3236032389%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3235932385%_))))
                                (_%__kont3855138552%_
                                 _%tl3236132392%_
                                 _%hd3236032389%_)))
                            (_%__kont3855338554%_))))))
                 (_%loop-class-list32260%_
                  (lambda (_%rest32262%_ _%vars32264%_ _%K32265%_)
                    (let* ((_%__stx3856438565%_ _%rest32262%_)
                           (_%g3226832283%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3856438565%_))))
                      (let ((_%__kont3856738568%_
                             (lambda (_%L32321%_ _%L32323%_)
                               (_%loop32256%_
                                _%L32323%_
                                _%vars32264%_
                                (lambda (_%g3233932341%_)
                                  (_%loop-class-list32260%_
                                   _%L32321%_
                                   _%g3233932341%_
                                   _%K32265%_)))))
                            (_%__kont3856938570%_
                             (lambda () (_%K32265%_ _%vars32264%_))))
                        (if (gx#stx-pair? _%__stx3856438565%_)
                            (let ((_%e3227232301%_
                                   (gx#syntax-e _%__stx3856438565%_)))
                              (let ((_%tl3227432308%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3227232301%_)))
                                    (_%hd3227332305%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3227232301%_))))
                                (if (gx#stx-pair? _%tl3227432308%_)
                                    (let ((_%e3227532311%_
                                           (gx#syntax-e _%tl3227432308%_)))
                                      (let ((_%tl3227732318%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3227532311%_)))
                                            (_%hd3227632315%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3227532311%_))))
                                        (_%__kont3856738568%_
                                         _%tl3227732318%_
                                         _%hd3227632315%_)))
                                    (_%__kont3856938570%_))))
                            (_%__kont3856938570%_)))))))
          (_%loop32256%_ _%ptree32253%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx29198%_ _%tgt29200%_ _%ptree29201%_ _%K29202%_ _%E29203%_)
        (letrec ((_%generate129205%_
                  (lambda (_%tgt30452%_ _%ptree30454%_ _%K30455%_ _%E30456%_)
                    (let* ((_%g3045830466%_
                            (lambda (_%g3045930462%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3045930462%_)))
                           (_%g3045732249%_
                            (lambda (_%g3045930470%_)
                              ((lambda (_%L30473%_)
                                 (let* ((_%__stx3880038801%_ _%ptree30454%_)
                                        (_%g3050030642%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3880038801%_))))
                                   (let ((_%__kont3880338804%_
                                          (lambda (_%L31964%_ _%L31966%_)
                                            (let* ((_%__stx3871838719%_
                                                    _%L31964%_)
                                                   (_%g3198332018%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3871838719%_))))
                                              (let ((_%__kont3872138722%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31966%_ (cons _%L30473%_ '())))
                           (cons _%K30455%_ (cons _%E30456%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3872338724%_
                                                     (lambda (_%L32219%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%L31966%_ (cons _%L30473%_ '())))
                           (cons (_%generate129205%_
                                  _%tgt30452%_
                                  _%L32219%_
                                  _%K30455%_
                                  _%E30456%_)
                                 (cons _%E30456%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3872538726%_
                                                     (lambda (_%L32157%_)
                                                       (let* ((_%g3217132179%_
                                                               (lambda (_%g3217232175%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3217232175%_)))
                      (_%g3217032198%_
                       (lambda (_%g3217232183%_)
                         ((lambda (_%L32186%_)
                            (cons 'let
                                  (cons (cons (cons _%L32186%_
                                                    (cons (cons _%L31966%_
                                                                (cons _%L30473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%L32186%_
                                                          (cons (_%generate129205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L32186%_
                         _%L32157%_
                         _%K30455%_
                         _%E30456%_)
                        (cons _%E30456%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g3217232183%_))))
                 (_%g3217032198%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3872738728%_
                                                     (lambda (_%L32073%_
                                                              _%L32075%_)
                                                       (let* ((_%g3209532103%_
                                                               (lambda (_%g3209632099%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3209632099%_)))
                      (_%g3209432122%_
                       (lambda (_%g3209632107%_)
                         ((lambda (_%L32110%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%L31966%_
                                                    (cons _%L30473%_ '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%L32110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%L32075%_ (cons _%L30473%_ '()))
                                    '()))
                        '())
                  (cons (_%generate129205%_
                         _%L32110%_
                         _%L32073%_
                         _%K30455%_
                         _%E30456%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30456%_ '())))))
                          _%g3209632107%_))))
                 (_%g3209432122%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g3198032230%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx3871838719%_)
                                                             (let ((_%e3198632209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx3871838719%_)))
                       (let ((_%tl3198832216%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e3198632209%_)))
                             (_%hd3198732213%_
                              (let ()
                                (declare (not safe))
                                (##car _%e3198632209%_))))
                         (if (gx#stx-null? _%tl3198832216%_)
                             (_%__kont3872338724%_ _%hd3198732213%_)
                             (if (gx#stx-datum? _%hd3198732213%_)
                                 (let ((_%e3199332143%_
                                        (gx#stx-e _%hd3198732213%_)))
                                   (if (equal? _%e3199332143%_ '=>:)
                                       (if (gx#stx-pair? _%tl3198832216%_)
                                           (let ((_%e3199432147%_
                                                  (gx#syntax-e
                                                   _%tl3198832216%_)))
                                             (let ((_%tl3199632154%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3199432147%_)))
                                                   (_%hd3199532151%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3199432147%_))))
                                               (if (gx#stx-null?
                                                    _%tl3199632154%_)
                                                   (_%__kont3872538726%_
                                                    _%hd3199532151%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3198332018%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3198332018%_)))
                                       (if (equal? _%e3199332143%_ '::)
                                           (if (gx#stx-pair? _%tl3198832216%_)
                                               (let ((_%e3200332039%_
                                                      (gx#syntax-e
                                                       _%tl3198832216%_)))
                                                 (let ((_%tl3200532046%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3200332039%_)))
                                                       (_%hd3200432043%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3200332039%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl3200532046%_)
                                                       (let ((_%e3200632049%_
                                                              (gx#syntax-e
                                                               _%tl3200532046%_)))
                                                         (let ((_%tl3200832056%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3200632049%_)))
                       (_%hd3200732053%_
                        (let () (declare (not safe)) (##car _%e3200632049%_))))
                   (if (gx#stx-datum? _%hd3200732053%_)
                       (let ((_%e3200932059%_ (gx#stx-e _%hd3200732053%_)))
                         (if (equal? _%e3200932059%_ '=>:)
                             (if (gx#stx-pair? _%tl3200832056%_)
                                 (let ((_%e3201032063%_
                                        (gx#syntax-e _%tl3200832056%_)))
                                   (let ((_%tl3201232070%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3201032063%_)))
                                         (_%hd3201132067%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3201032063%_))))
                                     (if (gx#stx-null? _%tl3201232070%_)
                                         (_%__kont3872738728%_
                                          _%hd3201132067%_
                                          _%hd3200432043%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g3198332018%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3198332018%_)))
                             (let () (declare (not safe)) (_%g3198332018%_))))
                       (let () (declare (not safe)) (_%g3198332018%_)))))
               (let () (declare (not safe)) (_%g3198332018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3198332018%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3198332018%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g3198332018%_))))))
                     (let () (declare (not safe)) (_%g3198332018%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx3871838719%_)
                                                      (_%__kont3872138722%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3198032230%_))))))))
                                         (_%__kont3880538806%_
                                          (lambda (_%L31861%_)
                                            (let* ((_%__stx3870238703%_
                                                    _%L31861%_)
                                                   (_%g3187431886%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3870238703%_))))
                                              (let ((_%__kont3870538706%_
                                                     (lambda (_%L31914%_
                                                              _%L31916%_)
                                                       (_%generate129205%_
                                                        _%tgt30452%_
                                                        _%L31916%_
                                                        (_%generate129205%_
                                                         _%tgt30452%_
                                                         (cons 'and:
                                                               _%L31914%_)
                                                         _%K30455%_
                                                         _%E30456%_)
                                                        _%E30456%_)))
                                                    (_%__kont3870738708%_
                                                     (lambda () _%K30455%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3870238703%_)
                                                    (let ((_%e3187831904%_
                                                           (gx#syntax-e
                                                            _%__stx3870238703%_)))
                                                      (let ((_%tl3188031911%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3187831904%_)))
                    (_%hd3187931908%_
                     (let () (declare (not safe)) (##car _%e3187831904%_))))
                (_%__kont3870538706%_ _%tl3188031911%_ _%hd3187931908%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3870738708%_))))))
                                         (_%__kont3880738808%_
                                          (lambda (_%L31768%_)
                                            (let* ((_%__stx3868638687%_
                                                    _%L31768%_)
                                                   (_%g3178131793%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3868638687%_))))
                                              (let ((_%__kont3868938690%_
                                                     (lambda (_%L31821%_
                                                              _%L31823%_)
                                                       (_%generate129205%_
                                                        _%tgt30452%_
                                                        _%L31823%_
                                                        _%K30455%_
                                                        (_%generate129205%_
                                                         _%tgt30452%_
                                                         (cons 'or: _%L31821%_)
                                                         _%K30455%_
                                                         _%E30456%_))))
                                                    (_%__kont3869138692%_
                                                     (lambda () _%E30456%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx3868638687%_)
                                                    (let ((_%e3178531811%_
                                                           (gx#syntax-e
                                                            _%__stx3868638687%_)))
                                                      (let ((_%tl3178731818%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3178531811%_)))
                    (_%hd3178631815%_
                     (let () (declare (not safe)) (##car _%e3178531811%_))))
                (_%__kont3868938690%_ _%tl3178731818%_ _%hd3178631815%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3869138692%_))))))
                                         (_%__kont3880938810%_
                                          (lambda (_%L31733%_)
                                            (_%generate129205%_
                                             _%tgt30452%_
                                             _%L31733%_
                                             _%E30456%_
                                             _%K30455%_)))
                                         (_%__kont3881138812%_
                                          (lambda (_%L31607%_ _%L31609%_)
                                            (let* ((_%g3162631641%_
                                                    (lambda (_%g3162731637%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3162731637%_)))
                                                   (_%g3162531698%_
                                                    (lambda (_%g3162731645%_)
                                                      (if (gx#stx-pair?
                                                           _%g3162731645%_)
                                                          (let ((_%e3163031648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g3162731645%_)))
                    (let ((_%hd3163131652%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3163031648%_)))
                          (_%tl3163231655%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3163031648%_))))
                      (if (gx#stx-pair? _%tl3163231655%_)
                          (let ((_%e3163331658%_
                                 (gx#syntax-e _%tl3163231655%_)))
                            (let ((_%hd3163431662%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3163331658%_)))
                                  (_%tl3163531665%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3163331658%_))))
                              (if (gx#stx-null? _%tl3163531665%_)
                                  ((lambda (_%L31668%_ _%L31670%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%L30473%_ '()))
                                                 (cons (let ((_%hd-pat31686%_
                                                              (gx#stx-e
                                                               _%L31609%_))
                                                             (_%tl-pat31688%_
                                                              (gx#stx-e
                                                               _%L31607%_)))
                                                         (if (and (equal? _%hd-pat31686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat31688%_ '(any:)))
                     _%K30455%_
                     (if (equal? _%tl-pat31688%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%L31670%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate129205%_
                                            _%L31670%_
                                            _%L31609%_
                                            _%K30455%_
                                            _%E30456%_)
                                           '())))
                         (if (equal? _%hd-pat31686%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%L31668%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L30473%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate129205%_
                                                _%L31668%_
                                                _%L31607%_
                                                _%K30455%_
                                                _%E30456%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%L31670%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%L30473%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L31668%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%L30473%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate129205%_
                                                _%L31670%_
                                                _%L31609%_
                                                (_%generate129205%_
                                                 _%L31668%_
                                                 _%L31607%_
                                                 _%K30455%_
                                                 _%E30456%_)
                                                _%E30456%_)
                                               '())))))))
               (cons _%E30456%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd3163431662%_
                                   _%hd3163131652%_)
                                  (_%g3162631641%_ _%g3162731645%_))))
                          (_%g3162631641%_ _%g3162731645%_))))
                  (_%g3162631641%_ _%g3162731645%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3162531698%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont3881338814%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%L30473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K30455%_ (cons _%E30456%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3881538816%_
                                          (lambda (_%L31523%_ _%L31525%_)
                                            (_%generate-splice29207%_
                                             _%tgt30452%_
                                             _%L31525%_
                                             _%L31523%_
                                             _%K30455%_
                                             _%E30456%_)))
                                         (_%__kont3881738818%_
                                          (lambda (_%L31437%_)
                                            (let* ((_%g3145131459%_
                                                    (lambda (_%g3145231455%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3145231455%_)))
                                                   (_%g3145031478%_
                                                    (lambda (_%g3145231463%_)
                                                      ((lambda (_%L31466%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%L30473%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%L31466%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%L30473%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate129205%_
                                                      _%L31466%_
                                                      _%L31437%_
                                                      _%K30455%_
                                                      _%E30456%_)
                                                     '())))
                                   (cons _%E30456%_ '())))))
               _%g3145231463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3145031478%_
                                               (gx#genident 'e)))))
                                         (_%__kont3881938820%_
                                          (lambda (_%L31242%_)
                                            (let* ((_%__stx3863638637%_
                                                    _%L31242%_)
                                                   (_%g3125731280%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3863638637%_))))
                                              (let ((_%__kont3863938640%_
                                                     (lambda (_%L31357%_)
                                                       (let* ((_%g3137131379%_
                                                               (lambda (_%g3137231375%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3137231375%_)))
                      (_%g3137031398%_
                       (lambda (_%g3137231383%_)
                         ((lambda (_%L31386%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%L30473%_
                                                                '()))
                                                    (cons _%L31386%_ '())))
                                        (cons (_%generate-simple-vector29208%_
                                               _%tgt30452%_
                                               _%L31357%_
                                               '0
                                               _%K30455%_
                                               _%E30456%_)
                                              (cons _%E30456%_ '())))))
                          _%g3137231383%_))))
                 (_%g3137031398%_ (gx#stx-length _%L31357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3864138642%_
                                                     (lambda (_%L31311%_)
                                                       (_%generate-list-vector29209%_
                                                        _%tgt30452%_
                                                        _%L31311%_
                                                        'values->list
                                                        _%K30455%_
                                                        _%E30456%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx3863638637%_)
                                                    (let ((_%e3126031333%_
                                                           (gx#syntax-e
                                                            _%__stx3863638637%_)))
                                                      (let ((_%tl3126231340%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3126031333%_)))
                    (_%hd3126131337%_
                     (let () (declare (not safe)) (##car _%e3126031333%_))))
                (if (gx#stx-datum? _%hd3126131337%_)
                    (let ((_%e3126331343%_ (gx#stx-e _%hd3126131337%_)))
                      (if (equal? _%e3126331343%_ 'simple:)
                          (if (gx#stx-pair? _%tl3126231340%_)
                              (let ((_%e3126431347%_
                                     (gx#syntax-e _%tl3126231340%_)))
                                (let ((_%tl3126631354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3126431347%_)))
                                      (_%hd3126531351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3126431347%_))))
                                  (if (gx#stx-null? _%tl3126631354%_)
                                      (_%__kont3863938640%_ _%hd3126531351%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3125731280%_)))))
                              (let () (declare (not safe)) (_%g3125731280%_)))
                          (if (equal? _%e3126331343%_ 'list:)
                              (if (gx#stx-pair? _%tl3126231340%_)
                                  (let ((_%e3127231301%_
                                         (gx#syntax-e _%tl3126231340%_)))
                                    (let ((_%tl3127431308%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3127231301%_)))
                                          (_%hd3127331305%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3127231301%_))))
                                      (if (gx#stx-null? _%tl3127431308%_)
                                          (_%__kont3864138642%_
                                           _%hd3127331305%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3125731280%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3125731280%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3125731280%_)))))
                    (let () (declare (not safe)) (_%g3125731280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3125731280%_)))))))
                                         (_%__kont3882138822%_
                                          (lambda (_%L31047%_)
                                            (let* ((_%__stx3858638587%_
                                                    _%L31047%_)
                                                   (_%g3106231085%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx3858638587%_))))
                                              (let ((_%__kont3858938590%_
                                                     (lambda (_%L31162%_)
                                                       (let* ((_%g3117631184%_
                                                               (lambda (_%g3117731180%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g3117731180%_)))
                      (_%g3117531203%_
                       (lambda (_%g3117731188%_)
                         ((lambda (_%L31191%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%L30473%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%L30473%_ '()))
                              (cons _%L31191%_ '())))
                  (cons (_%generate-simple-vector29208%_
                         _%tgt30452%_
                         _%L31162%_
                         '0
                         _%K30455%_
                         _%E30456%_)
                        (cons _%E30456%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E30456%_ '())))))
                          _%g3117731188%_))))
                 (_%g3117531203%_ (gx#stx-length _%L31162%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont3859138592%_
                                                     (lambda (_%L31116%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%L30473%_ '()))
                           (cons (_%generate-list-vector29209%_
                                  _%tgt30452%_
                                  _%L31116%_
                                  'vector->list
                                  _%K30455%_
                                  _%E30456%_)
                                 (cons _%E30456%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx3858638587%_)
                                                    (let ((_%e3106531138%_
                                                           (gx#syntax-e
                                                            _%__stx3858638587%_)))
                                                      (let ((_%tl3106731145%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3106531138%_)))
                    (_%hd3106631142%_
                     (let () (declare (not safe)) (##car _%e3106531138%_))))
                (if (gx#stx-datum? _%hd3106631142%_)
                    (let ((_%e3106831148%_ (gx#stx-e _%hd3106631142%_)))
                      (if (equal? _%e3106831148%_ 'simple:)
                          (if (gx#stx-pair? _%tl3106731145%_)
                              (let ((_%e3106931152%_
                                     (gx#syntax-e _%tl3106731145%_)))
                                (let ((_%tl3107131159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3106931152%_)))
                                      (_%hd3107031156%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3106931152%_))))
                                  (if (gx#stx-null? _%tl3107131159%_)
                                      (_%__kont3858938590%_ _%hd3107031156%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3106231085%_)))))
                              (let () (declare (not safe)) (_%g3106231085%_)))
                          (if (equal? _%e3106831148%_ 'list:)
                              (if (gx#stx-pair? _%tl3106731145%_)
                                  (let ((_%e3107731106%_
                                         (gx#syntax-e _%tl3106731145%_)))
                                    (let ((_%tl3107931113%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3107731106%_)))
                                          (_%hd3107831110%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3107731106%_))))
                                      (if (gx#stx-null? _%tl3107931113%_)
                                          (_%__kont3859138592%_
                                           _%hd3107831110%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3106231085%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3106231085%_)))
                              (let ()
                                (declare (not safe))
                                (_%g3106231085%_)))))
                    (let () (declare (not safe)) (_%g3106231085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3106231085%_)))))))
                                         (_%__kont3882338824%_
                                          (lambda (_%L30998%_ _%L31000%_)
                                            (_%generate-struct29210%_
                                             (gx#stx-e _%L31000%_)
                                             _%tgt30452%_
                                             _%L30998%_
                                             _%K30455%_
                                             _%E30456%_)))
                                         (_%__kont3882538826%_
                                          (lambda (_%L30939%_ _%L30941%_)
                                            (_%generate-class29213%_
                                             (gx#stx-e _%L30941%_)
                                             _%tgt30452%_
                                             _%L30939%_
                                             _%K30455%_
                                             _%E30456%_)))
                                         (_%__kont3882738828%_
                                          (lambda (_%L30836%_)
                                            (let* ((_%g3085030858%_
                                                    (lambda (_%g3085130854%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3085130854%_)))
                                                   (_%g3084930877%_
                                                    (lambda (_%g3085130862%_)
                                                      ((lambda (_%L30865%_)
                                                         (cons 'if
                                                               (cons (cons _%L30865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%L30473%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L30836%_ '()))
                                               '())))
                             (cons _%K30455%_ (cons _%E30456%_ '())))))
               _%g3085130862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3084930877%_
                                               (let ((_%e30881%_
                                                      (gx#stx-e _%L30836%_)))
                                                 (if (or (symbol? _%e30881%_)
                                                         (keyword? _%e30881%_)
                                                         (immediate?
                                                          _%e30881%_))
                                                     '##eq?
                                                     (if (number? _%e30881%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont3882938830%_
                                          (lambda (_%L30756%_ _%L30758%_)
                                            (let* ((_%g3077430782%_
                                                    (lambda (_%g3077530778%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g3077530778%_)))
                                                   (_%g3077330801%_
                                                    (lambda (_%g3077530786%_)
                                                      ((lambda (_%L30789%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%L30789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%L30758%_
                                                     (cons _%L30473%_ '()))
                                               '()))
                                   '())
                             (cons (_%generate129205%_
                                    _%L30789%_
                                    _%L30756%_
                                    _%K30455%_
                                    _%E30456%_)
                                   '()))))
               _%g3077530786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g3077330801%_
                                               (gx#genident 'e)))))
                                         (_%__kont3883138832%_
                                          (lambda (_%L30698%_)
                                            (cons 'let
                                                  (cons (cons (cons _%L30698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L30473%_ '()))
                      '())
                (cons _%K30455%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont3883338834%_
                                          (lambda () _%K30455%_)))
                                     (if (gx#stx-pair? _%__stx3880038801%_)
                                         (let ((_%e3050431940%_
                                                (gx#syntax-e
                                                 _%__stx3880038801%_)))
                                           (let ((_%tl3050631947%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e3050431940%_)))
                                                 (_%hd3050531944%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e3050431940%_))))
                                             (if (gx#stx-datum?
                                                  _%hd3050531944%_)
                                                 (let ((_%e3050731950%_
                                                        (gx#stx-e
                                                         _%hd3050531944%_)))
                                                   (if (equal? _%e3050731950%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl3050631947%_)
                                                           (let ((_%e3050831954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3050631947%_)))
                     (let ((_%tl3051031961%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3050831954%_)))
                           (_%hd3050931958%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3050831954%_))))
                       (_%__kont3880338804%_
                        _%tl3051031961%_
                        _%hd3050931958%_)))
                   (let () (declare (not safe)) (_%g3050030642%_)))
               (if (equal? _%e3050731950%_ 'and:)
                   (_%__kont3880538806%_ _%tl3050631947%_)
                   (if (equal? _%e3050731950%_ 'or:)
                       (_%__kont3880738808%_ _%tl3050631947%_)
                       (if (equal? _%e3050731950%_ 'not:)
                           (if (gx#stx-pair? _%tl3050631947%_)
                               (let ((_%e3052631723%_
                                      (gx#syntax-e _%tl3050631947%_)))
                                 (let ((_%tl3052831730%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3052631723%_)))
                                       (_%hd3052731727%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3052631723%_))))
                                   (if (gx#stx-null? _%tl3052831730%_)
                                       (_%__kont3880938810%_ _%hd3052731727%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050030642%_)))))
                               (let () (declare (not safe)) (_%g3050030642%_)))
                           (if (equal? _%e3050731950%_ 'cons:)
                               (if (gx#stx-pair? _%tl3050631947%_)
                                   (let ((_%e3053531587%_
                                          (gx#syntax-e _%tl3050631947%_)))
                                     (let ((_%tl3053731594%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3053531587%_)))
                                           (_%hd3053631591%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3053531587%_))))
                                       (if (gx#stx-pair? _%tl3053731594%_)
                                           (let ((_%e3053831597%_
                                                  (gx#syntax-e
                                                   _%tl3053731594%_)))
                                             (let ((_%tl3054031604%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3053831597%_)))
                                                   (_%hd3053931601%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3053831597%_))))
                                               (if (gx#stx-null?
                                                    _%tl3054031604%_)
                                                   (_%__kont3881138812%_
                                                    _%hd3053931601%_
                                                    _%hd3053631591%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3050030642%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3050030642%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050030642%_)))
                               (if (equal? _%e3050731950%_ 'null:)
                                   (if (gx#stx-null? _%tl3050631947%_)
                                       (_%__kont3881338814%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050030642%_)))
                                   (if (equal? _%e3050731950%_ 'splice:)
                                       (if (gx#stx-pair? _%tl3050631947%_)
                                           (let ((_%e3055131503%_
                                                  (gx#syntax-e
                                                   _%tl3050631947%_)))
                                             (let ((_%tl3055331510%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e3055131503%_)))
                                                   (_%hd3055231507%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e3055131503%_))))
                                               (if (gx#stx-pair?
                                                    _%tl3055331510%_)
                                                   (let ((_%e3055431513%_
                                                          (gx#syntax-e
                                                           _%tl3055331510%_)))
                                                     (let ((_%tl3055631520%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3055431513%_)))
                                                           (_%hd3055531517%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3055431513%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3055631520%_)
                                                           (_%__kont3881538816%_
                                                            _%hd3055531517%_
                                                            _%hd3055231507%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3050030642%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3050030642%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g3050030642%_)))
                                       (if (equal? _%e3050731950%_ 'box:)
                                           (if (gx#stx-pair? _%tl3050631947%_)
                                               (let ((_%e3056231427%_
                                                      (gx#syntax-e
                                                       _%tl3050631947%_)))
                                                 (let ((_%tl3056431434%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e3056231427%_)))
                                                       (_%hd3056331431%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e3056231427%_))))
                                                   (if (gx#stx-null?
                                                        _%tl3056431434%_)
                                                       (_%__kont3881738818%_
                                                        _%hd3056331431%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g3050030642%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3050030642%_)))
                                           (if (equal? _%e3050731950%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl3050631947%_)
                                                   (let ((_%e3057031232%_
                                                          (gx#syntax-e
                                                           _%tl3050631947%_)))
                                                     (let ((_%tl3057231239%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e3057031232%_)))
                                                           (_%hd3057131236%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e3057031232%_))))
                                                       (if (gx#stx-null?
                                                            _%tl3057231239%_)
                                                           (_%__kont3881938820%_
                                                            _%hd3057131236%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g3050030642%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g3050030642%_)))
                                               (if (equal? _%e3050731950%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl3050631947%_)
                                                       (let ((_%e3057831037%_
                                                              (gx#syntax-e
                                                               _%tl3050631947%_)))
                                                         (let ((_%tl3058031044%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e3057831037%_)))
                       (_%hd3057931041%_
                        (let () (declare (not safe)) (##car _%e3057831037%_))))
                   (if (gx#stx-null? _%tl3058031044%_)
                       (_%__kont3882138822%_ _%hd3057931041%_)
                       (let () (declare (not safe)) (_%g3050030642%_)))))
               (let () (declare (not safe)) (_%g3050030642%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e3050731950%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl3050631947%_)
                                                           (let ((_%e3058730978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl3050631947%_)))
                     (let ((_%tl3058930985%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e3058730978%_)))
                           (_%hd3058830982%_
                            (let ()
                              (declare (not safe))
                              (##car _%e3058730978%_))))
                       (if (gx#stx-pair? _%tl3058930985%_)
                           (let ((_%e3059030988%_
                                  (gx#syntax-e _%tl3058930985%_)))
                             (let ((_%tl3059230995%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3059030988%_)))
                                   (_%hd3059130992%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3059030988%_))))
                               (if (gx#stx-null? _%tl3059230995%_)
                                   (_%__kont3882338824%_
                                    _%hd3059130992%_
                                    _%hd3058830982%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050030642%_)))))
                           (let () (declare (not safe)) (_%g3050030642%_)))))
                   (let () (declare (not safe)) (_%g3050030642%_)))
               (if (equal? _%e3050731950%_ 'class:)
                   (if (gx#stx-pair? _%tl3050631947%_)
                       (let ((_%e3059930919%_ (gx#syntax-e _%tl3050631947%_)))
                         (let ((_%tl3060130926%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e3059930919%_)))
                               (_%hd3060030923%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e3059930919%_))))
                           (if (gx#stx-pair? _%tl3060130926%_)
                               (let ((_%e3060230929%_
                                      (gx#syntax-e _%tl3060130926%_)))
                                 (let ((_%tl3060430936%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3060230929%_)))
                                       (_%hd3060330933%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3060230929%_))))
                                   (if (gx#stx-null? _%tl3060430936%_)
                                       (_%__kont3882538826%_
                                        _%hd3060330933%_
                                        _%hd3060030923%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050030642%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g3050030642%_)))))
                       (let () (declare (not safe)) (_%g3050030642%_)))
                   (if (equal? _%e3050731950%_ 'datum:)
                       (if (gx#stx-pair? _%tl3050631947%_)
                           (let ((_%e3061030826%_
                                  (gx#syntax-e _%tl3050631947%_)))
                             (let ((_%tl3061230833%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e3061030826%_)))
                                   (_%hd3061130830%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e3061030826%_))))
                               (if (gx#stx-null? _%tl3061230833%_)
                                   (_%__kont3882738828%_ _%hd3061130830%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050030642%_)))))
                           (let () (declare (not safe)) (_%g3050030642%_)))
                       (if (equal? _%e3050731950%_ 'apply:)
                           (if (gx#stx-pair? _%tl3050631947%_)
                               (let ((_%e3061930736%_
                                      (gx#syntax-e _%tl3050631947%_)))
                                 (let ((_%tl3062130743%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e3061930736%_)))
                                       (_%hd3062030740%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e3061930736%_))))
                                   (if (gx#stx-pair? _%tl3062130743%_)
                                       (let ((_%e3062230746%_
                                              (gx#syntax-e _%tl3062130743%_)))
                                         (let ((_%tl3062430753%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e3062230746%_)))
                                               (_%hd3062330750%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e3062230746%_))))
                                           (if (gx#stx-null? _%tl3062430753%_)
                                               (_%__kont3882938830%_
                                                _%hd3062330750%_
                                                _%hd3062030740%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g3050030642%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050030642%_)))))
                               (let () (declare (not safe)) (_%g3050030642%_)))
                           (if (equal? _%e3050731950%_ 'var:)
                               (if (gx#stx-pair? _%tl3050631947%_)
                                   (let ((_%e3063030688%_
                                          (gx#syntax-e _%tl3050631947%_)))
                                     (let ((_%tl3063230695%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e3063030688%_)))
                                           (_%hd3063130692%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e3063030688%_))))
                                       (if (gx#stx-null? _%tl3063230695%_)
                                           (_%__kont3883138832%_
                                            _%hd3063130692%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g3050030642%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050030642%_)))
                               (if (equal? _%e3050731950%_ 'any:)
                                   (if (gx#stx-null? _%tl3050631947%_)
                                       (_%__kont3883338834%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g3050030642%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g3050030642%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g3050030642%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g3050030642%_))))))
                               _%g3045930470%_))))
                      (_%g3045732249%_ _%tgt30452%_))))
                 (_%generate-splice29207%_
                  (lambda (_%tgt29824%_
                           _%hd29826%_
                           _%rest29827%_
                           _%K29828%_
                           _%E29829%_)
                    (let* ((_%g2983129848%_
                            (lambda (_%g2983229844%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2983229844%_)))
                           (_%g2983030448%_
                            (lambda (_%g2983229852%_)
                              (if (gx#stx-pair/null? _%g2983229852%_)
                                  (let ((_g39955_
                                         (gx#syntax-split-splice
                                          _%g2983229852%_
                                          '0)))
                                    (begin
                                      (let ((_g39956_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g39955_)
                                                   (##values-length _g39955_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g39956_ 2)))
                                            (error "Context expects 2 values"
                                                   _g39956_)))
                                      (let ((_%target2983429855%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39955_ 0)))
                                            (_%tl2983629858%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g39955_ 1))))
                                        (if (gx#stx-null? _%tl2983629858%_)
                                            (letrec ((_%loop2983729861%_
                                                      (lambda (_%hd2983529865%_
                                                               _%var2984129868%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2983529865%_)
                                                            (let ((_%e2983829871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2983529865%_)))
                      (let ((_%lp-hd2983929875%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2983829871%_)))
                            (_%lp-tl2984029878%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2983829871%_))))
                        (_%loop2983729861%_
                         _%lp-tl2984029878%_
                         (cons _%lp-hd2983929875%_ _%var2984129868%_))))
                    (let ((_%var2984229881%_ (reverse _%var2984129868%_)))
                      ((lambda (_%L29885%_)
                         (let* ((_%g2990129918%_
                                 (lambda (_%g2990229914%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2990229914%_)))
                                (_%g2990030436%_
                                 (lambda (_%g2990229922%_)
                                   (if (gx#stx-pair/null? _%g2990229922%_)
                                       (let ((_g39957_
                                              (gx#syntax-split-splice
                                               _%g2990229922%_
                                               '0)))
                                         (begin
                                           (let ((_g39958_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g39957_)
                                                        (##values-length
                                                         _g39957_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g39958_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g39958_)))
                                           (let ((_%target2990429925%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g39957_ 0)))
                                                 (_%tl2990629928%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g39957_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2990629928%_)
                                                 (letrec ((_%loop2990729931%_
                                                           (lambda (_%hd2990529935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r2991129938%_)
                     (if (gx#stx-pair? _%hd2990529935%_)
                         (let ((_%e2990829941%_
                                (gx#syntax-e _%hd2990529935%_)))
                           (let ((_%lp-hd2990929945%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2990829941%_)))
                                 (_%lp-tl2991029948%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2990829941%_))))
                             (_%loop2990729931%_
                              _%lp-tl2991029948%_
                              (cons _%lp-hd2990929945%_ _%var-r2991129938%_))))
                         (let ((_%var-r2991229951%_
                                (reverse _%var-r2991129938%_)))
                           ((lambda (_%L29955%_)
                              (let* ((_%g2997229989%_
                                      (lambda (_%g2997329985%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2997329985%_)))
                                     (_%g2997130424%_
                                      (lambda (_%g2997329993%_)
                                        (if (gx#stx-pair/null? _%g2997329993%_)
                                            (let ((_g39959_
                                                   (gx#syntax-split-splice
                                                    _%g2997329993%_
                                                    '0)))
                                              (begin
                                                (let ((_g39960_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g39959_)
                                                             (##values-length
                                                              _g39959_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g39960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g39960_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2997529996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39959_
                                                          0)))
                                                      (_%tl2997729999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g39959_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2997729999%_)
                                                      (letrec ((_%loop2997830002%_
                                                                (lambda (_%hd2997630006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init2998230009%_)
                          (if (gx#stx-pair? _%hd2997630006%_)
                              (let ((_%e2997930012%_
                                     (gx#syntax-e _%hd2997630006%_)))
                                (let ((_%lp-hd2998030016%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2997930012%_)))
                                      (_%lp-tl2998130019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2997930012%_))))
                                  (_%loop2997830002%_
                                   _%lp-tl2998130019%_
                                   (cons _%lp-hd2998030016%_
                                         _%init2998230009%_))))
                              (let ((_%init2998330022%_
                                     (reverse _%init2998230009%_)))
                                ((lambda (_%L30026%_)
                                   (let* ((_%g3004330051%_
                                           (lambda (_%g3004430047%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g3004430047%_)))
                                          (_%g3004230420%_
                                           (lambda (_%g3004430055%_)
                                             ((lambda (_%L30058%_)
                                                (let* ((_%g3007130079%_
                                                        (lambda (_%g3007230075%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g3007230075%_)))
                                                       (_%g3007030416%_
                                                        (lambda (_%g3007230083%_)
                                                          ((lambda (_%L30086%_)
                                                             (let* ((_%g3009930107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g3010030103%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g3010030103%_)))
                            (_%g3009830412%_
                             (lambda (_%g3010030111%_)
                               ((lambda (_%L30114%_)
                                  (let* ((_%g3012730135%_
                                          (lambda (_%g3012830131%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g3012830131%_)))
                                         (_%g3012630408%_
                                          (lambda (_%g3012830139%_)
                                            ((lambda (_%L30142%_)
                                               (let* ((_%g3015530163%_
                                                       (lambda (_%g3015630159%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g3015630159%_)))
                                                      (_%g3015430404%_
                                                       (lambda (_%g3015630167%_)
                                                         ((lambda (_%L30170%_)
                                                            (let* ((_%g3018330191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g3018430187%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g3018430187%_)))
                           (_%g3018230400%_
                            (lambda (_%g3018430195%_)
                              ((lambda (_%L30198%_)
                                 (let* ((_%g3021130219%_
                                         (lambda (_%g3021230215%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3021230215%_)))
                                        (_%g3021030396%_
                                         (lambda (_%g3021230223%_)
                                           ((lambda (_%L30226%_)
                                              (let* ((_%g3023930247%_
                                                      (lambda (_%g3024030243%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g3024030243%_)))
                                                     (_%g3023830381%_
                                                      (lambda (_%g3024030251%_)
                                                        ((lambda (_%L30254%_)
                                                           (let* ((_%g3026730275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g3026830271%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3026830271%_)))
                          (_%g3026630369%_
                           (lambda (_%g3026830279%_)
                             ((lambda (_%L30282%_)
                                (let* ((_%g3029530303%_
                                        (lambda (_%g3029630299%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3029630299%_)))
                                       (_%g3029430365%_
                                        (lambda (_%g3029630307%_)
                                          ((lambda (_%L30310%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%L30086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%L30198%_
                                                     (foldr (lambda (_%g3033230335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g3033330338%_)
                      (cons _%g3033230335%_ _%g3033330338%_))
                    '()
                    _%L29885%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L30226%_ '())))
                                   '()))
                       (cons (cons _%L30142%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%L30170%_
                                                           (cons _%L30198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3033030341%_ _%g3033130344%_)
                                  (cons _%g3033030341%_ _%g3033130344%_))
                                '()
                                _%L29955%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L30310%_ '())))
                                         '()))
                             (cons (cons _%L30114%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%L30198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g3032830347%_ _%g3032930350%_)
                                  (cons _%g3032830347%_ _%g3032930350%_))
                                '()
                                _%L29955%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%L30198%_ '()))
                                     (cons (cons _%L30142%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%L30198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%L30198%_
                     (foldr (lambda (_%g3032630353%_ _%g3032730356%_)
                              (cons _%g3032630353%_ _%g3032730356%_))
                            '()
                            _%L29955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L30282%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%L30114%_
                             (cons _%L30058%_
                                   (foldr (lambda (_%g3032430359%_
                                                   _%g3032530362%_)
                                            (cons _%g3032430359%_
                                                  _%g3032530362%_))
                                          '()
                                          _%L30026%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3029630307%_))))
                                  (_%g3029430365%_
                                   (_%generate129205%_
                                    _%L30170%_
                                    _%hd29826%_
                                    _%L30254%_
                                    _%L30282%_))))
                              _%g3026830279%_))))
                     (_%g3026630369%_
                      (cons _%L30086%_
                            (cons _%L30198%_
                                  (foldr (lambda (_%g3037230375%_
                                                  _%g3037330378%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g3037230375%_
                                                             '()))
                                                 _%g3037330378%_))
                                         '()
                                         _%L29955%_))))))
                 _%g3024030251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g3023830381%_
                                                 (cons _%L30114%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%L30198%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets _%L29955%_ _%L29885%_)
                       (foldr (lambda (_%g3038430388%_
                                       _%g3038530391%_
                                       _%g3038630393%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g3038530391%_
                                                  (cons _%g3038430388%_ '())))
                                      _%g3038630393%_))
                              '()
                              _%L29955%_
                              _%L29885%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g3021230223%_))))
                                   (_%g3021030396%_
                                    (_%generate129205%_
                                     _%L30198%_
                                     _%rest29827%_
                                     _%K29828%_
                                     _%E29829%_))))
                               _%g3018430195%_))))
                      (_%g3018230400%_ (gx#genident 'rest))))
                  _%g3015630167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g3015430404%_
                                                  (gx#genident 'hd))))
                                             _%g3012830139%_))))
                                    (_%g3012630408%_
                                     (gx#genident 'splice-try))))
                                _%g3010030111%_))))
                       (_%g3009830412%_ (gx#genident 'splice-loop))))
                   _%g3007230083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g3007030416%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g3004430055%_))))
                                     (_%g3004230420%_ _%tgt29824%_)))
                                 _%init2998330022%_))))))
                (_%loop2997830002%_ _%target2997529996%_ '()))
              (_%g2997229989%_ _%g2997329993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2997229989%_
                                             _%g2997329993%_)))))
                                (_%g2997130424%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g3042730430%_
                                                   _%g3042830433%_)
                                            (cons _%g3042730430%_
                                                  _%g3042830433%_))
                                          '()
                                          _%L29885%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r2991229951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2990729931%_
                                                    _%target2990429925%_
                                                    '()))
                                                 (_%g2990129918%_
                                                  _%g2990229922%_)))))
                                       (_%g2990129918%_ _%g2990229922%_)))))
                           (_%g2990030436%_
                            (gx#gentemps
                             (foldr (lambda (_%g3043930442%_ _%g3044030445%_)
                                      (cons _%g3043930442%_ _%g3044030445%_))
                                    '()
                                    _%L29885%_)))))
                       _%var2984229881%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2983729861%_
                                               _%target2983429855%_
                                               '()))
                                            (_%g2983129848%_
                                             _%g2983229852%_)))))
                                  (_%g2983129848%_ _%g2983229852%_)))))
                      (_%g2983030448%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd29826%_)))))
                 (_%generate-simple-vector29208%_
                  (lambda (_%tgt29666%_
                           _%body29668%_
                           _%start29669%_
                           _%K29670%_
                           _%E29671%_)
                    (let _%recur29673%_ ((_%rest29676%_ _%body29668%_)
                                         (_%off29678%_ _%start29669%_))
                      (let* ((_%__stx3915839159%_ _%rest29676%_)
                             (_%g2968129693%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3915839159%_))))
                        (let ((_%__kont3916139162%_
                               (lambda (_%L29721%_ _%L29723%_)
                                 (let* ((_%g2973829757%_
                                         (lambda (_%g2973929753%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2973929753%_)))
                                        (_%g2973729816%_
                                         (lambda (_%g2973929761%_)
                                           (if (gx#stx-pair? _%g2973929761%_)
                                               (let ((_%e2974329764%_
                                                      (gx#syntax-e
                                                       _%g2973929761%_)))
                                                 (let ((_%hd2974429768%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2974329764%_)))
                                                       (_%tl2974529771%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2974329764%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl2974529771%_)
                                                       (let ((_%e2974629774%_
                                                              (gx#syntax-e
                                                               _%tl2974529771%_)))
                                                         (let ((_%hd2974729778%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2974629774%_)))
                       (_%tl2974829781%_
                        (let () (declare (not safe)) (##cdr _%e2974629774%_))))
                   (if (gx#stx-pair? _%tl2974829781%_)
                       (let ((_%e2974929784%_ (gx#syntax-e _%tl2974829781%_)))
                         (let ((_%hd2975029788%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e2974929784%_)))
                               (_%tl2975129791%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e2974929784%_))))
                           (if (gx#stx-null? _%tl2975129791%_)
                               ((lambda (_%L29794%_ _%L29796%_ _%L29797%_)
                                  (cons 'let
                                        (cons (cons (cons _%L29797%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector-ref)
                              (cons _%L29796%_ (cons _%L29794%_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_%generate129205%_
                                                     _%L29797%_
                                                     _%L29723%_
                                                     (_%recur29673%_
                                                      _%L29721%_
                                                      (fx1+ _%off29678%_))
                                                     _%E29671%_)
                                                    '()))))
                                _%hd2975029788%_
                                _%hd2974729778%_
                                _%hd2974429768%_)
                               (_%g2973829757%_ _%g2973929761%_))))
                       (_%g2973829757%_ _%g2973929761%_))))
               (_%g2973829757%_ _%g2973929761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2973829757%_
                                                _%g2973929761%_)))))
                                   (_%g2973729816%_
                                    (list (gx#genident 'e)
                                          _%tgt29666%_
                                          _%off29678%_)))))
                              (_%__kont3916339164%_ (lambda () _%K29670%_)))
                          (if (gx#stx-pair? _%__stx3915839159%_)
                              (let ((_%e2968529711%_
                                     (gx#syntax-e _%__stx3915839159%_)))
                                (let ((_%tl2968729718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2968529711%_)))
                                      (_%hd2968629715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2968529711%_))))
                                  (_%__kont3916139162%_
                                   _%tl2968729718%_
                                   _%hd2968629715%_)))
                              (_%__kont3916339164%_)))))))
                 (_%generate-list-vector29209%_
                  (lambda (_%tgt29558%_
                           _%body29560%_
                           _%->list29561%_
                           _%K29562%_
                           _%E29563%_)
                    (let* ((_%g2956529573%_
                            (lambda (_%g2956629569%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2956629569%_)))
                           (_%g2956429662%_
                            (lambda (_%g2956629577%_)
                              ((lambda (_%L29580%_)
                                 (let* ((_%g2959229600%_
                                         (lambda (_%g2959329596%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2959329596%_)))
                                        (_%g2959129658%_
                                         (lambda (_%g2959329604%_)
                                           ((lambda (_%L29607%_)
                                              (let* ((_%g2962029628%_
                                                      (lambda (_%g2962129624%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2962129624%_)))
                                                     (_%g2961929650%_
                                                      (lambda (_%g2962129632%_)
                                                        ((lambda (_%L29635%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%L29580%_ (cons _%L29635%_ '()))
                                     '())
                               (cons (_%generate129205%_
                                      _%L29580%_
                                      _%body29560%_
                                      _%K29562%_
                                      _%E29563%_)
                                     '()))))
                 _%g2962129632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2961929650%_
                                                 (let ((_%$e29654%_
                                                        _%->list29561%_))
                                                   (if (eq? 'values->list
                                                            _%$e29654%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%L29607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e29654%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%L29607%_ '()))
                   (if (eq? 'struct->list _%$e29654%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%L29607%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx29198%_
                        _%->list29561%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2959329604%_))))
                                   (_%g2959129658%_ _%tgt29558%_)))
                               _%g2956629577%_))))
                      (_%g2956429662%_ (gx#genident 'e)))))
                 (_%generate-struct29210%_
                  (lambda (_%info29429%_
                           _%tgt29431%_
                           _%body29432%_
                           _%K29433%_
                           _%E29434%_)
                    (let* ((_%__stx3917439175%_ _%body29432%_)
                           (_%g2943729460%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3917439175%_))))
                      (let ((_%__kont3917739178%_
                             (lambda (_%L29537%_)
                               (let ((_%fields29551%_
                                      (_%struct-field-accessors29212%_
                                       _%info29429%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj39928
                                                          _%info29429%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj39928
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj39928
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj39928
                                                          'predicate)))
                                                   (cons _%tgt29431%_ '()))
                                             (cons (_%generate-simple-struct-body29211%_
                                                    _%info29429%_
                                                    _%tgt29431%_
                                                    _%L29537%_
                                                    _%K29433%_
                                                    _%E29434%_)
                                                   (cons _%E29434%_ '())))))))
                            (_%__kont3917939180%_
                             (lambda (_%L29491%_)
                               (cons 'if
                                     (cons (cons (let ((__obj39929
                                                        _%info29429%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj39929
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj39929
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj39929
                                                        'predicate)))
                                                 (cons _%tgt29431%_ '()))
                                           (cons (_%generate-list-vector29209%_
                                                  _%tgt29431%_
                                                  _%L29491%_
                                                  'struct->list
                                                  _%K29433%_
                                                  _%E29434%_)
                                                 (cons _%E29434%_ '())))))))
                        (if (gx#stx-pair? _%__stx3917439175%_)
                            (let ((_%e2944029513%_
                                   (gx#syntax-e _%__stx3917439175%_)))
                              (let ((_%tl2944229520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2944029513%_)))
                                    (_%hd2944129517%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2944029513%_))))
                                (if (gx#stx-datum? _%hd2944129517%_)
                                    (let ((_%e2944329523%_
                                           (gx#stx-e _%hd2944129517%_)))
                                      (if (equal? _%e2944329523%_ 'simple:)
                                          (if (gx#stx-pair? _%tl2944229520%_)
                                              (let ((_%e2944429527%_
                                                     (gx#syntax-e
                                                      _%tl2944229520%_)))
                                                (let ((_%tl2944629534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2944429527%_)))
                                                      (_%hd2944529531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2944429527%_))))
                                                  (if (gx#stx-null?
                                                       _%tl2944629534%_)
                                                      (_%__kont3917739178%_
                                                       _%hd2944529531%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2943729460%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2943729460%_)))
                                          (if (equal? _%e2944329523%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl2944229520%_)
                                                  (let ((_%e2945229481%_
                                                         (gx#syntax-e
                                                          _%tl2944229520%_)))
                                                    (let ((_%tl2945429488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2945229481%_)))
                                                          (_%hd2945329485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2945229481%_))))
                                                      (if (gx#stx-null?
                                                           _%tl2945429488%_)
                                                          (_%__kont3917939180%_
                                                           _%hd2945329485%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g2943729460%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2943729460%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2943729460%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2943729460%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2943729460%_)))))))
                 (_%generate-simple-struct-body29211%_
                  (lambda (_%info29349%_
                           _%tgt29351%_
                           _%body29352%_
                           _%K29353%_
                           _%E29354%_)
                    (let _%recur29356%_ ((_%rest29359%_ _%body29352%_)
                                         (_%fields29361%_
                                          (_%struct-field-accessors29212%_
                                           _%info29349%_)))
                      (let* ((_%__stx3922439225%_ _%rest29359%_)
                             (_%g2936429376%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3922439225%_))))
                        (let ((_%__kont3922739228%_
                               (lambda (_%L29404%_ _%L29406%_)
                                 (if (null? _%fields29361%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx29198%_
                                      _%info29349%_
                                      (let ((__obj39930 _%info29349%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39930
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39930
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39930
                                             'name))))
                                     (let ((_%$tgt29421%_ (gx#genident 'e))
                                           (_%getf29423%_
                                            (car _%fields29361%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt29421%_
                                                               (cons (cons _%getf29423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt29351%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate129205%_
                                                          _%$tgt29421%_
                                                          _%L29406%_
                                                          (_%recur29356%_
                                                           _%L29404%_
                                                           (cdr _%fields29361%_))
                                                          _%E29354%_)
                                                         '())))))))
                              (_%__kont3922939230%_ (lambda () _%K29353%_)))
                          (if (gx#stx-pair? _%__stx3922439225%_)
                              (let ((_%e2936829394%_
                                     (gx#syntax-e _%__stx3922439225%_)))
                                (let ((_%tl2937029401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2936829394%_)))
                                      (_%hd2936929398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2936829394%_))))
                                  (_%__kont3922739228%_
                                   _%tl2937029401%_
                                   _%hd2936929398%_)))
                              (_%__kont3922939230%_)))))))
                 (_%struct-field-accessors29212%_
                  (lambda (_%info29330%_)
                    (let _%recur29333%_ ((_%next29336%_
                                          (cons _%info29330%_ '())))
                      (if (null? _%next29336%_)
                          '()
                          (let ((_%ti29339%_ (car _%next29336%_)))
                            (let ((__tmp39962
                                   (_%recur29333%_
                                    (map gx#syntax-local-value
                                         (let ((__obj39931 _%ti29339%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj39931
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj39931
                                                  '3
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj39931
                                                'super))))))
                                  (__tmp39961
                                   (map (lambda (_%slot29342%_)
                                          (let ((_%$e29345%_
                                                 (agetq _%slot29342%_
                                                        (let ((__obj39932
                                                               _%ti29339%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj39932
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj39932 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj39932
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e29345%_
                                                _%$e29345%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx29198%_
                                                 _%info29330%_
                                                 _%slot29342%_))))
                                        (let ((__obj39933 _%ti29339%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj39933
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj39933
                                                 '4
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj39933
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp39962 __tmp39961)))))))
                 (_%generate-class29213%_
                  (lambda (_%info29323%_
                           _%tgt29325%_
                           _%body29326%_
                           _%K29327%_
                           _%E29328%_)
                    (cons 'if
                          (cons (cons (let ((__obj39934 _%info29323%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj39934
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj39934
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj39934
                                             'predicate)))
                                      (cons _%tgt29325%_ '()))
                                (cons (_%generate-class-body29214%_
                                       _%info29323%_
                                       _%tgt29325%_
                                       _%body29326%_
                                       _%K29327%_
                                       _%E29328%_)
                                      (cons _%E29328%_ '()))))))
                 (_%generate-class-body29214%_
                  (lambda (_%info29216%_
                           _%tgt29218%_
                           _%body29219%_
                           _%K29220%_
                           _%E29221%_)
                    (let _%recur29223%_ ((_%rest29226%_ _%body29219%_))
                      (let* ((_%__stx3924039241%_ _%rest29226%_)
                             (_%g2923029246%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3924039241%_))))
                        (let ((_%__kont3924339244%_
                               (lambda (_%L29284%_ _%L29286%_ _%L29287%_)
                                 (let ((_%$e29307%_
                                        (agetq (let ((__tmp39963
                                                      (keyword->string
                                                       (gx#stx-e _%L29287%_))))
                                                 (declare (not safe))
                                                 (##string->symbol __tmp39963))
                                               (let ((__obj39935
                                                      _%info29216%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj39935
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj39935
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj39935
                                                      'unchecked-accessors))))))
                                   (if _%$e29307%_
                                       ((lambda (_%getf29311%_)
                                          (let ((_%$tgt29314%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt29314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf29311%_ (cons _%tgt29218%_ '()))
                                  '()))
                      '())
                (cons (_%generate129205%_
                       _%$tgt29314%_
                       _%L29286%_
                       (_%recur29223%_ _%L29284%_)
                       _%E29221%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e29307%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx29198%_
                                        _%info29216%_
                                        _%L29287%_)))))
                              (_%__kont3924539246%_ (lambda () _%K29220%_)))
                          (if (gx#stx-pair? _%__stx3924039241%_)
                              (let ((_%e2923529264%_
                                     (gx#syntax-e _%__stx3924039241%_)))
                                (let ((_%tl2923729271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2923529264%_)))
                                      (_%hd2923629268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2923529264%_))))
                                  (if (gx#stx-pair? _%tl2923729271%_)
                                      (let ((_%e2923829274%_
                                             (gx#syntax-e _%tl2923729271%_)))
                                        (let ((_%tl2924029281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2923829274%_)))
                                              (_%hd2923929278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2923829274%_))))
                                          (_%__kont3924339244%_
                                           _%tl2924029281%_
                                           _%hd2923929278%_
                                           _%hd2923629268%_)))
                                      (_%__kont3924539246%_))))
                              (_%__kont3924539246%_))))))))
          (_%generate129205%_
           _%tgt29200%_
           _%ptree29201%_
           _%K29202%_
           _%E29203%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx28011%_ _%tgt-lst28013%_ _%clauses28014%_)
        (letrec ((_%parse-body28016%_
                  (lambda (_%hd-len29020%_)
                    (let _%lp29023%_ ((_%rest29026%_ _%clauses28014%_)
                                      (_%r29028%_ '()))
                      (let* ((_%__stx3929039291%_ _%rest29026%_)
                             (_%g2903129043%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx3929039291%_))))
                        (let ((_%__kont3929339294%_
                               (lambda (_%L29071%_ _%L29073%_)
                                 (let* ((_%__stx3926239263%_ _%L29073%_)
                                        (_%g2909029106%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx3926239263%_))))
                                   (let ((_%__kont3926539266%_
                                          (lambda (_%L29175%_)
                                            (if (gx#stx-null? _%L29071%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%L29175%_)
                                 (let ((_%$e29186%_
                                        (gx#stx-source _%L29073%_)))
                                   (if _%$e29186%_
                                       _%$e29186%_
                                       (gx#stx-source _%stx28011%_))))
                                '())))
              _%r29028%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx28011%_
                                                 _%L29073%_))))
                                         (_%__kont3926739268%_
                                          (lambda (_%L29134%_ _%L29136%_)
                                            (_%lp29023%_
                                             _%L29071%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g2914829150%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g2914829150%_
                           _%stx28011%_))
                        _%L29136%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _%L29134%_)
                              (let ((_%$e29154%_ (gx#stx-source _%L29073%_)))
                                (if _%$e29154%_
                                    _%$e29154%_
                                    (gx#stx-source _%stx28011%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r29028%_))))
                                         (_%__kont3926939270%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx28011%_
                                             _%L29073%_))))
                                     (let* ((_%__match3928739288%_
                                             (lambda (_%e2909829124%_
                                                      _%hd2909929128%_
                                                      _%tl2910029131%_)
                                               (let ((_%L29134%_
                                                      _%tl2910029131%_)
                                                     (_%L29136%_
                                                      _%hd2909929128%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29136%_)
                                                          (fx= (gx#stx-length
                                                                _%L29136%_)
                                                               _%hd-len29020%_)
                                                          (gx#stx-list?
                                                           _%L29134%_)
                                                          (not (gx#stx-null?
                                                                _%L29134%_)))
                                                     (_%__kont3926739268%_
                                                      _%L29134%_
                                                      _%L29136%_)
                                                     (_%__kont3926939270%_)))))
                                            (_%__match3928139282%_
                                             (lambda (_%e2909329165%_
                                                      _%hd2909429169%_
                                                      _%tl2909529172%_)
                                               (let ((_%L29175%_
                                                      _%tl2909529172%_))
                                                 (if (and (gx#stx-list?
                                                           _%L29175%_)
                                                          (not (gx#stx-null?
                                                                _%L29175%_)))
                                                     (_%__kont3926539266%_
                                                      _%L29175%_)
                                                     (_%__match3928739288%_
                                                      _%e2909329165%_
                                                      _%hd2909429169%_
                                                      _%tl2909529172%_))))))
                                       (if (gx#stx-pair? _%__stx3926239263%_)
                                           (let ((_%e2909329165%_
                                                  (gx#syntax-e
                                                   _%__stx3926239263%_)))
                                             (let ((_%tl2909529172%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2909329165%_)))
                                                   (_%hd2909429169%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2909329165%_))))
                                               (if (gx#identifier?
                                                    _%hd2909429169%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g39964_|
                                                        _%hd2909429169%_)
                                                       (_%__match3928139282%_
                                                        _%e2909329165%_
                                                        _%hd2909429169%_
                                                        _%tl2909529172%_)
                                                       (_%__match3928739288%_
                                                        _%e2909329165%_
                                                        _%hd2909429169%_
                                                        _%tl2909529172%_))
                                                   (_%__match3928739288%_
                                                    _%e2909329165%_
                                                    _%hd2909429169%_
                                                    _%tl2909529172%_))))
                                           (_%__kont3926939270%_)))))))
                              (_%__kont3929539296%_ (lambda () _%r29028%_)))
                          (if (gx#stx-pair? _%__stx3929039291%_)
                              (let ((_%e2903529061%_
                                     (gx#syntax-e _%__stx3929039291%_)))
                                (let ((_%tl2903729068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2903529061%_)))
                                      (_%hd2903629065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2903529061%_))))
                                  (_%__kont3929339294%_
                                   _%tl2903729068%_
                                   _%hd2903629065%_)))
                              (_%__kont3929539296%_)))))))
                 (_%generate-body28018%_
                  (lambda (_%body28722%_)
                    (let* ((_%g2872528733%_
                            (lambda (_%g2872628729%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2872628729%_)))
                           (_%g2872429016%_
                            (lambda (_%g2872628737%_)
                              ((lambda (_%L28740%_)
                                 (let* ((_%g2875228769%_
                                         (lambda (_%g2875328765%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2875328765%_)))
                                        (_%g2875129012%_
                                         (lambda (_%g2875328773%_)
                                           (if (gx#stx-pair/null?
                                                _%g2875328773%_)
                                               (let ((_g39965_
                                                      (gx#syntax-split-splice
                                                       _%g2875328773%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39966_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39965_)
                        (##values-length _g39965_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39966_ 2)))
                 (error "Context expects 2 values" _g39966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target2875528776%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39965_
                                                             0)))
                                                         (_%tl2875728779%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39965_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl2875728779%_)
                                                         (letrec ((_%loop2875828782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd2875628786%_ _%target2876228789%_)
                             (if (gx#stx-pair? _%hd2875628786%_)
                                 (let ((_%e2875928792%_
                                        (gx#syntax-e _%hd2875628786%_)))
                                   (let ((_%lp-hd2876028796%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2875928792%_)))
                                         (_%lp-tl2876128799%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2875928792%_))))
                                     (_%loop2875828782%_
                                      _%lp-tl2876128799%_
                                      (cons _%lp-hd2876028796%_
                                            _%target2876228789%_))))
                                 (let ((_%target2876328802%_
                                        (reverse _%target2876228789%_)))
                                   ((lambda (_%L28806%_)
                                      (let* ((_%g2882328840%_
                                              (lambda (_%g2882428836%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2882428836%_)))
                                             (_%g2882229008%_
                                              (lambda (_%g2882428844%_)
                                                (if (gx#stx-pair/null?
                                                     _%g2882428844%_)
                                                    (let ((_g39967_
                                                           (gx#syntax-split-splice
                                                            _%g2882428844%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g39968_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g39967_)
                             (##values-length _g39967_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g39968_ 2)))
                      (error "Context expects 2 values" _g39968_)))
                (let ((_%target2882628847%_
                       (let () (declare (not safe)) (##values-ref _g39967_ 0)))
                      (_%tl2882828850%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g39967_ 1))))
                  (if (gx#stx-null? _%tl2882828850%_)
                      (letrec ((_%loop2882928853%_
                                (lambda (_%hd2882728857%_
                                         _%fail-diagnostic2883328860%_)
                                  (if (gx#stx-pair? _%hd2882728857%_)
                                      (let ((_%e2883028863%_
                                             (gx#syntax-e _%hd2882728857%_)))
                                        (let ((_%lp-hd2883128867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2883028863%_)))
                                              (_%lp-tl2883228870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2883028863%_))))
                                          (_%loop2882928853%_
                                           _%lp-tl2883228870%_
                                           (cons _%lp-hd2883128867%_
                                                 _%fail-diagnostic2883328860%_))))
                                      (let ((_%fail-diagnostic2883428873%_
                                             (reverse _%fail-diagnostic2883328860%_)))
                                        ((lambda (_%L28877%_)
                                           (let* ((_%g2889428902%_
                                                   (lambda (_%g2889528898%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2889528898%_)))
                                                  (_%g2889328988%_
                                                   (lambda (_%g2889528906%_)
                                                     ((lambda (_%L28909%_)
                                                        (let* ((_%g2892228930%_
                                                                (lambda (_%g2892328926%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2892328926%_)))
                       (_%g2892128984%_
                        (lambda (_%g2892328934%_)
                          ((lambda (_%L28937%_)
                             (let* ((_%g2895028958%_
                                     (lambda (_%g2895128954%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2895128954%_)))
                                    (_%g2894928980%_
                                     (lambda (_%g2895128962%_)
                                       ((lambda (_%L28965%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%L28965%_ '()))))
                                        _%g2895128962%_))))
                               (_%g2894928980%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%L28740%_
                                                         (cons _%L28909%_ '()))
                                                   '())
                                             (cons _%L28937%_ '())))
                                 (gx#stx-source _%stx28011%_)))))
                           _%g2892328934%_))))
                  (_%g2892128984%_
                   (_%generate-clauses28019%_
                    _%body28722%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%L28740%_ '()) '())))))))
              _%g2889528906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2889328988%_
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
                                     (foldr (lambda (_%g2899128996%_
                                                     _%g2899228999%_)
                                              (cons _%g2899128996%_
                                                    _%g2899228999%_))
                                            (foldr (lambda (_%g2899329002%_
                                                            _%g2899429005%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g2899329002%_ '()))
                   _%g2899429005%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%L28877%_)
                                            _%L28806%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28011%_)))))
                                         _%fail-diagnostic2883428873%_))))))
                        (_%loop2882928853%_ _%target2882628847%_ '()))
                      (_%g2882328840%_ _%g2882428844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2882328840%_
                                                     _%g2882428844%_)))))
                                        (_%g2882229008%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses28014%_))))
                                    _%target2876328802%_))))))
                   (_%loop2875828782%_ _%target2875528776%_ '()))
                 (_%g2875228769%_ _%g2875328773%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2875228769%_
                                                _%g2875328773%_)))))
                                   (_%g2875129012%_ _%tgt-lst28013%_)))
                               _%g2872628737%_))))
                      (_%g2872429016%_ (gx#genident 'E)))))
                 (_%generate-clauses28019%_
                  (lambda (_%rest28374%_ _%E28376%_)
                    (let* ((_%__stx3930639307%_ _%rest28374%_)
                           (_%g2838028396%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3930639307%_))))
                      (let ((_%__kont3930939310%_
                             (lambda (_%L28630%_)
                               (let* ((_%g2864128659%_
                                       (lambda (_%g2864228655%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2864228655%_)))
                                      (_%g2864028714%_
                                       (lambda (_%g2864228663%_)
                                         (if (gx#stx-pair? _%g2864228663%_)
                                             (let ((_%e2864528666%_
                                                    (gx#syntax-e
                                                     _%g2864228663%_)))
                                               (let ((_%hd2864628670%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2864528666%_)))
                                                     (_%tl2864728673%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2864528666%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2864728673%_)
                                                     (let ((_%e2864828676%_
                                                            (gx#syntax-e
                                                             _%tl2864728673%_)))
                                                       (let ((_%hd2864928680%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2864828676%_)))
                     (_%tl2865028683%_
                      (let () (declare (not safe)) (##cdr _%e2864828676%_))))
                 (if (gx#stx-pair? _%tl2865028683%_)
                     (let ((_%e2865128686%_ (gx#syntax-e _%tl2865028683%_)))
                       (let ((_%hd2865228690%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2865128686%_)))
                             (_%tl2865328693%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2865128686%_))))
                         (if (gx#stx-null? _%tl2865328693%_)
                             ((lambda (_%L28696%_ _%L28698%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _%L28698%_)
                                                      (_%generate128020%_
                                                       _%L28698%_
                                                       _%L28696%_
                                                       _%E28376%_)
                                                      _%L28696%_)
                                                  '()))))
                              _%hd2865228690%_
                              _%hd2864928680%_)
                             (_%g2864128659%_ _%g2864228663%_))))
                     (_%g2864128659%_ _%g2864228663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2864128659%_
                                                      _%g2864228663%_))))
                                             (_%g2864128659%_
                                              _%g2864228663%_)))))
                                 (_%g2864028714%_ _%L28630%_))))
                            (_%__kont3931139312%_
                             (lambda (_%L28424%_ _%L28426%_)
                               (let* ((_%g2843928458%_
                                       (lambda (_%g2844028454%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g2844028454%_)))
                                      (_%g2843828609%_
                                       (lambda (_%g2844028462%_)
                                         (if (gx#stx-pair? _%g2844028462%_)
                                             (let ((_%e2844428465%_
                                                    (gx#syntax-e
                                                     _%g2844028462%_)))
                                               (let ((_%hd2844528469%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2844428465%_)))
                                                     (_%tl2844628472%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2844428465%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl2844628472%_)
                                                     (let ((_%e2844728475%_
                                                            (gx#syntax-e
                                                             _%tl2844628472%_)))
                                                       (let ((_%hd2844828479%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e2844728475%_)))
                     (_%tl2844928482%_
                      (let () (declare (not safe)) (##cdr _%e2844728475%_))))
                 (if (gx#stx-pair? _%tl2844928482%_)
                     (let ((_%e2845028485%_ (gx#syntax-e _%tl2844928482%_)))
                       (let ((_%hd2845128489%_
                              (let ()
                                (declare (not safe))
                                (##car _%e2845028485%_)))
                             (_%tl2845228492%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e2845028485%_))))
                         (if (gx#stx-null? _%tl2845228492%_)
                             ((lambda (_%L28495%_ _%L28497%_ _%L28498%_)
                                (if (gx#stx-e _%L28497%_)
                                    (let* ((_%g2851528530%_
                                            (lambda (_%g2851628526%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2851628526%_)))
                                           (_%g2851428575%_
                                            (lambda (_%g2851628534%_)
                                              (if (gx#stx-pair?
                                                   _%g2851628534%_)
                                                  (let ((_%e2851928537%_
                                                         (gx#syntax-e
                                                          _%g2851628534%_)))
                                                    (let ((_%hd2852028541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2851928537%_)))
                                                          (_%tl2852128544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2851928537%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl2852128544%_)
                                                          (let ((_%e2852228547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2852128544%_)))
                    (let ((_%hd2852328551%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2852228547%_)))
                          (_%tl2852428554%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2852228547%_))))
                      (if (gx#stx-null? _%tl2852428554%_)
                          ((lambda (_%L28557%_ _%L28559%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%L28498%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%L28559%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L28557%_ '()))))
                           _%hd2852328551%_
                           _%hd2852028541%_)
                          (_%g2851528530%_ _%g2851628534%_))))
                  (_%g2851528530%_ _%g2851628534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2851528530%_
                                                   _%g2851628534%_)))))
                                      (_%g2851428575%_
                                       (list (_%generate128020%_
                                              _%L28497%_
                                              _%L28495%_
                                              _%E28376%_)
                                             (_%generate-clauses28019%_
                                              _%L28424%_
                                              (cons _%L28498%_ '())))))
                                    (let* ((_%g2857928587%_
                                            (lambda (_%g2858028583%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2858028583%_)))
                                           (_%g2857828605%_
                                            (lambda (_%g2858028591%_)
                                              ((lambda (_%L28594%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L28498%_
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
                             (cons _%L28495%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%L28594%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2858028591%_))))
                                      (_%g2857828605%_
                                       (_%generate-clauses28019%_
                                        _%L28424%_
                                        (cons _%L28498%_ '()))))))
                              _%hd2845128489%_
                              _%hd2844828479%_
                              _%hd2844528469%_)
                             (_%g2843928458%_ _%g2844028462%_))))
                     (_%g2843928458%_ _%g2844028462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2843928458%_
                                                      _%g2844028462%_))))
                                             (_%g2843928458%_
                                              _%g2844028462%_)))))
                                 (_%g2843828609%_ _%L28426%_))))
                            (_%__kont3931339314%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E28376%_ '()))))))
                        (if (gx#stx-pair? _%__stx3930639307%_)
                            (let ((_%e2838328620%_
                                   (gx#syntax-e _%__stx3930639307%_)))
                              (let ((_%tl2838528627%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2838328620%_)))
                                    (_%hd2838428624%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2838328620%_))))
                                (if (gx#stx-null? _%tl2838528627%_)
                                    (_%__kont3930939310%_ _%hd2838428624%_)
                                    (_%__kont3931139312%_
                                     _%tl2838528627%_
                                     _%hd2838428624%_))))
                            (_%__kont3931339314%_))))))
                 (_%generate128020%_
                  (lambda (_%clause28022%_ _%body28024%_ _%E28025%_)
                    (let* ((_%g2802728051%_
                            (lambda (_%g2802828047%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2802828047%_)))
                           (_%g2802628370%_
                            (lambda (_%g2802828055%_)
                              (if (gx#stx-pair? _%g2802828055%_)
                                  (let ((_%e2803128058%_
                                         (gx#syntax-e _%g2802828055%_)))
                                    (let ((_%hd2803228062%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2803128058%_)))
                                          (_%tl2803328065%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2803128058%_))))
                                      (if (gx#stx-pair? _%tl2803328065%_)
                                          (let ((_%e2803428068%_
                                                 (gx#syntax-e
                                                  _%tl2803328065%_)))
                                            (let ((_%hd2803528072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2803428068%_)))
                                                  (_%tl2803628075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2803428068%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd2803528072%_)
                                                  (let ((_g39969_
                                                         (gx#syntax-split-splice
                                                          _%hd2803528072%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g39970_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g39969_)
                           (##values-length _g39969_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g39970_ 2)))
                    (error "Context expects 2 values" _g39970_)))
              (let ((_%target2803728078%_
                     (let () (declare (not safe)) (##values-ref _g39969_ 0)))
                    (_%tl2803928081%_
                     (let () (declare (not safe)) (##values-ref _g39969_ 1))))
                (if (gx#stx-null? _%tl2803928081%_)
                    (letrec ((_%loop2804028084%_
                              (lambda (_%hd2803828088%_ _%var2804428091%_)
                                (if (gx#stx-pair? _%hd2803828088%_)
                                    (let ((_%e2804128094%_
                                           (gx#syntax-e _%hd2803828088%_)))
                                      (let ((_%lp-hd2804228098%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2804128094%_)))
                                            (_%lp-tl2804328101%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2804128094%_))))
                                        (_%loop2804028084%_
                                         _%lp-tl2804328101%_
                                         (cons _%lp-hd2804228098%_
                                               _%var2804428091%_))))
                                    (let ((_%var2804528104%_
                                           (reverse _%var2804428091%_)))
                                      (if (gx#stx-null? _%tl2803628075%_)
                                          ((lambda (_%L28108%_ _%L28110%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g2813128134%_
                                                                _%g2813228137%_)
                                                         (cons _%g2813128134%_
                                                               _%g2813228137%_))
                                                       '()
                                                       _%L28108%_)
                                                _%stx28011%_)
                                               (let* ((_%g2814028148%_
                                                       (lambda (_%g2814128144%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2814128144%_)))
                                                      (_%g2813928242%_
                                                       (lambda (_%g2814128152%_)
                                                         ((lambda (_%L28155%_)
                                                            (let* ((_%g2816828176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2816928172%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2816928172%_)))
                           (_%g2816728238%_
                            (lambda (_%g2816928180%_)
                              ((lambda (_%L28183%_)
                                 (let* ((_%g2819628204%_
                                         (lambda (_%g2819728200%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2819728200%_)))
                                        (_%g2819528226%_
                                         (lambda (_%g2819728208%_)
                                           ((lambda (_%L28211%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L28110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L28211%_ '()))
                   (cons _%L28155%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx28011%_)))
                                            _%g2819728208%_))))
                                   (_%g2819528226%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g2822928232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2823028235%_)
                  (cons _%g2822928232%_ _%g2823028235%_))
                '()
                _%L28108%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L28183%_ '())))
                                     (gx#stx-source _%stx28011%_)))))
                               _%g2816928180%_))))
                      (_%g2816728238%_ _%body28024%_)))
                  _%g2814128152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2813928242%_
                                                  (let _%recur28246%_ ((_%rest28249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause28022%_)
                               (_%rest-targets28251%_ _%tgt-lst28013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx3933239333%_
                                                            _%rest28249%_)
                                                           (_%g2825428266%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx3933239333%_))))
                                                      (let ((_%__kont3933539336%_
                                                             (lambda (_%L28302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L28304%_)
                       (let* ((_%g2831928331%_
                               (lambda (_%g2832028327%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2832028327%_)))
                              (_%g2831828362%_
                               (lambda (_%g2832028335%_)
                                 (if (gx#stx-pair? _%g2832028335%_)
                                     (let ((_%e2832328338%_
                                            (gx#syntax-e _%g2832028335%_)))
                                       (let ((_%hd2832428342%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2832328338%_)))
                                             (_%tl2832528345%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2832328338%_))))
                                         ((lambda (_%L28348%_ _%L28350%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx28011%_
                                             _%L28350%_
                                             _%L28304%_
                                             (_%recur28246%_
                                              _%L28302%_
                                              _%L28348%_)
                                             _%E28025%_))
                                          _%tl2832528345%_
                                          _%hd2832428342%_)))
                                     (_%g2831928331%_ _%g2832028335%_)))))
                         (_%g2831828362%_ _%rest-targets28251%_))))
                    (_%__kont3933739338%_
                     (lambda ()
                       (cons _%L28110%_
                             (foldr (lambda (_%g2827628279%_ _%g2827728282%_)
                                      (cons _%g2827628279%_ _%g2827728282%_))
                                    '()
                                    _%L28108%_)))))
                (if (gx#stx-pair? _%__stx3933239333%_)
                    (let ((_%e2825828292%_ (gx#syntax-e _%__stx3933239333%_)))
                      (let ((_%tl2826028299%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2825828292%_)))
                            (_%hd2825928296%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2825828292%_))))
                        (_%__kont3933539336%_
                         _%tl2826028299%_
                         _%hd2825928296%_)))
                    (_%__kont3933739338%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var2804528104%_
                                           _%hd2803228062%_)
                                          (_%g2802728051%_
                                           _%g2802828055%_)))))))
                      (_%loop2804028084%_ _%target2803728078%_ '()))
                    (_%g2802728051%_ _%g2802828055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2802728051%_
                                                   _%g2802828055%_))))
                                          (_%g2802728051%_ _%g2802828055%_))))
                                  (_%g2802728051%_ _%g2802828055%_)))))
                      (_%g2802628370%_
                       (list (gx#genident 'K)
                             (let ((__tmp39971
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause28022%_)))
                               (declare (not safe))
                               (##apply append __tmp39971))))))))
          (_%generate-body28018%_
           (_%parse-body28016%_ (gx#stx-length _%tgt-lst28013%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx27913%_ _%tgt27915%_ _%clauses27916%_)
        (letrec ((_%reclause27918%_
                  (lambda (_%clause27921%_)
                    (let* ((_%__stx3934839349%_ _%clause27921%_)
                           (_%g2792627941%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx3934839349%_))))
                      (let ((_%__kont3935139352%_ (lambda () _%clause27921%_))
                            (_%__kont3935339354%_
                             (lambda (_%L27969%_ _%L27971%_)
                               (gx#stx-wrap-source
                                (cons (cons _%L27971%_ '()) _%L27969%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont3935539356%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx27913%_
                                _%clause27921%_))))
                        (if (gx#stx-pair? _%__stx3934839349%_)
                            (let ((_%e2792827993%_
                                   (gx#syntax-e _%__stx3934839349%_)))
                              (let ((_%tl2793028000%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2792827993%_)))
                                    (_%hd2792927997%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2792827993%_))))
                                (if (gx#identifier? _%hd2792927997%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39972_|
                                         _%hd2792927997%_)
                                        (_%__kont3935139352%_)
                                        (_%__kont3935339354%_
                                         _%tl2793028000%_
                                         _%hd2792927997%_))
                                    (_%__kont3935339354%_
                                     _%tl2793028000%_
                                     _%hd2792927997%_))))
                            (_%__kont3935539356%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx27913%_
           (cons _%tgt27915%_ '())
           (gx#stx-map _%reclause27918%_ _%clauses27916%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx35249%_)
        (let* ((_%__stx3937639377%_ _%stx35249%_)
               (_%g3525435283%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3937639377%_))))
          (let ((_%__kont3937939380%_
                 (lambda (_%L35523%_)
                   (let* ((_%g3553635544%_
                           (lambda (_%g3553735540%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3553735540%_)))
                          (_%g3553535597%_
                           (lambda (_%g3553735548%_)
                             ((lambda (_%L35551%_)
                                (let* ((_%g3556335571%_
                                        (lambda (_%g3556435567%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3556435567%_)))
                                       (_%g3556235593%_
                                        (lambda (_%g3556435575%_)
                                          ((lambda (_%L35578%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L35551%_ '())
                                                         (cons _%L35578%_
                                                               '()))))
                                           _%g3556435575%_))))
                                  (_%g3556235593%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35551%_ _%L35523%_))
                                    (gx#stx-source _%stx35249%_)))))
                              _%g3553735548%_))))
                     (_%g3553535597%_ (gx#genident 'e)))))
                (_%__kont3938139382%_
                 (lambda (_%L35418%_)
                   (let* ((_%g3543135439%_
                           (lambda (_%g3543235435%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3543235435%_)))
                          (_%g3543035492%_
                           (lambda (_%g3543235443%_)
                             ((lambda (_%L35446%_)
                                (let* ((_%g3545835466%_
                                        (lambda (_%g3545935462%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3545935462%_)))
                                       (_%g3545735488%_
                                        (lambda (_%g3545935470%_)
                                          ((lambda (_%L35473%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%L35446%_
                                                         (cons _%L35473%_
                                                               '()))))
                                           _%g3545935470%_))))
                                  (_%g3545735488%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%L35446%_ _%L35418%_))
                                    (gx#stx-source _%stx35249%_)))))
                              _%g3543235443%_))))
                     (_%g3543035492%_ (gx#genident 'args)))))
                (_%__kont3938339384%_
                 (lambda (_%L35310%_ _%L35312%_)
                   (let* ((_%g3532635334%_
                           (lambda (_%g3532735330%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3532735330%_)))
                          (_%g3532535387%_
                           (lambda (_%g3532735338%_)
                             ((lambda (_%L35341%_)
                                (let* ((_%g3535335361%_
                                        (lambda (_%g3535435357%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g3535435357%_)))
                                       (_%g3535235383%_
                                        (lambda (_%g3535435365%_)
                                          ((lambda (_%L35368%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L35341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L35312%_ '()))
                       '())
                 (cons _%L35368%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g3535435365%_))))
                                  (_%g3535235383%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx35249%_
                                    _%L35341%_
                                    _%L35310%_))))
                              _%g3532735338%_))))
                     (_%g3532535387%_ (gx#genident _%L35312%_))))))
            (let* ((_%__match3942939430%_
                    (lambda (_%e3527235290%_
                             _%hd3527335294%_
                             _%tl3527435297%_
                             _%e3527535300%_
                             _%hd3527635304%_
                             _%tl3527735307%_)
                      (let ((_%L35310%_ _%tl3527735307%_)
                            (_%L35312%_ _%hd3527635304%_))
                        (if (gx#stx-list? _%L35310%_)
                            (_%__kont3938339384%_ _%L35310%_ _%L35312%_)
                            (let () (declare (not safe)) (_%g3525435283%_))))))
                   (_%__match3941739418%_
                    (lambda (_%e3526435398%_
                             _%hd3526535402%_
                             _%tl3526635405%_
                             _%e3526735408%_
                             _%hd3526835412%_
                             _%tl3526935415%_)
                      (let ((_%L35418%_ _%tl3526935415%_))
                        (if (gx#stx-list? _%L35418%_)
                            (_%__kont3938139382%_ _%L35418%_)
                            (_%__match3942939430%_
                             _%e3526435398%_
                             _%hd3526535402%_
                             _%tl3526635405%_
                             _%e3526735408%_
                             _%hd3526835412%_
                             _%tl3526935415%_)))))
                   (_%__match3940139402%_
                    (lambda (_%e3525735503%_
                             _%hd3525835507%_
                             _%tl3525935510%_
                             _%e3526035513%_
                             _%hd3526135517%_
                             _%tl3526235520%_)
                      (let ((_%L35523%_ _%tl3526235520%_))
                        (if (gx#stx-list? _%L35523%_)
                            (_%__kont3937939380%_ _%L35523%_)
                            (_%__match3942939430%_
                             _%e3525735503%_
                             _%hd3525835507%_
                             _%tl3525935510%_
                             _%e3526035513%_
                             _%hd3526135517%_
                             _%tl3526235520%_))))))
              (if (gx#stx-pair? _%__stx3937639377%_)
                  (let ((_%e3525735503%_ (gx#syntax-e _%__stx3937639377%_)))
                    (let ((_%tl3525935510%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3525735503%_)))
                          (_%hd3525835507%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3525735503%_))))
                      (if (gx#stx-pair? _%tl3525935510%_)
                          (let ((_%e3526035513%_
                                 (gx#syntax-e _%tl3525935510%_)))
                            (let ((_%tl3526235520%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3526035513%_)))
                                  (_%hd3526135517%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3526035513%_))))
                              (if (gx#identifier? _%hd3526135517%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39973_|
                                       _%hd3526135517%_)
                                      (_%__match3940139402%_
                                       _%e3525735503%_
                                       _%hd3525835507%_
                                       _%tl3525935510%_
                                       _%e3526035513%_
                                       _%hd3526135517%_
                                       _%tl3526235520%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39974_|
                                           _%hd3526135517%_)
                                          (_%__match3941739418%_
                                           _%e3525735503%_
                                           _%hd3525835507%_
                                           _%tl3525935510%_
                                           _%e3526035513%_
                                           _%hd3526135517%_
                                           _%tl3526235520%_)
                                          (_%__match3942939430%_
                                           _%e3525735503%_
                                           _%hd3525835507%_
                                           _%tl3525935510%_
                                           _%e3526035513%_
                                           _%hd3526135517%_
                                           _%tl3526235520%_)))
                                  (_%__match3942939430%_
                                   _%e3525735503%_
                                   _%hd3525835507%_
                                   _%tl3525935510%_
                                   _%e3526035513%_
                                   _%hd3526135517%_
                                   _%tl3526235520%_))))
                          (let () (declare (not safe)) (_%g3525435283%_)))))
                  (let () (declare (not safe)) (_%g3525435283%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx35605%_)
        (let* ((_%g3560835632%_
                (lambda (_%g3560935628%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3560935628%_)))
               (_%g3560735844%_
                (lambda (_%g3560935636%_)
                  (if (gx#stx-pair? _%g3560935636%_)
                      (let ((_%e3561235639%_ (gx#syntax-e _%g3560935636%_)))
                        (let ((_%hd3561335643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3561235639%_)))
                              (_%tl3561435646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3561235639%_))))
                          (if (gx#stx-pair? _%tl3561435646%_)
                              (let ((_%e3561535649%_
                                     (gx#syntax-e _%tl3561435646%_)))
                                (let ((_%hd3561635653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3561535649%_)))
                                      (_%tl3561735656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3561535649%_))))
                                  (if (gx#stx-pair/null? _%hd3561635653%_)
                                      (let ((_g39975_
                                             (gx#syntax-split-splice
                                              _%hd3561635653%_
                                              '0)))
                                        (begin
                                          (let ((_g39976_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39975_)
                                                       (##values-length
                                                        _g39975_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39976_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39976_)))
                                          (let ((_%target3561835659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39975_ 0)))
                                                (_%tl3562035662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39975_ 1))))
                                            (if (gx#stx-null? _%tl3562035662%_)
                                                (letrec ((_%loop3562135665%_
                                                          (lambda (_%hd3561935669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e3562535672%_)
                    (if (gx#stx-pair? _%hd3561935669%_)
                        (let ((_%e3562235675%_ (gx#syntax-e _%hd3561935669%_)))
                          (let ((_%lp-hd3562335679%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3562235675%_)))
                                (_%lp-tl3562435682%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3562235675%_))))
                            (_%loop3562135665%_
                             _%lp-tl3562435682%_
                             (cons _%lp-hd3562335679%_ _%e3562535672%_))))
                        (let ((_%e3562635685%_ (reverse _%e3562535672%_)))
                          ((lambda (_%L35689%_ _%L35691%_)
                             (if (gx#stx-list? _%L35689%_)
                                 (let* ((_%g3570935726%_
                                         (lambda (_%g3571035722%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g3571035722%_)))
                                        (_%g3570835832%_
                                         (lambda (_%g3571035730%_)
                                           (if (gx#stx-pair/null?
                                                _%g3571035730%_)
                                               (let ((_g39977_
                                                      (gx#syntax-split-splice
                                                       _%g3571035730%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g39978_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39977_)
                        (##values-length _g39977_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g39978_ 2)))
                 (error "Context expects 2 values" _g39978_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target3571235733%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39977_
                                                             0)))
                                                         (_%tl3571435736%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g39977_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl3571435736%_)
                                                         (letrec ((_%loop3571535739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd3571335743%_ _%$e3571935746%_)
                             (if (gx#stx-pair? _%hd3571335743%_)
                                 (let ((_%e3571635749%_
                                        (gx#syntax-e _%hd3571335743%_)))
                                   (let ((_%lp-hd3571735753%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e3571635749%_)))
                                         (_%lp-tl3571835756%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e3571635749%_))))
                                     (_%loop3571535739%_
                                      _%lp-tl3571835756%_
                                      (cons _%lp-hd3571735753%_
                                            _%$e3571935746%_))))
                                 (let ((_%$e3572035759%_
                                        (reverse _%$e3571935746%_)))
                                   ((lambda (_%L35763%_)
                                      (let* ((_%g3577935787%_
                                              (lambda (_%g3578035783%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g3578035783%_)))
                                             (_%g3577835820%_
                                              (lambda (_%g3578035791%_)
                                                ((lambda (_%L35794%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _%L35691%_ _%L35763%_)
                         (foldr (lambda (_%g3580835812%_
                                         _%g3580935815%_
                                         _%g3581035817%_)
                                  (cons (cons _%g3580935815%_
                                              (cons _%g3580835812%_ '()))
                                        _%g3581035817%_))
                                '()
                                _%L35691%_
                                _%L35763%_))
                       (cons _%L35794%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g3578035791%_))))
                                        (_%g3577835820%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx35605%_
                                          (foldr (lambda (_%g3582335826%_
                                                          _%g3582435829%_)
                                                   (cons _%g3582335826%_
                                                         _%g3582435829%_))
                                                 '()
                                                 _%L35763%_)
                                          _%L35689%_))))
                                    _%$e3572035759%_))))))
                   (_%loop3571535739%_ _%target3571235733%_ '()))
                 (_%g3570935726%_ _%g3571035730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g3570935726%_
                                                _%g3571035730%_)))))
                                   (_%g3570835832%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g3583535838%_
                                                     _%g3583635841%_)
                                              (cons _%g3583535838%_
                                                    _%g3583635841%_))
                                            '()
                                            _%L35691%_))))
                                 (_%g3560835632%_ _%g3560935636%_)))
                           _%tl3561735656%_
                           _%e3562635685%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop3562135665%_
                                                   _%target3561835659%_
                                                   '()))
                                                (_%g3560835632%_
                                                 _%g3560935636%_)))))
                                      (_%g3560835632%_ _%g3560935636%_))))
                              (_%g3560835632%_ _%g3560935636%_))))
                      (_%g3560835632%_ _%g3560935636%_)))))
          (_%g3560735844%_ _%stx35605%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx35850%_)
        (let* ((_%__stx3943239433%_ _%$stx35850%_)
               (_%g3585635939%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3943239433%_))))
          (let ((_%__kont3943539436%_
                 (lambda (_%L36269%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3628536288%_ _%g3628636291%_)
                                        (cons _%g3628536288%_ _%g3628636291%_))
                                      '()
                                      _%L36269%_)))))
                (_%__kont3943939440%_
                 (lambda (_%L36177%_ _%L36179%_ _%L36180%_ _%L36181%_)
                   (cons _%L36181%_
                         (cons (cons (cons _%L36180%_ (cons _%L36179%_ '()))
                                     '())
                               (foldr (lambda (_%g3620336206%_ _%g3620436209%_)
                                        (cons _%g3620336206%_ _%g3620436209%_))
                                      '()
                                      _%L36177%_)))))
                (_%__kont3944339444%_
                 (lambda (_%L36050%_ _%L36052%_ _%L36053%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g3607936082%_ _%g3608036085%_)
                                        (cons _%g3607936082%_ _%g3608036085%_))
                                      '()
                                      _%L36052%_)
                               (cons (cons (foldr (lambda (_%g3607736088%_
                                                           _%g3607836091%_)
                                                    (cons _%g3607736088%_
                                                          _%g3607836091%_))
                                                  '()
                                                  _%L36053%_)
                                           (foldr (lambda (_%g3607536094%_
                                                           _%g3607636097%_)
                                                    (cons _%g3607536094%_
                                                          _%g3607636097%_))
                                                  '()
                                                  _%L36050%_))
                                     '()))))))
            (let* ((_%__match3952539526%_
                    (lambda (_%e3590235946%_
                             _%hd3590335950%_
                             _%tl3590435953%_
                             _%e3590535956%_
                             _%hd3590635960%_
                             _%tl3590735963%_
                             _%__splice3944539446%_
                             _%target3590835966%_
                             _%tl3591035969%_)
                      (letrec ((_%loop3591135972%_
                                (lambda (_%hd3590935976%_
                                         _%expr3591535979%_
                                         _%hd3591635981%_)
                                  (if (gx#stx-pair? _%hd3590935976%_)
                                      (let ((_%e3591235984%_
                                             (gx#syntax-e _%hd3590935976%_)))
                                        (let ((_%lp-tl3591435991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3591235984%_)))
                                              (_%lp-hd3591335988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3591235984%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd3591335988%_)
                                              (let ((_%e3592835994%_
                                                     (gx#syntax-e
                                                      _%lp-hd3591335988%_)))
                                                (let ((_%tl3593036001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3592835994%_)))
                                                      (_%hd3592935998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3592835994%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl3593036001%_)
                                                      (let ((_%e3593136004%_
                                                             (gx#syntax-e
                                                              _%tl3593036001%_)))
                                                        (let ((_%tl3593336011%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3593136004%_)))
                      (_%hd3593236008%_
                       (let () (declare (not safe)) (##car _%e3593136004%_))))
                  (if (gx#stx-null? _%tl3593336011%_)
                      (_%loop3591135972%_
                       _%lp-tl3591435991%_
                       (cons _%hd3593236008%_ _%expr3591535979%_)
                       (cons _%hd3592935998%_ _%hd3591635981%_))
                      (let () (declare (not safe)) (_%g3585635939%_)))))
              (let () (declare (not safe)) (_%g3585635939%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g3585635939%_)))))
                                      (let ((_%hd3591836017%_
                                             (reverse _%hd3591635981%_))
                                            (_%expr3591736014%_
                                             (reverse _%expr3591535979%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl3590735963%_)
                                            (let ((_%__splice3944739448%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl3590735963%_
                                                    '0)))
                                              (let ((_%tl3592136023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3944739448%_
                                                        '1)))
                                                    (_%target3591936020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice3944739448%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3592136023%_)
                                                    (letrec ((_%loop3592236026%_
                                                              (lambda (_%hd3592036030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body3592636033%_)
                        (if (gx#stx-pair? _%hd3592036030%_)
                            (let ((_%e3592336036%_
                                   (gx#syntax-e _%hd3592036030%_)))
                              (let ((_%lp-tl3592536043%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3592336036%_)))
                                    (_%lp-hd3592436040%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3592336036%_))))
                                (_%loop3592236026%_
                                 _%lp-tl3592536043%_
                                 (cons _%lp-hd3592436040%_
                                       _%body3592636033%_))))
                            (let ((_%body3592736046%_
                                   (reverse _%body3592636033%_)))
                              (_%__kont3944339444%_
                               _%body3592736046%_
                               _%expr3591736014%_
                               _%hd3591836017%_))))))
              (_%loop3592236026%_ _%target3591936020%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3585635939%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3585635939%_))))))))
                        (_%loop3591135972%_ _%target3590835966%_ '() '()))))
                   (_%__match3951739518%_
                    (lambda (_%e3590235946%_
                             _%hd3590335950%_
                             _%tl3590435953%_
                             _%e3590535956%_
                             _%hd3590635960%_
                             _%tl3590735963%_)
                      (if (gx#stx-pair/null? _%hd3590635960%_)
                          (let ((_%__splice3944539446%_
                                 (gx#syntax-split-splice->vector
                                  _%hd3590635960%_
                                  '0)))
                            (let ((_%tl3591035969%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice3944539446%_ '1)))
                                  (_%target3590835966%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice3944539446%_
                                      '0))))
                              (if (gx#stx-null? _%tl3591035969%_)
                                  (_%__match3952539526%_
                                   _%e3590235946%_
                                   _%hd3590335950%_
                                   _%tl3590435953%_
                                   _%e3590535956%_
                                   _%hd3590635960%_
                                   _%tl3590735963%_
                                   _%__splice3944539446%_
                                   _%target3590835966%_
                                   _%tl3591035969%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3585635939%_)))))
                          (let () (declare (not safe)) (_%g3585635939%_)))))
                   (_%__match3950539506%_
                    (lambda (_%e3587836107%_
                             _%hd3587936111%_
                             _%tl3588036114%_
                             _%e3588136117%_
                             _%hd3588236121%_
                             _%tl3588336124%_
                             _%e3588436127%_
                             _%hd3588536131%_
                             _%tl3588636134%_
                             _%e3588736137%_
                             _%hd3588836141%_
                             _%tl3588936144%_
                             _%__splice3944139442%_
                             _%target3589036147%_
                             _%tl3589236150%_)
                      (letrec ((_%loop3589336153%_
                                (lambda (_%hd3589136157%_ _%body3589736160%_)
                                  (if (gx#stx-pair? _%hd3589136157%_)
                                      (let ((_%e3589436163%_
                                             (gx#syntax-e _%hd3589136157%_)))
                                        (let ((_%lp-tl3589636170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3589436163%_)))
                                              (_%lp-hd3589536167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3589436163%_))))
                                          (_%loop3589336153%_
                                           _%lp-tl3589636170%_
                                           (cons _%lp-hd3589536167%_
                                                 _%body3589736160%_))))
                                      (let ((_%body3589836173%_
                                             (reverse _%body3589736160%_)))
                                        (let ((_%L36177%_ _%body3589836173%_)
                                              (_%L36179%_ _%hd3588836141%_)
                                              (_%L36180%_ _%hd3588536131%_)
                                              (_%L36181%_ _%hd3587936111%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%L36180%_)
                                              (_%__kont3943939440%_
                                               _%L36177%_
                                               _%L36179%_
                                               _%L36180%_
                                               _%L36181%_)
                                              (_%__match3951739518%_
                                               _%e3587836107%_
                                               _%hd3587936111%_
                                               _%tl3588036114%_
                                               _%e3588136117%_
                                               _%hd3588236121%_
                                               _%tl3588336124%_))))))))
                        (_%loop3589336153%_ _%target3589036147%_ '()))))
                   (_%__match3947139472%_
                    (lambda (_%e3585936219%_
                             _%hd3586036223%_
                             _%tl3586136226%_
                             _%e3586236229%_
                             _%hd3586336233%_
                             _%tl3586436236%_
                             _%__splice3943739438%_
                             _%target3586536239%_
                             _%tl3586736242%_)
                      (letrec ((_%loop3586836245%_
                                (lambda (_%hd3586636249%_ _%body3587236252%_)
                                  (if (gx#stx-pair? _%hd3586636249%_)
                                      (let ((_%e3586936255%_
                                             (gx#syntax-e _%hd3586636249%_)))
                                        (let ((_%lp-tl3587136262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3586936255%_)))
                                              (_%lp-hd3587036259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3586936255%_))))
                                          (_%loop3586836245%_
                                           _%lp-tl3587136262%_
                                           (cons _%lp-hd3587036259%_
                                                 _%body3587236252%_))))
                                      (let ((_%body3587336265%_
                                             (reverse _%body3587236252%_)))
                                        (_%__kont3943539436%_
                                         _%body3587336265%_))))))
                        (_%loop3586836245%_ _%target3586536239%_ '())))))
              (if (gx#stx-pair? _%__stx3943239433%_)
                  (let ((_%e3585936219%_ (gx#syntax-e _%__stx3943239433%_)))
                    (let ((_%tl3586136226%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3585936219%_)))
                          (_%hd3586036223%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3585936219%_))))
                      (if (gx#stx-pair? _%tl3586136226%_)
                          (let ((_%e3586236229%_
                                 (gx#syntax-e _%tl3586136226%_)))
                            (let ((_%tl3586436236%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3586236229%_)))
                                  (_%hd3586336233%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3586236229%_))))
                              (if (gx#stx-null? _%hd3586336233%_)
                                  (if (gx#stx-pair/null? _%tl3586436236%_)
                                      (let ((_%__splice3943739438%_
                                             (gx#syntax-split-splice->vector
                                              _%tl3586436236%_
                                              '0)))
                                        (let ((_%tl3586736242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3943739438%_
                                                  '1)))
                                              (_%target3586536239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice3943739438%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl3586736242%_)
                                              (_%__match3947139472%_
                                               _%e3585936219%_
                                               _%hd3586036223%_
                                               _%tl3586136226%_
                                               _%e3586236229%_
                                               _%hd3586336233%_
                                               _%tl3586436236%_
                                               _%__splice3943739438%_
                                               _%target3586536239%_
                                               _%tl3586736242%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd3586336233%_)
                                                  (let ((_%__splice3944539446%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3586336233%_
                                                          '0)))
                                                    (let ((_%tl3591035969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3944539446%_
                                                              '1)))
                                                          (_%target3590835966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3944539446%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3591035969%_)
                                                          (_%__match3952539526%_
                                                           _%e3585936219%_
                                                           _%hd3586036223%_
                                                           _%tl3586136226%_
                                                           _%e3586236229%_
                                                           _%hd3586336233%_
                                                           _%tl3586436236%_
                                                           _%__splice3944539446%_
                                                           _%target3590835966%_
                                                           _%tl3591035969%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3585635939%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3585635939%_))))))
                                      (if (gx#stx-pair/null? _%hd3586336233%_)
                                          (let ((_%__splice3944539446%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3586336233%_
                                                  '0)))
                                            (let ((_%tl3591035969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3944539446%_
                                                      '1)))
                                                  (_%target3590835966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3944539446%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3591035969%_)
                                                  (_%__match3952539526%_
                                                   _%e3585936219%_
                                                   _%hd3586036223%_
                                                   _%tl3586136226%_
                                                   _%e3586236229%_
                                                   _%hd3586336233%_
                                                   _%tl3586436236%_
                                                   _%__splice3944539446%_
                                                   _%target3590835966%_
                                                   _%tl3591035969%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3585635939%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3585635939%_))))
                                  (if (gx#stx-pair? _%hd3586336233%_)
                                      (let ((_%e3588436127%_
                                             (gx#syntax-e _%hd3586336233%_)))
                                        (let ((_%tl3588636134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3588436127%_)))
                                              (_%hd3588536131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3588436127%_))))
                                          (if (gx#stx-pair? _%tl3588636134%_)
                                              (let ((_%e3588736137%_
                                                     (gx#syntax-e
                                                      _%tl3588636134%_)))
                                                (let ((_%tl3588936144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3588736137%_)))
                                                      (_%hd3588836141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3588736137%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3588936144%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl3586436236%_)
                                                          (let ((_%__splice3944139442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3586436236%_ '0)))
                    (let ((_%tl3589236150%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3944139442%_ '1)))
                          (_%target3589036147%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3944139442%_ '0))))
                      (if (gx#stx-null? _%tl3589236150%_)
                          (_%__match3950539506%_
                           _%e3585936219%_
                           _%hd3586036223%_
                           _%tl3586136226%_
                           _%e3586236229%_
                           _%hd3586336233%_
                           _%tl3586436236%_
                           _%e3588436127%_
                           _%hd3588536131%_
                           _%tl3588636134%_
                           _%e3588736137%_
                           _%hd3588836141%_
                           _%tl3588936144%_
                           _%__splice3944139442%_
                           _%target3589036147%_
                           _%tl3589236150%_)
                          (if (gx#stx-pair/null? _%hd3586336233%_)
                              (let ((_%__splice3944539446%_
                                     (gx#syntax-split-splice->vector
                                      _%hd3586336233%_
                                      '0)))
                                (let ((_%tl3591035969%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3944539446%_
                                          '1)))
                                      (_%target3590835966%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice3944539446%_
                                          '0))))
                                  (if (gx#stx-null? _%tl3591035969%_)
                                      (_%__match3952539526%_
                                       _%e3585936219%_
                                       _%hd3586036223%_
                                       _%tl3586136226%_
                                       _%e3586236229%_
                                       _%hd3586336233%_
                                       _%tl3586436236%_
                                       _%__splice3944539446%_
                                       _%target3590835966%_
                                       _%tl3591035969%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3585635939%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3585635939%_))))))
                  (if (gx#stx-pair/null? _%hd3586336233%_)
                      (let ((_%__splice3944539446%_
                             (gx#syntax-split-splice->vector
                              _%hd3586336233%_
                              '0)))
                        (let ((_%tl3591035969%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3944539446%_ '1)))
                              (_%target3590835966%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3944539446%_ '0))))
                          (if (gx#stx-null? _%tl3591035969%_)
                              (_%__match3952539526%_
                               _%e3585936219%_
                               _%hd3586036223%_
                               _%tl3586136226%_
                               _%e3586236229%_
                               _%hd3586336233%_
                               _%tl3586436236%_
                               _%__splice3944539446%_
                               _%target3590835966%_
                               _%tl3591035969%_)
                              (let ()
                                (declare (not safe))
                                (_%g3585635939%_)))))
                      (let () (declare (not safe)) (_%g3585635939%_))))
              (if (gx#stx-pair/null? _%hd3586336233%_)
                  (let ((_%__splice3944539446%_
                         (gx#syntax-split-splice->vector _%hd3586336233%_ '0)))
                    (let ((_%tl3591035969%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3944539446%_ '1)))
                          (_%target3590835966%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice3944539446%_ '0))))
                      (if (gx#stx-null? _%tl3591035969%_)
                          (_%__match3952539526%_
                           _%e3585936219%_
                           _%hd3586036223%_
                           _%tl3586136226%_
                           _%e3586236229%_
                           _%hd3586336233%_
                           _%tl3586436236%_
                           _%__splice3944539446%_
                           _%target3590835966%_
                           _%tl3591035969%_)
                          (let () (declare (not safe)) (_%g3585635939%_)))))
                  (let () (declare (not safe)) (_%g3585635939%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd3586336233%_)
                                                  (let ((_%__splice3944539446%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd3586336233%_
                                                          '0)))
                                                    (let ((_%tl3591035969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3944539446%_
                                                              '1)))
                                                          (_%target3590835966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3944539446%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3591035969%_)
                                                          (_%__match3952539526%_
                                                           _%e3585936219%_
                                                           _%hd3586036223%_
                                                           _%tl3586136226%_
                                                           _%e3586236229%_
                                                           _%hd3586336233%_
                                                           _%tl3586436236%_
                                                           _%__splice3944539446%_
                                                           _%target3590835966%_
                                                           _%tl3591035969%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3585635939%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3585635939%_))))))
                                      (if (gx#stx-pair/null? _%hd3586336233%_)
                                          (let ((_%__splice3944539446%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd3586336233%_
                                                  '0)))
                                            (let ((_%tl3591035969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3944539446%_
                                                      '1)))
                                                  (_%target3590835966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3944539446%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3591035969%_)
                                                  (_%__match3952539526%_
                                                   _%e3585936219%_
                                                   _%hd3586036223%_
                                                   _%tl3586136226%_
                                                   _%e3586236229%_
                                                   _%hd3586336233%_
                                                   _%tl3586436236%_
                                                   _%__splice3944539446%_
                                                   _%target3590835966%_
                                                   _%tl3591035969%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3585635939%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3585635939%_)))))))
                          (let () (declare (not safe)) (_%g3585635939%_)))))
                  (let () (declare (not safe)) (_%g3585635939%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx36302%_)
        (let* ((_%__stx3952839529%_ _%$stx36302%_)
               (_%g3630736359%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3952839529%_))))
          (let ((_%__kont3953139532%_
                 (lambda (_%L36529%_
                          _%L36531%_
                          _%L36532%_
                          _%L36533%_
                          _%L36534%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%L36533%_ (cons _%L36532%_ '()))
                                     '())
                               (cons (cons _%L36534%_
                                           (cons _%L36531%_
                                                 (foldr (lambda (_%g3655936562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g3656036565%_)
                  (cons _%g3655936562%_ _%g3656036565%_))
                '()
                _%L36529%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3953539536%_
                 (lambda (_%L36416%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g3643336436%_ _%g3643436439%_)
                                        (cons _%g3643336436%_ _%g3643436439%_))
                                      '()
                                      _%L36416%_))))))
            (let* ((_%__match3960139602%_
                    (lambda (_%e3633936366%_
                             _%hd3634036370%_
                             _%tl3634136373%_
                             _%e3634236376%_
                             _%hd3634336380%_
                             _%tl3634436383%_
                             _%__splice3953739538%_
                             _%target3634536386%_
                             _%tl3634736389%_)
                      (letrec ((_%loop3634836392%_
                                (lambda (_%hd3634636396%_ _%body3635236399%_)
                                  (if (gx#stx-pair? _%hd3634636396%_)
                                      (let ((_%e3634936402%_
                                             (gx#syntax-e _%hd3634636396%_)))
                                        (let ((_%lp-tl3635136409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3634936402%_)))
                                              (_%lp-hd3635036406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3634936402%_))))
                                          (_%loop3634836392%_
                                           _%lp-tl3635136409%_
                                           (cons _%lp-hd3635036406%_
                                                 _%body3635236399%_))))
                                      (let ((_%body3635336412%_
                                             (reverse _%body3635236399%_)))
                                        (_%__kont3953539536%_
                                         _%body3635336412%_))))))
                        (_%loop3634836392%_ _%target3634536386%_ '()))))
                   (_%__match3957939580%_
                    (lambda (_%e3631436449%_
                             _%hd3631536453%_
                             _%tl3631636456%_
                             _%e3631736459%_
                             _%hd3631836463%_
                             _%tl3631936466%_
                             _%e3632036469%_
                             _%hd3632136473%_
                             _%tl3632236476%_
                             _%e3632336479%_
                             _%hd3632436483%_
                             _%tl3632536486%_
                             _%e3632636489%_
                             _%hd3632736493%_
                             _%tl3632836496%_
                             _%__splice3953339534%_
                             _%target3632936499%_
                             _%tl3633136502%_)
                      (letrec ((_%loop3633236505%_
                                (lambda (_%hd3633036509%_ _%body3633636512%_)
                                  (if (gx#stx-pair? _%hd3633036509%_)
                                      (let ((_%e3633336515%_
                                             (gx#syntax-e _%hd3633036509%_)))
                                        (let ((_%lp-tl3633536522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3633336515%_)))
                                              (_%lp-hd3633436519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3633336515%_))))
                                          (_%loop3633236505%_
                                           _%lp-tl3633536522%_
                                           (cons _%lp-hd3633436519%_
                                                 _%body3633636512%_))))
                                      (let ((_%body3633736525%_
                                             (reverse _%body3633636512%_)))
                                        (_%__kont3953139532%_
                                         _%body3633736525%_
                                         _%tl3632236476%_
                                         _%hd3632736493%_
                                         _%hd3632436483%_
                                         _%hd3631536453%_))))))
                        (_%loop3633236505%_ _%target3632936499%_ '())))))
              (if (gx#stx-pair? _%__stx3952839529%_)
                  (let ((_%e3631436449%_ (gx#syntax-e _%__stx3952839529%_)))
                    (let ((_%tl3631636456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3631436449%_)))
                          (_%hd3631536453%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3631436449%_))))
                      (if (gx#stx-pair? _%tl3631636456%_)
                          (let ((_%e3631736459%_
                                 (gx#syntax-e _%tl3631636456%_)))
                            (let ((_%tl3631936466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3631736459%_)))
                                  (_%hd3631836463%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3631736459%_))))
                              (if (gx#stx-pair? _%hd3631836463%_)
                                  (let ((_%e3632036469%_
                                         (gx#syntax-e _%hd3631836463%_)))
                                    (let ((_%tl3632236476%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3632036469%_)))
                                          (_%hd3632136473%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3632036469%_))))
                                      (if (gx#stx-pair? _%hd3632136473%_)
                                          (let ((_%e3632336479%_
                                                 (gx#syntax-e
                                                  _%hd3632136473%_)))
                                            (let ((_%tl3632536486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3632336479%_)))
                                                  (_%hd3632436483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3632336479%_))))
                                              (if (gx#stx-pair?
                                                   _%tl3632536486%_)
                                                  (let ((_%e3632636489%_
                                                         (gx#syntax-e
                                                          _%tl3632536486%_)))
                                                    (let ((_%tl3632836496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3632636489%_)))
                                                          (_%hd3632736493%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3632636489%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3632836496%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl3631936466%_)
                                                              (let ((_%__splice3953339534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl3631936466%_
                              '0)))
                        (let ((_%tl3633136502%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3953339534%_ '1)))
                              (_%target3632936499%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice3953339534%_ '0))))
                          (if (gx#stx-null? _%tl3633136502%_)
                              (_%__match3957939580%_
                               _%e3631436449%_
                               _%hd3631536453%_
                               _%tl3631636456%_
                               _%e3631736459%_
                               _%hd3631836463%_
                               _%tl3631936466%_
                               _%e3632036469%_
                               _%hd3632136473%_
                               _%tl3632236476%_
                               _%e3632336479%_
                               _%hd3632436483%_
                               _%tl3632536486%_
                               _%e3632636489%_
                               _%hd3632736493%_
                               _%tl3632836496%_
                               _%__splice3953339534%_
                               _%target3632936499%_
                               _%tl3633136502%_)
                              (let ()
                                (declare (not safe))
                                (_%g3630736359%_)))))
                      (let () (declare (not safe)) (_%g3630736359%_)))
                  (let () (declare (not safe)) (_%g3630736359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3630736359%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3630736359%_)))))
                                  (if (gx#stx-null? _%hd3631836463%_)
                                      (if (gx#stx-pair/null? _%tl3631936466%_)
                                          (let ((_%__splice3953739538%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl3631936466%_
                                                  '0)))
                                            (let ((_%tl3634736389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3953739538%_
                                                      '1)))
                                                  (_%target3634536386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice3953739538%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl3634736389%_)
                                                  (_%__match3960139602%_
                                                   _%e3631436449%_
                                                   _%hd3631536453%_
                                                   _%tl3631636456%_
                                                   _%e3631736459%_
                                                   _%hd3631836463%_
                                                   _%tl3631936466%_
                                                   _%__splice3953739538%_
                                                   _%target3634536386%_
                                                   _%tl3634736389%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3630736359%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3630736359%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3630736359%_))))))
                          (let () (declare (not safe)) (_%g3630736359%_)))))
                  (let () (declare (not safe)) (_%g3630736359%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx36574%_)
        (let* ((_%__stx3960439605%_ _%$stx36574%_)
               (_%g3658536731%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3960439605%_))))
          (let ((_%__kont3960739608%_
                 (lambda (_%L37335%_ _%L37337%_ _%L37338%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g3735937362%_ _%g3736037365%_)
                                  (cons (cons _%L37338%_
                                              (cons _%g3735937362%_
                                                    (cons _%L37335%_ '())))
                                        _%g3736037365%_))
                                '()
                                _%L37337%_))))
                (_%__kont3961139612%_
                 (lambda (_%L37225%_ _%L37227%_ _%L37228%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g3724937252%_ _%g3725037255%_)
                                  (cons (cons _%L37228%_
                                              (cons _%g3724937252%_
                                                    (cons _%L37225%_ '())))
                                        _%g3725037255%_))
                                '()
                                _%L37227%_))))
                (_%__kont3961539616%_
                 (lambda (_%L37125%_ _%L37127%_ _%L37128%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%L37128%_
                                     (cons _%L37127%_ (cons _%L37125%_ '())))
                               '()))))
                (_%__kont3961739618%_
                 (lambda (_%L37051%_ _%L37053%_)
                   (cons _%L37053%_ (cons _%L37051%_ '()))))
                (_%__kont3961939620%_
                 (lambda (_%L36999%_ _%L37001%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%L37001%_
                                           (cons _%L36999%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont3962139622%_
                 (lambda (_%L36951%_ _%L36953%_ _%L36954%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%L36954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L36953%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36951%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3962339624%_
                 (lambda (_%L36882%_ _%L36884%_ _%L36885%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36885%_
                                                       (cons _%L36884%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36882%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont3962539626%_
                 (lambda (_%L36802%_ _%L36804%_ _%L36805%_ _%L36806%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%L36806%_
                                                       (cons _%L36805%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L36802%_
                                                             (cons (cons _%L36804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match3977739778%_
                    (lambda (_%e3667536911%_
                             _%hd3667636915%_
                             _%tl3667736918%_
                             _%e3667836921%_
                             _%hd3667936925%_
                             _%tl3668036928%_
                             _%e3668136931%_
                             _%hd3668236935%_
                             _%tl3668336938%_)
                      (if (gx#identifier? _%hd3668236935%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39979_|
                               _%hd3668236935%_)
                              (if (gx#stx-pair? _%tl3668336938%_)
                                  (let ((_%e3668436941%_
                                         (gx#syntax-e _%tl3668336938%_)))
                                    (let ((_%tl3668636948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3668436941%_)))
                                          (_%hd3668536945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3668436941%_))))
                                      (if (gx#stx-null? _%tl3668636948%_)
                                          (_%__kont3962139622%_
                                           _%hd3668536945%_
                                           _%hd3667936925%_
                                           _%hd3667636915%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3658536731%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3658536731%_)))
                              (let () (declare (not safe)) (_%g3658536731%_)))
                          (if (gx#stx-datum? _%hd3668236935%_)
                              (let ((_%e3669936868%_
                                     (gx#stx-e _%hd3668236935%_)))
                                (if (equal? _%e3669936868%_ '::)
                                    (if (gx#stx-pair? _%tl3668336938%_)
                                        (let ((_%e3670036872%_
                                               (gx#syntax-e _%tl3668336938%_)))
                                          (let ((_%tl3670236879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3670036872%_)))
                                                (_%hd3670136876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3670036872%_))))
                                            (if (gx#stx-null? _%tl3670236879%_)
                                                (_%__kont3962339624%_
                                                 _%hd3670136876%_
                                                 _%hd3667936925%_
                                                 _%hd3667636915%_)
                                                (if (gx#stx-pair?
                                                     _%tl3670236879%_)
                                                    (let ((_%e3672036782%_
                                                           (gx#syntax-e
                                                            _%tl3670236879%_)))
                                                      (let ((_%tl3672236789%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3672036782%_)))
                    (_%hd3672136786%_
                     (let () (declare (not safe)) (##car _%e3672036782%_))))
                (if (gx#identifier? _%hd3672136786%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39980_|
                         _%hd3672136786%_)
                        (if (gx#stx-pair? _%tl3672236789%_)
                            (let ((_%e3672336792%_
                                   (gx#syntax-e _%tl3672236789%_)))
                              (let ((_%tl3672536799%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3672336792%_)))
                                    (_%hd3672436796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3672336792%_))))
                                (if (gx#stx-null? _%tl3672536799%_)
                                    (_%__kont3962539626%_
                                     _%hd3672436796%_
                                     _%hd3670136876%_
                                     _%hd3667936925%_
                                     _%hd3667636915%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_)))))
                            (let () (declare (not safe)) (_%g3658536731%_)))
                        (let () (declare (not safe)) (_%g3658536731%_)))
                    (let () (declare (not safe)) (_%g3658536731%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3658536731%_))))))
                   (_%__match3975739758%_
                    (lambda (_%e3666636979%_
                             _%hd3666736983%_
                             _%tl3666836986%_
                             _%e3666936989%_
                             _%hd3667036993%_
                             _%tl3667136996%_)
                      (if (gx#stx-null? _%tl3667136996%_)
                          (_%__kont3961939620%_
                           _%hd3667036993%_
                           _%hd3666736983%_)
                          (if (gx#stx-pair? _%tl3667136996%_)
                              (let ((_%e3668136931%_
                                     (gx#syntax-e _%tl3667136996%_)))
                                (let ((_%tl3668336938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3668136931%_)))
                                      (_%hd3668236935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3668136931%_))))
                                  (if (gx#identifier? _%hd3668236935%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39979_|
                                           _%hd3668236935%_)
                                          (if (gx#stx-pair? _%tl3668336938%_)
                                              (let ((_%e3668436941%_
                                                     (gx#syntax-e
                                                      _%tl3668336938%_)))
                                                (let ((_%tl3668636948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3668436941%_)))
                                                      (_%hd3668536945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3668436941%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3668636948%_)
                                                      (_%__kont3962139622%_
                                                       _%hd3668536945%_
                                                       _%hd3667036993%_
                                                       _%hd3666736983%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3658536731%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3658536731%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3658536731%_)))
                                      (if (gx#stx-datum? _%hd3668236935%_)
                                          (let ((_%e3669936868%_
                                                 (gx#stx-e _%hd3668236935%_)))
                                            (if (equal? _%e3669936868%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3668336938%_)
                                                    (let ((_%e3670036872%_
                                                           (gx#syntax-e
                                                            _%tl3668336938%_)))
                                                      (let ((_%tl3670236879%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670036872%_)))
                    (_%hd3670136876%_
                     (let () (declare (not safe)) (##car _%e3670036872%_))))
                (if (gx#stx-null? _%tl3670236879%_)
                    (_%__kont3962339624%_
                     _%hd3670136876%_
                     _%hd3667036993%_
                     _%hd3666736983%_)
                    (if (gx#stx-pair? _%tl3670236879%_)
                        (let ((_%e3672036782%_ (gx#syntax-e _%tl3670236879%_)))
                          (let ((_%tl3672236789%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3672036782%_)))
                                (_%hd3672136786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3672036782%_))))
                            (if (gx#identifier? _%hd3672136786%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39980_|
                                     _%hd3672136786%_)
                                    (if (gx#stx-pair? _%tl3672236789%_)
                                        (let ((_%e3672336792%_
                                               (gx#syntax-e _%tl3672236789%_)))
                                          (let ((_%tl3672536799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3672336792%_)))
                                                (_%hd3672436796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3672336792%_))))
                                            (if (gx#stx-null? _%tl3672536799%_)
                                                (_%__kont3962539626%_
                                                 _%hd3672436796%_
                                                 _%hd3670136876%_
                                                 _%hd3667036993%_
                                                 _%hd3666736983%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3658536731%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3658536731%_)))))
                        (let () (declare (not safe)) (_%g3658536731%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3658536731%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3658536731%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g3658536731%_))))))
                   (_%__match3968739688%_
                    (lambda (_%e3661437155%_
                             _%hd3661537159%_
                             _%tl3661637162%_
                             _%e3661737165%_
                             _%hd3661837169%_
                             _%tl3661937172%_
                             _%e3662037175%_
                             _%hd3662137179%_
                             _%tl3662237182%_
                             _%__splice3961339614%_
                             _%target3662337185%_
                             _%tl3662537188%_)
                      (letrec ((_%loop3662637191%_
                                (lambda (_%hd3662437195%_ _%pred3663037198%_)
                                  (if (gx#stx-pair? _%hd3662437195%_)
                                      (let ((_%e3662737201%_
                                             (gx#syntax-e _%hd3662437195%_)))
                                        (let ((_%lp-tl3662937208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3662737201%_)))
                                              (_%lp-hd3662837205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3662737201%_))))
                                          (_%loop3662637191%_
                                           _%lp-tl3662937208%_
                                           (cons _%lp-hd3662837205%_
                                                 _%pred3663037198%_))))
                                      (let ((_%pred3663137211%_
                                             (reverse _%pred3663037198%_)))
                                        (if (gx#stx-pair? _%tl3661937172%_)
                                            (let ((_%e3663237215%_
                                                   (gx#syntax-e
                                                    _%tl3661937172%_)))
                                              (let ((_%tl3663437222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3663237215%_)))
                                                    (_%hd3663337219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3663237215%_))))
                                                (if (gx#stx-null?
                                                     _%tl3663437222%_)
                                                    (_%__kont3961139612%_
                                                     _%hd3663337219%_
                                                     _%pred3663137211%_
                                                     _%hd3661537159%_)
                                                    (_%__match3977739778%_
                                                     _%e3661437155%_
                                                     _%hd3661537159%_
                                                     _%tl3661637162%_
                                                     _%e3661737165%_
                                                     _%hd3661837169%_
                                                     _%tl3661937172%_
                                                     _%e3663237215%_
                                                     _%hd3663337219%_
                                                     _%tl3663437222%_))))
                                            (_%__match3975739758%_
                                             _%e3661437155%_
                                             _%hd3661537159%_
                                             _%tl3661637162%_
                                             _%e3661737165%_
                                             _%hd3661837169%_
                                             _%tl3661937172%_)))))))
                        (_%loop3662637191%_ _%target3662337185%_ '()))))
                   (_%__match3965739658%_
                    (lambda (_%e3659037265%_
                             _%hd3659137269%_
                             _%tl3659237272%_
                             _%e3659337275%_
                             _%hd3659437279%_
                             _%tl3659537282%_
                             _%e3659637285%_
                             _%hd3659737289%_
                             _%tl3659837292%_
                             _%__splice3960939610%_
                             _%target3659937295%_
                             _%tl3660137298%_)
                      (letrec ((_%loop3660237301%_
                                (lambda (_%hd3660037305%_ _%pred3660637308%_)
                                  (if (gx#stx-pair? _%hd3660037305%_)
                                      (let ((_%e3660337311%_
                                             (gx#syntax-e _%hd3660037305%_)))
                                        (let ((_%lp-tl3660537318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3660337311%_)))
                                              (_%lp-hd3660437315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3660337311%_))))
                                          (_%loop3660237301%_
                                           _%lp-tl3660537318%_
                                           (cons _%lp-hd3660437315%_
                                                 _%pred3660637308%_))))
                                      (let ((_%pred3660737321%_
                                             (reverse _%pred3660637308%_)))
                                        (if (gx#stx-pair? _%tl3659537282%_)
                                            (let ((_%e3660837325%_
                                                   (gx#syntax-e
                                                    _%tl3659537282%_)))
                                              (let ((_%tl3661037332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3660837325%_)))
                                                    (_%hd3660937329%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3660837325%_))))
                                                (if (gx#stx-null?
                                                     _%tl3661037332%_)
                                                    (_%__kont3960739608%_
                                                     _%hd3660937329%_
                                                     _%pred3660737321%_
                                                     _%hd3659137269%_)
                                                    (_%__match3977739778%_
                                                     _%e3659037265%_
                                                     _%hd3659137269%_
                                                     _%tl3659237272%_
                                                     _%e3659337275%_
                                                     _%hd3659437279%_
                                                     _%tl3659537282%_
                                                     _%e3660837325%_
                                                     _%hd3660937329%_
                                                     _%tl3661037332%_))))
                                            (_%__match3975739758%_
                                             _%e3659037265%_
                                             _%hd3659137269%_
                                             _%tl3659237272%_
                                             _%e3659337275%_
                                             _%hd3659437279%_
                                             _%tl3659537282%_)))))))
                        (_%loop3660237301%_ _%target3659937295%_ '())))))
              (if (gx#stx-pair? _%__stx3960439605%_)
                  (let ((_%e3659037265%_ (gx#syntax-e _%__stx3960439605%_)))
                    (let ((_%tl3659237272%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3659037265%_)))
                          (_%hd3659137269%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3659037265%_))))
                      (if (gx#stx-pair? _%tl3659237272%_)
                          (let ((_%e3659337275%_
                                 (gx#syntax-e _%tl3659237272%_)))
                            (let ((_%tl3659537282%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3659337275%_)))
                                  (_%hd3659437279%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3659337275%_))))
                              (if (gx#stx-pair? _%hd3659437279%_)
                                  (let ((_%e3659637285%_
                                         (gx#syntax-e _%hd3659437279%_)))
                                    (let ((_%tl3659837292%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3659637285%_)))
                                          (_%hd3659737289%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3659637285%_))))
                                      (if (gx#identifier? _%hd3659737289%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39981_|
                                               _%hd3659737289%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl3659837292%_)
                                                  (let ((_%__splice3960939610%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl3659837292%_
                                                          '0)))
                                                    (let ((_%tl3660137298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3960939610%_
                                                              '1)))
                                                          (_%target3659937295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice3960939610%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl3660137298%_)
                                                          (_%__match3965739658%_
                                                           _%e3659037265%_
                                                           _%hd3659137269%_
                                                           _%tl3659237272%_
                                                           _%e3659337275%_
                                                           _%hd3659437279%_
                                                           _%tl3659537282%_
                                                           _%e3659637285%_
                                                           _%hd3659737289%_
                                                           _%tl3659837292%_
                                                           _%__splice3960939610%_
                                                           _%target3659937295%_
                                                           _%tl3660137298%_)
                                                          (if (gx#stx-pair?
                                                               _%tl3659537282%_)
                                                              (let ((_%e3666137041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl3659537282%_)))
                        (let ((_%tl3666337048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3666137041%_)))
                              (_%hd3666237045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3666137041%_))))
                          (if (gx#stx-null? _%tl3666337048%_)
                              (_%__kont3961739618%_
                               _%hd3666237045%_
                               _%hd3659437279%_)
                              (if (gx#identifier? _%hd3666237045%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39979_|
                                       _%hd3666237045%_)
                                      (if (gx#stx-pair? _%tl3666337048%_)
                                          (let ((_%e3668436941%_
                                                 (gx#syntax-e
                                                  _%tl3666337048%_)))
                                            (let ((_%tl3668636948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3668436941%_)))
                                                  (_%hd3668536945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3668436941%_))))
                                              (if (gx#stx-null?
                                                   _%tl3668636948%_)
                                                  (_%__kont3962139622%_
                                                   _%hd3668536945%_
                                                   _%hd3659437279%_
                                                   _%hd3659137269%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3658536731%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3658536731%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3658536731%_)))
                                  (if (gx#stx-datum? _%hd3666237045%_)
                                      (let ((_%e3669936868%_
                                             (gx#stx-e _%hd3666237045%_)))
                                        (if (equal? _%e3669936868%_ '::)
                                            (if (gx#stx-pair? _%tl3666337048%_)
                                                (let ((_%e3670036872%_
                                                       (gx#syntax-e
                                                        _%tl3666337048%_)))
                                                  (let ((_%tl3670236879%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3670036872%_)))
                                                        (_%hd3670136876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3670036872%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3670236879%_)
                                                        (_%__kont3962339624%_
                                                         _%hd3670136876%_
                                                         _%hd3659437279%_
                                                         _%hd3659137269%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3670236879%_)
                                                            (let ((_%e3672036782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3670236879%_)))
                      (let ((_%tl3672236789%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3672036782%_)))
                            (_%hd3672136786%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3672036782%_))))
                        (if (gx#identifier? _%hd3672136786%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39980_|
                                 _%hd3672136786%_)
                                (if (gx#stx-pair? _%tl3672236789%_)
                                    (let ((_%e3672336792%_
                                           (gx#syntax-e _%tl3672236789%_)))
                                      (let ((_%tl3672536799%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3672336792%_)))
                                            (_%hd3672436796%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3672336792%_))))
                                        (if (gx#stx-null? _%tl3672536799%_)
                                            (_%__kont3962539626%_
                                             _%hd3672436796%_
                                             _%hd3670136876%_
                                             _%hd3659437279%_
                                             _%hd3659137269%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3658536731%_)))
                            (let () (declare (not safe)) (_%g3658536731%_)))))
                    (let () (declare (not safe)) (_%g3658536731%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3658536731%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3658536731%_)))))))
                      (if (gx#stx-null? _%tl3659537282%_)
                          (_%__kont3961939620%_
                           _%hd3659437279%_
                           _%hd3659137269%_)
                          (let () (declare (not safe)) (_%g3658536731%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl3659537282%_)
                                                      (let ((_%e3666137041%_
                                                             (gx#syntax-e
                                                              _%tl3659537282%_)))
                                                        (let ((_%tl3666337048%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e3666137041%_)))
                      (_%hd3666237045%_
                       (let () (declare (not safe)) (##car _%e3666137041%_))))
                  (if (gx#stx-null? _%tl3666337048%_)
                      (_%__kont3961739618%_ _%hd3666237045%_ _%hd3659437279%_)
                      (if (gx#identifier? _%hd3666237045%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g39979_|
                               _%hd3666237045%_)
                              (if (gx#stx-pair? _%tl3666337048%_)
                                  (let ((_%e3668436941%_
                                         (gx#syntax-e _%tl3666337048%_)))
                                    (let ((_%tl3668636948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3668436941%_)))
                                          (_%hd3668536945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3668436941%_))))
                                      (if (gx#stx-null? _%tl3668636948%_)
                                          (_%__kont3962139622%_
                                           _%hd3668536945%_
                                           _%hd3659437279%_
                                           _%hd3659137269%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3658536731%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3658536731%_)))
                              (let () (declare (not safe)) (_%g3658536731%_)))
                          (if (gx#stx-datum? _%hd3666237045%_)
                              (let ((_%e3669936868%_
                                     (gx#stx-e _%hd3666237045%_)))
                                (if (equal? _%e3669936868%_ '::)
                                    (if (gx#stx-pair? _%tl3666337048%_)
                                        (let ((_%e3670036872%_
                                               (gx#syntax-e _%tl3666337048%_)))
                                          (let ((_%tl3670236879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3670036872%_)))
                                                (_%hd3670136876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3670036872%_))))
                                            (if (gx#stx-null? _%tl3670236879%_)
                                                (_%__kont3962339624%_
                                                 _%hd3670136876%_
                                                 _%hd3659437279%_
                                                 _%hd3659137269%_)
                                                (if (gx#stx-pair?
                                                     _%tl3670236879%_)
                                                    (let ((_%e3672036782%_
                                                           (gx#syntax-e
                                                            _%tl3670236879%_)))
                                                      (let ((_%tl3672236789%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3672036782%_)))
                    (_%hd3672136786%_
                     (let () (declare (not safe)) (##car _%e3672036782%_))))
                (if (gx#identifier? _%hd3672136786%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g39980_|
                         _%hd3672136786%_)
                        (if (gx#stx-pair? _%tl3672236789%_)
                            (let ((_%e3672336792%_
                                   (gx#syntax-e _%tl3672236789%_)))
                              (let ((_%tl3672536799%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3672336792%_)))
                                    (_%hd3672436796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3672336792%_))))
                                (if (gx#stx-null? _%tl3672536799%_)
                                    (_%__kont3962539626%_
                                     _%hd3672436796%_
                                     _%hd3670136876%_
                                     _%hd3659437279%_
                                     _%hd3659137269%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_)))))
                            (let () (declare (not safe)) (_%g3658536731%_)))
                        (let () (declare (not safe)) (_%g3658536731%_)))
                    (let () (declare (not safe)) (_%g3658536731%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_))))
                              (let ()
                                (declare (not safe))
                                (_%g3658536731%_)))))))
              (if (gx#stx-null? _%tl3659537282%_)
                  (_%__kont3961939620%_ _%hd3659437279%_ _%hd3659137269%_)
                  (let () (declare (not safe)) (_%g3658536731%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g39982_|
                                                   _%hd3659737289%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl3659837292%_)
                                                      (let ((_%__splice3961339614%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3659837292%_
                                                              '0)))
                                                        (let ((_%tl3662537188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice3961339614%_ '1)))
                      (_%target3662337185%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice3961339614%_ '0))))
                  (if (gx#stx-null? _%tl3662537188%_)
                      (_%__match3968739688%_
                       _%e3659037265%_
                       _%hd3659137269%_
                       _%tl3659237272%_
                       _%e3659337275%_
                       _%hd3659437279%_
                       _%tl3659537282%_
                       _%e3659637285%_
                       _%hd3659737289%_
                       _%tl3659837292%_
                       _%__splice3961339614%_
                       _%target3662337185%_
                       _%tl3662537188%_)
                      (if (gx#stx-pair? _%tl3659537282%_)
                          (let ((_%e3666137041%_
                                 (gx#syntax-e _%tl3659537282%_)))
                            (let ((_%tl3666337048%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3666137041%_)))
                                  (_%hd3666237045%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3666137041%_))))
                              (if (gx#stx-null? _%tl3666337048%_)
                                  (_%__kont3961739618%_
                                   _%hd3666237045%_
                                   _%hd3659437279%_)
                                  (if (gx#identifier? _%hd3666237045%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g39979_|
                                           _%hd3666237045%_)
                                          (if (gx#stx-pair? _%tl3666337048%_)
                                              (let ((_%e3668436941%_
                                                     (gx#syntax-e
                                                      _%tl3666337048%_)))
                                                (let ((_%tl3668636948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3668436941%_)))
                                                      (_%hd3668536945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3668436941%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3668636948%_)
                                                      (_%__kont3962139622%_
                                                       _%hd3668536945%_
                                                       _%hd3659437279%_
                                                       _%hd3659137269%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g3658536731%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3658536731%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3658536731%_)))
                                      (if (gx#stx-datum? _%hd3666237045%_)
                                          (let ((_%e3669936868%_
                                                 (gx#stx-e _%hd3666237045%_)))
                                            (if (equal? _%e3669936868%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl3666337048%_)
                                                    (let ((_%e3670036872%_
                                                           (gx#syntax-e
                                                            _%tl3666337048%_)))
                                                      (let ((_%tl3670236879%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3670036872%_)))
                    (_%hd3670136876%_
                     (let () (declare (not safe)) (##car _%e3670036872%_))))
                (if (gx#stx-null? _%tl3670236879%_)
                    (_%__kont3962339624%_
                     _%hd3670136876%_
                     _%hd3659437279%_
                     _%hd3659137269%_)
                    (if (gx#stx-pair? _%tl3670236879%_)
                        (let ((_%e3672036782%_ (gx#syntax-e _%tl3670236879%_)))
                          (let ((_%tl3672236789%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3672036782%_)))
                                (_%hd3672136786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3672036782%_))))
                            (if (gx#identifier? _%hd3672136786%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g39980_|
                                     _%hd3672136786%_)
                                    (if (gx#stx-pair? _%tl3672236789%_)
                                        (let ((_%e3672336792%_
                                               (gx#syntax-e _%tl3672236789%_)))
                                          (let ((_%tl3672536799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3672336792%_)))
                                                (_%hd3672436796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3672336792%_))))
                                            (if (gx#stx-null? _%tl3672536799%_)
                                                (_%__kont3962539626%_
                                                 _%hd3672436796%_
                                                 _%hd3670136876%_
                                                 _%hd3659437279%_
                                                 _%hd3659137269%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3658536731%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3658536731%_)))))
                        (let () (declare (not safe)) (_%g3658536731%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3658536731%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3658536731%_)))))))
                          (if (gx#stx-null? _%tl3659537282%_)
                              (_%__kont3961939620%_
                               _%hd3659437279%_
                               _%hd3659137269%_)
                              (let ()
                                (declare (not safe))
                                (_%g3658536731%_)))))))
              (if (gx#stx-pair? _%tl3659537282%_)
                  (let ((_%e3666137041%_ (gx#syntax-e _%tl3659537282%_)))
                    (let ((_%tl3666337048%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3666137041%_)))
                          (_%hd3666237045%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3666137041%_))))
                      (if (gx#stx-null? _%tl3666337048%_)
                          (_%__kont3961739618%_
                           _%hd3666237045%_
                           _%hd3659437279%_)
                          (if (gx#identifier? _%hd3666237045%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39979_|
                                   _%hd3666237045%_)
                                  (if (gx#stx-pair? _%tl3666337048%_)
                                      (let ((_%e3668436941%_
                                             (gx#syntax-e _%tl3666337048%_)))
                                        (let ((_%tl3668636948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3668436941%_)))
                                              (_%hd3668536945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3668436941%_))))
                                          (if (gx#stx-null? _%tl3668636948%_)
                                              (_%__kont3962139622%_
                                               _%hd3668536945%_
                                               _%hd3659437279%_
                                               _%hd3659137269%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3658536731%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3658536731%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3658536731%_)))
                              (if (gx#stx-datum? _%hd3666237045%_)
                                  (let ((_%e3669936868%_
                                         (gx#stx-e _%hd3666237045%_)))
                                    (if (equal? _%e3669936868%_ '::)
                                        (if (gx#stx-pair? _%tl3666337048%_)
                                            (let ((_%e3670036872%_
                                                   (gx#syntax-e
                                                    _%tl3666337048%_)))
                                              (let ((_%tl3670236879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670036872%_)))
                                                    (_%hd3670136876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670036872%_))))
                                                (if (gx#stx-null?
                                                     _%tl3670236879%_)
                                                    (_%__kont3962339624%_
                                                     _%hd3670136876%_
                                                     _%hd3659437279%_
                                                     _%hd3659137269%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3670236879%_)
                                                        (let ((_%e3672036782%_
                                                               (gx#syntax-e
                                                                _%tl3670236879%_)))
                                                          (let ((_%tl3672236789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3672036782%_)))
                        (_%hd3672136786%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3672036782%_))))
                    (if (gx#identifier? _%hd3672136786%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39980_|
                             _%hd3672136786%_)
                            (if (gx#stx-pair? _%tl3672236789%_)
                                (let ((_%e3672336792%_
                                       (gx#syntax-e _%tl3672236789%_)))
                                  (let ((_%tl3672536799%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3672336792%_)))
                                        (_%hd3672436796%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3672336792%_))))
                                    (if (gx#stx-null? _%tl3672536799%_)
                                        (_%__kont3962539626%_
                                         _%hd3672436796%_
                                         _%hd3670136876%_
                                         _%hd3659437279%_
                                         _%hd3659137269%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3658536731%_)))
                            (let () (declare (not safe)) (_%g3658536731%_)))
                        (let () (declare (not safe)) (_%g3658536731%_)))))
                (let () (declare (not safe)) (_%g3658536731%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3658536731%_)))))))
                  (if (gx#stx-null? _%tl3659537282%_)
                      (_%__kont3961939620%_ _%hd3659437279%_ _%hd3659137269%_)
                      (let () (declare (not safe)) (_%g3658536731%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39983_|
                                                       _%hd3659737289%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3659837292%_)
                                                          (let ((_%e3664737105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3659837292%_)))
                    (let ((_%tl3664937112%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3664737105%_)))
                          (_%hd3664837109%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3664737105%_))))
                      (if (gx#stx-null? _%tl3664937112%_)
                          (if (gx#stx-pair? _%tl3659537282%_)
                              (let ((_%e3665037115%_
                                     (gx#syntax-e _%tl3659537282%_)))
                                (let ((_%tl3665237122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3665037115%_)))
                                      (_%hd3665137119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3665037115%_))))
                                  (if (gx#stx-null? _%tl3665237122%_)
                                      (_%__kont3961539616%_
                                       _%hd3665137119%_
                                       _%hd3664837109%_
                                       _%hd3659137269%_)
                                      (if (gx#identifier? _%hd3665137119%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39979_|
                                               _%hd3665137119%_)
                                              (if (gx#stx-pair?
                                                   _%tl3665237122%_)
                                                  (let ((_%e3668436941%_
                                                         (gx#syntax-e
                                                          _%tl3665237122%_)))
                                                    (let ((_%tl3668636948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3668436941%_)))
                                                          (_%hd3668536945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3668436941%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3668636948%_)
                                                          (_%__kont3962139622%_
                                                           _%hd3668536945%_
                                                           _%hd3659437279%_
                                                           _%hd3659137269%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3658536731%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3658536731%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3658536731%_)))
                                          (if (gx#stx-datum? _%hd3665137119%_)
                                              (let ((_%e3669936868%_
                                                     (gx#stx-e
                                                      _%hd3665137119%_)))
                                                (if (equal? _%e3669936868%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3665237122%_)
                                                        (let ((_%e3670036872%_
                                                               (gx#syntax-e
                                                                _%tl3665237122%_)))
                                                          (let ((_%tl3670236879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3670036872%_)))
                        (_%hd3670136876%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3670036872%_))))
                    (if (gx#stx-null? _%tl3670236879%_)
                        (_%__kont3962339624%_
                         _%hd3670136876%_
                         _%hd3659437279%_
                         _%hd3659137269%_)
                        (if (gx#stx-pair? _%tl3670236879%_)
                            (let ((_%e3672036782%_
                                   (gx#syntax-e _%tl3670236879%_)))
                              (let ((_%tl3672236789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3672036782%_)))
                                    (_%hd3672136786%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3672036782%_))))
                                (if (gx#identifier? _%hd3672136786%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39980_|
                                         _%hd3672136786%_)
                                        (if (gx#stx-pair? _%tl3672236789%_)
                                            (let ((_%e3672336792%_
                                                   (gx#syntax-e
                                                    _%tl3672236789%_)))
                                              (let ((_%tl3672536799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3672336792%_)))
                                                    (_%hd3672436796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3672336792%_))))
                                                (if (gx#stx-null?
                                                     _%tl3672536799%_)
                                                    (_%__kont3962539626%_
                                                     _%hd3672436796%_
                                                     _%hd3670136876%_
                                                     _%hd3659437279%_
                                                     _%hd3659137269%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_)))))
                            (let () (declare (not safe)) (_%g3658536731%_))))))
                (let () (declare (not safe)) (_%g3658536731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3658536731%_)))))))
                              (if (gx#stx-null? _%tl3659537282%_)
                                  (_%__kont3961939620%_
                                   _%hd3659437279%_
                                   _%hd3659137269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3658536731%_))))
                          (if (gx#stx-pair? _%tl3659537282%_)
                              (let ((_%e3666137041%_
                                     (gx#syntax-e _%tl3659537282%_)))
                                (let ((_%tl3666337048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3666137041%_)))
                                      (_%hd3666237045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3666137041%_))))
                                  (if (gx#stx-null? _%tl3666337048%_)
                                      (_%__kont3961739618%_
                                       _%hd3666237045%_
                                       _%hd3659437279%_)
                                      (if (gx#identifier? _%hd3666237045%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g39979_|
                                               _%hd3666237045%_)
                                              (if (gx#stx-pair?
                                                   _%tl3666337048%_)
                                                  (let ((_%e3668436941%_
                                                         (gx#syntax-e
                                                          _%tl3666337048%_)))
                                                    (let ((_%tl3668636948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e3668436941%_)))
                                                          (_%hd3668536945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e3668436941%_))))
                                                      (if (gx#stx-null?
                                                           _%tl3668636948%_)
                                                          (_%__kont3962139622%_
                                                           _%hd3668536945%_
                                                           _%hd3659437279%_
                                                           _%hd3659137269%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g3658536731%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3658536731%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3658536731%_)))
                                          (if (gx#stx-datum? _%hd3666237045%_)
                                              (let ((_%e3669936868%_
                                                     (gx#stx-e
                                                      _%hd3666237045%_)))
                                                (if (equal? _%e3669936868%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl3666337048%_)
                                                        (let ((_%e3670036872%_
                                                               (gx#syntax-e
                                                                _%tl3666337048%_)))
                                                          (let ((_%tl3670236879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3670036872%_)))
                        (_%hd3670136876%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3670036872%_))))
                    (if (gx#stx-null? _%tl3670236879%_)
                        (_%__kont3962339624%_
                         _%hd3670136876%_
                         _%hd3659437279%_
                         _%hd3659137269%_)
                        (if (gx#stx-pair? _%tl3670236879%_)
                            (let ((_%e3672036782%_
                                   (gx#syntax-e _%tl3670236879%_)))
                              (let ((_%tl3672236789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3672036782%_)))
                                    (_%hd3672136786%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3672036782%_))))
                                (if (gx#identifier? _%hd3672136786%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g39980_|
                                         _%hd3672136786%_)
                                        (if (gx#stx-pair? _%tl3672236789%_)
                                            (let ((_%e3672336792%_
                                                   (gx#syntax-e
                                                    _%tl3672236789%_)))
                                              (let ((_%tl3672536799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3672336792%_)))
                                                    (_%hd3672436796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3672336792%_))))
                                                (if (gx#stx-null?
                                                     _%tl3672536799%_)
                                                    (_%__kont3962539626%_
                                                     _%hd3672436796%_
                                                     _%hd3670136876%_
                                                     _%hd3659437279%_
                                                     _%hd3659137269%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_)))))
                            (let () (declare (not safe)) (_%g3658536731%_))))))
                (let () (declare (not safe)) (_%g3658536731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g3658536731%_)))))))
                              (if (gx#stx-null? _%tl3659537282%_)
                                  (_%__kont3961939620%_
                                   _%hd3659437279%_
                                   _%hd3659137269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3658536731%_)))))))
                  (if (gx#stx-pair? _%tl3659537282%_)
                      (let ((_%e3666137041%_ (gx#syntax-e _%tl3659537282%_)))
                        (let ((_%tl3666337048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3666137041%_)))
                              (_%hd3666237045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3666137041%_))))
                          (if (gx#stx-null? _%tl3666337048%_)
                              (_%__kont3961739618%_
                               _%hd3666237045%_
                               _%hd3659437279%_)
                              (if (gx#identifier? _%hd3666237045%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g39979_|
                                       _%hd3666237045%_)
                                      (if (gx#stx-pair? _%tl3666337048%_)
                                          (let ((_%e3668436941%_
                                                 (gx#syntax-e
                                                  _%tl3666337048%_)))
                                            (let ((_%tl3668636948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3668436941%_)))
                                                  (_%hd3668536945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3668436941%_))))
                                              (if (gx#stx-null?
                                                   _%tl3668636948%_)
                                                  (_%__kont3962139622%_
                                                   _%hd3668536945%_
                                                   _%hd3659437279%_
                                                   _%hd3659137269%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3658536731%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g3658536731%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3658536731%_)))
                                  (if (gx#stx-datum? _%hd3666237045%_)
                                      (let ((_%e3669936868%_
                                             (gx#stx-e _%hd3666237045%_)))
                                        (if (equal? _%e3669936868%_ '::)
                                            (if (gx#stx-pair? _%tl3666337048%_)
                                                (let ((_%e3670036872%_
                                                       (gx#syntax-e
                                                        _%tl3666337048%_)))
                                                  (let ((_%tl3670236879%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e3670036872%_)))
                                                        (_%hd3670136876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e3670036872%_))))
                                                    (if (gx#stx-null?
                                                         _%tl3670236879%_)
                                                        (_%__kont3962339624%_
                                                         _%hd3670136876%_
                                                         _%hd3659437279%_
                                                         _%hd3659137269%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3670236879%_)
                                                            (let ((_%e3672036782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3670236879%_)))
                      (let ((_%tl3672236789%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3672036782%_)))
                            (_%hd3672136786%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3672036782%_))))
                        (if (gx#identifier? _%hd3672136786%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g39980_|
                                 _%hd3672136786%_)
                                (if (gx#stx-pair? _%tl3672236789%_)
                                    (let ((_%e3672336792%_
                                           (gx#syntax-e _%tl3672236789%_)))
                                      (let ((_%tl3672536799%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3672336792%_)))
                                            (_%hd3672436796%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3672336792%_))))
                                        (if (gx#stx-null? _%tl3672536799%_)
                                            (_%__kont3962539626%_
                                             _%hd3672436796%_
                                             _%hd3670136876%_
                                             _%hd3659437279%_
                                             _%hd3659137269%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g3658536731%_)))
                            (let () (declare (not safe)) (_%g3658536731%_)))))
                    (let () (declare (not safe)) (_%g3658536731%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3658536731%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3658536731%_)))))))
                      (if (gx#stx-null? _%tl3659537282%_)
                          (_%__kont3961939620%_
                           _%hd3659437279%_
                           _%hd3659137269%_)
                          (let () (declare (not safe)) (_%g3658536731%_)))))
              (if (gx#stx-pair? _%tl3659537282%_)
                  (let ((_%e3666137041%_ (gx#syntax-e _%tl3659537282%_)))
                    (let ((_%tl3666337048%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3666137041%_)))
                          (_%hd3666237045%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3666137041%_))))
                      (if (gx#stx-null? _%tl3666337048%_)
                          (_%__kont3961739618%_
                           _%hd3666237045%_
                           _%hd3659437279%_)
                          (if (gx#identifier? _%hd3666237045%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g39979_|
                                   _%hd3666237045%_)
                                  (if (gx#stx-pair? _%tl3666337048%_)
                                      (let ((_%e3668436941%_
                                             (gx#syntax-e _%tl3666337048%_)))
                                        (let ((_%tl3668636948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3668436941%_)))
                                              (_%hd3668536945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3668436941%_))))
                                          (if (gx#stx-null? _%tl3668636948%_)
                                              (_%__kont3962139622%_
                                               _%hd3668536945%_
                                               _%hd3659437279%_
                                               _%hd3659137269%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3658536731%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g3658536731%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3658536731%_)))
                              (if (gx#stx-datum? _%hd3666237045%_)
                                  (let ((_%e3669936868%_
                                         (gx#stx-e _%hd3666237045%_)))
                                    (if (equal? _%e3669936868%_ '::)
                                        (if (gx#stx-pair? _%tl3666337048%_)
                                            (let ((_%e3670036872%_
                                                   (gx#syntax-e
                                                    _%tl3666337048%_)))
                                              (let ((_%tl3670236879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3670036872%_)))
                                                    (_%hd3670136876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3670036872%_))))
                                                (if (gx#stx-null?
                                                     _%tl3670236879%_)
                                                    (_%__kont3962339624%_
                                                     _%hd3670136876%_
                                                     _%hd3659437279%_
                                                     _%hd3659137269%_)
                                                    (if (gx#stx-pair?
                                                         _%tl3670236879%_)
                                                        (let ((_%e3672036782%_
                                                               (gx#syntax-e
                                                                _%tl3670236879%_)))
                                                          (let ((_%tl3672236789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e3672036782%_)))
                        (_%hd3672136786%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3672036782%_))))
                    (if (gx#identifier? _%hd3672136786%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g39980_|
                             _%hd3672136786%_)
                            (if (gx#stx-pair? _%tl3672236789%_)
                                (let ((_%e3672336792%_
                                       (gx#syntax-e _%tl3672236789%_)))
                                  (let ((_%tl3672536799%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3672336792%_)))
                                        (_%hd3672436796%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3672336792%_))))
                                    (if (gx#stx-null? _%tl3672536799%_)
                                        (_%__kont3962539626%_
                                         _%hd3672436796%_
                                         _%hd3670136876%_
                                         _%hd3659437279%_
                                         _%hd3659137269%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3658536731%_)))
                            (let () (declare (not safe)) (_%g3658536731%_)))
                        (let () (declare (not safe)) (_%g3658536731%_)))))
                (let () (declare (not safe)) (_%g3658536731%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g3658536731%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3658536731%_)))))))
                  (if (gx#stx-null? _%tl3659537282%_)
                      (_%__kont3961939620%_ _%hd3659437279%_ _%hd3659137269%_)
                      (let () (declare (not safe)) (_%g3658536731%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl3659537282%_)
                                              (let ((_%e3666137041%_
                                                     (gx#syntax-e
                                                      _%tl3659537282%_)))
                                                (let ((_%tl3666337048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e3666137041%_)))
                                                      (_%hd3666237045%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e3666137041%_))))
                                                  (if (gx#stx-null?
                                                       _%tl3666337048%_)
                                                      (_%__kont3961739618%_
                                                       _%hd3666237045%_
                                                       _%hd3659437279%_)
                                                      (if (gx#identifier?
                                                           _%hd3666237045%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g39979_|
                                                               _%hd3666237045%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl3666337048%_)
                          (let ((_%e3668436941%_
                                 (gx#syntax-e _%tl3666337048%_)))
                            (let ((_%tl3668636948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3668436941%_)))
                                  (_%hd3668536945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3668436941%_))))
                              (if (gx#stx-null? _%tl3668636948%_)
                                  (_%__kont3962139622%_
                                   _%hd3668536945%_
                                   _%hd3659437279%_
                                   _%hd3659137269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g3658536731%_)))))
                          (let () (declare (not safe)) (_%g3658536731%_)))
                      (let () (declare (not safe)) (_%g3658536731%_)))
                  (if (gx#stx-datum? _%hd3666237045%_)
                      (let ((_%e3669936868%_ (gx#stx-e _%hd3666237045%_)))
                        (if (equal? _%e3669936868%_ '::)
                            (if (gx#stx-pair? _%tl3666337048%_)
                                (let ((_%e3670036872%_
                                       (gx#syntax-e _%tl3666337048%_)))
                                  (let ((_%tl3670236879%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3670036872%_)))
                                        (_%hd3670136876%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3670036872%_))))
                                    (if (gx#stx-null? _%tl3670236879%_)
                                        (_%__kont3962339624%_
                                         _%hd3670136876%_
                                         _%hd3659437279%_
                                         _%hd3659137269%_)
                                        (if (gx#stx-pair? _%tl3670236879%_)
                                            (let ((_%e3672036782%_
                                                   (gx#syntax-e
                                                    _%tl3670236879%_)))
                                              (let ((_%tl3672236789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3672036782%_)))
                                                    (_%hd3672136786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3672036782%_))))
                                                (if (gx#identifier?
                                                     _%hd3672136786%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g39980_|
                                                         _%hd3672136786%_)
                                                        (if (gx#stx-pair?
                                                             _%tl3672236789%_)
                                                            (let ((_%e3672336792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl3672236789%_)))
                      (let ((_%tl3672536799%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e3672336792%_)))
                            (_%hd3672436796%_
                             (let ()
                               (declare (not safe))
                               (##car _%e3672336792%_))))
                        (if (gx#stx-null? _%tl3672536799%_)
                            (_%__kont3962539626%_
                             _%hd3672436796%_
                             _%hd3670136876%_
                             _%hd3659437279%_
                             _%hd3659137269%_)
                            (let () (declare (not safe)) (_%g3658536731%_)))))
                    (let () (declare (not safe)) (_%g3658536731%_)))
                (let () (declare (not safe)) (_%g3658536731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3658536731%_)))
                            (let () (declare (not safe)) (_%g3658536731%_))))
                      (let () (declare (not safe)) (_%g3658536731%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl3659537282%_)
                                                  (_%__kont3961939620%_
                                                   _%hd3659437279%_
                                                   _%hd3659137269%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3658536731%_)))))))
                                  (if (gx#stx-pair? _%tl3659537282%_)
                                      (let ((_%e3666137041%_
                                             (gx#syntax-e _%tl3659537282%_)))
                                        (let ((_%tl3666337048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3666137041%_)))
                                              (_%hd3666237045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3666137041%_))))
                                          (if (gx#stx-null? _%tl3666337048%_)
                                              (_%__kont3961739618%_
                                               _%hd3666237045%_
                                               _%hd3659437279%_)
                                              (if (gx#identifier?
                                                   _%hd3666237045%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g39979_|
                                                       _%hd3666237045%_)
                                                      (if (gx#stx-pair?
                                                           _%tl3666337048%_)
                                                          (let ((_%e3668436941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl3666337048%_)))
                    (let ((_%tl3668636948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3668436941%_)))
                          (_%hd3668536945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3668436941%_))))
                      (if (gx#stx-null? _%tl3668636948%_)
                          (_%__kont3962139622%_
                           _%hd3668536945%_
                           _%hd3659437279%_
                           _%hd3659137269%_)
                          (let () (declare (not safe)) (_%g3658536731%_)))))
                  (let () (declare (not safe)) (_%g3658536731%_)))
              (let () (declare (not safe)) (_%g3658536731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd3666237045%_)
                                                      (let ((_%e3669936868%_
                                                             (gx#stx-e
                                                              _%hd3666237045%_)))
                                                        (if (equal? _%e3669936868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl3666337048%_)
                        (let ((_%e3670036872%_ (gx#syntax-e _%tl3666337048%_)))
                          (let ((_%tl3670236879%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3670036872%_)))
                                (_%hd3670136876%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3670036872%_))))
                            (if (gx#stx-null? _%tl3670236879%_)
                                (_%__kont3962339624%_
                                 _%hd3670136876%_
                                 _%hd3659437279%_
                                 _%hd3659137269%_)
                                (if (gx#stx-pair? _%tl3670236879%_)
                                    (let ((_%e3672036782%_
                                           (gx#syntax-e _%tl3670236879%_)))
                                      (let ((_%tl3672236789%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3672036782%_)))
                                            (_%hd3672136786%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3672036782%_))))
                                        (if (gx#identifier? _%hd3672136786%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g39980_|
                                                 _%hd3672136786%_)
                                                (if (gx#stx-pair?
                                                     _%tl3672236789%_)
                                                    (let ((_%e3672336792%_
                                                           (gx#syntax-e
                                                            _%tl3672236789%_)))
                                                      (let ((_%tl3672536799%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e3672336792%_)))
                    (_%hd3672436796%_
                     (let () (declare (not safe)) (##car _%e3672336792%_))))
                (if (gx#stx-null? _%tl3672536799%_)
                    (_%__kont3962539626%_
                     _%hd3672436796%_
                     _%hd3670136876%_
                     _%hd3659437279%_
                     _%hd3659137269%_)
                    (let () (declare (not safe)) (_%g3658536731%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g3658536731%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g3658536731%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g3658536731%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g3658536731%_))))))
                        (let () (declare (not safe)) (_%g3658536731%_)))
                    (let () (declare (not safe)) (_%g3658536731%_))))
              (let () (declare (not safe)) (_%g3658536731%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl3659537282%_)
                                          (_%__kont3961939620%_
                                           _%hd3659437279%_
                                           _%hd3659137269%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g3658536731%_)))))))
                          (let () (declare (not safe)) (_%g3658536731%_)))))
                  (let () (declare (not safe)) (_%g3658536731%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx37374%_)
        (let* ((_%__stx3987239873%_ _%$stx37374%_)
               (_%g3737937413%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx3987239873%_))))
          (let ((_%__kont3987539876%_
                 (lambda (_%L37517%_ _%L37519%_ _%L37520%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%L37520%_
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
                                       (cons _%L37519%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%L37517%_ '()))
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
                (_%__kont3987739878%_
                 (lambda (_%L37450%_ _%L37452%_ _%L37453%_)
                   (cons _%L37453%_
                         (cons _%L37452%_
                               (cons _%L37450%_
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
            (let ((_%__match3990539906%_
                   (lambda (_%e3738437477%_
                            _%hd3738537481%_
                            _%tl3738637484%_
                            _%e3738737487%_
                            _%hd3738837491%_
                            _%tl3738937494%_
                            _%e3739037497%_
                            _%hd3739137501%_
                            _%tl3739237504%_
                            _%e3739337507%_
                            _%hd3739437511%_
                            _%tl3739537514%_)
                     (let ((_%L37517%_ _%hd3739437511%_)
                           (_%L37519%_ _%hd3739137501%_)
                           (_%L37520%_ _%hd3738837491%_))
                       (if (gx#identifier? _%L37520%_)
                           (_%__kont3987539876%_
                            _%L37517%_
                            _%L37519%_
                            _%L37520%_)
                           (let () (declare (not safe)) (_%g3737937413%_)))))))
              (if (gx#stx-pair? _%__stx3987239873%_)
                  (let ((_%e3738437477%_ (gx#syntax-e _%__stx3987239873%_)))
                    (let ((_%tl3738637484%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3738437477%_)))
                          (_%hd3738537481%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3738437477%_))))
                      (if (gx#stx-pair? _%tl3738637484%_)
                          (let ((_%e3738737487%_
                                 (gx#syntax-e _%tl3738637484%_)))
                            (let ((_%tl3738937494%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3738737487%_)))
                                  (_%hd3738837491%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3738737487%_))))
                              (if (gx#stx-pair? _%tl3738937494%_)
                                  (let ((_%e3739037497%_
                                         (gx#syntax-e _%tl3738937494%_)))
                                    (let ((_%tl3739237504%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3739037497%_)))
                                          (_%hd3739137501%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3739037497%_))))
                                      (if (gx#stx-pair? _%tl3739237504%_)
                                          (let ((_%e3739337507%_
                                                 (gx#syntax-e
                                                  _%tl3739237504%_)))
                                            (let ((_%tl3739537514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3739337507%_)))
                                                  (_%hd3739437511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3739337507%_))))
                                              (if (gx#stx-null?
                                                   _%tl3739537514%_)
                                                  (_%__match3990539906%_
                                                   _%e3738437477%_
                                                   _%hd3738537481%_
                                                   _%tl3738637484%_
                                                   _%e3738737487%_
                                                   _%hd3738837491%_
                                                   _%tl3738937494%_
                                                   _%e3739037497%_
                                                   _%hd3739137501%_
                                                   _%tl3739237504%_
                                                   _%e3739337507%_
                                                   _%hd3739437511%_
                                                   _%tl3739537514%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g3737937413%_)))))
                                          (if (gx#stx-null? _%tl3739237504%_)
                                              (_%__kont3987739878%_
                                               _%hd3739137501%_
                                               _%hd3738837491%_
                                               _%hd3738537481%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g3737937413%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g3737937413%_)))))
                          (let () (declare (not safe)) (_%g3737937413%_)))))
                  (let () (declare (not safe)) (_%g3737937413%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx37542%_)
        (let* ((_%g3754637561%_
                (lambda (_%g3754737557%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3754737557%_)))
               (_%g3754537604%_
                (lambda (_%g3754737565%_)
                  (if (gx#stx-pair? _%g3754737565%_)
                      (let ((_%e3755037568%_ (gx#syntax-e _%g3754737565%_)))
                        (let ((_%hd3755137572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3755037568%_)))
                              (_%tl3755237575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3755037568%_))))
                          (if (gx#stx-pair? _%tl3755237575%_)
                              (let ((_%e3755337578%_
                                     (gx#syntax-e _%tl3755237575%_)))
                                (let ((_%hd3755437582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3755337578%_)))
                                      (_%tl3755537585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3755337578%_))))
                                  ((lambda (_%L37588%_ _%L37590%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%L37590%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%L37588%_)
                                                       '()))))
                                   _%tl3755537585%_
                                   _%hd3755437582%_)))
                              (_%g3754637561%_ _%g3754737565%_))))
                      (_%g3754637561%_ _%g3754737565%_)))))
          (_%g3754537604%_ _%$stx37542%_))))))
