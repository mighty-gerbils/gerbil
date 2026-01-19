(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45118_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45121_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45122_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45123_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45124_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-sugar[1]#setq-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setq-macro::t
       'setq-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setq-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setq-macro|
      (lambda _%$args40367%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40367%_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setf-macro::t
       'setf-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setf-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setf-macro|
      (lambda _%$args40363%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40363%_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_%stx40360%_)
        (if (gx#identifier? _%stx40360%_)
            (let ((__tmp45081 (gx#syntax-local-value _%stx40360%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45081))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40357%_)
        (if (gx#identifier? _%stx40357%_)
            (let ((__tmp45082 (gx#syntax-local-value _%stx40357%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45082))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx39982%_)
        (let* ((_%__stx4461044611%_ _%stx39982%_)
               (_%g3998840051%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4461044611%_))))
          (let ((_%__kont4461344614%_
                 (lambda (_%L40334%_ _%L40336%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%L40336%_)
                    _%stx39982%_)))
                (_%__kont4461544616%_
                 (lambda (_%L40223%_ _%L40225%_ _%L40226%_)
                   (let* ((_%g4024840256%_
                           (lambda (_%g4024940252%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4024940252%_)))
                          (_%g4024740283%_
                           (lambda (_%g4024940260%_)
                             ((lambda (_%L40263%_)
                                (cons _%L40263%_
                                      (foldr (lambda (_%g4027440277%_
                                                      _%g4027540280%_)
                                               (cons _%g4027440277%_
                                                     _%g4027540280%_))
                                             (cons _%L40223%_ '())
                                             _%L40225%_)))
                              _%g4024940260%_))))
                     (_%g4024740283%_
                      (gx#stx-identifier _%L40226%_ _%L40226%_ '"-set!")))))
                (_%__kont4461944620%_
                 (lambda (_%L40133%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%L40133%_)
                    _%stx39982%_)))
                (_%__kont4462144622%_
                 (lambda (_%L40088%_ _%L40090%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%L40090%_ (cons _%L40088%_ '()))))))
            (let* ((_%__match4470944710%_
                    (lambda (_%e4003740058%_
                             _%hd4003840062%_
                             _%tl4003940065%_
                             _%e4004040068%_
                             _%hd4004140072%_
                             _%tl4004240075%_
                             _%e4004340078%_
                             _%hd4004440082%_
                             _%tl4004540085%_)
                      (let ((_%L40088%_ _%hd4004440082%_)
                            (_%L40090%_ _%hd4004140072%_))
                        (if (gx#identifier? _%L40090%_)
                            (_%__kont4462144622%_ _%L40088%_ _%L40090%_)
                            (let () (declare (not safe)) (_%g3998840051%_))))))
                   (_%__match4468944690%_
                    (lambda (_%e4002940113%_
                             _%hd4003040117%_
                             _%tl4003140120%_
                             _%e4003240123%_
                             _%hd4003340127%_
                             _%tl4003440130%_)
                      (let ((_%L40133%_ _%hd4003340127%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%L40133%_)
                            (_%__kont4461944620%_ _%L40133%_)
                            (if (gx#stx-pair? _%tl4003440130%_)
                                (let ((_%e4004340078%_
                                       (gx#syntax-e _%tl4003440130%_)))
                                  (let ((_%tl4004540085%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4004340078%_)))
                                        (_%hd4004440082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4004340078%_))))
                                    (if (gx#stx-null? _%tl4004540085%_)
                                        (_%__match4470944710%_
                                         _%e4002940113%_
                                         _%hd4003040117%_
                                         _%tl4003140120%_
                                         _%e4003240123%_
                                         _%hd4003340127%_
                                         _%tl4003440130%_
                                         _%e4004340078%_
                                         _%hd4004440082%_
                                         _%tl4004540085%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3998840051%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3998840051%_)))))))
                   (_%__match4467744678%_
                    (lambda (_%e4000740153%_
                             _%hd4000840157%_
                             _%tl4000940160%_
                             _%e4001040163%_
                             _%hd4001140167%_
                             _%tl4001240170%_
                             _%e4001340173%_
                             _%hd4001440177%_
                             _%tl4001540180%_
                             _%__splice4461744618%_
                             _%target4001640183%_
                             _%tl4001840186%_)
                      (letrec ((_%loop4001940189%_
                                (lambda (_%hd4001740193%_ _%arg4002340196%_)
                                  (if (gx#stx-pair? _%hd4001740193%_)
                                      (let ((_%e4002040199%_
                                             (gx#syntax-e _%hd4001740193%_)))
                                        (let ((_%lp-tl4002240206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4002040199%_)))
                                              (_%lp-hd4002140203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4002040199%_))))
                                          (_%loop4001940189%_
                                           _%lp-tl4002240206%_
                                           (cons _%lp-hd4002140203%_
                                                 _%arg4002340196%_))))
                                      (let ((_%arg4002440209%_
                                             (reverse _%arg4002340196%_)))
                                        (if (gx#stx-pair? _%tl4001240170%_)
                                            (let ((_%e4002540213%_
                                                   (gx#syntax-e
                                                    _%tl4001240170%_)))
                                              (let ((_%tl4002740220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4002540213%_)))
                                                    (_%hd4002640217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4002540213%_))))
                                                (if (gx#stx-null?
                                                     _%tl4002740220%_)
                                                    (let ((_%L40223%_
                                                           _%hd4002640217%_)
                                                          (_%L40225%_
                                                           _%arg4002440209%_)
                                                          (_%L40226%_
                                                           _%hd4001440177%_))
                                                      (if (gx#identifier?
                                                           _%L40226%_)
                                                          (_%__kont4461544616%_
                                                           _%L40223%_
                                                           _%L40225%_
                                                           _%L40226%_)
                                                          (_%__match4468944690%_
                                                           _%e4000740153%_
                                                           _%hd4000840157%_
                                                           _%tl4000940160%_
                                                           _%e4001040163%_
                                                           _%hd4001140167%_
                                                           _%tl4001240170%_)))
                                                    (_%__match4468944690%_
                                                     _%e4000740153%_
                                                     _%hd4000840157%_
                                                     _%tl4000940160%_
                                                     _%e4001040163%_
                                                     _%hd4001140167%_
                                                     _%tl4001240170%_))))
                                            (_%__match4468944690%_
                                             _%e4000740153%_
                                             _%hd4000840157%_
                                             _%tl4000940160%_
                                             _%e4001040163%_
                                             _%hd4001140167%_
                                             _%tl4001240170%_)))))))
                        (_%loop4001940189%_ _%target4001640183%_ '())))))
              (if (gx#stx-pair? _%__stx4461044611%_)
                  (let ((_%e3999240294%_ (gx#syntax-e _%__stx4461044611%_)))
                    (let ((_%tl3999440301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3999240294%_)))
                          (_%hd3999340298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3999240294%_))))
                      (if (gx#stx-pair? _%tl3999440301%_)
                          (let ((_%e3999540304%_
                                 (gx#syntax-e _%tl3999440301%_)))
                            (let ((_%tl3999740311%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3999540304%_)))
                                  (_%hd3999640308%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3999540304%_))))
                              (if (gx#stx-pair? _%hd3999640308%_)
                                  (let ((_%e3999840314%_
                                         (gx#syntax-e _%hd3999640308%_)))
                                    (let ((_%tl4000040321%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3999840314%_)))
                                          (_%hd3999940318%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3999840314%_))))
                                      (if (gx#stx-pair? _%tl3999740311%_)
                                          (let ((_%e4000140324%_
                                                 (gx#syntax-e
                                                  _%tl3999740311%_)))
                                            (let ((_%tl4000340331%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4000140324%_)))
                                                  (_%hd4000240328%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4000140324%_))))
                                              (if (gx#stx-null?
                                                   _%tl4000340331%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%L40334%_
                                                             _%hd4000240328%_)
                                                            (_%L40336%_
                                                             _%hd3999940318%_))
                                                        (_%__kont4461344614%_
                                                         _%L40334%_
                                                         _%L40336%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4000040321%_)
                                                          (let ((_%__splice4461744618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4000040321%_ '0)))
                    (let ((_%tl4001840186%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4461744618%_ '1)))
                          (_%target4001640183%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4461744618%_ '0))))
                      (if (gx#stx-null? _%tl4001840186%_)
                          (_%__match4467744678%_
                           _%e3999240294%_
                           _%hd3999340298%_
                           _%tl3999440301%_
                           _%e3999540304%_
                           _%hd3999640308%_
                           _%tl3999740311%_
                           _%e3999840314%_
                           _%hd3999940318%_
                           _%tl4000040321%_
                           _%__splice4461744618%_
                           _%target4001640183%_
                           _%tl4001840186%_)
                          (_%__match4468944690%_
                           _%e3999240294%_
                           _%hd3999340298%_
                           _%tl3999440301%_
                           _%e3999540304%_
                           _%hd3999640308%_
                           _%tl3999740311%_))))
                  (_%__match4468944690%_
                   _%e3999240294%_
                   _%hd3999340298%_
                   _%tl3999440301%_
                   _%e3999540304%_
                   _%hd3999640308%_
                   _%tl3999740311%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4000040321%_)
                                                      (let ((_%__splice4461744618%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4000040321%_
                                                              '0)))
                                                        (let ((_%tl4001840186%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4461744618%_ '1)))
                      (_%target4001640183%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4461744618%_ '0))))
                  (if (gx#stx-null? _%tl4001840186%_)
                      (_%__match4467744678%_
                       _%e3999240294%_
                       _%hd3999340298%_
                       _%tl3999440301%_
                       _%e3999540304%_
                       _%hd3999640308%_
                       _%tl3999740311%_
                       _%e3999840314%_
                       _%hd3999940318%_
                       _%tl4000040321%_
                       _%__splice4461744618%_
                       _%target4001640183%_
                       _%tl4001840186%_)
                      (_%__match4468944690%_
                       _%e3999240294%_
                       _%hd3999340298%_
                       _%tl3999440301%_
                       _%e3999540304%_
                       _%hd3999640308%_
                       _%tl3999740311%_))))
              (_%__match4468944690%_
               _%e3999240294%_
               _%hd3999340298%_
               _%tl3999440301%_
               _%e3999540304%_
               _%hd3999640308%_
               _%tl3999740311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4000040321%_)
                                              (let ((_%__splice4461744618%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4000040321%_
                                                      '0)))
                                                (let ((_%tl4001840186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4461744618%_
                                                          '1)))
                                                      (_%target4001640183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4461744618%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4001840186%_)
                                                      (_%__match4467744678%_
                                                       _%e3999240294%_
                                                       _%hd3999340298%_
                                                       _%tl3999440301%_
                                                       _%e3999540304%_
                                                       _%hd3999640308%_
                                                       _%tl3999740311%_
                                                       _%e3999840314%_
                                                       _%hd3999940318%_
                                                       _%tl4000040321%_
                                                       _%__splice4461744618%_
                                                       _%target4001640183%_
                                                       _%tl4001840186%_)
                                                      (_%__match4468944690%_
                                                       _%e3999240294%_
                                                       _%hd3999340298%_
                                                       _%tl3999440301%_
                                                       _%e3999540304%_
                                                       _%hd3999640308%_
                                                       _%tl3999740311%_))))
                                              (_%__match4468944690%_
                                               _%e3999240294%_
                                               _%hd3999340298%_
                                               _%tl3999440301%_
                                               _%e3999540304%_
                                               _%hd3999640308%_
                                               _%tl3999740311%_)))))
                                  (_%__match4468944690%_
                                   _%e3999240294%_
                                   _%hd3999340298%_
                                   _%tl3999440301%_
                                   _%e3999540304%_
                                   _%hd3999640308%_
                                   _%tl3999740311%_))))
                          (let () (declare (not safe)) (_%g3998840051%_)))))
                  (let () (declare (not safe)) (_%g3998840051%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40372%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40372%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40375%_)
        (let* ((_%g4037840402%_
                (lambda (_%g4037940398%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4037940398%_)))
               (_%g4037740580%_
                (lambda (_%g4037940406%_)
                  (if (gx#stx-pair? _%g4037940406%_)
                      (let ((_%e4038240409%_ (gx#syntax-e _%g4037940406%_)))
                        (let ((_%hd4038340413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4038240409%_)))
                              (_%tl4038440416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4038240409%_))))
                          (if (gx#stx-pair/null? _%tl4038440416%_)
                              (if (let ((__tmp45083
                                         (gx#stx-length _%tl4038440416%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45083 '1))
                                  (let ((_g45084_
                                         (gx#syntax-split-splice
                                          _%tl4038440416%_
                                          '1)))
                                    (begin
                                      (let ((_g45085_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45084_)
                                                   (##values-length _g45084_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45085_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45085_)))
                                      (let ((_%target4038540419%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45084_ 0)))
                                            (_%tl4038740422%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45084_ 1))))
                                        (if (gx#stx-pair? _%tl4038740422%_)
                                            (let ((_%e4039440425%_
                                                   (gx#syntax-e
                                                    _%tl4038740422%_)))
                                              (let ((_%hd4039540429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4039440425%_)))
                                                    (_%tl4039640432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4039440425%_))))
                                                (if (gx#stx-null?
                                                     _%tl4039640432%_)
                                                    (letrec ((_%loop4038840435%_
                                                              (lambda (_%hd4038640439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4039240442%_)
                        (if (gx#stx-pair? _%hd4038640439%_)
                            (let ((_%e4038940445%_
                                   (gx#syntax-e _%hd4038640439%_)))
                              (let ((_%lp-hd4039040449%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4038940445%_)))
                                    (_%lp-tl4039140452%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4038940445%_))))
                                (_%loop4038840435%_
                                 _%lp-tl4039140452%_
                                 (cons _%lp-hd4039040449%_
                                       _%tgt4039240442%_))))
                            (let ((_%tgt4039340455%_
                                   (reverse _%tgt4039240442%_)))
                              ((lambda (_%L40459%_ _%L40461%_)
                                 (let* ((_%g4047940496%_
                                         (lambda (_%g4048040492%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4048040492%_)))
                                        (_%g4047840568%_
                                         (lambda (_%g4048040500%_)
                                           (if (gx#stx-pair/null?
                                                _%g4048040500%_)
                                               (let ((_g45086_
                                                      (gx#syntax-split-splice
                                                       _%g4048040500%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45087_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45086_)
                        (##values-length _g45086_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45087_ 2)))
                 (error "Context expects 2 values" _g45087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4048240503%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45086_
                                                             0)))
                                                         (_%tl4048440506%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45086_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4048440506%_)
                                                         (letrec ((_%loop4048540509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4048340513%_ _%$e4048940516%_)
                             (if (gx#stx-pair? _%hd4048340513%_)
                                 (let ((_%e4048640519%_
                                        (gx#syntax-e _%hd4048340513%_)))
                                   (let ((_%lp-hd4048740523%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4048640519%_)))
                                         (_%lp-tl4048840526%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4048640519%_))))
                                     (_%loop4048540509%_
                                      _%lp-tl4048840526%_
                                      (cons _%lp-hd4048740523%_
                                            _%$e4048940516%_))))
                                 (let ((_%$e4049040529%_
                                        (reverse _%$e4048940516%_)))
                                   ((lambda (_%L40533%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4054840554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4054940557%_)
                               (cons _%g4054840554%_ _%g4054940557%_))
                             '()
                             _%L40533%_)
                      (cons _%L40459%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L40533%_
                                                     _%L40461%_)
                                                    (foldr (lambda (_%g4055040560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4055140563%_
                            _%g4055240565%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4055140563%_
                                       (cons _%g4055040560%_ '())))
                           _%g4055240565%_))
                   '()
                   _%L40533%_
                   _%L40461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4049040529%_))))))
                   (_%loop4048540509%_ _%target4048240503%_ '()))
                 (_%g4047940496%_ _%g4048040500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4047940496%_
                                                _%g4048040500%_)))))
                                   (_%g4047840568%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4057140574%_
                                                     _%g4057240577%_)
                                              (cons _%g4057140574%_
                                                    _%g4057240577%_))
                                            '()
                                            _%L40461%_)))))
                               _%hd4039540429%_
                               _%tgt4039340455%_))))))
              (_%loop4038840435%_ _%target4038540419%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4037840402%_
                                                     _%g4037940406%_))))
                                            (_%g4037840402%_
                                             _%g4037940406%_)))))
                                  (_%g4037840402%_ _%g4037940406%_))
                              (_%g4037840402%_ _%g4037940406%_))))
                      (_%g4037840402%_ _%g4037940406%_)))))
          (_%g4037740580%_ _%stx40375%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40586%_)
        (let* ((_%__stx4471244713%_ _%$stx40586%_)
               (_%g4059240680%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4471244713%_))))
          (let ((_%__kont4471544716%_
                 (lambda (_%L41028%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4104441047%_ _%g4104541050%_)
                                        (cons _%g4104441047%_ _%g4104541050%_))
                                      '()
                                      _%L41028%_)))))
                (_%__kont4471944720%_
                 (lambda (_%L40936%_ _%L40938%_ _%L40939%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4096240965%_
                                                           _%g4096340968%_)
                                                    (cons _%g4096240965%_
                                                          _%g4096340968%_))
                                                  '()
                                                  _%L40936%_)))
                               (cons _%L40939%_ (cons _%L40938%_ '()))))))
                (_%__kont4472344724%_
                 (lambda (_%L40797%_
                          _%L40799%_
                          _%L40800%_
                          _%L40801%_
                          _%L40802%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%L40802%_
                                                       (cons (foldr (lambda (_%g4083240837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4083340840%_)
                              (cons _%g4083240837%_ _%g4083340840%_))
                            '()
                            _%L40799%_)
                     (foldr (lambda (_%g4083440843%_ _%g4083540846%_)
                              (cons _%g4083440843%_ _%g4083540846%_))
                            '()
                            _%L40797%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L40801%_ (cons _%L40800%_ '())))))))
            (let* ((_%__match4483344834%_
                    (lambda (_%e4064240687%_
                             _%hd4064340691%_
                             _%tl4064440694%_
                             _%e4064540697%_
                             _%hd4064640701%_
                             _%tl4064740704%_
                             _%e4064840707%_
                             _%hd4064940711%_
                             _%tl4065040714%_
                             _%e4065140717%_
                             _%hd4065240721%_
                             _%tl4065340724%_
                             _%e4065440727%_
                             _%hd4065540731%_
                             _%tl4065640734%_
                             _%__splice4472544726%_
                             _%target4065740737%_
                             _%tl4065940740%_)
                      (letrec ((_%loop4066040743%_
                                (lambda (_%hd4065840747%_ _%rest4066440750%_)
                                  (if (gx#stx-pair? _%hd4065840747%_)
                                      (let ((_%e4066140753%_
                                             (gx#syntax-e _%hd4065840747%_)))
                                        (let ((_%lp-tl4066340760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4066140753%_)))
                                              (_%lp-hd4066240757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4066140753%_))))
                                          (_%loop4066040743%_
                                           _%lp-tl4066340760%_
                                           (cons _%lp-hd4066240757%_
                                                 _%rest4066440750%_))))
                                      (let ((_%rest4066540763%_
                                             (reverse _%rest4066440750%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4064740704%_)
                                            (let ((_%__splice4472744728%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4064740704%_
                                                    '0)))
                                              (let ((_%tl4066840770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4472744728%_
                                                        '1)))
                                                    (_%target4066640767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4472744728%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4066840770%_)
                                                    (letrec ((_%loop4066940773%_
                                                              (lambda (_%hd4066740777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4067340780%_)
                        (if (gx#stx-pair? _%hd4066740777%_)
                            (let ((_%e4067040783%_
                                   (gx#syntax-e _%hd4066740777%_)))
                              (let ((_%lp-tl4067240790%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4067040783%_)))
                                    (_%lp-hd4067140787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4067040783%_))))
                                (_%loop4066940773%_
                                 _%lp-tl4067240790%_
                                 (cons _%lp-hd4067140787%_
                                       _%body4067340780%_))))
                            (let ((_%body4067440793%_
                                   (reverse _%body4067340780%_)))
                              (_%__kont4472344724%_
                               _%body4067440793%_
                               _%rest4066540763%_
                               _%hd4065540731%_
                               _%hd4065240721%_
                               _%hd4064340691%_))))))
              (_%loop4066940773%_ _%target4066640767%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4059240680%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4059240680%_))))))))
                        (_%loop4066040743%_ _%target4065740737%_ '()))))
                   (_%__match4479344794%_
                    (lambda (_%e4061340856%_
                             _%hd4061440860%_
                             _%tl4061540863%_
                             _%e4061640866%_
                             _%hd4061740870%_
                             _%tl4061840873%_
                             _%e4061940876%_
                             _%hd4062040880%_
                             _%tl4062140883%_
                             _%e4062240886%_
                             _%hd4062340890%_
                             _%tl4062440893%_
                             _%e4062540896%_
                             _%hd4062640900%_
                             _%tl4062740903%_
                             _%__splice4472144722%_
                             _%target4062840906%_
                             _%tl4063040909%_)
                      (letrec ((_%loop4063140912%_
                                (lambda (_%hd4062940916%_ _%body4063540919%_)
                                  (if (gx#stx-pair? _%hd4062940916%_)
                                      (let ((_%e4063240922%_
                                             (gx#syntax-e _%hd4062940916%_)))
                                        (let ((_%lp-tl4063440929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4063240922%_)))
                                              (_%lp-hd4063340926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4063240922%_))))
                                          (_%loop4063140912%_
                                           _%lp-tl4063440929%_
                                           (cons _%lp-hd4063340926%_
                                                 _%body4063540919%_))))
                                      (let ((_%body4063640932%_
                                             (reverse _%body4063540919%_)))
                                        (_%__kont4471944720%_
                                         _%body4063640932%_
                                         _%hd4062640900%_
                                         _%hd4062340890%_))))))
                        (_%loop4063140912%_ _%target4062840906%_ '()))))
                   (_%__match4475144752%_
                    (lambda (_%e4059540978%_
                             _%hd4059640982%_
                             _%tl4059740985%_
                             _%e4059840988%_
                             _%hd4059940992%_
                             _%tl4060040995%_
                             _%__splice4471744718%_
                             _%target4060140998%_
                             _%tl4060341001%_)
                      (letrec ((_%loop4060441004%_
                                (lambda (_%hd4060241008%_ _%body4060841011%_)
                                  (if (gx#stx-pair? _%hd4060241008%_)
                                      (let ((_%e4060541014%_
                                             (gx#syntax-e _%hd4060241008%_)))
                                        (let ((_%lp-tl4060741021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4060541014%_)))
                                              (_%lp-hd4060641018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4060541014%_))))
                                          (_%loop4060441004%_
                                           _%lp-tl4060741021%_
                                           (cons _%lp-hd4060641018%_
                                                 _%body4060841011%_))))
                                      (let ((_%body4060941024%_
                                             (reverse _%body4060841011%_)))
                                        (_%__kont4471544716%_
                                         _%body4060941024%_))))))
                        (_%loop4060441004%_ _%target4060140998%_ '())))))
              (if (gx#stx-pair? _%__stx4471244713%_)
                  (let ((_%e4059540978%_ (gx#syntax-e _%__stx4471244713%_)))
                    (let ((_%tl4059740985%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4059540978%_)))
                          (_%hd4059640982%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4059540978%_))))
                      (if (gx#stx-pair? _%tl4059740985%_)
                          (let ((_%e4059840988%_
                                 (gx#syntax-e _%tl4059740985%_)))
                            (let ((_%tl4060040995%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4059840988%_)))
                                  (_%hd4059940992%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4059840988%_))))
                              (if (gx#stx-null? _%hd4059940992%_)
                                  (if (gx#stx-pair/null? _%tl4060040995%_)
                                      (let ((_%__splice4471744718%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4060040995%_
                                              '0)))
                                        (let ((_%tl4060341001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4471744718%_
                                                  '1)))
                                              (_%target4060140998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4471744718%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4060341001%_)
                                              (_%__match4475144752%_
                                               _%e4059540978%_
                                               _%hd4059640982%_
                                               _%tl4059740985%_
                                               _%e4059840988%_
                                               _%hd4059940992%_
                                               _%tl4060040995%_
                                               _%__splice4471744718%_
                                               _%target4060140998%_
                                               _%tl4060341001%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4059240680%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4059240680%_)))
                                  (if (gx#stx-pair? _%hd4059940992%_)
                                      (let ((_%e4061940876%_
                                             (gx#syntax-e _%hd4059940992%_)))
                                        (let ((_%tl4062140883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4061940876%_)))
                                              (_%hd4062040880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4061940876%_))))
                                          (if (gx#stx-pair? _%hd4062040880%_)
                                              (let ((_%e4062240886%_
                                                     (gx#syntax-e
                                                      _%hd4062040880%_)))
                                                (let ((_%tl4062440893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4062240886%_)))
                                                      (_%hd4062340890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4062240886%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4062440893%_)
                                                      (let ((_%e4062540896%_
                                                             (gx#syntax-e
                                                              _%tl4062440893%_)))
                                                        (let ((_%tl4062740903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4062540896%_)))
                      (_%hd4062640900%_
                       (let () (declare (not safe)) (##car _%e4062540896%_))))
                  (if (gx#stx-null? _%tl4062740903%_)
                      (if (gx#stx-null? _%tl4062140883%_)
                          (if (gx#stx-pair/null? _%tl4060040995%_)
                              (let ((_%__splice4472144722%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4060040995%_
                                      '0)))
                                (let ((_%tl4063040909%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4472144722%_
                                          '1)))
                                      (_%target4062840906%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4472144722%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4063040909%_)
                                      (_%__match4479344794%_
                                       _%e4059540978%_
                                       _%hd4059640982%_
                                       _%tl4059740985%_
                                       _%e4059840988%_
                                       _%hd4059940992%_
                                       _%tl4060040995%_
                                       _%e4061940876%_
                                       _%hd4062040880%_
                                       _%tl4062140883%_
                                       _%e4062240886%_
                                       _%hd4062340890%_
                                       _%tl4062440893%_
                                       _%e4062540896%_
                                       _%hd4062640900%_
                                       _%tl4062740903%_
                                       _%__splice4472144722%_
                                       _%target4062840906%_
                                       _%tl4063040909%_)
                                      (if (gx#stx-pair/null? _%tl4062140883%_)
                                          (let ((_%__splice4472544726%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4062140883%_
                                                  '0)))
                                            (let ((_%tl4065940740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4472544726%_
                                                      '1)))
                                                  (_%target4065740737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4472544726%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4065940740%_)
                                                  (_%__match4483344834%_
                                                   _%e4059540978%_
                                                   _%hd4059640982%_
                                                   _%tl4059740985%_
                                                   _%e4059840988%_
                                                   _%hd4059940992%_
                                                   _%tl4060040995%_
                                                   _%e4061940876%_
                                                   _%hd4062040880%_
                                                   _%tl4062140883%_
                                                   _%e4062240886%_
                                                   _%hd4062340890%_
                                                   _%tl4062440893%_
                                                   _%e4062540896%_
                                                   _%hd4062640900%_
                                                   _%tl4062740903%_
                                                   _%__splice4472544726%_
                                                   _%target4065740737%_
                                                   _%tl4065940740%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4059240680%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4059240680%_))))))
                              (if (gx#stx-pair/null? _%tl4062140883%_)
                                  (let ((_%__splice4472544726%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4062140883%_
                                          '0)))
                                    (let ((_%tl4065940740%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4472544726%_
                                              '1)))
                                          (_%target4065740737%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4472544726%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4065940740%_)
                                          (_%__match4483344834%_
                                           _%e4059540978%_
                                           _%hd4059640982%_
                                           _%tl4059740985%_
                                           _%e4059840988%_
                                           _%hd4059940992%_
                                           _%tl4060040995%_
                                           _%e4061940876%_
                                           _%hd4062040880%_
                                           _%tl4062140883%_
                                           _%e4062240886%_
                                           _%hd4062340890%_
                                           _%tl4062440893%_
                                           _%e4062540896%_
                                           _%hd4062640900%_
                                           _%tl4062740903%_
                                           _%__splice4472544726%_
                                           _%target4065740737%_
                                           _%tl4065940740%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4059240680%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4059240680%_))))
                          (if (gx#stx-pair/null? _%tl4062140883%_)
                              (let ((_%__splice4472544726%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4062140883%_
                                      '0)))
                                (let ((_%tl4065940740%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4472544726%_
                                          '1)))
                                      (_%target4065740737%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4472544726%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4065940740%_)
                                      (_%__match4483344834%_
                                       _%e4059540978%_
                                       _%hd4059640982%_
                                       _%tl4059740985%_
                                       _%e4059840988%_
                                       _%hd4059940992%_
                                       _%tl4060040995%_
                                       _%e4061940876%_
                                       _%hd4062040880%_
                                       _%tl4062140883%_
                                       _%e4062240886%_
                                       _%hd4062340890%_
                                       _%tl4062440893%_
                                       _%e4062540896%_
                                       _%hd4062640900%_
                                       _%tl4062740903%_
                                       _%__splice4472544726%_
                                       _%target4065740737%_
                                       _%tl4065940740%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4059240680%_)))))
                              (let () (declare (not safe)) (_%g4059240680%_))))
                      (let () (declare (not safe)) (_%g4059240680%_)))))
              (let () (declare (not safe)) (_%g4059240680%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4059240680%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4059240680%_))))))
                          (let () (declare (not safe)) (_%g4059240680%_)))))
                  (let () (declare (not safe)) (_%g4059240680%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41061%_)
        (let* ((_%g4106541089%_
                (lambda (_%g4106641085%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4106641085%_)))
               (_%g4106441174%_
                (lambda (_%g4106641093%_)
                  (if (gx#stx-pair? _%g4106641093%_)
                      (let ((_%e4106941096%_ (gx#syntax-e _%g4106641093%_)))
                        (let ((_%hd4107041100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4106941096%_)))
                              (_%tl4107141103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4106941096%_))))
                          (if (gx#stx-pair? _%tl4107141103%_)
                              (let ((_%e4107241106%_
                                     (gx#syntax-e _%tl4107141103%_)))
                                (let ((_%hd4107341110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4107241106%_)))
                                      (_%tl4107441113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4107241106%_))))
                                  (if (gx#stx-pair/null? _%tl4107441113%_)
                                      (let ((_g45088_
                                             (gx#syntax-split-splice
                                              _%tl4107441113%_
                                              '0)))
                                        (begin
                                          (let ((_g45089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45088_)
                                                       (##values-length
                                                        _g45088_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45089_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45089_)))
                                          (let ((_%target4107541116%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45088_ 0)))
                                                (_%tl4107741119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45088_ 1))))
                                            (if (gx#stx-null? _%tl4107741119%_)
                                                (letrec ((_%loop4107841122%_
                                                          (lambda (_%hd4107641126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4108241129%_)
                    (if (gx#stx-pair? _%hd4107641126%_)
                        (let ((_%e4107941132%_ (gx#syntax-e _%hd4107641126%_)))
                          (let ((_%lp-hd4108041136%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4107941132%_)))
                                (_%lp-tl4108141139%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4107941132%_))))
                            (_%loop4107841122%_
                             _%lp-tl4108141139%_
                             (cons _%lp-hd4108041136%_ _%body4108241129%_))))
                        (let ((_%body4108341142%_
                               (reverse _%body4108241129%_)))
                          ((lambda (_%L41146%_ _%L41148%_)
                             (if (gx#identifier? _%L41148%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L41148%_ '())
                                                         (foldr (lambda (_%g4116541168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4116641171%_)
                          (cons _%g4116541168%_ _%g4116641171%_))
                        '()
                        _%L41146%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4106541089%_ _%g4106641093%_)))
                           _%body4108341142%_
                           _%hd4107341110%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4107841122%_
                                                   _%target4107541116%_
                                                   '()))
                                                (_%g4106541089%_
                                                 _%g4106641093%_)))))
                                      (_%g4106541089%_ _%g4106641093%_))))
                              (_%g4106541089%_ _%g4106641093%_))))
                      (_%g4106541089%_ _%g4106641093%_)))))
          (_%g4106441174%_ _%$stx41061%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41179%_)
        (let* ((_%g4118341211%_
                (lambda (_%g4118441207%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4118441207%_)))
               (_%g4118241310%_
                (lambda (_%g4118441215%_)
                  (if (gx#stx-pair? _%g4118441215%_)
                      (let ((_%e4118841218%_ (gx#syntax-e _%g4118441215%_)))
                        (let ((_%hd4118941222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4118841218%_)))
                              (_%tl4119041225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4118841218%_))))
                          (if (gx#stx-pair? _%tl4119041225%_)
                              (let ((_%e4119141228%_
                                     (gx#syntax-e _%tl4119041225%_)))
                                (let ((_%hd4119241232%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4119141228%_)))
                                      (_%tl4119341235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4119141228%_))))
                                  (if (gx#stx-pair? _%tl4119341235%_)
                                      (let ((_%e4119441238%_
                                             (gx#syntax-e _%tl4119341235%_)))
                                        (let ((_%hd4119541242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4119441238%_)))
                                              (_%tl4119641245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4119441238%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4119641245%_)
                                              (let ((_g45090_
                                                     (gx#syntax-split-splice
                                                      _%tl4119641245%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45091_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45090_)
                                                               (##values-length
                                                                _g45090_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45091_ 2)))
                (error "Context expects 2 values" _g45091_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4119741248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45090_
                                                            0)))
                                                        (_%tl4119941251%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45090_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4119941251%_)
                                                        (letrec ((_%loop4120041254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4119841258%_ _%rest4120441261%_)
                            (if (gx#stx-pair? _%hd4119841258%_)
                                (let ((_%e4120141264%_
                                       (gx#syntax-e _%hd4119841258%_)))
                                  (let ((_%lp-hd4120241268%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4120141264%_)))
                                        (_%lp-tl4120341271%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4120141264%_))))
                                    (_%loop4120041254%_
                                     _%lp-tl4120341271%_
                                     (cons _%lp-hd4120241268%_
                                           _%rest4120441261%_))))
                                (let ((_%rest4120541274%_
                                       (reverse _%rest4120441261%_)))
                                  ((lambda (_%L41278%_ _%L41280%_ _%L41281%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%L41281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L41280%_
                                 (foldr (lambda (_%g4130141304%_
                                                 _%g4130241307%_)
                                          (cons _%g4130141304%_
                                                _%g4130241307%_))
                                        '()
                                        _%L41278%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4120541274%_
                                   _%hd4119541242%_
                                   _%hd4119241232%_))))))
                  (_%loop4120041254%_ _%target4119741248%_ '()))
                (_%g4118341211%_ _%g4118441215%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4118341211%_
                                               _%g4118441215%_))))
                                      (_%g4118341211%_ _%g4118441215%_))))
                              (_%g4118341211%_ _%g4118441215%_))))
                      (_%g4118341211%_ _%g4118441215%_)))))
          (_%g4118241310%_ _%$stx41179%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41315%_)
        (let* ((_%g4131941390%_
                (lambda (_%g4132041386%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4132041386%_)))
               (_%g4131841679%_
                (lambda (_%g4132041394%_)
                  (if (gx#stx-pair? _%g4132041394%_)
                      (let ((_%e4132741397%_ (gx#syntax-e _%g4132041394%_)))
                        (let ((_%hd4132841401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4132741397%_)))
                              (_%tl4132941404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4132741397%_))))
                          (if (gx#stx-pair? _%tl4132941404%_)
                              (let ((_%e4133041407%_
                                     (gx#syntax-e _%tl4132941404%_)))
                                (let ((_%hd4133141411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4133041407%_)))
                                      (_%tl4133241414%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4133041407%_))))
                                  (if (gx#stx-pair/null? _%hd4133141411%_)
                                      (let ((_g45092_
                                             (gx#syntax-split-splice
                                              _%hd4133141411%_
                                              '0)))
                                        (begin
                                          (let ((_g45093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45092_)
                                                       (##values-length
                                                        _g45092_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45093_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45093_)))
                                          (let ((_%target4133341417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45092_ 0)))
                                                (_%tl4133541420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45092_ 1))))
                                            (if (gx#stx-null? _%tl4133541420%_)
                                                (letrec ((_%loop4133641423%_
                                                          (lambda (_%hd4133441427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4134041430%_
                           _%init4134141432%_
                           _%var4134241434%_)
                    (if (gx#stx-pair? _%hd4133441427%_)
                        (let ((_%e4133741437%_ (gx#syntax-e _%hd4133441427%_)))
                          (let ((_%lp-hd4133841441%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4133741437%_)))
                                (_%lp-tl4133941444%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4133741437%_))))
                            (if (gx#stx-pair? _%lp-hd4133841441%_)
                                (let ((_%e4134641447%_
                                       (gx#syntax-e _%lp-hd4133841441%_)))
                                  (let ((_%hd4134741451%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4134641447%_)))
                                        (_%tl4134841454%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4134641447%_))))
                                    (if (gx#stx-pair? _%tl4134841454%_)
                                        (let ((_%e4134941457%_
                                               (gx#syntax-e _%tl4134841454%_)))
                                          (let ((_%hd4135041461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4134941457%_)))
                                                (_%tl4135141464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4134941457%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4135141464%_)
                                                (let ((_g45094_
                                                       (gx#syntax-split-splice
                                                        _%tl4135141464%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45094_)
                         (##values-length _g45094_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45095_ 2)))
                  (error "Context expects 2 values" _g45095_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4135241467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45094_
                                                              0)))
                                                          (_%tl4135441470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45094_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4135441470%_)
                                                          (letrec ((_%loop4135541473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4135341477%_ _%step4135941480%_)
                              (if (gx#stx-pair? _%hd4135341477%_)
                                  (let ((_%e4135641483%_
                                         (gx#syntax-e _%hd4135341477%_)))
                                    (let ((_%lp-hd4135741487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4135641483%_)))
                                          (_%lp-tl4135841490%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4135641483%_))))
                                      (_%loop4135541473%_
                                       _%lp-tl4135841490%_
                                       (cons _%lp-hd4135741487%_
                                             _%step4135941480%_))))
                                  (let ((_%step4136041493%_
                                         (reverse _%step4135941480%_)))
                                    (_%loop4133641423%_
                                     _%lp-tl4133941444%_
                                     (cons _%step4136041493%_
                                           _%step4134041430%_)
                                     (cons _%hd4135041461%_ _%init4134141432%_)
                                     (cons _%hd4134741451%_
                                           _%var4134241434%_)))))))
                    (_%loop4135541473%_ _%target4135241467%_ '()))
                  (_%g4131941390%_ _%g4132041394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4131941390%_
                                                 _%g4132041394%_))))
                                        (_%g4131941390%_ _%g4132041394%_))))
                                (_%g4131941390%_ _%g4132041394%_))))
                        (let ((_%step4134341497%_ (reverse _%step4134041430%_))
                              (_%init4134441500%_ (reverse _%init4134141432%_))
                              (_%var4134541502%_ (reverse _%var4134241434%_)))
                          (if (gx#stx-pair? _%tl4133241414%_)
                              (let ((_%e4136141505%_
                                     (gx#syntax-e _%tl4133241414%_)))
                                (let ((_%hd4136241509%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4136141505%_)))
                                      (_%tl4136341512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4136141505%_))))
                                  (if (gx#stx-pair? _%hd4136241509%_)
                                      (let ((_%e4136441515%_
                                             (gx#syntax-e _%hd4136241509%_)))
                                        (let ((_%hd4136541519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4136441515%_)))
                                              (_%tl4136641522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4136441515%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4136641522%_)
                                              (let ((_g45096_
                                                     (gx#syntax-split-splice
                                                      _%tl4136641522%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45097_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45096_)
                                                               (##values-length
                                                                _g45096_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45097_ 2)))
                (error "Context expects 2 values" _g45097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4136741525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45096_
                                                            0)))
                                                        (_%tl4136941528%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45096_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4136941528%_)
                                                        (letrec ((_%loop4137041531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4136841535%_ _%fini4137441538%_)
                            (if (gx#stx-pair? _%hd4136841535%_)
                                (let ((_%e4137141541%_
                                       (gx#syntax-e _%hd4136841535%_)))
                                  (let ((_%lp-hd4137241545%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4137141541%_)))
                                        (_%lp-tl4137341548%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4137141541%_))))
                                    (_%loop4137041531%_
                                     _%lp-tl4137341548%_
                                     (cons _%lp-hd4137241545%_
                                           _%fini4137441538%_))))
                                (let ((_%fini4137541551%_
                                       (reverse _%fini4137441538%_)))
                                  (if (gx#stx-pair/null? _%tl4136341512%_)
                                      (let ((_g45098_
                                             (gx#syntax-split-splice
                                              _%tl4136341512%_
                                              '0)))
                                        (begin
                                          (let ((_g45099_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45098_)
                                                       (##values-length
                                                        _g45098_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45099_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45099_)))
                                          (let ((_%target4137641555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45098_ 0)))
                                                (_%tl4137841558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45098_ 1))))
                                            (if (gx#stx-null? _%tl4137841558%_)
                                                (letrec ((_%loop4137941561%_
                                                          (lambda (_%hd4137741565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4138341568%_)
                    (if (gx#stx-pair? _%hd4137741565%_)
                        (let ((_%e4138041571%_ (gx#syntax-e _%hd4137741565%_)))
                          (let ((_%lp-hd4138141575%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4138041571%_)))
                                (_%lp-tl4138241578%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4138041571%_))))
                            (_%loop4137941561%_
                             _%lp-tl4138241578%_
                             (cons _%lp-hd4138141575%_ _%body4138341568%_))))
                        (let ((_%body4138441581%_
                               (reverse _%body4138341568%_)))
                          ((lambda (_%L41585%_
                                    _%L41587%_
                                    _%L41588%_
                                    _%L41589%_
                                    _%L41590%_
                                    _%L41591%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4162441627%_
                                                  _%g4162541630%_)
                                           (cons _%g4162441627%_
                                                 _%g4162541630%_))
                                         '()
                                         _%L41591%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L41590%_
                                                      _%L41591%_)
                                                     (foldr (lambda (_%g4163241645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4163341648%_
                             _%g4163441650%_)
                      (cons (cons _%g4163341648%_ (cons _%g4163241645%_ '()))
                            _%g4163441650%_))
                    '()
                    _%L41590%_
                    _%L41591%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L41588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4163541653%_
                                                               _%g4163641656%_)
                                                        (cons _%g4163541653%_
                                                              _%g4163641656%_))
                                                      '()
                                                      _%L41587%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4163741659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4163841662%_)
                      (cons _%g4163741659%_ _%g4163841662%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%L41589%_
                                   _%L41591%_)
                                  (foldr (lambda (_%g4163941665%_
                                                  _%g4164041668%_
                                                  _%g4164141670%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4164041668%_
                                                             (foldr (lambda (_%g4164241673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4164341676%_)
                              (cons _%g4164241673%_ _%g4164341676%_))
                            '()
                            _%g4163941665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4164141670%_))
                                         '()
                                         _%L41589%_
                                         _%L41591%_)))
                          '())
                    _%L41585%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4131941390%_ _%g4132041394%_)))
                           _%body4138441581%_
                           _%fini4137541551%_
                           _%hd4136541519%_
                           _%step4134341497%_
                           _%init4134441500%_
                           _%var4134541502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4137941561%_
                                                   _%target4137641555%_
                                                   '()))
                                                (_%g4131941390%_
                                                 _%g4132041394%_)))))
                                      (_%g4131941390%_ _%g4132041394%_)))))))
                  (_%loop4137041531%_ _%target4136741525%_ '()))
                (_%g4131941390%_ _%g4132041394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4131941390%_
                                               _%g4132041394%_))))
                                      (_%g4131941390%_ _%g4132041394%_))))
                              (_%g4131941390%_ _%g4132041394%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4133641423%_
                                                   _%target4133341417%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4131941390%_
                                                 _%g4132041394%_)))))
                                      (_%g4131941390%_ _%g4132041394%_))))
                              (_%g4131941390%_ _%g4132041394%_))))
                      (_%g4131941390%_ _%g4132041394%_)))))
          (_%g4131841679%_ _%$stx41315%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41687%_)
        (let* ((_%g4169141762%_
                (lambda (_%g4169241758%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4169241758%_)))
               (_%g4169042051%_
                (lambda (_%g4169241766%_)
                  (if (gx#stx-pair? _%g4169241766%_)
                      (let ((_%e4169941769%_ (gx#syntax-e _%g4169241766%_)))
                        (let ((_%hd4170041773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4169941769%_)))
                              (_%tl4170141776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4169941769%_))))
                          (if (gx#stx-pair? _%tl4170141776%_)
                              (let ((_%e4170241779%_
                                     (gx#syntax-e _%tl4170141776%_)))
                                (let ((_%hd4170341783%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4170241779%_)))
                                      (_%tl4170441786%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4170241779%_))))
                                  (if (gx#stx-pair/null? _%hd4170341783%_)
                                      (let ((_g45100_
                                             (gx#syntax-split-splice
                                              _%hd4170341783%_
                                              '0)))
                                        (begin
                                          (let ((_g45101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45100_)
                                                       (##values-length
                                                        _g45100_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45101_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45101_)))
                                          (let ((_%target4170541789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45100_ 0)))
                                                (_%tl4170741792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45100_ 1))))
                                            (if (gx#stx-null? _%tl4170741792%_)
                                                (letrec ((_%loop4170841795%_
                                                          (lambda (_%hd4170641799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4171241802%_
                           _%init4171341804%_
                           _%var4171441806%_)
                    (if (gx#stx-pair? _%hd4170641799%_)
                        (let ((_%e4170941809%_ (gx#syntax-e _%hd4170641799%_)))
                          (let ((_%lp-hd4171041813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4170941809%_)))
                                (_%lp-tl4171141816%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4170941809%_))))
                            (if (gx#stx-pair? _%lp-hd4171041813%_)
                                (let ((_%e4171841819%_
                                       (gx#syntax-e _%lp-hd4171041813%_)))
                                  (let ((_%hd4171941823%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4171841819%_)))
                                        (_%tl4172041826%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4171841819%_))))
                                    (if (gx#stx-pair? _%tl4172041826%_)
                                        (let ((_%e4172141829%_
                                               (gx#syntax-e _%tl4172041826%_)))
                                          (let ((_%hd4172241833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4172141829%_)))
                                                (_%tl4172341836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4172141829%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4172341836%_)
                                                (let ((_g45102_
                                                       (gx#syntax-split-splice
                                                        _%tl4172341836%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45102_)
                         (##values-length _g45102_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45103_ 2)))
                  (error "Context expects 2 values" _g45103_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4172441839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45102_
                                                              0)))
                                                          (_%tl4172641842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45102_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4172641842%_)
                                                          (letrec ((_%loop4172741845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4172541849%_ _%step4173141852%_)
                              (if (gx#stx-pair? _%hd4172541849%_)
                                  (let ((_%e4172841855%_
                                         (gx#syntax-e _%hd4172541849%_)))
                                    (let ((_%lp-hd4172941859%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4172841855%_)))
                                          (_%lp-tl4173041862%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4172841855%_))))
                                      (_%loop4172741845%_
                                       _%lp-tl4173041862%_
                                       (cons _%lp-hd4172941859%_
                                             _%step4173141852%_))))
                                  (let ((_%step4173241865%_
                                         (reverse _%step4173141852%_)))
                                    (_%loop4170841795%_
                                     _%lp-tl4171141816%_
                                     (cons _%step4173241865%_
                                           _%step4171241802%_)
                                     (cons _%hd4172241833%_ _%init4171341804%_)
                                     (cons _%hd4171941823%_
                                           _%var4171441806%_)))))))
                    (_%loop4172741845%_ _%target4172441839%_ '()))
                  (_%g4169141762%_ _%g4169241766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4169141762%_
                                                 _%g4169241766%_))))
                                        (_%g4169141762%_ _%g4169241766%_))))
                                (_%g4169141762%_ _%g4169241766%_))))
                        (let ((_%step4171541869%_ (reverse _%step4171241802%_))
                              (_%init4171641872%_ (reverse _%init4171341804%_))
                              (_%var4171741874%_ (reverse _%var4171441806%_)))
                          (if (gx#stx-pair? _%tl4170441786%_)
                              (let ((_%e4173341877%_
                                     (gx#syntax-e _%tl4170441786%_)))
                                (let ((_%hd4173441881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4173341877%_)))
                                      (_%tl4173541884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4173341877%_))))
                                  (if (gx#stx-pair? _%hd4173441881%_)
                                      (let ((_%e4173641887%_
                                             (gx#syntax-e _%hd4173441881%_)))
                                        (let ((_%hd4173741891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4173641887%_)))
                                              (_%tl4173841894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4173641887%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4173841894%_)
                                              (let ((_g45104_
                                                     (gx#syntax-split-splice
                                                      _%tl4173841894%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45105_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45104_)
                                                               (##values-length
                                                                _g45104_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45105_ 2)))
                (error "Context expects 2 values" _g45105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4173941897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45104_
                                                            0)))
                                                        (_%tl4174141900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45104_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4174141900%_)
                                                        (letrec ((_%loop4174241903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4174041907%_ _%fini4174641910%_)
                            (if (gx#stx-pair? _%hd4174041907%_)
                                (let ((_%e4174341913%_
                                       (gx#syntax-e _%hd4174041907%_)))
                                  (let ((_%lp-hd4174441917%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4174341913%_)))
                                        (_%lp-tl4174541920%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4174341913%_))))
                                    (_%loop4174241903%_
                                     _%lp-tl4174541920%_
                                     (cons _%lp-hd4174441917%_
                                           _%fini4174641910%_))))
                                (let ((_%fini4174741923%_
                                       (reverse _%fini4174641910%_)))
                                  (if (gx#stx-pair/null? _%tl4173541884%_)
                                      (let ((_g45106_
                                             (gx#syntax-split-splice
                                              _%tl4173541884%_
                                              '0)))
                                        (begin
                                          (let ((_g45107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45106_)
                                                       (##values-length
                                                        _g45106_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45107_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45107_)))
                                          (let ((_%target4174841927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45106_ 0)))
                                                (_%tl4175041930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45106_ 1))))
                                            (if (gx#stx-null? _%tl4175041930%_)
                                                (letrec ((_%loop4175141933%_
                                                          (lambda (_%hd4174941937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4175541940%_)
                    (if (gx#stx-pair? _%hd4174941937%_)
                        (let ((_%e4175241943%_ (gx#syntax-e _%hd4174941937%_)))
                          (let ((_%lp-hd4175341947%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4175241943%_)))
                                (_%lp-tl4175441950%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4175241943%_))))
                            (_%loop4175141933%_
                             _%lp-tl4175441950%_
                             (cons _%lp-hd4175341947%_ _%body4175541940%_))))
                        (let ((_%body4175641953%_
                               (reverse _%body4175541940%_)))
                          ((lambda (_%L41957%_
                                    _%L41959%_
                                    _%L41960%_
                                    _%L41961%_
                                    _%L41962%_
                                    _%L41963%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4199641999%_
                                                  _%g4199742002%_)
                                           (cons _%g4199641999%_
                                                 _%g4199742002%_))
                                         '()
                                         _%L41963%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L41962%_
                                                      _%L41963%_)
                                                     (foldr (lambda (_%g4200442017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4200542020%_
                             _%g4200642022%_)
                      (cons (cons _%g4200542020%_ (cons _%g4200442017%_ '()))
                            _%g4200642022%_))
                    '()
                    _%L41962%_
                    _%L41963%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4200742025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4200842028%_)
                    (cons _%g4200742025%_ _%g4200842028%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%L41960%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L41961%_
                                                   _%L41963%_)
                                                  (foldr (lambda (_%g4200942031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4201042034%_
                          _%g4201142036%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4201042034%_
                                     (foldr (lambda (_%g4201242039%_
                                                     _%g4201342042%_)
                                              (cons _%g4201242039%_
                                                    _%g4201342042%_))
                                            '()
                                            _%g4200942031%_)))
                         _%g4201142036%_))
                 '()
                 _%L41961%_
                 _%L41963%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4201442045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4201542048%_)
                             (cons _%g4201442045%_ _%g4201542048%_))
                           '()
                           _%L41959%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%L41957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4169141762%_ _%g4169241766%_)))
                           _%body4175641953%_
                           _%fini4174741923%_
                           _%hd4173741891%_
                           _%step4171541869%_
                           _%init4171641872%_
                           _%var4171741874%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4175141933%_
                                                   _%target4174841927%_
                                                   '()))
                                                (_%g4169141762%_
                                                 _%g4169241766%_)))))
                                      (_%g4169141762%_ _%g4169241766%_)))))))
                  (_%loop4174241903%_ _%target4173941897%_ '()))
                (_%g4169141762%_ _%g4169241766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4169141762%_
                                               _%g4169241766%_))))
                                      (_%g4169141762%_ _%g4169241766%_))))
                              (_%g4169141762%_ _%g4169241766%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4170841795%_
                                                   _%target4170541789%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4169141762%_
                                                 _%g4169241766%_)))))
                                      (_%g4169141762%_ _%g4169241766%_))))
                              (_%g4169141762%_ _%g4169241766%_))))
                      (_%g4169141762%_ _%g4169241766%_)))))
          (_%g4169042051%_ _%$stx41687%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42059%_)
        (let* ((_%g4206342087%_
                (lambda (_%g4206442083%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4206442083%_)))
               (_%g4206242172%_
                (lambda (_%g4206442091%_)
                  (if (gx#stx-pair? _%g4206442091%_)
                      (let ((_%e4206742094%_ (gx#syntax-e _%g4206442091%_)))
                        (let ((_%hd4206842098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4206742094%_)))
                              (_%tl4206942101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4206742094%_))))
                          (if (gx#stx-pair? _%tl4206942101%_)
                              (let ((_%e4207042104%_
                                     (gx#syntax-e _%tl4206942101%_)))
                                (let ((_%hd4207142108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4207042104%_)))
                                      (_%tl4207242111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4207042104%_))))
                                  (if (gx#stx-pair/null? _%tl4207242111%_)
                                      (let ((_g45108_
                                             (gx#syntax-split-splice
                                              _%tl4207242111%_
                                              '0)))
                                        (begin
                                          (let ((_g45109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45108_)
                                                       (##values-length
                                                        _g45108_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45109_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45109_)))
                                          (let ((_%target4207342114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45108_ 0)))
                                                (_%tl4207542117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45108_ 1))))
                                            (if (gx#stx-null? _%tl4207542117%_)
                                                (letrec ((_%loop4207642120%_
                                                          (lambda (_%hd4207442124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4208042127%_)
                    (if (gx#stx-pair? _%hd4207442124%_)
                        (let ((_%e4207742130%_ (gx#syntax-e _%hd4207442124%_)))
                          (let ((_%lp-hd4207842134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4207742130%_)))
                                (_%lp-tl4207942137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4207742130%_))))
                            (_%loop4207642120%_
                             _%lp-tl4207942137%_
                             (cons _%lp-hd4207842134%_ _%body4208042127%_))))
                        (let ((_%body4208142140%_
                               (reverse _%body4208042127%_)))
                          ((lambda (_%L42144%_ _%L42146%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%L42146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4216342166%_ _%g4216442169%_)
                                  (cons _%g4216342166%_ _%g4216442169%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%L42144%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4208142140%_
                           _%hd4207142108%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4207642120%_
                                                   _%target4207342114%_
                                                   '()))
                                                (_%g4206342087%_
                                                 _%g4206442091%_)))))
                                      (_%g4206342087%_ _%g4206442091%_))))
                              (_%g4206342087%_ _%g4206442091%_))))
                      (_%g4206342087%_ _%g4206442091%_)))))
          (_%g4206242172%_ _%$stx42059%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42177%_)
        (let* ((_%g4218142205%_
                (lambda (_%g4218242201%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4218242201%_)))
               (_%g4218042290%_
                (lambda (_%g4218242209%_)
                  (if (gx#stx-pair? _%g4218242209%_)
                      (let ((_%e4218542212%_ (gx#syntax-e _%g4218242209%_)))
                        (let ((_%hd4218642216%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4218542212%_)))
                              (_%tl4218742219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4218542212%_))))
                          (if (gx#stx-pair? _%tl4218742219%_)
                              (let ((_%e4218842222%_
                                     (gx#syntax-e _%tl4218742219%_)))
                                (let ((_%hd4218942226%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4218842222%_)))
                                      (_%tl4219042229%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4218842222%_))))
                                  (if (gx#stx-pair/null? _%tl4219042229%_)
                                      (let ((_g45110_
                                             (gx#syntax-split-splice
                                              _%tl4219042229%_
                                              '0)))
                                        (begin
                                          (let ((_g45111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45110_)
                                                       (##values-length
                                                        _g45110_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45111_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45111_)))
                                          (let ((_%target4219142232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45110_ 0)))
                                                (_%tl4219342235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45110_ 1))))
                                            (if (gx#stx-null? _%tl4219342235%_)
                                                (letrec ((_%loop4219442238%_
                                                          (lambda (_%hd4219242242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4219842245%_)
                    (if (gx#stx-pair? _%hd4219242242%_)
                        (let ((_%e4219542248%_ (gx#syntax-e _%hd4219242242%_)))
                          (let ((_%lp-hd4219642252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4219542248%_)))
                                (_%lp-tl4219742255%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4219542248%_))))
                            (_%loop4219442238%_
                             _%lp-tl4219742255%_
                             (cons _%lp-hd4219642252%_ _%body4219842245%_))))
                        (let ((_%body4219942258%_
                               (reverse _%body4219842245%_)))
                          ((lambda (_%L42262%_ _%L42264%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%L42264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4228142284%_ _%g4228242287%_)
                                  (cons _%g4228142284%_ _%g4228242287%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%L42262%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4219942258%_
                           _%hd4218942226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4219442238%_
                                                   _%target4219142232%_
                                                   '()))
                                                (_%g4218142205%_
                                                 _%g4218242209%_)))))
                                      (_%g4218142205%_ _%g4218242209%_))))
                              (_%g4218142205%_ _%g4218242209%_))))
                      (_%g4218142205%_ _%g4218242209%_)))))
          (_%g4218042290%_ _%$stx42177%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42295%_)
        (let ((_%g4229842305%_
               (lambda (_%g4229942301%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4229942301%_))))
          (_%g4229842305%_ _%$stx42295%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42309%_)
        (let ((_%g4231242319%_
               (lambda (_%g4231342315%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4231342315%_))))
          (_%g4231242319%_ _%$stx42309%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42323%_)
        (letrec ((_%generate-thunk42326%_
                  (lambda (_%body43665%_)
                    (if (null? _%body43665%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42323%_)
                        (let* ((_%g4366843685%_
                                (lambda (_%g4366943681%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4366943681%_)))
                               (_%g4366743746%_
                                (lambda (_%g4366943689%_)
                                  (if (gx#stx-pair/null? _%g4366943689%_)
                                      (let ((_g45112_
                                             (gx#syntax-split-splice
                                              _%g4366943689%_
                                              '0)))
                                        (begin
                                          (let ((_g45113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45112_)
                                                       (##values-length
                                                        _g45112_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45113_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45113_)))
                                          (let ((_%target4367143692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45112_ 0)))
                                                (_%tl4367343695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45112_ 1))))
                                            (if (gx#stx-null? _%tl4367343695%_)
                                                (letrec ((_%loop4367443698%_
                                                          (lambda (_%hd4367243702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4367843705%_)
                    (if (gx#stx-pair? _%hd4367243702%_)
                        (let ((_%e4367543708%_ (gx#syntax-e _%hd4367243702%_)))
                          (let ((_%lp-hd4367643712%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4367543708%_)))
                                (_%lp-tl4367743715%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4367543708%_))))
                            (_%loop4367443698%_
                             _%lp-tl4367743715%_
                             (cons _%lp-hd4367643712%_ _%e4367843705%_))))
                        (let ((_%e4367943718%_ (reverse _%e4367843705%_)))
                          ((lambda (_%L43722%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4373743740%_
                                                         _%g4373843743%_)
                                                  (cons _%g4373743740%_
                                                        _%g4373843743%_))
                                                '()
                                                _%L43722%_))))
                           _%e4367943718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4367443698%_
                                                   _%target4367143692%_
                                                   '()))
                                                (_%g4366843685%_
                                                 _%g4366943689%_)))))
                                      (_%g4366843685%_ _%g4366943689%_)))))
                          (_%g4366743746%_ (reverse _%body43665%_))))))
                 (_%generate-fini42328%_
                  (lambda (_%thunk43546%_ _%fini43548%_)
                    (let* ((_%g4355043574%_
                            (lambda (_%g4355143570%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4355143570%_)))
                           (_%g4354943661%_
                            (lambda (_%g4355143578%_)
                              (if (gx#stx-pair? _%g4355143578%_)
                                  (let ((_%e4355443581%_
                                         (gx#syntax-e _%g4355143578%_)))
                                    (let ((_%hd4355543585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4355443581%_)))
                                          (_%tl4355643588%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4355443581%_))))
                                      (if (gx#stx-pair? _%tl4355643588%_)
                                          (let ((_%e4355743591%_
                                                 (gx#syntax-e
                                                  _%tl4355643588%_)))
                                            (let ((_%hd4355843595%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4355743591%_)))
                                                  (_%tl4355943598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4355743591%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4355843595%_)
                                                  (let ((_g45114_
                                                         (gx#syntax-split-splice
                                                          _%hd4355843595%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45115_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45114_)
                           (##values-length _g45114_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45115_ 2)))
                    (error "Context expects 2 values" _g45115_)))
              (let ((_%target4356043601%_
                     (let () (declare (not safe)) (##values-ref _g45114_ 0)))
                    (_%tl4356243604%_
                     (let () (declare (not safe)) (##values-ref _g45114_ 1))))
                (if (gx#stx-null? _%tl4356243604%_)
                    (letrec ((_%loop4356343607%_
                              (lambda (_%hd4356143611%_ _%e4356743614%_)
                                (if (gx#stx-pair? _%hd4356143611%_)
                                    (let ((_%e4356443617%_
                                           (gx#syntax-e _%hd4356143611%_)))
                                      (let ((_%lp-hd4356543621%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4356443617%_)))
                                            (_%lp-tl4356643624%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4356443617%_))))
                                        (_%loop4356343607%_
                                         _%lp-tl4356643624%_
                                         (cons _%lp-hd4356543621%_
                                               _%e4356743614%_))))
                                    (let ((_%e4356843627%_
                                           (reverse _%e4356743614%_)))
                                      (if (gx#stx-null? _%tl4355943598%_)
                                          ((lambda (_%L43631%_ _%L43633%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%L43633%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4365243655%_
                                                   _%g4365343658%_)
                                            (cons _%g4365243655%_
                                                  _%g4365343658%_))
                                          '()
                                          _%L43631%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4356843627%_
                                           _%hd4355543585%_)
                                          (_%g4355043574%_
                                           _%g4355143578%_)))))))
                      (_%loop4356343607%_ _%target4356043601%_ '()))
                    (_%g4355043574%_ _%g4355143578%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4355043574%_
                                                   _%g4355143578%_))))
                                          (_%g4355043574%_ _%g4355143578%_))))
                                  (_%g4355043574%_ _%g4355143578%_)))))
                      (_%g4354943661%_ (list _%thunk43546%_ _%fini43548%_)))))
                 (_%generate-catch42329%_
                  (lambda (_%handlers42953%_ _%thunk42955%_)
                    (let* ((_%g4295742965%_
                            (lambda (_%g4295842961%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4295842961%_)))
                           (_%g4295643542%_
                            (lambda (_%g4295842969%_)
                              ((lambda (_%L42972%_)
                                 (let _%lp42984%_ ((_%rest42987%_
                                                    _%handlers42953%_)
                                                   (_%clauses42989%_ '()))
                                   (let* ((_%rest4299042998%_ _%rest42987%_)
                                          (_%else4299243131%_
                                           (lambda ()
                                             (let* ((_%g4301043034%_
                                                     (lambda (_%g4301143030%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4301143030%_)))
                                                    (_%g4300943127%_
                                                     (lambda (_%g4301143038%_)
                                                       (if (gx#stx-pair?
                                                            _%g4301143038%_)
                                                           (let ((_%e4301443041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4301143038%_)))
                     (let ((_%hd4301543045%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4301443041%_)))
                           (_%tl4301643048%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4301443041%_))))
                       (if (gx#stx-pair/null? _%hd4301543045%_)
                           (let ((_g45116_
                                  (gx#syntax-split-splice
                                   _%hd4301543045%_
                                   '0)))
                             (begin
                               (let ((_g45117_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45116_)
                                            (##values-length _g45116_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45117_ 2)))
                                     (error "Context expects 2 values"
                                            _g45117_)))
                               (let ((_%target4301743051%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45116_ 0)))
                                     (_%tl4301943054%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45116_ 1))))
                                 (if (gx#stx-null? _%tl4301943054%_)
                                     (letrec ((_%loop4302043057%_
                                               (lambda (_%hd4301843061%_
                                                        _%clause4302443064%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4301843061%_)
                                                     (let ((_%e4302143067%_
                                                            (gx#syntax-e
                                                             _%hd4301843061%_)))
                                                       (let ((_%lp-hd4302243071%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4302143067%_)))
                     (_%lp-tl4302343074%_
                      (let () (declare (not safe)) (##cdr _%e4302143067%_))))
                 (_%loop4302043057%_
                  _%lp-tl4302343074%_
                  (cons _%lp-hd4302243071%_ _%clause4302443064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4302543077%_
                                                            (reverse _%clause4302443064%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4301643048%_)
                                                           (let ((_%e4302643081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4301643048%_)))
                     (let ((_%hd4302743085%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4302643081%_)))
                           (_%tl4302843088%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4302643081%_))))
                       (if (gx#stx-null? _%tl4302843088%_)
                           ((lambda (_%L43091%_ _%L43093%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L42972%_ '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4311843121%_ _%g4311943124%_)
                                   (cons _%g4311843121%_ _%g4311943124%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%L42972%_ '()))
                                                   '()))
                                       '())
                                 _%L43093%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%L43091%_ '()))))
                            _%hd4302743085%_
                            _%clause4302543077%_)
                           (_%g4301043034%_ _%g4301143038%_))))
                   (_%g4301043034%_ _%g4301143038%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4302043057%_
                                        _%target4301743051%_
                                        '()))
                                     (_%g4301043034%_ _%g4301143038%_)))))
                           (_%g4301043034%_ _%g4301143038%_))))
                   (_%g4301043034%_ _%g4301143038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4300943127%_
                                                (list _%clauses42989%_
                                                      _%thunk42955%_)))))
                                          (_%K4299443526%_
                                           (lambda (_%rest43135%_ _%hd43137%_)
                                             (let* ((_%__stx4483644837%_
                                                     _%hd43137%_)
                                                    (_%g4314243212%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4483644837%_))))
                                               (let ((_%__kont4483944840%_
                                                      (lambda (_%L43505%_
                                                               _%L43507%_)
                                                        (_%lp42984%_
                                                         _%rest43135%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%L43507%_ '()))
                                   (cons _%L42972%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%L43505%_ '())))
                       _%clauses42989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4484144842%_
                                                      (lambda (_%L43437%_
                                                               _%L43439%_
                                                               _%L43440%_)
                                                        (_%lp42984%_
                                                         _%rest43135%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%L43440%_ '()))
                                   (cons _%L42972%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%L43439%_
                                                           (cons _%L42972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4345943462%_
                                                               _%g4346043465%_)
                                                        (cons _%g4345943462%_
                                                              _%g4346043465%_))
                                                      '()
                                                      _%L43437%_)))
                                   '()))
                       _%clauses42989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4484544846%_
                                                      (lambda (_%L43343%_
                                                               _%L43345%_)
                                                        (_%lp42984%_
                                                         _%rest43135%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%L43345%_
                                                           (cons _%L42972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4336143364%_
                                                               _%g4336243367%_)
                                                        (cons _%g4336143364%_
                                                              _%g4336243367%_))
                                                      '()
                                                      _%L43343%_)))
                                   '()))
                       _%clauses42989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4484944850%_
                                                      (lambda (_%L43259%_
                                                               _%L43261%_)
                                                        (_%lp42984%_
                                                         _%rest43135%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4327743280%_
                                                         _%g4327843283%_)
                                                  (cons _%g4327743280%_
                                                        _%g4327843283%_))
                                                '()
                                                _%L43259%_))
                                   '()))
                       _%clauses42989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4494144942%_
                                                         (lambda (_%e4319543219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4319643223%_
                          _%tl4319743226%_
                          _%__splice4485144852%_
                          _%target4319843229%_
                          _%tl4320043232%_)
                   (letrec ((_%loop4320143235%_
                             (lambda (_%hd4319943239%_ _%body4320543242%_)
                               (if (gx#stx-pair? _%hd4319943239%_)
                                   (let ((_%e4320243245%_
                                          (gx#syntax-e _%hd4319943239%_)))
                                     (let ((_%lp-tl4320443252%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4320243245%_)))
                                           (_%lp-hd4320343249%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4320243245%_))))
                                       (_%loop4320143235%_
                                        _%lp-tl4320443252%_
                                        (cons _%lp-hd4320343249%_
                                              _%body4320543242%_))))
                                   (let ((_%body4320643255%_
                                          (reverse _%body4320543242%_)))
                                     (let ((_%L43259%_ _%body4320643255%_)
                                           (_%L43261%_ _%hd4319643223%_))
                                       (if (gx#underscore? _%L43261%_)
                                           (_%__kont4484944850%_
                                            _%L43259%_
                                            _%L43261%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4314243212%_)))))))))
                     (_%loop4320143235%_ _%target4319843229%_ '()))))
                (_%__match4492744928%_
                 (lambda (_%e4317843293%_
                          _%hd4317943297%_
                          _%tl4318043300%_
                          _%e4318143303%_
                          _%hd4318243307%_
                          _%tl4318343310%_
                          _%__splice4484744848%_
                          _%target4318443313%_
                          _%tl4318643316%_)
                   (letrec ((_%loop4318743319%_
                             (lambda (_%hd4318543323%_ _%body4319143326%_)
                               (if (gx#stx-pair? _%hd4318543323%_)
                                   (let ((_%e4318843329%_
                                          (gx#syntax-e _%hd4318543323%_)))
                                     (let ((_%lp-tl4319043336%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4318843329%_)))
                                           (_%lp-hd4318943333%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4318843329%_))))
                                       (_%loop4318743319%_
                                        _%lp-tl4319043336%_
                                        (cons _%lp-hd4318943333%_
                                              _%body4319143326%_))))
                                   (let ((_%body4319243339%_
                                          (reverse _%body4319143326%_)))
                                     (let ((_%L43343%_ _%body4319243339%_)
                                           (_%L43345%_ _%hd4318243307%_))
                                       (if (gx#identifier? _%L43345%_)
                                           (_%__kont4484544846%_
                                            _%L43343%_
                                            _%L43345%_)
                                           (_%__match4494144942%_
                                            _%e4317843293%_
                                            _%hd4317943297%_
                                            _%tl4318043300%_
                                            _%__splice4484744848%_
                                            _%target4318443313%_
                                            _%tl4318643316%_))))))))
                     (_%loop4318743319%_ _%target4318443313%_ '()))))
                (_%__match4490544906%_
                 (lambda (_%e4315843377%_
                          _%hd4315943381%_
                          _%tl4316043384%_
                          _%e4316143387%_
                          _%hd4316243391%_
                          _%tl4316343394%_
                          _%e4316443397%_
                          _%hd4316543401%_
                          _%tl4316643404%_
                          _%__splice4484344844%_
                          _%target4316743407%_
                          _%tl4316943410%_)
                   (letrec ((_%loop4317043413%_
                             (lambda (_%hd4316843417%_ _%body4317443420%_)
                               (if (gx#stx-pair? _%hd4316843417%_)
                                   (let ((_%e4317143423%_
                                          (gx#syntax-e _%hd4316843417%_)))
                                     (let ((_%lp-tl4317343430%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4317143423%_)))
                                           (_%lp-hd4317243427%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4317143423%_))))
                                       (_%loop4317043413%_
                                        _%lp-tl4317343430%_
                                        (cons _%lp-hd4317243427%_
                                              _%body4317443420%_))))
                                   (let ((_%body4317543433%_
                                          (reverse _%body4317443420%_)))
                                     (let ((_%L43437%_ _%body4317543433%_)
                                           (_%L43439%_ _%hd4316543401%_)
                                           (_%L43440%_ _%hd4316243391%_))
                                       (if (gx#identifier? _%L43439%_)
                                           (_%__kont4484144842%_
                                            _%L43437%_
                                            _%L43439%_
                                            _%L43440%_)
                                           (_%__match4494144942%_
                                            _%e4315843377%_
                                            _%hd4315943381%_
                                            _%tl4316043384%_
                                            _%__splice4484344844%_
                                            _%target4316743407%_
                                            _%tl4316943410%_))))))))
                     (_%loop4317043413%_ _%target4316743407%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4483644837%_)
                                                       (let ((_%e4314643475%_
                                                              (gx#syntax-e
                                                               _%__stx4483644837%_)))
                                                         (let ((_%tl4314843482%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4314643475%_)))
                       (_%hd4314743479%_
                        (let () (declare (not safe)) (##car _%e4314643475%_))))
                   (if (gx#stx-pair? _%tl4314843482%_)
                       (let ((_%e4314943485%_ (gx#syntax-e _%tl4314843482%_)))
                         (let ((_%tl4315143492%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4314943485%_)))
                               (_%hd4315043489%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4314943485%_))))
                           (if (gx#identifier? _%hd4315043489%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45118_|
                                    _%hd4315043489%_)
                                   (if (gx#stx-pair? _%tl4315143492%_)
                                       (let ((_%e4315243495%_
                                              (gx#syntax-e _%tl4315143492%_)))
                                         (let ((_%tl4315443502%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4315243495%_)))
                                               (_%hd4315343499%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4315243495%_))))
                                           (if (gx#stx-null? _%tl4315443502%_)
                                               (_%__kont4483944840%_
                                                _%hd4315343499%_
                                                _%hd4314743479%_)
                                               (if (gx#stx-pair?
                                                    _%hd4314743479%_)
                                                   (let ((_%e4316143387%_
                                                          (gx#syntax-e
                                                           _%hd4314743479%_)))
                                                     (let ((_%tl4316343394%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4316143387%_)))
                                                           (_%hd4316243391%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4316143387%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4316343394%_)
                                                           (let ((_%e4316443397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4316343394%_)))
                     (let ((_%tl4316643404%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4316443397%_)))
                           (_%hd4316543401%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4316443397%_))))
                       (if (gx#stx-null? _%tl4316643404%_)
                           (if (gx#stx-pair/null? _%tl4314843482%_)
                               (let ((_%__splice4484344844%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4314843482%_
                                       '0)))
                                 (let ((_%tl4316943410%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4484344844%_
                                           '1)))
                                       (_%target4316743407%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4484344844%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4316943410%_)
                                       (_%__match4490544906%_
                                        _%e4314643475%_
                                        _%hd4314743479%_
                                        _%tl4314843482%_
                                        _%e4316143387%_
                                        _%hd4316243391%_
                                        _%tl4316343394%_
                                        _%e4316443397%_
                                        _%hd4316543401%_
                                        _%tl4316643404%_
                                        _%__splice4484344844%_
                                        _%target4316743407%_
                                        _%tl4316943410%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4314243212%_)))))
                               (let () (declare (not safe)) (_%g4314243212%_)))
                           (if (gx#stx-pair/null? _%tl4314843482%_)
                               (let ((_%__splice4485144852%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4314843482%_
                                       '0)))
                                 (let ((_%tl4320043232%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4485144852%_
                                           '1)))
                                       (_%target4319843229%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4485144852%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4320043232%_)
                                       (_%__match4494144942%_
                                        _%e4314643475%_
                                        _%hd4314743479%_
                                        _%tl4314843482%_
                                        _%__splice4485144852%_
                                        _%target4319843229%_
                                        _%tl4320043232%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4314243212%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4314243212%_))))))
                   (if (gx#stx-null? _%tl4316343394%_)
                       (if (gx#stx-pair/null? _%tl4314843482%_)
                           (let ((_%__splice4484744848%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4314843482%_
                                   '0)))
                             (let ((_%tl4318643316%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4484744848%_
                                       '1)))
                                   (_%target4318443313%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4484744848%_
                                       '0))))
                               (if (gx#stx-null? _%tl4318643316%_)
                                   (_%__match4492744928%_
                                    _%e4314643475%_
                                    _%hd4314743479%_
                                    _%tl4314843482%_
                                    _%e4316143387%_
                                    _%hd4316243391%_
                                    _%tl4316343394%_
                                    _%__splice4484744848%_
                                    _%target4318443313%_
                                    _%tl4318643316%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4314243212%_)))))
                           (let () (declare (not safe)) (_%g4314243212%_)))
                       (if (gx#stx-pair/null? _%tl4314843482%_)
                           (let ((_%__splice4485144852%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4314843482%_
                                   '0)))
                             (let ((_%tl4320043232%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4485144852%_
                                       '1)))
                                   (_%target4319843229%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4485144852%_
                                       '0))))
                               (if (gx#stx-null? _%tl4320043232%_)
                                   (_%__match4494144942%_
                                    _%e4314643475%_
                                    _%hd4314743479%_
                                    _%tl4314843482%_
                                    _%__splice4485144852%_
                                    _%target4319843229%_
                                    _%tl4320043232%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4314243212%_)))))
                           (let () (declare (not safe)) (_%g4314243212%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4314843482%_)
                                                       (let ((_%__splice4485144852%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4314843482%_
                                                               '0)))
                                                         (let ((_%tl4320043232%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4485144852%_ '1)))
                       (_%target4319843229%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4485144852%_ '0))))
                   (if (gx#stx-null? _%tl4320043232%_)
                       (_%__match4494144942%_
                        _%e4314643475%_
                        _%hd4314743479%_
                        _%tl4314843482%_
                        _%__splice4485144852%_
                        _%target4319843229%_
                        _%tl4320043232%_)
                       (let () (declare (not safe)) (_%g4314243212%_)))))
               (let () (declare (not safe)) (_%g4314243212%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4314743479%_)
                                           (let ((_%e4316143387%_
                                                  (gx#syntax-e
                                                   _%hd4314743479%_)))
                                             (let ((_%tl4316343394%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4316143387%_)))
                                                   (_%hd4316243391%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4316143387%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4316343394%_)
                                                   (let ((_%e4316443397%_
                                                          (gx#syntax-e
                                                           _%tl4316343394%_)))
                                                     (let ((_%tl4316643404%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4316443397%_)))
                                                           (_%hd4316543401%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4316443397%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4316643404%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4314843482%_)
                                                               (let ((_%__splice4484344844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4314843482%_
                               '0)))
                         (let ((_%tl4316943410%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4484344844%_ '1)))
                               (_%target4316743407%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4484344844%_ '0))))
                           (if (gx#stx-null? _%tl4316943410%_)
                               (_%__match4490544906%_
                                _%e4314643475%_
                                _%hd4314743479%_
                                _%tl4314843482%_
                                _%e4316143387%_
                                _%hd4316243391%_
                                _%tl4316343394%_
                                _%e4316443397%_
                                _%hd4316543401%_
                                _%tl4316643404%_
                                _%__splice4484344844%_
                                _%target4316743407%_
                                _%tl4316943410%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4314243212%_)))))
                       (let () (declare (not safe)) (_%g4314243212%_)))
                   (if (gx#stx-pair/null? _%tl4314843482%_)
                       (let ((_%__splice4485144852%_
                              (gx#syntax-split-splice->vector
                               _%tl4314843482%_
                               '0)))
                         (let ((_%tl4320043232%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4485144852%_ '1)))
                               (_%target4319843229%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4485144852%_ '0))))
                           (if (gx#stx-null? _%tl4320043232%_)
                               (_%__match4494144942%_
                                _%e4314643475%_
                                _%hd4314743479%_
                                _%tl4314843482%_
                                _%__splice4485144852%_
                                _%target4319843229%_
                                _%tl4320043232%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4314243212%_)))))
                       (let () (declare (not safe)) (_%g4314243212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4316343394%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4314843482%_)
                                                           (let ((_%__splice4484744848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4314843482%_
                           '0)))
                     (let ((_%tl4318643316%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4484744848%_ '1)))
                           (_%target4318443313%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4484744848%_ '0))))
                       (if (gx#stx-null? _%tl4318643316%_)
                           (_%__match4492744928%_
                            _%e4314643475%_
                            _%hd4314743479%_
                            _%tl4314843482%_
                            _%e4316143387%_
                            _%hd4316243391%_
                            _%tl4316343394%_
                            _%__splice4484744848%_
                            _%target4318443313%_
                            _%tl4318643316%_)
                           (let () (declare (not safe)) (_%g4314243212%_)))))
                   (let () (declare (not safe)) (_%g4314243212%_)))
               (if (gx#stx-pair/null? _%tl4314843482%_)
                   (let ((_%__splice4485144852%_
                          (gx#syntax-split-splice->vector
                           _%tl4314843482%_
                           '0)))
                     (let ((_%tl4320043232%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4485144852%_ '1)))
                           (_%target4319843229%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4485144852%_ '0))))
                       (if (gx#stx-null? _%tl4320043232%_)
                           (_%__match4494144942%_
                            _%e4314643475%_
                            _%hd4314743479%_
                            _%tl4314843482%_
                            _%__splice4485144852%_
                            _%target4319843229%_
                            _%tl4320043232%_)
                           (let () (declare (not safe)) (_%g4314243212%_)))))
                   (let () (declare (not safe)) (_%g4314243212%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4314843482%_)
                                               (let ((_%__splice4485144852%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4314843482%_
                                                       '0)))
                                                 (let ((_%tl4320043232%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4485144852%_
                                                           '1)))
                                                       (_%target4319843229%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4485144852%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4320043232%_)
                                                       (_%__match4494144942%_
                                                        _%e4314643475%_
                                                        _%hd4314743479%_
                                                        _%tl4314843482%_
                                                        _%__splice4485144852%_
                                                        _%target4319843229%_
                                                        _%tl4320043232%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4314243212%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4314243212%_)))))
                                   (if (gx#stx-pair? _%hd4314743479%_)
                                       (let ((_%e4316143387%_
                                              (gx#syntax-e _%hd4314743479%_)))
                                         (let ((_%tl4316343394%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4316143387%_)))
                                               (_%hd4316243391%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4316143387%_))))
                                           (if (gx#stx-pair? _%tl4316343394%_)
                                               (let ((_%e4316443397%_
                                                      (gx#syntax-e
                                                       _%tl4316343394%_)))
                                                 (let ((_%tl4316643404%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4316443397%_)))
                                                       (_%hd4316543401%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4316443397%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4316643404%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4314843482%_)
                                                           (let ((_%__splice4484344844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4314843482%_
                           '0)))
                     (let ((_%tl4316943410%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4484344844%_ '1)))
                           (_%target4316743407%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4484344844%_ '0))))
                       (if (gx#stx-null? _%tl4316943410%_)
                           (_%__match4490544906%_
                            _%e4314643475%_
                            _%hd4314743479%_
                            _%tl4314843482%_
                            _%e4316143387%_
                            _%hd4316243391%_
                            _%tl4316343394%_
                            _%e4316443397%_
                            _%hd4316543401%_
                            _%tl4316643404%_
                            _%__splice4484344844%_
                            _%target4316743407%_
                            _%tl4316943410%_)
                           (let () (declare (not safe)) (_%g4314243212%_)))))
                   (let () (declare (not safe)) (_%g4314243212%_)))
               (if (gx#stx-pair/null? _%tl4314843482%_)
                   (let ((_%__splice4485144852%_
                          (gx#syntax-split-splice->vector
                           _%tl4314843482%_
                           '0)))
                     (let ((_%tl4320043232%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4485144852%_ '1)))
                           (_%target4319843229%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4485144852%_ '0))))
                       (if (gx#stx-null? _%tl4320043232%_)
                           (_%__match4494144942%_
                            _%e4314643475%_
                            _%hd4314743479%_
                            _%tl4314843482%_
                            _%__splice4485144852%_
                            _%target4319843229%_
                            _%tl4320043232%_)
                           (let () (declare (not safe)) (_%g4314243212%_)))))
                   (let () (declare (not safe)) (_%g4314243212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4316343394%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4314843482%_)
                                                       (let ((_%__splice4484744848%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4314843482%_
                                                               '0)))
                                                         (let ((_%tl4318643316%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4484744848%_ '1)))
                       (_%target4318443313%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4484744848%_ '0))))
                   (if (gx#stx-null? _%tl4318643316%_)
                       (_%__match4492744928%_
                        _%e4314643475%_
                        _%hd4314743479%_
                        _%tl4314843482%_
                        _%e4316143387%_
                        _%hd4316243391%_
                        _%tl4316343394%_
                        _%__splice4484744848%_
                        _%target4318443313%_
                        _%tl4318643316%_)
                       (let () (declare (not safe)) (_%g4314243212%_)))))
               (let () (declare (not safe)) (_%g4314243212%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4314843482%_)
                                                       (let ((_%__splice4485144852%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4314843482%_
                                                               '0)))
                                                         (let ((_%tl4320043232%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4485144852%_ '1)))
                       (_%target4319843229%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4485144852%_ '0))))
                   (if (gx#stx-null? _%tl4320043232%_)
                       (_%__match4494144942%_
                        _%e4314643475%_
                        _%hd4314743479%_
                        _%tl4314843482%_
                        _%__splice4485144852%_
                        _%target4319843229%_
                        _%tl4320043232%_)
                       (let () (declare (not safe)) (_%g4314243212%_)))))
               (let () (declare (not safe)) (_%g4314243212%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4314843482%_)
                                           (let ((_%__splice4485144852%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4314843482%_
                                                   '0)))
                                             (let ((_%tl4320043232%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4485144852%_
                                                       '1)))
                                                   (_%target4319843229%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4485144852%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4320043232%_)
                                                   (_%__match4494144942%_
                                                    _%e4314643475%_
                                                    _%hd4314743479%_
                                                    _%tl4314843482%_
                                                    _%__splice4485144852%_
                                                    _%target4319843229%_
                                                    _%tl4320043232%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314243212%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4314243212%_)))))
                               (if (gx#stx-pair? _%hd4314743479%_)
                                   (let ((_%e4316143387%_
                                          (gx#syntax-e _%hd4314743479%_)))
                                     (let ((_%tl4316343394%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4316143387%_)))
                                           (_%hd4316243391%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4316143387%_))))
                                       (if (gx#stx-pair? _%tl4316343394%_)
                                           (let ((_%e4316443397%_
                                                  (gx#syntax-e
                                                   _%tl4316343394%_)))
                                             (let ((_%tl4316643404%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4316443397%_)))
                                                   (_%hd4316543401%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4316443397%_))))
                                               (if (gx#stx-null?
                                                    _%tl4316643404%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4314843482%_)
                                                       (let ((_%__splice4484344844%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4314843482%_
                                                               '0)))
                                                         (let ((_%tl4316943410%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4484344844%_ '1)))
                       (_%target4316743407%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4484344844%_ '0))))
                   (if (gx#stx-null? _%tl4316943410%_)
                       (_%__match4490544906%_
                        _%e4314643475%_
                        _%hd4314743479%_
                        _%tl4314843482%_
                        _%e4316143387%_
                        _%hd4316243391%_
                        _%tl4316343394%_
                        _%e4316443397%_
                        _%hd4316543401%_
                        _%tl4316643404%_
                        _%__splice4484344844%_
                        _%target4316743407%_
                        _%tl4316943410%_)
                       (let () (declare (not safe)) (_%g4314243212%_)))))
               (let () (declare (not safe)) (_%g4314243212%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4314843482%_)
                                                       (let ((_%__splice4485144852%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4314843482%_
                                                               '0)))
                                                         (let ((_%tl4320043232%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4485144852%_ '1)))
                       (_%target4319843229%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4485144852%_ '0))))
                   (if (gx#stx-null? _%tl4320043232%_)
                       (_%__match4494144942%_
                        _%e4314643475%_
                        _%hd4314743479%_
                        _%tl4314843482%_
                        _%__splice4485144852%_
                        _%target4319843229%_
                        _%tl4320043232%_)
                       (let () (declare (not safe)) (_%g4314243212%_)))))
               (let () (declare (not safe)) (_%g4314243212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4316343394%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4314843482%_)
                                                   (let ((_%__splice4484744848%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4314843482%_
                                                           '0)))
                                                     (let ((_%tl4318643316%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4484744848%_
                                                               '1)))
                                                           (_%target4318443313%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4484744848%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4318643316%_)
                                                           (_%__match4492744928%_
                                                            _%e4314643475%_
                                                            _%hd4314743479%_
                                                            _%tl4314843482%_
                                                            _%e4316143387%_
                                                            _%hd4316243391%_
                                                            _%tl4316343394%_
                                                            _%__splice4484744848%_
                                                            _%target4318443313%_
                                                            _%tl4318643316%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4314243212%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314243212%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4314843482%_)
                                                   (let ((_%__splice4485144852%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4314843482%_
                                                           '0)))
                                                     (let ((_%tl4320043232%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4485144852%_
                                                               '1)))
                                                           (_%target4319843229%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4485144852%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4320043232%_)
                                                           (_%__match4494144942%_
                                                            _%e4314643475%_
                                                            _%hd4314743479%_
                                                            _%tl4314843482%_
                                                            _%__splice4485144852%_
                                                            _%target4319843229%_
                                                            _%tl4320043232%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4314243212%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314243212%_)))))))
                                   (if (gx#stx-pair/null? _%tl4314843482%_)
                                       (let ((_%__splice4485144852%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4314843482%_
                                               '0)))
                                         (let ((_%tl4320043232%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4485144852%_
                                                   '1)))
                                               (_%target4319843229%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4485144852%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4320043232%_)
                                               (_%__match4494144942%_
                                                _%e4314643475%_
                                                _%hd4314743479%_
                                                _%tl4314843482%_
                                                _%__splice4485144852%_
                                                _%target4319843229%_
                                                _%tl4320043232%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4314243212%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4314243212%_)))))))
                       (if (gx#stx-pair? _%hd4314743479%_)
                           (let ((_%e4316143387%_
                                  (gx#syntax-e _%hd4314743479%_)))
                             (let ((_%tl4316343394%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4316143387%_)))
                                   (_%hd4316243391%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4316143387%_))))
                               (if (gx#stx-pair? _%tl4316343394%_)
                                   (let ((_%e4316443397%_
                                          (gx#syntax-e _%tl4316343394%_)))
                                     (let ((_%tl4316643404%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4316443397%_)))
                                           (_%hd4316543401%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4316443397%_))))
                                       (if (gx#stx-null? _%tl4316643404%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4314843482%_)
                                               (let ((_%__splice4484344844%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4314843482%_
                                                       '0)))
                                                 (let ((_%tl4316943410%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4484344844%_
                                                           '1)))
                                                       (_%target4316743407%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4484344844%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4316943410%_)
                                                       (_%__match4490544906%_
                                                        _%e4314643475%_
                                                        _%hd4314743479%_
                                                        _%tl4314843482%_
                                                        _%e4316143387%_
                                                        _%hd4316243391%_
                                                        _%tl4316343394%_
                                                        _%e4316443397%_
                                                        _%hd4316543401%_
                                                        _%tl4316643404%_
                                                        _%__splice4484344844%_
                                                        _%target4316743407%_
                                                        _%tl4316943410%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4314243212%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4314243212%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4314843482%_)
                                               (let ((_%__splice4485144852%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4314843482%_
                                                       '0)))
                                                 (let ((_%tl4320043232%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4485144852%_
                                                           '1)))
                                                       (_%target4319843229%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4485144852%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4320043232%_)
                                                       (_%__match4494144942%_
                                                        _%e4314643475%_
                                                        _%hd4314743479%_
                                                        _%tl4314843482%_
                                                        _%__splice4485144852%_
                                                        _%target4319843229%_
                                                        _%tl4320043232%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4314243212%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4314243212%_))))))
                                   (if (gx#stx-null? _%tl4316343394%_)
                                       (if (gx#stx-pair/null? _%tl4314843482%_)
                                           (let ((_%__splice4484744848%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4314843482%_
                                                   '0)))
                                             (let ((_%tl4318643316%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4484744848%_
                                                       '1)))
                                                   (_%target4318443313%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4484744848%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4318643316%_)
                                                   (_%__match4492744928%_
                                                    _%e4314643475%_
                                                    _%hd4314743479%_
                                                    _%tl4314843482%_
                                                    _%e4316143387%_
                                                    _%hd4316243391%_
                                                    _%tl4316343394%_
                                                    _%__splice4484744848%_
                                                    _%target4318443313%_
                                                    _%tl4318643316%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314243212%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4314243212%_)))
                                       (if (gx#stx-pair/null? _%tl4314843482%_)
                                           (let ((_%__splice4485144852%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4314843482%_
                                                   '0)))
                                             (let ((_%tl4320043232%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4485144852%_
                                                       '1)))
                                                   (_%target4319843229%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4485144852%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4320043232%_)
                                                   (_%__match4494144942%_
                                                    _%e4314643475%_
                                                    _%hd4314743479%_
                                                    _%tl4314843482%_
                                                    _%__splice4485144852%_
                                                    _%target4319843229%_
                                                    _%tl4320043232%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314243212%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4314243212%_)))))))
                           (if (gx#stx-pair/null? _%tl4314843482%_)
                               (let ((_%__splice4485144852%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4314843482%_
                                       '0)))
                                 (let ((_%tl4320043232%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4485144852%_
                                           '1)))
                                       (_%target4319843229%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4485144852%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4320043232%_)
                                       (_%__match4494144942%_
                                        _%e4314643475%_
                                        _%hd4314743479%_
                                        _%tl4314843482%_
                                        _%__splice4485144852%_
                                        _%target4319843229%_
                                        _%tl4320043232%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4314243212%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4314243212%_)))))))
               (let () (declare (not safe)) (_%g4314243212%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4299042998%_)
                                         (let ((_%hd4299543530%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4299042998%_)))
                                               (_%tl4299643533%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4299042998%_))))
                                           (let* ((_%hd43536%_
                                                   _%hd4299543530%_)
                                                  (_%rest43539%_
                                                   _%tl4299643533%_))
                                             (_%K4299443526%_
                                              _%rest43539%_
                                              _%hd43536%_)))
                                         (_%else4299243131%_)))))
                               _%g4295842969%_))))
                      (_%g4295643542%_ (gx#genident))))))
          (let* ((_%g4233142351%_
                  (lambda (_%g4233242347%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4233242347%_)))
                 (_%g4233042949%_
                  (lambda (_%g4233242355%_)
                    (if (gx#stx-pair? _%g4233242355%_)
                        (let ((_%e4233442358%_ (gx#syntax-e _%g4233242355%_)))
                          (let ((_%hd4233542362%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4233442358%_)))
                                (_%tl4233642365%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4233442358%_))))
                            (if (gx#stx-pair/null? _%tl4233642365%_)
                                (let ((_g45119_
                                       (gx#syntax-split-splice
                                        _%tl4233642365%_
                                        '0)))
                                  (begin
                                    (let ((_g45120_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45119_)
                                                 (##values-length _g45119_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45120_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45120_)))
                                    (let ((_%target4233742368%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45119_ 0)))
                                          (_%tl4233942371%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45119_ 1))))
                                      (if (gx#stx-null? _%tl4233942371%_)
                                          (letrec ((_%loop4234042374%_
                                                    (lambda (_%hd4233842378%_
                                                             _%e4234442381%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4233842378%_)
                                                          (let ((_%e4234142384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4233842378%_)))
                    (let ((_%lp-hd4234242388%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4234142384%_)))
                          (_%lp-tl4234342391%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4234142384%_))))
                      (_%loop4234042374%_
                       _%lp-tl4234342391%_
                       (cons _%lp-hd4234242388%_ _%e4234442381%_))))
                  (let ((_%e4234542394%_ (reverse _%e4234442381%_)))
                    ((lambda (_%L42398%_)
                       (let _%lp42415%_ ((_%rest42418%_
                                          (foldr (lambda (_%g4294042943%_
                                                          _%g4294142946%_)
                                                   (cons _%g4294042943%_
                                                         _%g4294142946%_))
                                                 '()
                                                 _%L42398%_))
                                         (_%body42420%_ '()))
                         (let* ((_%__stx4506245063%_ _%rest42418%_)
                                (_%g4242342435%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4506245063%_))))
                           (let ((_%__kont4506545066%_
                                  (lambda (_%L42463%_ _%L42465%_)
                                    (let* ((_%__stx4501045011%_ _%L42465%_)
                                           (_%g4248242515%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4501045011%_))))
                                      (let ((_%__kont4501345014%_
                                             (lambda (_%L42910%_)
                                               (if (gx#stx-null? _%L42463%_)
                                                   (_%generate-fini42328%_
                                                    (_%generate-thunk42326%_
                                                     _%body42420%_)
                                                    (foldr (lambda (_%g4292442927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4292542930%_)
                     (cons _%g4292442927%_ _%g4292542930%_))
                   '()
                   _%L42910%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42323%_))))
                                            (_%__kont4501745018%_
                                             (lambda (_%L42573%_)
                                               (let _%lp42590%_ ((_%rest42593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L42463%_)
                         (_%handlers42595%_
                          (cons (foldr (lambda (_%g4285442857%_
                                                _%g4285542860%_)
                                         (cons _%g4285442857%_
                                               _%g4285542860%_))
                                       '()
                                       _%L42573%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4494444945%_
                                                         _%rest42593%_)
                                                        (_%g4259942639%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4494444945%_))))
                                                   (let ((_%__kont4494744948%_
                                                          (lambda (_%L42824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L42826%_)
                    (_%lp42590%_
                     _%L42824%_
                     (cons (foldr (lambda (_%g4284242845%_ _%g4284342848%_)
                                    (cons _%g4284242845%_ _%g4284342848%_))
                                  '()
                                  _%L42826%_)
                           _%handlers42595%_))))
                 (_%__kont4495144952%_
                  (lambda (_%L42707%_)
                    (let* ((_%g4272842736%_
                            (lambda (_%g4272942732%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4272942732%_)))
                           (_%g4272742763%_
                            (lambda (_%g4272942740%_)
                              ((lambda (_%L42743%_)
                                 (_%generate-fini42328%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%L42743%_ '())))
                                  (foldr (lambda (_%g4275442757%_
                                                  _%g4275542760%_)
                                           (cons _%g4275442757%_
                                                 _%g4275542760%_))
                                         '()
                                         _%L42707%_)))
                               _%g4272942740%_))))
                      (_%g4272742763%_
                       (_%generate-catch42329%_
                        _%handlers42595%_
                        (_%generate-thunk42326%_ _%body42420%_))))))
                 (_%__kont4495544956%_
                  (lambda ()
                    (_%generate-catch42329%_
                     _%handlers42595%_
                     (_%generate-thunk42326%_ _%body42420%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4259842650%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4494444945%_)
                           (_%__kont4495544956%_)
                           (let () (declare (not safe)) (_%g4259942639%_)))))
                    (_%__match4500545006%_
                     (lambda (_%e4261942657%_
                              _%hd4262042661%_
                              _%tl4262142664%_
                              _%e4262242667%_
                              _%hd4262342671%_
                              _%tl4262442674%_
                              _%__splice4495344954%_
                              _%target4262542677%_
                              _%tl4262742680%_)
                       (letrec ((_%loop4262842683%_
                                 (lambda (_%hd4262642687%_ _%fini4263242690%_)
                                   (if (gx#stx-pair? _%hd4262642687%_)
                                       (let ((_%e4262942693%_
                                              (gx#syntax-e _%hd4262642687%_)))
                                         (let ((_%lp-tl4263142700%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4262942693%_)))
                                               (_%lp-hd4263042697%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4262942693%_))))
                                           (_%loop4262842683%_
                                            _%lp-tl4263142700%_
                                            (cons _%lp-hd4263042697%_
                                                  _%fini4263242690%_))))
                                       (let ((_%fini4263342703%_
                                              (reverse _%fini4263242690%_)))
                                         (if (gx#stx-null? _%tl4262142664%_)
                                             (_%__kont4495144952%_
                                              _%fini4263342703%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4259942639%_))))))))
                         (_%loop4262842683%_ _%target4262542677%_ '()))))
                    (_%__match4498144982%_
                     (lambda (_%e4260342774%_
                              _%hd4260442778%_
                              _%tl4260542781%_
                              _%e4260642784%_
                              _%hd4260742788%_
                              _%tl4260842791%_
                              _%__splice4494944950%_
                              _%target4260942794%_
                              _%tl4261142797%_)
                       (letrec ((_%loop4261242800%_
                                 (lambda (_%hd4261042804%_
                                          _%handler4261642807%_)
                                   (if (gx#stx-pair? _%hd4261042804%_)
                                       (let ((_%e4261342810%_
                                              (gx#syntax-e _%hd4261042804%_)))
                                         (let ((_%lp-tl4261542817%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4261342810%_)))
                                               (_%lp-hd4261442814%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4261342810%_))))
                                           (_%loop4261242800%_
                                            _%lp-tl4261542817%_
                                            (cons _%lp-hd4261442814%_
                                                  _%handler4261642807%_))))
                                       (let ((_%handler4261742820%_
                                              (reverse _%handler4261642807%_)))
                                         (_%__kont4494744948%_
                                          _%tl4260542781%_
                                          _%handler4261742820%_))))))
                         (_%loop4261242800%_ _%target4260942794%_ '())))))
               (if (gx#stx-pair? _%__stx4494444945%_)
                   (let ((_%e4260342774%_ (gx#syntax-e _%__stx4494444945%_)))
                     (let ((_%tl4260542781%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4260342774%_)))
                           (_%hd4260442778%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4260342774%_))))
                       (if (gx#stx-pair? _%hd4260442778%_)
                           (let ((_%e4260642784%_
                                  (gx#syntax-e _%hd4260442778%_)))
                             (let ((_%tl4260842791%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4260642784%_)))
                                   (_%hd4260742788%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4260642784%_))))
                               (if (gx#identifier? _%hd4260742788%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45121_|
                                        _%hd4260742788%_)
                                       (if (gx#stx-pair/null? _%tl4260842791%_)
                                           (let ((_%__splice4494944950%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4260842791%_
                                                   '0)))
                                             (let ((_%tl4261142797%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4494944950%_
                                                       '1)))
                                                   (_%target4260942794%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4494944950%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4261142797%_)
                                                   (_%__match4498144982%_
                                                    _%e4260342774%_
                                                    _%hd4260442778%_
                                                    _%tl4260542781%_
                                                    _%e4260642784%_
                                                    _%hd4260742788%_
                                                    _%tl4260842791%_
                                                    _%__splice4494944950%_
                                                    _%target4260942794%_
                                                    _%tl4261142797%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4259942639%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4259942639%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45122_|
                                            _%hd4260742788%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4260842791%_)
                                               (let ((_%__splice4495344954%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4260842791%_
                                                       '0)))
                                                 (let ((_%tl4262742680%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4495344954%_
                                                           '1)))
                                                       (_%target4262542677%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4495344954%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4262742680%_)
                                                       (_%__match4500545006%_
                                                        _%e4260342774%_
                                                        _%hd4260442778%_
                                                        _%tl4260542781%_
                                                        _%e4260642784%_
                                                        _%hd4260742788%_
                                                        _%tl4260842791%_
                                                        _%__splice4495344954%_
                                                        _%target4262542677%_
                                                        _%tl4262742680%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4259942639%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4259942639%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4259942639%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4259942639%_)))))
                           (let () (declare (not safe)) (_%g4259942639%_)))))
                   (let () (declare (not safe)) (_%g4259842650%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4502145022%_
                                             (lambda ()
                                               (_%lp42415%_
                                                _%L42463%_
                                                (cons _%L42465%_
                                                      _%body42420%_)))))
                                        (let* ((_%__match4505945060%_
                                                (lambda (_%e4249842533%_
                                                         _%hd4249942537%_
                                                         _%tl4250042540%_
                                                         _%__splice4501945020%_
                                                         _%target4250142543%_
                                                         _%tl4250342546%_)
                                                  (letrec ((_%loop4250442549%_
                                                            (lambda (_%hd4250242553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4250842556%_)
                      (if (gx#stx-pair? _%hd4250242553%_)
                          (let ((_%e4250542559%_
                                 (gx#syntax-e _%hd4250242553%_)))
                            (let ((_%lp-tl4250742566%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4250542559%_)))
                                  (_%lp-hd4250642563%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4250542559%_))))
                              (_%loop4250442549%_
                               _%lp-tl4250742566%_
                               (cons _%lp-hd4250642563%_
                                     _%handler4250842556%_))))
                          (let ((_%handler4250942569%_
                                 (reverse _%handler4250842556%_)))
                            (_%__kont4501745018%_ _%handler4250942569%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4250442549%_
                                                     _%target4250142543%_
                                                     '()))))
                                               (_%__match4504145042%_
                                                (lambda (_%e4248542870%_
                                                         _%hd4248642874%_
                                                         _%tl4248742877%_
                                                         _%__splice4501545016%_
                                                         _%target4248842880%_
                                                         _%tl4249042883%_)
                                                  (letrec ((_%loop4249142886%_
                                                            (lambda (_%hd4248942890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4249542893%_)
                      (if (gx#stx-pair? _%hd4248942890%_)
                          (let ((_%e4249242896%_
                                 (gx#syntax-e _%hd4248942890%_)))
                            (let ((_%lp-tl4249442903%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4249242896%_)))
                                  (_%lp-hd4249342900%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4249242896%_))))
                              (_%loop4249142886%_
                               _%lp-tl4249442903%_
                               (cons _%lp-hd4249342900%_ _%fini4249542893%_))))
                          (let ((_%fini4249642906%_
                                 (reverse _%fini4249542893%_)))
                            (_%__kont4501345014%_ _%fini4249642906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4249142886%_
                                                     _%target4248842880%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4501045011%_)
                                              (let ((_%e4248542870%_
                                                     (gx#syntax-e
                                                      _%__stx4501045011%_)))
                                                (let ((_%tl4248742877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4248542870%_)))
                                                      (_%hd4248642874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4248542870%_))))
                                                  (if (gx#identifier?
                                                       _%hd4248642874%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45123_|
                                                           _%hd4248642874%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4248742877%_)
                                                              (let ((_%__splice4501545016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4248742877%_
                              '0)))
                        (let ((_%tl4249042883%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4501545016%_ '1)))
                              (_%target4248842880%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4501545016%_ '0))))
                          (if (gx#stx-null? _%tl4249042883%_)
                              (_%__match4504145042%_
                               _%e4248542870%_
                               _%hd4248642874%_
                               _%tl4248742877%_
                               _%__splice4501545016%_
                               _%target4248842880%_
                               _%tl4249042883%_)
                              (_%__kont4502145022%_))))
                      (_%__kont4502145022%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45124_|
                       _%hd4248642874%_)
                      (if (gx#stx-pair/null? _%tl4248742877%_)
                          (let ((_%__splice4501945020%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4248742877%_
                                  '0)))
                            (let ((_%tl4250342546%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4501945020%_ '1)))
                                  (_%target4250142543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4501945020%_
                                      '0))))
                              (if (gx#stx-null? _%tl4250342546%_)
                                  (_%__match4505945060%_
                                   _%e4248542870%_
                                   _%hd4248642874%_
                                   _%tl4248742877%_
                                   _%__splice4501945020%_
                                   _%target4250142543%_
                                   _%tl4250342546%_)
                                  (_%__kont4502145022%_))))
                          (_%__kont4502145022%_))
                      (_%__kont4502145022%_)))
              (_%__kont4502145022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4502145022%_)))))))
                                 (_%__kont4506745068%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42420%_)))))
                             (let ((_%g4242242446%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4506245063%_)
                                          (_%__kont4506745068%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4242342435%_))))))
                               (if (gx#stx-pair? _%__stx4506245063%_)
                                   (let ((_%e4242742453%_
                                          (gx#syntax-e _%__stx4506245063%_)))
                                     (let ((_%tl4242942460%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4242742453%_)))
                                           (_%hd4242842457%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4242742453%_))))
                                       (_%__kont4506545066%_
                                        _%tl4242942460%_
                                        _%hd4242842457%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4242242446%_))))))))
                     _%e4234542394%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4234042374%_
                                             _%target4233742368%_
                                             '()))
                                          (_%g4233142351%_ _%g4233242355%_)))))
                                (_%g4233142351%_ _%g4233242355%_))))
                        (_%g4233142351%_ _%g4233242355%_)))))
            (_%g4233042949%_ _%stx42323%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43761%_)
        (let* ((_%g4376543794%_
                (lambda (_%g4376643790%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4376643790%_)))
               (_%g4376443894%_
                (lambda (_%g4376643798%_)
                  (if (gx#stx-pair? _%g4376643798%_)
                      (let ((_%e4376943801%_ (gx#syntax-e _%g4376643798%_)))
                        (let ((_%hd4377043805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4376943801%_)))
                              (_%tl4377143808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4376943801%_))))
                          (if (gx#stx-pair/null? _%tl4377143808%_)
                              (let ((_g45125_
                                     (gx#syntax-split-splice
                                      _%tl4377143808%_
                                      '0)))
                                (begin
                                  (let ((_g45126_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45125_)
                                               (##values-length _g45125_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45126_ 2)))
                                        (error "Context expects 2 values"
                                               _g45126_)))
                                  (let ((_%target4377243811%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45125_ 0)))
                                        (_%tl4377443814%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45125_ 1))))
                                    (if (gx#stx-null? _%tl4377443814%_)
                                        (letrec ((_%loop4377543817%_
                                                  (lambda (_%hd4377343821%_
                                                           _%val4377943824%_
                                                           _%key4378043826%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4377343821%_)
                                                        (let ((_%e4377643829%_
                                                               (gx#syntax-e
                                                                _%hd4377343821%_)))
                                                          (let ((_%lp-hd4377743833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4377643829%_)))
                        (_%lp-tl4377843836%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4377643829%_))))
                    (if (gx#stx-pair? _%lp-hd4377743833%_)
                        (let ((_%e4378343839%_
                               (gx#syntax-e _%lp-hd4377743833%_)))
                          (let ((_%hd4378443843%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4378343839%_)))
                                (_%tl4378543846%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4378343839%_))))
                            (if (gx#stx-pair? _%tl4378543846%_)
                                (let ((_%e4378643849%_
                                       (gx#syntax-e _%tl4378543846%_)))
                                  (let ((_%hd4378743853%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4378643849%_)))
                                        (_%tl4378843856%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4378643849%_))))
                                    (if (gx#stx-null? _%tl4378843856%_)
                                        (_%loop4377543817%_
                                         _%lp-tl4377843836%_
                                         (cons _%hd4378743853%_
                                               _%val4377943824%_)
                                         (cons _%hd4378443843%_
                                               _%key4378043826%_))
                                        (_%g4376543794%_ _%g4376643798%_))))
                                (_%g4376543794%_ _%g4376643798%_))))
                        (_%g4376543794%_ _%g4376643798%_))))
                (let ((_%val4378143859%_ (reverse _%val4377943824%_))
                      (_%key4378243862%_ (reverse _%key4378043826%_)))
                  ((lambda (_%L43865%_ _%L43867%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L43865%_
                                    _%L43867%_)
                                   (foldr (lambda (_%g4388243886%_
                                                   _%g4388343889%_
                                                   _%g4388443891%_)
                                            (cons (cons _%g4388343889%_
                                                        (cons _%g4388243886%_
                                                              '()))
                                                  _%g4388443891%_))
                                          '()
                                          _%L43865%_
                                          _%L43867%_)))))
                   _%val4378143859%_
                   _%key4378243862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4377543817%_
                                           _%target4377243811%_
                                           '()
                                           '()))
                                        (_%g4376543794%_ _%g4376643798%_)))))
                              (_%g4376543794%_ _%g4376643798%_))))
                      (_%g4376543794%_ _%g4376643798%_)))))
          (_%g4376443894%_ _%$stx43761%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43899%_)
        (let* ((_%g4390343932%_
                (lambda (_%g4390443928%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4390443928%_)))
               (_%g4390244032%_
                (lambda (_%g4390443936%_)
                  (if (gx#stx-pair? _%g4390443936%_)
                      (let ((_%e4390743939%_ (gx#syntax-e _%g4390443936%_)))
                        (let ((_%hd4390843943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4390743939%_)))
                              (_%tl4390943946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4390743939%_))))
                          (if (gx#stx-pair/null? _%tl4390943946%_)
                              (let ((_g45127_
                                     (gx#syntax-split-splice
                                      _%tl4390943946%_
                                      '0)))
                                (begin
                                  (let ((_g45128_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45127_)
                                               (##values-length _g45127_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45128_ 2)))
                                        (error "Context expects 2 values"
                                               _g45128_)))
                                  (let ((_%target4391043949%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45127_ 0)))
                                        (_%tl4391243952%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45127_ 1))))
                                    (if (gx#stx-null? _%tl4391243952%_)
                                        (letrec ((_%loop4391343955%_
                                                  (lambda (_%hd4391143959%_
                                                           _%val4391743962%_
                                                           _%key4391843964%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4391143959%_)
                                                        (let ((_%e4391443967%_
                                                               (gx#syntax-e
                                                                _%hd4391143959%_)))
                                                          (let ((_%lp-hd4391543971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4391443967%_)))
                        (_%lp-tl4391643974%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4391443967%_))))
                    (if (gx#stx-pair? _%lp-hd4391543971%_)
                        (let ((_%e4392143977%_
                               (gx#syntax-e _%lp-hd4391543971%_)))
                          (let ((_%hd4392243981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4392143977%_)))
                                (_%tl4392343984%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4392143977%_))))
                            (if (gx#stx-pair? _%tl4392343984%_)
                                (let ((_%e4392443987%_
                                       (gx#syntax-e _%tl4392343984%_)))
                                  (let ((_%hd4392543991%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4392443987%_)))
                                        (_%tl4392643994%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4392443987%_))))
                                    (if (gx#stx-null? _%tl4392643994%_)
                                        (_%loop4391343955%_
                                         _%lp-tl4391643974%_
                                         (cons _%hd4392543991%_
                                               _%val4391743962%_)
                                         (cons _%hd4392243981%_
                                               _%key4391843964%_))
                                        (_%g4390343932%_ _%g4390443936%_))))
                                (_%g4390343932%_ _%g4390443936%_))))
                        (_%g4390343932%_ _%g4390443936%_))))
                (let ((_%val4391943997%_ (reverse _%val4391743962%_))
                      (_%key4392044000%_ (reverse _%key4391843964%_)))
                  ((lambda (_%L44003%_ _%L44005%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L44003%_
                                    _%L44005%_)
                                   (foldr (lambda (_%g4402044024%_
                                                   _%g4402144027%_
                                                   _%g4402244029%_)
                                            (cons (cons _%g4402144027%_
                                                        (cons _%g4402044024%_
                                                              '()))
                                                  _%g4402244029%_))
                                          '()
                                          _%L44003%_
                                          _%L44005%_)))))
                   _%val4391943997%_
                   _%key4392044000%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4391343955%_
                                           _%target4391043949%_
                                           '()
                                           '()))
                                        (_%g4390343932%_ _%g4390443936%_)))))
                              (_%g4390343932%_ _%g4390443936%_))))
                      (_%g4390343932%_ _%g4390443936%_)))))
          (_%g4390244032%_ _%$stx43899%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44037%_)
        (let* ((_%g4404144070%_
                (lambda (_%g4404244066%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4404244066%_)))
               (_%g4404044170%_
                (lambda (_%g4404244074%_)
                  (if (gx#stx-pair? _%g4404244074%_)
                      (let ((_%e4404544077%_ (gx#syntax-e _%g4404244074%_)))
                        (let ((_%hd4404644081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4404544077%_)))
                              (_%tl4404744084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4404544077%_))))
                          (if (gx#stx-pair/null? _%tl4404744084%_)
                              (let ((_g45129_
                                     (gx#syntax-split-splice
                                      _%tl4404744084%_
                                      '0)))
                                (begin
                                  (let ((_g45130_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45129_)
                                               (##values-length _g45129_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45130_ 2)))
                                        (error "Context expects 2 values"
                                               _g45130_)))
                                  (let ((_%target4404844087%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45129_ 0)))
                                        (_%tl4405044090%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45129_ 1))))
                                    (if (gx#stx-null? _%tl4405044090%_)
                                        (letrec ((_%loop4405144093%_
                                                  (lambda (_%hd4404944097%_
                                                           _%val4405544100%_
                                                           _%key4405644102%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4404944097%_)
                                                        (let ((_%e4405244105%_
                                                               (gx#syntax-e
                                                                _%hd4404944097%_)))
                                                          (let ((_%lp-hd4405344109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4405244105%_)))
                        (_%lp-tl4405444112%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4405244105%_))))
                    (if (gx#stx-pair? _%lp-hd4405344109%_)
                        (let ((_%e4405944115%_
                               (gx#syntax-e _%lp-hd4405344109%_)))
                          (let ((_%hd4406044119%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4405944115%_)))
                                (_%tl4406144122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4405944115%_))))
                            (if (gx#stx-pair? _%tl4406144122%_)
                                (let ((_%e4406244125%_
                                       (gx#syntax-e _%tl4406144122%_)))
                                  (let ((_%hd4406344129%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4406244125%_)))
                                        (_%tl4406444132%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4406244125%_))))
                                    (if (gx#stx-null? _%tl4406444132%_)
                                        (_%loop4405144093%_
                                         _%lp-tl4405444112%_
                                         (cons _%hd4406344129%_
                                               _%val4405544100%_)
                                         (cons _%hd4406044119%_
                                               _%key4405644102%_))
                                        (_%g4404144070%_ _%g4404244074%_))))
                                (_%g4404144070%_ _%g4404244074%_))))
                        (_%g4404144070%_ _%g4404244074%_))))
                (let ((_%val4405744135%_ (reverse _%val4405544100%_))
                      (_%key4405844138%_ (reverse _%key4405644102%_)))
                  ((lambda (_%L44141%_ _%L44143%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L44141%_
                                    _%L44143%_)
                                   (foldr (lambda (_%g4415844162%_
                                                   _%g4415944165%_
                                                   _%g4416044167%_)
                                            (cons (cons _%g4415944165%_
                                                        (cons _%g4415844162%_
                                                              '()))
                                                  _%g4416044167%_))
                                          '()
                                          _%L44141%_
                                          _%L44143%_)))))
                   _%val4405744135%_
                   _%key4405844138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4405144093%_
                                           _%target4404844087%_
                                           '()
                                           '()))
                                        (_%g4404144070%_ _%g4404244074%_)))))
                              (_%g4404144070%_ _%g4404244074%_))))
                      (_%g4404144070%_ _%g4404244074%_)))))
          (_%g4404044170%_ _%$stx44037%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44175%_)
        (let* ((_%g4417844202%_
                (lambda (_%g4417944198%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4417944198%_)))
               (_%g4417744449%_
                (lambda (_%g4417944206%_)
                  (if (gx#stx-pair? _%g4417944206%_)
                      (let ((_%e4418244209%_ (gx#syntax-e _%g4417944206%_)))
                        (let ((_%hd4418344213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4418244209%_)))
                              (_%tl4418444216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4418244209%_))))
                          (if (gx#stx-pair? _%tl4418444216%_)
                              (let ((_%e4418544219%_
                                     (gx#syntax-e _%tl4418444216%_)))
                                (let ((_%hd4418644223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4418544219%_)))
                                      (_%tl4418744226%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4418544219%_))))
                                  (if (gx#stx-pair/null? _%tl4418744226%_)
                                      (let ((_g45131_
                                             (gx#syntax-split-splice
                                              _%tl4418744226%_
                                              '0)))
                                        (begin
                                          (let ((_g45132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45131_)
                                                       (##values-length
                                                        _g45131_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45132_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45132_)))
                                          (let ((_%target4418844229%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45131_ 0)))
                                                (_%tl4419044232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45131_ 1))))
                                            (if (gx#stx-null? _%tl4419044232%_)
                                                (letrec ((_%loop4419144235%_
                                                          (lambda (_%hd4418944239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4419544242%_)
                    (if (gx#stx-pair? _%hd4418944239%_)
                        (let ((_%e4419244245%_ (gx#syntax-e _%hd4418944239%_)))
                          (let ((_%lp-hd4419344249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4419244245%_)))
                                (_%lp-tl4419444252%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4419244245%_))))
                            (_%loop4419144235%_
                             _%lp-tl4419444252%_
                             (cons _%lp-hd4419344249%_ _%entry4419544242%_))))
                        (let ((_%entry4419644255%_
                               (reverse _%entry4419544242%_)))
                          ((lambda (_%L44259%_ _%L44261%_)
                             (let* ((_%g4427944287%_
                                     (lambda (_%g4428044283%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4428044283%_)))
                                    (_%g4427844437%_
                                     (lambda (_%g4428044291%_)
                                       ((lambda (_%L44294%_)
                                          (let* ((_%g4430644332%_
                                                  (lambda (_%g4430744328%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4430744328%_)))
                                                 (_%g4430544425%_
                                                  (lambda (_%g4430744336%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4430744336%_)
                                                        (let ((_g45133_
                                                               (gx#syntax-split-splice
                                                                _%g4430744336%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45133_)
                                 (##values-length _g45133_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45134_ 2)))
                          (error "Context expects 2 values" _g45134_)))
                    (let ((_%target4431044339%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45133_ 0)))
                          (_%tl4431244342%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45133_ 1))))
                      (if (gx#stx-null? _%tl4431244342%_)
                          (letrec ((_%loop4431344345%_
                                    (lambda (_%hd4431144349%_
                                             _%val4431744352%_
                                             _%key4431844354%_)
                                      (if (gx#stx-pair? _%hd4431144349%_)
                                          (let ((_%e4431444357%_
                                                 (gx#syntax-e
                                                  _%hd4431144349%_)))
                                            (let ((_%lp-hd4431544361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4431444357%_)))
                                                  (_%lp-tl4431644364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4431444357%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4431544361%_)
                                                  (let ((_%e4432144367%_
                                                         (gx#syntax-e
                                                          _%lp-hd4431544361%_)))
                                                    (let ((_%hd4432244371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4432144367%_)))
                                                          (_%tl4432344374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4432144367%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4432344374%_)
                                                          (let ((_%e4432444377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4432344374%_)))
                    (let ((_%hd4432544381%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4432444377%_)))
                          (_%tl4432644384%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4432444377%_))))
                      (if (gx#stx-null? _%tl4432644384%_)
                          (_%loop4431344345%_
                           _%lp-tl4431644364%_
                           (cons _%hd4432544381%_ _%val4431744352%_)
                           (cons _%hd4432244371%_ _%key4431844354%_))
                          (_%g4430644332%_ _%g4430744336%_))))
                  (_%g4430644332%_ _%g4430744336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4430644332%_
                                                   _%g4430744336%_))))
                                          (let ((_%val4431944387%_
                                                 (reverse _%val4431744352%_))
                                                (_%key4432044390%_
                                                 (reverse _%key4431844354%_)))
                                            ((lambda (_%L44393%_ _%L44395%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%L44261%_
                                     (cons 'size: (cons _%L44294%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets _%L44393%_ _%L44395%_)
                     (foldr (lambda (_%g4441344417%_
                                     _%g4441444420%_
                                     _%g4441544422%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4441444420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4441344417%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4441544422%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%L44393%_
                            _%L44395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4431944387%_
                                             _%key4432044390%_))))))
                            (_%loop4431344345%_ _%target4431044339%_ '() '()))
                          (_%g4430644332%_ _%g4430744336%_)))))
                (_%g4430644332%_ _%g4430744336%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4430544425%_
                                             (foldr (lambda (_%g4442844431%_
                                                             _%g4442944434%_)
                                                      (cons _%g4442844431%_
                                                            _%g4442944434%_))
                                                    '()
                                                    _%L44259%_))))
                                        _%g4428044291%_))))
                               (_%g4427844437%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4444044443%_
                                                 _%g4444144446%_)
                                          (cons _%g4444044443%_
                                                _%g4444144446%_))
                                        '()
                                        _%L44259%_)))))
                           _%entry4419644255%_
                           _%hd4418644223%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4419144235%_
                                                   _%target4418844229%_
                                                   '()))
                                                (_%g4417844202%_
                                                 _%g4417944206%_)))))
                                      (_%g4417844202%_ _%g4417944206%_))))
                              (_%g4417844202%_ _%g4417944206%_))))
                      (_%g4417844202%_ _%g4417944206%_)))))
          (_%g4417744449%_ _%stx44175%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44455%_)
        (let* ((_%g4445844472%_
                (lambda (_%g4445944468%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4445944468%_)))
               (_%g4445744544%_
                (lambda (_%g4445944476%_)
                  (if (gx#stx-pair? _%g4445944476%_)
                      (let ((_%e4446144479%_ (gx#syntax-e _%g4445944476%_)))
                        (let ((_%hd4446244483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4446144479%_)))
                              (_%tl4446344486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4446144479%_))))
                          (if (gx#stx-pair? _%tl4446344486%_)
                              (let ((_%e4446444489%_
                                     (gx#syntax-e _%tl4446344486%_)))
                                (let ((_%hd4446544493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4446444489%_)))
                                      (_%tl4446644496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4446444489%_))))
                                  (if (gx#stx-null? _%tl4446644496%_)
                                      ((lambda (_%L44499%_)
                                         (if (gx#stx-string? _%L44499%_)
                                             (let* ((_%g4451344521%_
                                                     (lambda (_%g4451444517%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4451444517%_)))
                                                    (_%g4451244540%_
                                                     (lambda (_%g4451444525%_)
                                                       ((lambda (_%L44528%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L44528%_ '())))
                _%g4451444525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4451244540%_
                                                (string->bytes
                                                 (gx#stx-e _%L44499%_))))
                                             (_%g4445844472%_
                                              _%g4445944476%_)))
                                       _%hd4446544493%_)
                                      (_%g4445844472%_ _%g4445944476%_))))
                              (_%g4445844472%_ _%g4445944476%_))))
                      (_%g4445844472%_ _%g4445944476%_)))))
          (_%g4445744544%_ _%stx44455%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44548%_)
        (let* ((_%g4455144565%_
                (lambda (_%g4455244561%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4455244561%_)))
               (_%g4455044606%_
                (lambda (_%g4455244569%_)
                  (if (gx#stx-pair? _%g4455244569%_)
                      (let ((_%e4455444572%_ (gx#syntax-e _%g4455244569%_)))
                        (let ((_%hd4455544576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4455444572%_)))
                              (_%tl4455644579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4455444572%_))))
                          (if (gx#stx-pair? _%tl4455644579%_)
                              (let ((_%e4455744582%_
                                     (gx#syntax-e _%tl4455644579%_)))
                                (let ((_%hd4455844586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4455744582%_)))
                                      (_%tl4455944589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4455744582%_))))
                                  (if (gx#stx-null? _%tl4455944589%_)
                                      ((lambda (_%L44592%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%L44592%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4455844586%_)
                                      (_%g4455144565%_ _%g4455244569%_))))
                              (_%g4455144565%_ _%g4455244569%_))))
                      (_%g4455144565%_ _%g4455244569%_)))))
          (_%g4455044606%_ _%stx44548%_))))))
