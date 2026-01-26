(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g44847_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g44850_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g44851_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g44852_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g44853_|
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
      (lambda _%$args40180%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40180%_)))
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
      (lambda _%$args40176%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40176%_)))
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
      (lambda (_%stx40173%_)
        (if (gx#identifier? _%stx40173%_)
            (let ((__tmp44810 (gx#syntax-local-value _%stx40173%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp44810))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40170%_)
        (if (gx#identifier? _%stx40170%_)
            (let ((__tmp44811 (gx#syntax-local-value _%stx40170%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp44811))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx39797%_)
        (let* ((_%__stx4433944340%_ _%stx39797%_)
               (_%g3980339866%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4433944340%_))))
          (let ((_%__kont4434244343%_
                 (lambda (_%g3980540147%_ _%g3980640149%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g3980640149%_)
                    _%stx39797%_)))
                (_%__kont4434444345%_
                 (lambda (_%g3981940036%_ _%g3982040038%_ _%g3982140039%_)
                   (let* ((_%g4006140069%_
                           (lambda (_%g4006240065%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4006240065%_)))
                          (_%g4006040096%_
                           (lambda (_%g4006240073%_)
                             ((lambda (_%g4006340076%_)
                                (cons _%g4006340076%_
                                      (foldr (lambda (_%g4008740090%_
                                                      _%g4008840093%_)
                                               (cons _%g4008740090%_
                                                     _%g4008840093%_))
                                             (cons _%g3981940036%_ '())
                                             _%g3982040038%_)))
                              _%g4006240073%_))))
                     (_%g4006040096%_
                      (gx#stx-identifier
                       _%g3982140039%_
                       _%g3982140039%_
                       '"-set!")))))
                (_%__kont4434844349%_
                 (lambda (_%g3984339948%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g3984339948%_)
                    _%stx39797%_)))
                (_%__kont4435044351%_
                 (lambda (_%g3985039903%_ _%g3985139905%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g3985139905%_ (cons _%g3985039903%_ '()))))))
            (let* ((_%__match4443844439%_
                    (lambda (_%e3985239873%_
                             _%hd3985339877%_
                             _%tl3985439880%_
                             _%e3985539883%_
                             _%hd3985639887%_
                             _%tl3985739890%_
                             _%e3985839893%_
                             _%hd3985939897%_
                             _%tl3986039900%_)
                      (let ((_%g3985039903%_ _%hd3985939897%_)
                            (_%g3985139905%_ _%hd3985639887%_))
                        (if (gx#identifier? _%g3985139905%_)
                            (_%__kont4435044351%_
                             _%g3985039903%_
                             _%g3985139905%_)
                            (let () (declare (not safe)) (_%g3980339866%_))))))
                   (_%__match4441844419%_
                    (lambda (_%e3984439928%_
                             _%hd3984539932%_
                             _%tl3984639935%_
                             _%e3984739938%_
                             _%hd3984839942%_
                             _%tl3984939945%_)
                      (let ((_%g3984339948%_ _%hd3984839942%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g3984339948%_)
                            (_%__kont4434844349%_ _%g3984339948%_)
                            (if (gx#stx-pair? _%tl3984939945%_)
                                (let ((_%e3985839893%_
                                       (gx#syntax-e _%tl3984939945%_)))
                                  (let ((_%tl3986039900%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3985839893%_)))
                                        (_%hd3985939897%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3985839893%_))))
                                    (if (gx#stx-null? _%tl3986039900%_)
                                        (_%__match4443844439%_
                                         _%e3984439928%_
                                         _%hd3984539932%_
                                         _%tl3984639935%_
                                         _%e3984739938%_
                                         _%hd3984839942%_
                                         _%tl3984939945%_
                                         _%e3985839893%_
                                         _%hd3985939897%_
                                         _%tl3986039900%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3980339866%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3980339866%_)))))))
                   (_%__match4440644407%_
                    (lambda (_%e3982239968%_
                             _%hd3982339972%_
                             _%tl3982439975%_
                             _%e3982539978%_
                             _%hd3982639982%_
                             _%tl3982739985%_
                             _%e3982839988%_
                             _%hd3982939992%_
                             _%tl3983039995%_
                             _%__splice4434644347%_
                             _%target3983139998%_
                             _%tl3983340001%_)
                      (letrec ((_%loop3983440004%_
                                (lambda (_%hd3983240008%_ _%arg3983840011%_)
                                  (if (gx#stx-pair? _%hd3983240008%_)
                                      (let ((_%e3983540013%_
                                             (gx#syntax-e _%hd3983240008%_)))
                                        (let ((_%lp-tl3983740020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3983540013%_)))
                                              (_%lp-hd3983640017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3983540013%_))))
                                          (_%loop3983440004%_
                                           _%lp-tl3983740020%_
                                           (cons _%lp-hd3983640017%_
                                                 _%arg3983840011%_))))
                                      (let ((_%arg3983940023%_
                                             (reverse _%arg3983840011%_)))
                                        (if (gx#stx-pair? _%tl3982739985%_)
                                            (let ((_%e3984040026%_
                                                   (gx#syntax-e
                                                    _%tl3982739985%_)))
                                              (let ((_%tl3984240033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3984040026%_)))
                                                    (_%hd3984140030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3984040026%_))))
                                                (if (gx#stx-null?
                                                     _%tl3984240033%_)
                                                    (let ((_%g3981940036%_
                                                           _%hd3984140030%_)
                                                          (_%g3982040038%_
                                                           _%arg3983940023%_)
                                                          (_%g3982140039%_
                                                           _%hd3982939992%_))
                                                      (if (gx#identifier?
                                                           _%g3982140039%_)
                                                          (_%__kont4434444345%_
                                                           _%g3981940036%_
                                                           _%g3982040038%_
                                                           _%g3982140039%_)
                                                          (_%__match4441844419%_
                                                           _%e3982239968%_
                                                           _%hd3982339972%_
                                                           _%tl3982439975%_
                                                           _%e3982539978%_
                                                           _%hd3982639982%_
                                                           _%tl3982739985%_)))
                                                    (_%__match4441844419%_
                                                     _%e3982239968%_
                                                     _%hd3982339972%_
                                                     _%tl3982439975%_
                                                     _%e3982539978%_
                                                     _%hd3982639982%_
                                                     _%tl3982739985%_))))
                                            (_%__match4441844419%_
                                             _%e3982239968%_
                                             _%hd3982339972%_
                                             _%tl3982439975%_
                                             _%e3982539978%_
                                             _%hd3982639982%_
                                             _%tl3982739985%_)))))))
                        (_%loop3983440004%_ _%target3983139998%_ '())))))
              (if (gx#stx-pair? _%__stx4433944340%_)
                  (let ((_%e3980740107%_ (gx#syntax-e _%__stx4433944340%_)))
                    (let ((_%tl3980940114%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3980740107%_)))
                          (_%hd3980840111%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3980740107%_))))
                      (if (gx#stx-pair? _%tl3980940114%_)
                          (let ((_%e3981040117%_
                                 (gx#syntax-e _%tl3980940114%_)))
                            (let ((_%tl3981240124%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3981040117%_)))
                                  (_%hd3981140121%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3981040117%_))))
                              (if (gx#stx-pair? _%hd3981140121%_)
                                  (let ((_%e3981340127%_
                                         (gx#syntax-e _%hd3981140121%_)))
                                    (let ((_%tl3981540134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3981340127%_)))
                                          (_%hd3981440131%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3981340127%_))))
                                      (if (gx#stx-pair? _%tl3981240124%_)
                                          (let ((_%e3981640137%_
                                                 (gx#syntax-e
                                                  _%tl3981240124%_)))
                                            (let ((_%tl3981840144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3981640137%_)))
                                                  (_%hd3981740141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3981640137%_))))
                                              (if (gx#stx-null?
                                                   _%tl3981840144%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g3980540147%_
                                                             _%hd3981740141%_)
                                                            (_%g3980640149%_
                                                             _%hd3981440131%_))
                                                        (_%__kont4434244343%_
                                                         _%g3980540147%_
                                                         _%g3980640149%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl3981540134%_)
                                                          (let ((_%__splice4434644347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3981540134%_ '0)))
                    (let ((_%tl3983340001%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4434644347%_ '1)))
                          (_%target3983139998%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4434644347%_ '0))))
                      (if (gx#stx-null? _%tl3983340001%_)
                          (_%__match4440644407%_
                           _%e3980740107%_
                           _%hd3980840111%_
                           _%tl3980940114%_
                           _%e3981040117%_
                           _%hd3981140121%_
                           _%tl3981240124%_
                           _%e3981340127%_
                           _%hd3981440131%_
                           _%tl3981540134%_
                           _%__splice4434644347%_
                           _%target3983139998%_
                           _%tl3983340001%_)
                          (_%__match4441844419%_
                           _%e3980740107%_
                           _%hd3980840111%_
                           _%tl3980940114%_
                           _%e3981040117%_
                           _%hd3981140121%_
                           _%tl3981240124%_))))
                  (_%__match4441844419%_
                   _%e3980740107%_
                   _%hd3980840111%_
                   _%tl3980940114%_
                   _%e3981040117%_
                   _%hd3981140121%_
                   _%tl3981240124%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl3981540134%_)
                                                      (let ((_%__splice4434644347%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3981540134%_
                                                              '0)))
                                                        (let ((_%tl3983340001%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4434644347%_ '1)))
                      (_%target3983139998%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4434644347%_ '0))))
                  (if (gx#stx-null? _%tl3983340001%_)
                      (_%__match4440644407%_
                       _%e3980740107%_
                       _%hd3980840111%_
                       _%tl3980940114%_
                       _%e3981040117%_
                       _%hd3981140121%_
                       _%tl3981240124%_
                       _%e3981340127%_
                       _%hd3981440131%_
                       _%tl3981540134%_
                       _%__splice4434644347%_
                       _%target3983139998%_
                       _%tl3983340001%_)
                      (_%__match4441844419%_
                       _%e3980740107%_
                       _%hd3980840111%_
                       _%tl3980940114%_
                       _%e3981040117%_
                       _%hd3981140121%_
                       _%tl3981240124%_))))
              (_%__match4441844419%_
               _%e3980740107%_
               _%hd3980840111%_
               _%tl3980940114%_
               _%e3981040117%_
               _%hd3981140121%_
               _%tl3981240124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl3981540134%_)
                                              (let ((_%__splice4434644347%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl3981540134%_
                                                      '0)))
                                                (let ((_%tl3983340001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4434644347%_
                                                          '1)))
                                                      (_%target3983139998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4434644347%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl3983340001%_)
                                                      (_%__match4440644407%_
                                                       _%e3980740107%_
                                                       _%hd3980840111%_
                                                       _%tl3980940114%_
                                                       _%e3981040117%_
                                                       _%hd3981140121%_
                                                       _%tl3981240124%_
                                                       _%e3981340127%_
                                                       _%hd3981440131%_
                                                       _%tl3981540134%_
                                                       _%__splice4434644347%_
                                                       _%target3983139998%_
                                                       _%tl3983340001%_)
                                                      (_%__match4441844419%_
                                                       _%e3980740107%_
                                                       _%hd3980840111%_
                                                       _%tl3980940114%_
                                                       _%e3981040117%_
                                                       _%hd3981140121%_
                                                       _%tl3981240124%_))))
                                              (_%__match4441844419%_
                                               _%e3980740107%_
                                               _%hd3980840111%_
                                               _%tl3980940114%_
                                               _%e3981040117%_
                                               _%hd3981140121%_
                                               _%tl3981240124%_)))))
                                  (_%__match4441844419%_
                                   _%e3980740107%_
                                   _%hd3980840111%_
                                   _%tl3980940114%_
                                   _%e3981040117%_
                                   _%hd3981140121%_
                                   _%tl3981240124%_))))
                          (let () (declare (not safe)) (_%g3980339866%_)))))
                  (let () (declare (not safe)) (_%g3980339866%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40185%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40185%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40188%_)
        (let* ((_%g4019140215%_
                (lambda (_%g4019240211%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4019240211%_)))
               (_%g4019040389%_
                (lambda (_%g4019240219%_)
                  (if (gx#stx-pair? _%g4019240219%_)
                      (let ((_%e4019540222%_ (gx#syntax-e _%g4019240219%_)))
                        (let ((_%hd4019640226%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4019540222%_)))
                              (_%tl4019740229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4019540222%_))))
                          (if (gx#stx-pair/null? _%tl4019740229%_)
                              (if (let ((__tmp44812
                                         (gx#stx-length _%tl4019740229%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp44812 '1))
                                  (let ((_g44813_
                                         (gx#syntax-split-splice
                                          _%tl4019740229%_
                                          '1)))
                                    (begin
                                      (let ((_g44814_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g44813_)
                                                   (##values-length _g44813_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g44814_ 2)))
                                            (error "Context expects 2 values"
                                                   _g44814_)))
                                      (let ((_%target4019840232%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g44813_ 0)))
                                            (_%tl4020040235%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g44813_ 1))))
                                        (if (gx#stx-pair? _%tl4020040235%_)
                                            (let ((_%e4020740238%_
                                                   (gx#syntax-e
                                                    _%tl4020040235%_)))
                                              (let ((_%hd4020840242%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4020740238%_)))
                                                    (_%tl4020940245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4020740238%_))))
                                                (if (gx#stx-null?
                                                     _%tl4020940245%_)
                                                    (letrec ((_%loop4020140248%_
                                                              (lambda (_%hd4019940252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4020540255%_)
                        (if (gx#stx-pair? _%hd4019940252%_)
                            (let ((_%e4020240257%_
                                   (gx#syntax-e _%hd4019940252%_)))
                              (let ((_%lp-hd4020340261%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4020240257%_)))
                                    (_%lp-tl4020440264%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4020240257%_))))
                                (_%loop4020140248%_
                                 _%lp-tl4020440264%_
                                 (cons _%lp-hd4020340261%_
                                       _%tgt4020540255%_))))
                            (let ((_%tgt4020640267%_
                                   (reverse _%tgt4020540255%_)))
                              ((lambda (_%g4019340270%_ _%g4019440272%_)
                                 (let* ((_%g4029040307%_
                                         (lambda (_%g4029140303%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4029140303%_)))
                                        (_%g4028940377%_
                                         (lambda (_%g4029140311%_)
                                           (if (gx#stx-pair/null?
                                                _%g4029140311%_)
                                               (let ((_g44815_
                                                      (gx#syntax-split-splice
                                                       _%g4029140311%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g44816_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g44815_)
                        (##values-length _g44815_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g44816_ 2)))
                 (error "Context expects 2 values" _g44816_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4029340314%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g44815_
                                                             0)))
                                                         (_%tl4029540317%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g44815_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4029540317%_)
                                                         (letrec ((_%loop4029640320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4029440324%_ _%$e4030040327%_)
                             (if (gx#stx-pair? _%hd4029440324%_)
                                 (let ((_%e4029740329%_
                                        (gx#syntax-e _%hd4029440324%_)))
                                   (let ((_%lp-hd4029840333%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4029740329%_)))
                                         (_%lp-tl4029940336%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4029740329%_))))
                                     (_%loop4029640320%_
                                      _%lp-tl4029940336%_
                                      (cons _%lp-hd4029840333%_
                                            _%$e4030040327%_))))
                                 (let ((_%$e4030140339%_
                                        (reverse _%$e4030040327%_)))
                                   ((lambda (_%g4029240342%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4035740363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4035840366%_)
                               (cons _%g4035740363%_ _%g4035840366%_))
                             '()
                             _%g4029240342%_)
                      (cons _%g4019340270%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g4029240342%_
                                                     _%g4019440272%_)
                                                    (foldr (lambda (_%g4035940369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4036040372%_
                            _%g4036140374%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4036040372%_
                                       (cons _%g4035940369%_ '())))
                           _%g4036140374%_))
                   '()
                   _%g4029240342%_
                   _%g4019440272%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4030140339%_))))))
                   (_%loop4029640320%_ _%target4029340314%_ '()))
                 (_%g4029040307%_ _%g4029140311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4029040307%_
                                                _%g4029140311%_)))))
                                   (_%g4028940377%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4038040383%_
                                                     _%g4038140386%_)
                                              (cons _%g4038040383%_
                                                    _%g4038140386%_))
                                            '()
                                            _%g4019440272%_)))))
                               _%hd4020840242%_
                               _%tgt4020640267%_))))))
              (_%loop4020140248%_ _%target4019840232%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4019140215%_
                                                     _%g4019240219%_))))
                                            (_%g4019140215%_
                                             _%g4019240219%_)))))
                                  (_%g4019140215%_ _%g4019240219%_))
                              (_%g4019140215%_ _%g4019240219%_))))
                      (_%g4019140215%_ _%g4019240219%_)))))
          (_%g4019040389%_ _%stx40188%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40395%_)
        (let* ((_%__stx4444144442%_ _%$stx40395%_)
               (_%g4040140489%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4444144442%_))))
          (let ((_%__kont4444444445%_
                 (lambda (_%g4040340829%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4084540848%_ _%g4084640851%_)
                                        (cons _%g4084540848%_ _%g4084640851%_))
                                      '()
                                      _%g4040340829%_)))))
                (_%__kont4444844449%_
                 (lambda (_%g4041940739%_ _%g4042040741%_ _%g4042140742%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4076540768%_
                                                           _%g4076640771%_)
                                                    (cons _%g4076540768%_
                                                          _%g4076640771%_))
                                                  '()
                                                  _%g4041940739%_)))
                               (cons _%g4042140742%_
                                     (cons _%g4042040741%_ '()))))))
                (_%__kont4445244453%_
                 (lambda (_%g4044640602%_
                          _%g4044740604%_
                          _%g4044840605%_
                          _%g4044940606%_
                          _%g4045040607%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4045040607%_
                                                       (cons (foldr (lambda (_%g4063740642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4063840645%_)
                              (cons _%g4063740642%_ _%g4063840645%_))
                            '()
                            _%g4044740604%_)
                     (foldr (lambda (_%g4063940648%_ _%g4064040651%_)
                              (cons _%g4063940648%_ _%g4064040651%_))
                            '()
                            _%g4044640602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4044940606%_
                                     (cons _%g4044840605%_ '())))))))
            (let* ((_%__match4456244563%_
                    (lambda (_%e4045140496%_
                             _%hd4045240500%_
                             _%tl4045340503%_
                             _%e4045440506%_
                             _%hd4045540510%_
                             _%tl4045640513%_
                             _%e4045740516%_
                             _%hd4045840520%_
                             _%tl4045940523%_
                             _%e4046040526%_
                             _%hd4046140530%_
                             _%tl4046240533%_
                             _%e4046340536%_
                             _%hd4046440540%_
                             _%tl4046540543%_
                             _%__splice4445444455%_
                             _%target4046640546%_
                             _%tl4046840549%_)
                      (letrec ((_%loop4046940552%_
                                (lambda (_%hd4046740556%_ _%rest4047340559%_)
                                  (if (gx#stx-pair? _%hd4046740556%_)
                                      (let ((_%e4047040561%_
                                             (gx#syntax-e _%hd4046740556%_)))
                                        (let ((_%lp-tl4047240568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4047040561%_)))
                                              (_%lp-hd4047140565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4047040561%_))))
                                          (_%loop4046940552%_
                                           _%lp-tl4047240568%_
                                           (cons _%lp-hd4047140565%_
                                                 _%rest4047340559%_))))
                                      (let ((_%rest4047440571%_
                                             (reverse _%rest4047340559%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4045640513%_)
                                            (let ((_%__splice4445644457%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4045640513%_
                                                    '0)))
                                              (let ((_%tl4047740577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4445644457%_
                                                        '1)))
                                                    (_%target4047540574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4445644457%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4047740577%_)
                                                    (letrec ((_%loop4047840580%_
                                                              (lambda (_%hd4047640584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4048240587%_)
                        (if (gx#stx-pair? _%hd4047640584%_)
                            (let ((_%e4047940589%_
                                   (gx#syntax-e _%hd4047640584%_)))
                              (let ((_%lp-tl4048140596%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4047940589%_)))
                                    (_%lp-hd4048040593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4047940589%_))))
                                (_%loop4047840580%_
                                 _%lp-tl4048140596%_
                                 (cons _%lp-hd4048040593%_
                                       _%body4048240587%_))))
                            (let ((_%body4048340599%_
                                   (reverse _%body4048240587%_)))
                              (_%__kont4445244453%_
                               _%body4048340599%_
                               _%rest4047440571%_
                               _%hd4046440540%_
                               _%hd4046140530%_
                               _%hd4045240500%_))))))
              (_%loop4047840580%_ _%target4047540574%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4040140489%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4040140489%_))))))))
                        (_%loop4046940552%_ _%target4046640546%_ '()))))
                   (_%__match4452244523%_
                    (lambda (_%e4042240661%_
                             _%hd4042340665%_
                             _%tl4042440668%_
                             _%e4042540671%_
                             _%hd4042640675%_
                             _%tl4042740678%_
                             _%e4042840681%_
                             _%hd4042940685%_
                             _%tl4043040688%_
                             _%e4043140691%_
                             _%hd4043240695%_
                             _%tl4043340698%_
                             _%e4043440701%_
                             _%hd4043540705%_
                             _%tl4043640708%_
                             _%__splice4445044451%_
                             _%target4043740711%_
                             _%tl4043940714%_)
                      (letrec ((_%loop4044040717%_
                                (lambda (_%hd4043840721%_ _%body4044440724%_)
                                  (if (gx#stx-pair? _%hd4043840721%_)
                                      (let ((_%e4044140726%_
                                             (gx#syntax-e _%hd4043840721%_)))
                                        (let ((_%lp-tl4044340733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4044140726%_)))
                                              (_%lp-hd4044240730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4044140726%_))))
                                          (_%loop4044040717%_
                                           _%lp-tl4044340733%_
                                           (cons _%lp-hd4044240730%_
                                                 _%body4044440724%_))))
                                      (let ((_%body4044540736%_
                                             (reverse _%body4044440724%_)))
                                        (_%__kont4444844449%_
                                         _%body4044540736%_
                                         _%hd4043540705%_
                                         _%hd4043240695%_))))))
                        (_%loop4044040717%_ _%target4043740711%_ '()))))
                   (_%__match4448044481%_
                    (lambda (_%e4040440781%_
                             _%hd4040540785%_
                             _%tl4040640788%_
                             _%e4040740791%_
                             _%hd4040840795%_
                             _%tl4040940798%_
                             _%__splice4444644447%_
                             _%target4041040801%_
                             _%tl4041240804%_)
                      (letrec ((_%loop4041340807%_
                                (lambda (_%hd4041140811%_ _%body4041740814%_)
                                  (if (gx#stx-pair? _%hd4041140811%_)
                                      (let ((_%e4041440816%_
                                             (gx#syntax-e _%hd4041140811%_)))
                                        (let ((_%lp-tl4041640823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4041440816%_)))
                                              (_%lp-hd4041540820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4041440816%_))))
                                          (_%loop4041340807%_
                                           _%lp-tl4041640823%_
                                           (cons _%lp-hd4041540820%_
                                                 _%body4041740814%_))))
                                      (let ((_%body4041840826%_
                                             (reverse _%body4041740814%_)))
                                        (_%__kont4444444445%_
                                         _%body4041840826%_))))))
                        (_%loop4041340807%_ _%target4041040801%_ '())))))
              (if (gx#stx-pair? _%__stx4444144442%_)
                  (let ((_%e4040440781%_ (gx#syntax-e _%__stx4444144442%_)))
                    (let ((_%tl4040640788%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4040440781%_)))
                          (_%hd4040540785%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4040440781%_))))
                      (if (gx#stx-pair? _%tl4040640788%_)
                          (let ((_%e4040740791%_
                                 (gx#syntax-e _%tl4040640788%_)))
                            (let ((_%tl4040940798%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4040740791%_)))
                                  (_%hd4040840795%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4040740791%_))))
                              (if (gx#stx-null? _%hd4040840795%_)
                                  (if (gx#stx-pair/null? _%tl4040940798%_)
                                      (let ((_%__splice4444644447%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4040940798%_
                                              '0)))
                                        (let ((_%tl4041240804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4444644447%_
                                                  '1)))
                                              (_%target4041040801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4444644447%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4041240804%_)
                                              (_%__match4448044481%_
                                               _%e4040440781%_
                                               _%hd4040540785%_
                                               _%tl4040640788%_
                                               _%e4040740791%_
                                               _%hd4040840795%_
                                               _%tl4040940798%_
                                               _%__splice4444644447%_
                                               _%target4041040801%_
                                               _%tl4041240804%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4040140489%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4040140489%_)))
                                  (if (gx#stx-pair? _%hd4040840795%_)
                                      (let ((_%e4042840681%_
                                             (gx#syntax-e _%hd4040840795%_)))
                                        (let ((_%tl4043040688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4042840681%_)))
                                              (_%hd4042940685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4042840681%_))))
                                          (if (gx#stx-pair? _%hd4042940685%_)
                                              (let ((_%e4043140691%_
                                                     (gx#syntax-e
                                                      _%hd4042940685%_)))
                                                (let ((_%tl4043340698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4043140691%_)))
                                                      (_%hd4043240695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4043140691%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4043340698%_)
                                                      (let ((_%e4043440701%_
                                                             (gx#syntax-e
                                                              _%tl4043340698%_)))
                                                        (let ((_%tl4043640708%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4043440701%_)))
                      (_%hd4043540705%_
                       (let () (declare (not safe)) (##car _%e4043440701%_))))
                  (if (gx#stx-null? _%tl4043640708%_)
                      (if (gx#stx-null? _%tl4043040688%_)
                          (if (gx#stx-pair/null? _%tl4040940798%_)
                              (let ((_%__splice4445044451%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4040940798%_
                                      '0)))
                                (let ((_%tl4043940714%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4445044451%_
                                          '1)))
                                      (_%target4043740711%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4445044451%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4043940714%_)
                                      (_%__match4452244523%_
                                       _%e4040440781%_
                                       _%hd4040540785%_
                                       _%tl4040640788%_
                                       _%e4040740791%_
                                       _%hd4040840795%_
                                       _%tl4040940798%_
                                       _%e4042840681%_
                                       _%hd4042940685%_
                                       _%tl4043040688%_
                                       _%e4043140691%_
                                       _%hd4043240695%_
                                       _%tl4043340698%_
                                       _%e4043440701%_
                                       _%hd4043540705%_
                                       _%tl4043640708%_
                                       _%__splice4445044451%_
                                       _%target4043740711%_
                                       _%tl4043940714%_)
                                      (if (gx#stx-pair/null? _%tl4043040688%_)
                                          (let ((_%__splice4445444455%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4043040688%_
                                                  '0)))
                                            (let ((_%tl4046840549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4445444455%_
                                                      '1)))
                                                  (_%target4046640546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4445444455%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4046840549%_)
                                                  (_%__match4456244563%_
                                                   _%e4040440781%_
                                                   _%hd4040540785%_
                                                   _%tl4040640788%_
                                                   _%e4040740791%_
                                                   _%hd4040840795%_
                                                   _%tl4040940798%_
                                                   _%e4042840681%_
                                                   _%hd4042940685%_
                                                   _%tl4043040688%_
                                                   _%e4043140691%_
                                                   _%hd4043240695%_
                                                   _%tl4043340698%_
                                                   _%e4043440701%_
                                                   _%hd4043540705%_
                                                   _%tl4043640708%_
                                                   _%__splice4445444455%_
                                                   _%target4046640546%_
                                                   _%tl4046840549%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4040140489%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4040140489%_))))))
                              (if (gx#stx-pair/null? _%tl4043040688%_)
                                  (let ((_%__splice4445444455%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4043040688%_
                                          '0)))
                                    (let ((_%tl4046840549%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4445444455%_
                                              '1)))
                                          (_%target4046640546%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4445444455%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4046840549%_)
                                          (_%__match4456244563%_
                                           _%e4040440781%_
                                           _%hd4040540785%_
                                           _%tl4040640788%_
                                           _%e4040740791%_
                                           _%hd4040840795%_
                                           _%tl4040940798%_
                                           _%e4042840681%_
                                           _%hd4042940685%_
                                           _%tl4043040688%_
                                           _%e4043140691%_
                                           _%hd4043240695%_
                                           _%tl4043340698%_
                                           _%e4043440701%_
                                           _%hd4043540705%_
                                           _%tl4043640708%_
                                           _%__splice4445444455%_
                                           _%target4046640546%_
                                           _%tl4046840549%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4040140489%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4040140489%_))))
                          (if (gx#stx-pair/null? _%tl4043040688%_)
                              (let ((_%__splice4445444455%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4043040688%_
                                      '0)))
                                (let ((_%tl4046840549%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4445444455%_
                                          '1)))
                                      (_%target4046640546%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4445444455%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4046840549%_)
                                      (_%__match4456244563%_
                                       _%e4040440781%_
                                       _%hd4040540785%_
                                       _%tl4040640788%_
                                       _%e4040740791%_
                                       _%hd4040840795%_
                                       _%tl4040940798%_
                                       _%e4042840681%_
                                       _%hd4042940685%_
                                       _%tl4043040688%_
                                       _%e4043140691%_
                                       _%hd4043240695%_
                                       _%tl4043340698%_
                                       _%e4043440701%_
                                       _%hd4043540705%_
                                       _%tl4043640708%_
                                       _%__splice4445444455%_
                                       _%target4046640546%_
                                       _%tl4046840549%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4040140489%_)))))
                              (let () (declare (not safe)) (_%g4040140489%_))))
                      (let () (declare (not safe)) (_%g4040140489%_)))))
              (let () (declare (not safe)) (_%g4040140489%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4040140489%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4040140489%_))))))
                          (let () (declare (not safe)) (_%g4040140489%_)))))
                  (let () (declare (not safe)) (_%g4040140489%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx40862%_)
        (let* ((_%g4086640890%_
                (lambda (_%g4086740886%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4086740886%_)))
               (_%g4086540973%_
                (lambda (_%g4086740894%_)
                  (if (gx#stx-pair? _%g4086740894%_)
                      (let ((_%e4087040897%_ (gx#syntax-e _%g4086740894%_)))
                        (let ((_%hd4087140901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4087040897%_)))
                              (_%tl4087240904%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4087040897%_))))
                          (if (gx#stx-pair? _%tl4087240904%_)
                              (let ((_%e4087340907%_
                                     (gx#syntax-e _%tl4087240904%_)))
                                (let ((_%hd4087440911%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4087340907%_)))
                                      (_%tl4087540914%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4087340907%_))))
                                  (if (gx#stx-pair/null? _%tl4087540914%_)
                                      (let ((_g44817_
                                             (gx#syntax-split-splice
                                              _%tl4087540914%_
                                              '0)))
                                        (begin
                                          (let ((_g44818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44817_)
                                                       (##values-length
                                                        _g44817_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44818_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44818_)))
                                          (let ((_%target4087640917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44817_ 0)))
                                                (_%tl4087840920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44817_ 1))))
                                            (if (gx#stx-null? _%tl4087840920%_)
                                                (letrec ((_%loop4087940923%_
                                                          (lambda (_%hd4087740927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4088340930%_)
                    (if (gx#stx-pair? _%hd4087740927%_)
                        (let ((_%e4088040932%_ (gx#syntax-e _%hd4087740927%_)))
                          (let ((_%lp-hd4088140936%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4088040932%_)))
                                (_%lp-tl4088240939%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4088040932%_))))
                            (_%loop4087940923%_
                             _%lp-tl4088240939%_
                             (cons _%lp-hd4088140936%_ _%body4088340930%_))))
                        (let ((_%body4088440942%_
                               (reverse _%body4088340930%_)))
                          ((lambda (_%g4086840945%_ _%g4086940947%_)
                             (if (gx#identifier? _%g4086940947%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4086940947%_
                                                               '())
                                                         (foldr (lambda (_%g4096440967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4096540970%_)
                          (cons _%g4096440967%_ _%g4096540970%_))
                        '()
                        _%g4086840945%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4086640890%_ _%g4086740894%_)))
                           _%body4088440942%_
                           _%hd4087440911%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4087940923%_
                                                   _%target4087640917%_
                                                   '()))
                                                (_%g4086640890%_
                                                 _%g4086740894%_)))))
                                      (_%g4086640890%_ _%g4086740894%_))))
                              (_%g4086640890%_ _%g4086740894%_))))
                      (_%g4086640890%_ _%g4086740894%_)))))
          (_%g4086540973%_ _%$stx40862%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx40978%_)
        (let* ((_%g4098241010%_
                (lambda (_%g4098341006%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4098341006%_)))
               (_%g4098141107%_
                (lambda (_%g4098341014%_)
                  (if (gx#stx-pair? _%g4098341014%_)
                      (let ((_%e4098741017%_ (gx#syntax-e _%g4098341014%_)))
                        (let ((_%hd4098841021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4098741017%_)))
                              (_%tl4098941024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4098741017%_))))
                          (if (gx#stx-pair? _%tl4098941024%_)
                              (let ((_%e4099041027%_
                                     (gx#syntax-e _%tl4098941024%_)))
                                (let ((_%hd4099141031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4099041027%_)))
                                      (_%tl4099241034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4099041027%_))))
                                  (if (gx#stx-pair? _%tl4099241034%_)
                                      (let ((_%e4099341037%_
                                             (gx#syntax-e _%tl4099241034%_)))
                                        (let ((_%hd4099441041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4099341037%_)))
                                              (_%tl4099541044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4099341037%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4099541044%_)
                                              (let ((_g44819_
                                                     (gx#syntax-split-splice
                                                      _%tl4099541044%_
                                                      '0)))
                                                (begin
                                                  (let ((_g44820_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44819_)
                                                               (##values-length
                                                                _g44819_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44820_ 2)))
                (error "Context expects 2 values" _g44820_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4099641047%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44819_
                                                            0)))
                                                        (_%tl4099841050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44819_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4099841050%_)
                                                        (letrec ((_%loop4099941053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4099741057%_ _%rest4100341060%_)
                            (if (gx#stx-pair? _%hd4099741057%_)
                                (let ((_%e4100041062%_
                                       (gx#syntax-e _%hd4099741057%_)))
                                  (let ((_%lp-hd4100141066%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4100041062%_)))
                                        (_%lp-tl4100241069%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4100041062%_))))
                                    (_%loop4099941053%_
                                     _%lp-tl4100241069%_
                                     (cons _%lp-hd4100141066%_
                                           _%rest4100341060%_))))
                                (let ((_%rest4100441072%_
                                       (reverse _%rest4100341060%_)))
                                  ((lambda (_%g4098441075%_
                                            _%g4098541077%_
                                            _%g4098641078%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g4098641078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4098541077%_
                                 (foldr (lambda (_%g4109841101%_
                                                 _%g4109941104%_)
                                          (cons _%g4109841101%_
                                                _%g4109941104%_))
                                        '()
                                        _%g4098441075%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4100441072%_
                                   _%hd4099441041%_
                                   _%hd4099141031%_))))))
                  (_%loop4099941053%_ _%target4099641047%_ '()))
                (_%g4098241010%_ _%g4098341014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4098241010%_
                                               _%g4098341014%_))))
                                      (_%g4098241010%_ _%g4098341014%_))))
                              (_%g4098241010%_ _%g4098341014%_))))
                      (_%g4098241010%_ _%g4098341014%_)))))
          (_%g4098141107%_ _%$stx40978%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41112%_)
        (let* ((_%g4111641187%_
                (lambda (_%g4111741183%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4111741183%_)))
               (_%g4111541464%_
                (lambda (_%g4111741191%_)
                  (if (gx#stx-pair? _%g4111741191%_)
                      (let ((_%e4112441194%_ (gx#syntax-e _%g4111741191%_)))
                        (let ((_%hd4112541198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4112441194%_)))
                              (_%tl4112641201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4112441194%_))))
                          (if (gx#stx-pair? _%tl4112641201%_)
                              (let ((_%e4112741204%_
                                     (gx#syntax-e _%tl4112641201%_)))
                                (let ((_%hd4112841208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4112741204%_)))
                                      (_%tl4112941211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4112741204%_))))
                                  (if (gx#stx-pair/null? _%hd4112841208%_)
                                      (let ((_g44821_
                                             (gx#syntax-split-splice
                                              _%hd4112841208%_
                                              '0)))
                                        (begin
                                          (let ((_g44822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44821_)
                                                       (##values-length
                                                        _g44821_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44822_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44822_)))
                                          (let ((_%target4113041214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44821_ 0)))
                                                (_%tl4113241217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44821_ 1))))
                                            (if (gx#stx-null? _%tl4113241217%_)
                                                (letrec ((_%loop4113341220%_
                                                          (lambda (_%hd4113141224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4113741227%_
                           _%init4113841228%_
                           _%var4113941229%_)
                    (if (gx#stx-pair? _%hd4113141224%_)
                        (let ((_%e4113441231%_ (gx#syntax-e _%hd4113141224%_)))
                          (let ((_%lp-hd4113541235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4113441231%_)))
                                (_%lp-tl4113641238%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4113441231%_))))
                            (if (gx#stx-pair? _%lp-hd4113541235%_)
                                (let ((_%e4114341241%_
                                       (gx#syntax-e _%lp-hd4113541235%_)))
                                  (let ((_%hd4114441245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4114341241%_)))
                                        (_%tl4114541248%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4114341241%_))))
                                    (if (gx#stx-pair? _%tl4114541248%_)
                                        (let ((_%e4114641251%_
                                               (gx#syntax-e _%tl4114541248%_)))
                                          (let ((_%hd4114741255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4114641251%_)))
                                                (_%tl4114841258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4114641251%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4114841258%_)
                                                (let ((_g44823_
                                                       (gx#syntax-split-splice
                                                        _%tl4114841258%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g44824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g44823_)
                         (##values-length _g44823_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g44824_ 2)))
                  (error "Context expects 2 values" _g44824_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4114941261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44823_
                                                              0)))
                                                          (_%tl4115141264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44823_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4115141264%_)
                                                          (letrec ((_%loop4115241267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4115041271%_ _%step4115641274%_)
                              (if (gx#stx-pair? _%hd4115041271%_)
                                  (let ((_%e4115341276%_
                                         (gx#syntax-e _%hd4115041271%_)))
                                    (let ((_%lp-hd4115441280%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4115341276%_)))
                                          (_%lp-tl4115541283%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4115341276%_))))
                                      (_%loop4115241267%_
                                       _%lp-tl4115541283%_
                                       (cons _%lp-hd4115441280%_
                                             _%step4115641274%_))))
                                  (let ((_%step4115741286%_
                                         (reverse _%step4115641274%_)))
                                    (_%loop4113341220%_
                                     _%lp-tl4113641238%_
                                     (cons _%step4115741286%_
                                           _%step4113741227%_)
                                     (cons _%hd4114741255%_ _%init4113841228%_)
                                     (cons _%hd4114441245%_
                                           _%var4113941229%_)))))))
                    (_%loop4115241267%_ _%target4114941261%_ '()))
                  (_%g4111641187%_ _%g4111741191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4111641187%_
                                                 _%g4111741191%_))))
                                        (_%g4111641187%_ _%g4111741191%_))))
                                (_%g4111641187%_ _%g4111741191%_))))
                        (let ((_%step4114041289%_ (reverse _%step4113741227%_))
                              (_%init4114141291%_ (reverse _%init4113841228%_))
                              (_%var4114241292%_ (reverse _%var4113941229%_)))
                          (if (gx#stx-pair? _%tl4112941211%_)
                              (let ((_%e4115841294%_
                                     (gx#syntax-e _%tl4112941211%_)))
                                (let ((_%hd4115941298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4115841294%_)))
                                      (_%tl4116041301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4115841294%_))))
                                  (if (gx#stx-pair? _%hd4115941298%_)
                                      (let ((_%e4116141304%_
                                             (gx#syntax-e _%hd4115941298%_)))
                                        (let ((_%hd4116241308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4116141304%_)))
                                              (_%tl4116341311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4116141304%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4116341311%_)
                                              (let ((_g44825_
                                                     (gx#syntax-split-splice
                                                      _%tl4116341311%_
                                                      '0)))
                                                (begin
                                                  (let ((_g44826_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44825_)
                                                               (##values-length
                                                                _g44825_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44826_ 2)))
                (error "Context expects 2 values" _g44826_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4116441314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44825_
                                                            0)))
                                                        (_%tl4116641317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44825_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4116641317%_)
                                                        (letrec ((_%loop4116741320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4116541324%_ _%fini4117141327%_)
                            (if (gx#stx-pair? _%hd4116541324%_)
                                (let ((_%e4116841329%_
                                       (gx#syntax-e _%hd4116541324%_)))
                                  (let ((_%lp-hd4116941333%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4116841329%_)))
                                        (_%lp-tl4117041336%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4116841329%_))))
                                    (_%loop4116741320%_
                                     _%lp-tl4117041336%_
                                     (cons _%lp-hd4116941333%_
                                           _%fini4117141327%_))))
                                (let ((_%fini4117241339%_
                                       (reverse _%fini4117141327%_)))
                                  (if (gx#stx-pair/null? _%tl4116041301%_)
                                      (let ((_g44827_
                                             (gx#syntax-split-splice
                                              _%tl4116041301%_
                                              '0)))
                                        (begin
                                          (let ((_g44828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44827_)
                                                       (##values-length
                                                        _g44827_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44828_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44828_)))
                                          (let ((_%target4117341342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44827_ 0)))
                                                (_%tl4117541345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44827_ 1))))
                                            (if (gx#stx-null? _%tl4117541345%_)
                                                (letrec ((_%loop4117641348%_
                                                          (lambda (_%hd4117441352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4118041355%_)
                    (if (gx#stx-pair? _%hd4117441352%_)
                        (let ((_%e4117741357%_ (gx#syntax-e _%hd4117441352%_)))
                          (let ((_%lp-hd4117841361%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4117741357%_)))
                                (_%lp-tl4117941364%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4117741357%_))))
                            (_%loop4117641348%_
                             _%lp-tl4117941364%_
                             (cons _%lp-hd4117841361%_ _%body4118041355%_))))
                        (let ((_%body4118141367%_
                               (reverse _%body4118041355%_)))
                          ((lambda (_%g4111841370%_
                                    _%g4111941372%_
                                    _%g4112041373%_
                                    _%g4112141374%_
                                    _%g4112241375%_
                                    _%g4112341376%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4140941412%_
                                                  _%g4141041415%_)
                                           (cons _%g4140941412%_
                                                 _%g4141041415%_))
                                         '()
                                         _%g4112341376%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4112241375%_
                                                      _%g4112341376%_)
                                                     (foldr (lambda (_%g4141741430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4141841433%_
                             _%g4141941435%_)
                      (cons (cons _%g4141841433%_ (cons _%g4141741430%_ '()))
                            _%g4141941435%_))
                    '()
                    _%g4112241375%_
                    _%g4112341376%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g4112041373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4142041438%_
                                                               _%g4142141441%_)
                                                        (cons _%g4142041438%_
                                                              _%g4142141441%_))
                                                      '()
                                                      _%g4111941372%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4142241444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4142341447%_)
                      (cons _%g4142241444%_ _%g4142341447%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g4112141374%_
                                   _%g4112341376%_)
                                  (foldr (lambda (_%g4142441450%_
                                                  _%g4142541453%_
                                                  _%g4142641455%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4142541453%_
                                                             (foldr (lambda (_%g4142741458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4142841461%_)
                              (cons _%g4142741458%_ _%g4142841461%_))
                            '()
                            _%g4142441450%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4142641455%_))
                                         '()
                                         _%g4112141374%_
                                         _%g4112341376%_)))
                          '())
                    _%g4111841370%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4111641187%_ _%g4111741191%_)))
                           _%body4118141367%_
                           _%fini4117241339%_
                           _%hd4116241308%_
                           _%step4114041289%_
                           _%init4114141291%_
                           _%var4114241292%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4117641348%_
                                                   _%target4117341342%_
                                                   '()))
                                                (_%g4111641187%_
                                                 _%g4111741191%_)))))
                                      (_%g4111641187%_ _%g4111741191%_)))))))
                  (_%loop4116741320%_ _%target4116441314%_ '()))
                (_%g4111641187%_ _%g4111741191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4111641187%_
                                               _%g4111741191%_))))
                                      (_%g4111641187%_ _%g4111741191%_))))
                              (_%g4111641187%_ _%g4111741191%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4113341220%_
                                                   _%target4113041214%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4111641187%_
                                                 _%g4111741191%_)))))
                                      (_%g4111641187%_ _%g4111741191%_))))
                              (_%g4111641187%_ _%g4111741191%_))))
                      (_%g4111641187%_ _%g4111741191%_)))))
          (_%g4111541464%_ _%$stx41112%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41472%_)
        (let* ((_%g4147641547%_
                (lambda (_%g4147741543%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4147741543%_)))
               (_%g4147541824%_
                (lambda (_%g4147741551%_)
                  (if (gx#stx-pair? _%g4147741551%_)
                      (let ((_%e4148441554%_ (gx#syntax-e _%g4147741551%_)))
                        (let ((_%hd4148541558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4148441554%_)))
                              (_%tl4148641561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4148441554%_))))
                          (if (gx#stx-pair? _%tl4148641561%_)
                              (let ((_%e4148741564%_
                                     (gx#syntax-e _%tl4148641561%_)))
                                (let ((_%hd4148841568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4148741564%_)))
                                      (_%tl4148941571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4148741564%_))))
                                  (if (gx#stx-pair/null? _%hd4148841568%_)
                                      (let ((_g44829_
                                             (gx#syntax-split-splice
                                              _%hd4148841568%_
                                              '0)))
                                        (begin
                                          (let ((_g44830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44829_)
                                                       (##values-length
                                                        _g44829_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44830_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44830_)))
                                          (let ((_%target4149041574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44829_ 0)))
                                                (_%tl4149241577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44829_ 1))))
                                            (if (gx#stx-null? _%tl4149241577%_)
                                                (letrec ((_%loop4149341580%_
                                                          (lambda (_%hd4149141584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4149741587%_
                           _%init4149841588%_
                           _%var4149941589%_)
                    (if (gx#stx-pair? _%hd4149141584%_)
                        (let ((_%e4149441591%_ (gx#syntax-e _%hd4149141584%_)))
                          (let ((_%lp-hd4149541595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4149441591%_)))
                                (_%lp-tl4149641598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4149441591%_))))
                            (if (gx#stx-pair? _%lp-hd4149541595%_)
                                (let ((_%e4150341601%_
                                       (gx#syntax-e _%lp-hd4149541595%_)))
                                  (let ((_%hd4150441605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4150341601%_)))
                                        (_%tl4150541608%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4150341601%_))))
                                    (if (gx#stx-pair? _%tl4150541608%_)
                                        (let ((_%e4150641611%_
                                               (gx#syntax-e _%tl4150541608%_)))
                                          (let ((_%hd4150741615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4150641611%_)))
                                                (_%tl4150841618%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4150641611%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4150841618%_)
                                                (let ((_g44831_
                                                       (gx#syntax-split-splice
                                                        _%tl4150841618%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g44832_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g44831_)
                         (##values-length _g44831_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g44832_ 2)))
                  (error "Context expects 2 values" _g44832_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4150941621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44831_
                                                              0)))
                                                          (_%tl4151141624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44831_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4151141624%_)
                                                          (letrec ((_%loop4151241627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4151041631%_ _%step4151641634%_)
                              (if (gx#stx-pair? _%hd4151041631%_)
                                  (let ((_%e4151341636%_
                                         (gx#syntax-e _%hd4151041631%_)))
                                    (let ((_%lp-hd4151441640%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4151341636%_)))
                                          (_%lp-tl4151541643%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4151341636%_))))
                                      (_%loop4151241627%_
                                       _%lp-tl4151541643%_
                                       (cons _%lp-hd4151441640%_
                                             _%step4151641634%_))))
                                  (let ((_%step4151741646%_
                                         (reverse _%step4151641634%_)))
                                    (_%loop4149341580%_
                                     _%lp-tl4149641598%_
                                     (cons _%step4151741646%_
                                           _%step4149741587%_)
                                     (cons _%hd4150741615%_ _%init4149841588%_)
                                     (cons _%hd4150441605%_
                                           _%var4149941589%_)))))))
                    (_%loop4151241627%_ _%target4150941621%_ '()))
                  (_%g4147641547%_ _%g4147741551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4147641547%_
                                                 _%g4147741551%_))))
                                        (_%g4147641547%_ _%g4147741551%_))))
                                (_%g4147641547%_ _%g4147741551%_))))
                        (let ((_%step4150041649%_ (reverse _%step4149741587%_))
                              (_%init4150141651%_ (reverse _%init4149841588%_))
                              (_%var4150241652%_ (reverse _%var4149941589%_)))
                          (if (gx#stx-pair? _%tl4148941571%_)
                              (let ((_%e4151841654%_
                                     (gx#syntax-e _%tl4148941571%_)))
                                (let ((_%hd4151941658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4151841654%_)))
                                      (_%tl4152041661%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4151841654%_))))
                                  (if (gx#stx-pair? _%hd4151941658%_)
                                      (let ((_%e4152141664%_
                                             (gx#syntax-e _%hd4151941658%_)))
                                        (let ((_%hd4152241668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4152141664%_)))
                                              (_%tl4152341671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4152141664%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4152341671%_)
                                              (let ((_g44833_
                                                     (gx#syntax-split-splice
                                                      _%tl4152341671%_
                                                      '0)))
                                                (begin
                                                  (let ((_g44834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44833_)
                                                               (##values-length
                                                                _g44833_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44834_ 2)))
                (error "Context expects 2 values" _g44834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4152441674%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44833_
                                                            0)))
                                                        (_%tl4152641677%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44833_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4152641677%_)
                                                        (letrec ((_%loop4152741680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4152541684%_ _%fini4153141687%_)
                            (if (gx#stx-pair? _%hd4152541684%_)
                                (let ((_%e4152841689%_
                                       (gx#syntax-e _%hd4152541684%_)))
                                  (let ((_%lp-hd4152941693%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4152841689%_)))
                                        (_%lp-tl4153041696%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4152841689%_))))
                                    (_%loop4152741680%_
                                     _%lp-tl4153041696%_
                                     (cons _%lp-hd4152941693%_
                                           _%fini4153141687%_))))
                                (let ((_%fini4153241699%_
                                       (reverse _%fini4153141687%_)))
                                  (if (gx#stx-pair/null? _%tl4152041661%_)
                                      (let ((_g44835_
                                             (gx#syntax-split-splice
                                              _%tl4152041661%_
                                              '0)))
                                        (begin
                                          (let ((_g44836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44835_)
                                                       (##values-length
                                                        _g44835_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44836_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44836_)))
                                          (let ((_%target4153341702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44835_ 0)))
                                                (_%tl4153541705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44835_ 1))))
                                            (if (gx#stx-null? _%tl4153541705%_)
                                                (letrec ((_%loop4153641708%_
                                                          (lambda (_%hd4153441712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4154041715%_)
                    (if (gx#stx-pair? _%hd4153441712%_)
                        (let ((_%e4153741717%_ (gx#syntax-e _%hd4153441712%_)))
                          (let ((_%lp-hd4153841721%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4153741717%_)))
                                (_%lp-tl4153941724%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4153741717%_))))
                            (_%loop4153641708%_
                             _%lp-tl4153941724%_
                             (cons _%lp-hd4153841721%_ _%body4154041715%_))))
                        (let ((_%body4154141727%_
                               (reverse _%body4154041715%_)))
                          ((lambda (_%g4147841730%_
                                    _%g4147941732%_
                                    _%g4148041733%_
                                    _%g4148141734%_
                                    _%g4148241735%_
                                    _%g4148341736%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4176941772%_
                                                  _%g4177041775%_)
                                           (cons _%g4176941772%_
                                                 _%g4177041775%_))
                                         '()
                                         _%g4148341736%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4148241735%_
                                                      _%g4148341736%_)
                                                     (foldr (lambda (_%g4177741790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4177841793%_
                             _%g4177941795%_)
                      (cons (cons _%g4177841793%_ (cons _%g4177741790%_ '()))
                            _%g4177941795%_))
                    '()
                    _%g4148241735%_
                    _%g4148341736%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4178041798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4178141801%_)
                    (cons _%g4178041798%_ _%g4178141801%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g4148041733%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g4148141734%_
                                                   _%g4148341736%_)
                                                  (foldr (lambda (_%g4178241804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4178341807%_
                          _%g4178441809%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4178341807%_
                                     (foldr (lambda (_%g4178541812%_
                                                     _%g4178641815%_)
                                              (cons _%g4178541812%_
                                                    _%g4178641815%_))
                                            '()
                                            _%g4178241804%_)))
                         _%g4178441809%_))
                 '()
                 _%g4148141734%_
                 _%g4148341736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4178741818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4178841821%_)
                             (cons _%g4178741818%_ _%g4178841821%_))
                           '()
                           _%g4147941732%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g4147841730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4147641547%_ _%g4147741551%_)))
                           _%body4154141727%_
                           _%fini4153241699%_
                           _%hd4152241668%_
                           _%step4150041649%_
                           _%init4150141651%_
                           _%var4150241652%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4153641708%_
                                                   _%target4153341702%_
                                                   '()))
                                                (_%g4147641547%_
                                                 _%g4147741551%_)))))
                                      (_%g4147641547%_ _%g4147741551%_)))))))
                  (_%loop4152741680%_ _%target4152441674%_ '()))
                (_%g4147641547%_ _%g4147741551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4147641547%_
                                               _%g4147741551%_))))
                                      (_%g4147641547%_ _%g4147741551%_))))
                              (_%g4147641547%_ _%g4147741551%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4149341580%_
                                                   _%target4149041574%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4147641547%_
                                                 _%g4147741551%_)))))
                                      (_%g4147641547%_ _%g4147741551%_))))
                              (_%g4147641547%_ _%g4147741551%_))))
                      (_%g4147641547%_ _%g4147741551%_)))))
          (_%g4147541824%_ _%$stx41472%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx41832%_)
        (let* ((_%g4183641860%_
                (lambda (_%g4183741856%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4183741856%_)))
               (_%g4183541943%_
                (lambda (_%g4183741864%_)
                  (if (gx#stx-pair? _%g4183741864%_)
                      (let ((_%e4184041867%_ (gx#syntax-e _%g4183741864%_)))
                        (let ((_%hd4184141871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4184041867%_)))
                              (_%tl4184241874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4184041867%_))))
                          (if (gx#stx-pair? _%tl4184241874%_)
                              (let ((_%e4184341877%_
                                     (gx#syntax-e _%tl4184241874%_)))
                                (let ((_%hd4184441881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4184341877%_)))
                                      (_%tl4184541884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4184341877%_))))
                                  (if (gx#stx-pair/null? _%tl4184541884%_)
                                      (let ((_g44837_
                                             (gx#syntax-split-splice
                                              _%tl4184541884%_
                                              '0)))
                                        (begin
                                          (let ((_g44838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44837_)
                                                       (##values-length
                                                        _g44837_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44838_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44838_)))
                                          (let ((_%target4184641887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44837_ 0)))
                                                (_%tl4184841890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44837_ 1))))
                                            (if (gx#stx-null? _%tl4184841890%_)
                                                (letrec ((_%loop4184941893%_
                                                          (lambda (_%hd4184741897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4185341900%_)
                    (if (gx#stx-pair? _%hd4184741897%_)
                        (let ((_%e4185041902%_ (gx#syntax-e _%hd4184741897%_)))
                          (let ((_%lp-hd4185141906%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4185041902%_)))
                                (_%lp-tl4185241909%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4185041902%_))))
                            (_%loop4184941893%_
                             _%lp-tl4185241909%_
                             (cons _%lp-hd4185141906%_ _%body4185341900%_))))
                        (let ((_%body4185441912%_
                               (reverse _%body4185341900%_)))
                          ((lambda (_%g4183841915%_ _%g4183941917%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g4183941917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4193441937%_ _%g4193541940%_)
                                  (cons _%g4193441937%_ _%g4193541940%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4183841915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4185441912%_
                           _%hd4184441881%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4184941893%_
                                                   _%target4184641887%_
                                                   '()))
                                                (_%g4183641860%_
                                                 _%g4183741864%_)))))
                                      (_%g4183641860%_ _%g4183741864%_))))
                              (_%g4183641860%_ _%g4183741864%_))))
                      (_%g4183641860%_ _%g4183741864%_)))))
          (_%g4183541943%_ _%$stx41832%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx41948%_)
        (let* ((_%g4195241976%_
                (lambda (_%g4195341972%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4195341972%_)))
               (_%g4195142059%_
                (lambda (_%g4195341980%_)
                  (if (gx#stx-pair? _%g4195341980%_)
                      (let ((_%e4195641983%_ (gx#syntax-e _%g4195341980%_)))
                        (let ((_%hd4195741987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4195641983%_)))
                              (_%tl4195841990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4195641983%_))))
                          (if (gx#stx-pair? _%tl4195841990%_)
                              (let ((_%e4195941993%_
                                     (gx#syntax-e _%tl4195841990%_)))
                                (let ((_%hd4196041997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4195941993%_)))
                                      (_%tl4196142000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4195941993%_))))
                                  (if (gx#stx-pair/null? _%tl4196142000%_)
                                      (let ((_g44839_
                                             (gx#syntax-split-splice
                                              _%tl4196142000%_
                                              '0)))
                                        (begin
                                          (let ((_g44840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44839_)
                                                       (##values-length
                                                        _g44839_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44840_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44840_)))
                                          (let ((_%target4196242003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44839_ 0)))
                                                (_%tl4196442006%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44839_ 1))))
                                            (if (gx#stx-null? _%tl4196442006%_)
                                                (letrec ((_%loop4196542009%_
                                                          (lambda (_%hd4196342013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4196942016%_)
                    (if (gx#stx-pair? _%hd4196342013%_)
                        (let ((_%e4196642018%_ (gx#syntax-e _%hd4196342013%_)))
                          (let ((_%lp-hd4196742022%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4196642018%_)))
                                (_%lp-tl4196842025%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4196642018%_))))
                            (_%loop4196542009%_
                             _%lp-tl4196842025%_
                             (cons _%lp-hd4196742022%_ _%body4196942016%_))))
                        (let ((_%body4197042028%_
                               (reverse _%body4196942016%_)))
                          ((lambda (_%g4195442031%_ _%g4195542033%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g4195542033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4205042053%_ _%g4205142056%_)
                                  (cons _%g4205042053%_ _%g4205142056%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4195442031%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4197042028%_
                           _%hd4196041997%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4196542009%_
                                                   _%target4196242003%_
                                                   '()))
                                                (_%g4195241976%_
                                                 _%g4195341980%_)))))
                                      (_%g4195241976%_ _%g4195341980%_))))
                              (_%g4195241976%_ _%g4195341980%_))))
                      (_%g4195241976%_ _%g4195341980%_)))))
          (_%g4195142059%_ _%$stx41948%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42064%_)
        (let ((_%g4206742074%_
               (lambda (_%g4206842070%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4206842070%_))))
          (_%g4206742074%_ _%$stx42064%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42078%_)
        (let ((_%g4208142088%_
               (lambda (_%g4208242084%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4208242084%_))))
          (_%g4208142088%_ _%$stx42078%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42092%_)
        (letrec ((_%generate-thunk42095%_
                  (lambda (_%body43414%_)
                    (if (null? _%body43414%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42092%_)
                        (let* ((_%g4341743434%_
                                (lambda (_%g4341843430%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4341843430%_)))
                               (_%g4341643493%_
                                (lambda (_%g4341843438%_)
                                  (if (gx#stx-pair/null? _%g4341843438%_)
                                      (let ((_g44841_
                                             (gx#syntax-split-splice
                                              _%g4341843438%_
                                              '0)))
                                        (begin
                                          (let ((_g44842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44841_)
                                                       (##values-length
                                                        _g44841_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44842_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44842_)))
                                          (let ((_%target4342043441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44841_ 0)))
                                                (_%tl4342243444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44841_ 1))))
                                            (if (gx#stx-null? _%tl4342243444%_)
                                                (letrec ((_%loop4342343447%_
                                                          (lambda (_%hd4342143451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4342743454%_)
                    (if (gx#stx-pair? _%hd4342143451%_)
                        (let ((_%e4342443456%_ (gx#syntax-e _%hd4342143451%_)))
                          (let ((_%lp-hd4342543460%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4342443456%_)))
                                (_%lp-tl4342643463%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4342443456%_))))
                            (_%loop4342343447%_
                             _%lp-tl4342643463%_
                             (cons _%lp-hd4342543460%_ _%e4342743454%_))))
                        (let ((_%e4342843466%_ (reverse _%e4342743454%_)))
                          ((lambda (_%g4341943469%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4348443487%_
                                                         _%g4348543490%_)
                                                  (cons _%g4348443487%_
                                                        _%g4348543490%_))
                                                '()
                                                _%g4341943469%_))))
                           _%e4342843466%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4342343447%_
                                                   _%target4342043441%_
                                                   '()))
                                                (_%g4341743434%_
                                                 _%g4341843438%_)))))
                                      (_%g4341743434%_ _%g4341843438%_)))))
                          (_%g4341643493%_ (reverse _%body43414%_))))))
                 (_%generate-fini42097%_
                  (lambda (_%thunk43297%_ _%fini43299%_)
                    (let* ((_%g4330143325%_
                            (lambda (_%g4330243321%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4330243321%_)))
                           (_%g4330043410%_
                            (lambda (_%g4330243329%_)
                              (if (gx#stx-pair? _%g4330243329%_)
                                  (let ((_%e4330543332%_
                                         (gx#syntax-e _%g4330243329%_)))
                                    (let ((_%hd4330643336%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4330543332%_)))
                                          (_%tl4330743339%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4330543332%_))))
                                      (if (gx#stx-pair? _%tl4330743339%_)
                                          (let ((_%e4330843342%_
                                                 (gx#syntax-e
                                                  _%tl4330743339%_)))
                                            (let ((_%hd4330943346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4330843342%_)))
                                                  (_%tl4331043349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4330843342%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4330943346%_)
                                                  (let ((_g44843_
                                                         (gx#syntax-split-splice
                                                          _%hd4330943346%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g44844_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g44843_)
                           (##values-length _g44843_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g44844_ 2)))
                    (error "Context expects 2 values" _g44844_)))
              (let ((_%target4331143352%_
                     (let () (declare (not safe)) (##values-ref _g44843_ 0)))
                    (_%tl4331343355%_
                     (let () (declare (not safe)) (##values-ref _g44843_ 1))))
                (if (gx#stx-null? _%tl4331343355%_)
                    (letrec ((_%loop4331443358%_
                              (lambda (_%hd4331243362%_ _%e4331843365%_)
                                (if (gx#stx-pair? _%hd4331243362%_)
                                    (let ((_%e4331543367%_
                                           (gx#syntax-e _%hd4331243362%_)))
                                      (let ((_%lp-hd4331643371%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4331543367%_)))
                                            (_%lp-tl4331743374%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4331543367%_))))
                                        (_%loop4331443358%_
                                         _%lp-tl4331743374%_
                                         (cons _%lp-hd4331643371%_
                                               _%e4331843365%_))))
                                    (let ((_%e4331943377%_
                                           (reverse _%e4331843365%_)))
                                      (if (gx#stx-null? _%tl4331043349%_)
                                          ((lambda (_%g4330343380%_
                                                    _%g4330443382%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g4330443382%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4340143404%_
                                                   _%g4340243407%_)
                                            (cons _%g4340143404%_
                                                  _%g4340243407%_))
                                          '()
                                          _%g4330343380%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4331943377%_
                                           _%hd4330643336%_)
                                          (_%g4330143325%_
                                           _%g4330243329%_)))))))
                      (_%loop4331443358%_ _%target4331143352%_ '()))
                    (_%g4330143325%_ _%g4330243329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4330143325%_
                                                   _%g4330243329%_))))
                                          (_%g4330143325%_ _%g4330243329%_))))
                                  (_%g4330143325%_ _%g4330243329%_)))))
                      (_%g4330043410%_ (list _%thunk43297%_ _%fini43299%_)))))
                 (_%generate-catch42098%_
                  (lambda (_%handlers42712%_ _%thunk42714%_)
                    (let* ((_%g4271642724%_
                            (lambda (_%g4271742720%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4271742720%_)))
                           (_%g4271543293%_
                            (lambda (_%g4271742728%_)
                              ((lambda (_%g4271842731%_)
                                 (let _%lp42743%_ ((_%rest42746%_
                                                    _%handlers42712%_)
                                                   (_%clauses42748%_ '()))
                                   (let* ((_%rest4274942757%_ _%rest42746%_)
                                          (_%else4275142888%_
                                           (lambda ()
                                             (let* ((_%g4276942793%_
                                                     (lambda (_%g4277042789%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4277042789%_)))
                                                    (_%g4276842884%_
                                                     (lambda (_%g4277042797%_)
                                                       (if (gx#stx-pair?
                                                            _%g4277042797%_)
                                                           (let ((_%e4277342800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4277042797%_)))
                     (let ((_%hd4277442804%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4277342800%_)))
                           (_%tl4277542807%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4277342800%_))))
                       (if (gx#stx-pair/null? _%hd4277442804%_)
                           (let ((_g44845_
                                  (gx#syntax-split-splice
                                   _%hd4277442804%_
                                   '0)))
                             (begin
                               (let ((_g44846_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g44845_)
                                            (##values-length _g44845_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g44846_ 2)))
                                     (error "Context expects 2 values"
                                            _g44846_)))
                               (let ((_%target4277642810%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g44845_ 0)))
                                     (_%tl4277842813%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g44845_ 1))))
                                 (if (gx#stx-null? _%tl4277842813%_)
                                     (letrec ((_%loop4277942816%_
                                               (lambda (_%hd4277742820%_
                                                        _%clause4278342823%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4277742820%_)
                                                     (let ((_%e4278042825%_
                                                            (gx#syntax-e
                                                             _%hd4277742820%_)))
                                                       (let ((_%lp-hd4278142829%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4278042825%_)))
                     (_%lp-tl4278242832%_
                      (let () (declare (not safe)) (##cdr _%e4278042825%_))))
                 (_%loop4277942816%_
                  _%lp-tl4278242832%_
                  (cons _%lp-hd4278142829%_ _%clause4278342823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4278442835%_
                                                            (reverse _%clause4278342823%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4277542807%_)
                                                           (let ((_%e4278542838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4277542807%_)))
                     (let ((_%hd4278642842%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4278542838%_)))
                           (_%tl4278742845%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4278542838%_))))
                       (if (gx#stx-null? _%tl4278742845%_)
                           ((lambda (_%g4277142848%_ _%g4277242850%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g4271842731%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4287542878%_ _%g4287642881%_)
                                   (cons _%g4287542878%_ _%g4287642881%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g4271842731%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g4277242850%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g4277142848%_ '()))))
                            _%hd4278642842%_
                            _%clause4278442835%_)
                           (_%g4276942793%_ _%g4277042797%_))))
                   (_%g4276942793%_ _%g4277042797%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4277942816%_
                                        _%target4277642810%_
                                        '()))
                                     (_%g4276942793%_ _%g4277042797%_)))))
                           (_%g4276942793%_ _%g4277042797%_))))
                   (_%g4276942793%_ _%g4277042797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4276842884%_
                                                (list _%clauses42748%_
                                                      _%thunk42714%_)))))
                                          (_%K4275343277%_
                                           (lambda (_%rest42892%_ _%hd42894%_)
                                             (let* ((_%__stx4456544566%_
                                                     _%hd42894%_)
                                                    (_%g4289942969%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4456544566%_))))
                                               (let ((_%__kont4456844569%_
                                                      (lambda (_%g4290143256%_
                                                               _%g4290243258%_)
                                                        (_%lp42743%_
                                                         _%rest42892%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4290243258%_ '()))
                                   (cons _%g4271842731%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g4290143256%_ '())))
                       _%clauses42748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4457044571%_
                                                      (lambda (_%g4291243188%_
                                                               _%g4291343190%_
                                                               _%g4291443191%_)
                                                        (_%lp42743%_
                                                         _%rest42892%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4291443191%_ '()))
                                   (cons _%g4271842731%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4291343190%_
                                                           (cons _%g4271842731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4321043213%_
                                                               _%g4321143216%_)
                                                        (cons _%g4321043213%_
                                                              _%g4321143216%_))
                                                      '()
                                                      _%g4291243188%_)))
                                   '()))
                       _%clauses42748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4457444575%_
                                                      (lambda (_%g4293343096%_
                                                               _%g4293443098%_)
                                                        (_%lp42743%_
                                                         _%rest42892%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4293443098%_
                                                           (cons _%g4271842731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4311443117%_
                                                               _%g4311543120%_)
                                                        (cons _%g4311443117%_
                                                              _%g4311543120%_))
                                                      '()
                                                      _%g4293343096%_)))
                                   '()))
                       _%clauses42748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4457844579%_
                                                      (lambda (_%g4295043014%_
                                                               _%g4295143016%_)
                                                        (_%lp42743%_
                                                         _%rest42892%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4303243035%_
                                                         _%g4303343038%_)
                                                  (cons _%g4303243035%_
                                                        _%g4303343038%_))
                                                '()
                                                _%g4295043014%_))
                                   '()))
                       _%clauses42748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4467044671%_
                                                         (lambda (_%e4295242976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4295342980%_
                          _%tl4295442983%_
                          _%__splice4458044581%_
                          _%target4295542986%_
                          _%tl4295742989%_)
                   (letrec ((_%loop4295842992%_
                             (lambda (_%hd4295642996%_ _%body4296242999%_)
                               (if (gx#stx-pair? _%hd4295642996%_)
                                   (let ((_%e4295943001%_
                                          (gx#syntax-e _%hd4295642996%_)))
                                     (let ((_%lp-tl4296143008%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4295943001%_)))
                                           (_%lp-hd4296043005%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4295943001%_))))
                                       (_%loop4295842992%_
                                        _%lp-tl4296143008%_
                                        (cons _%lp-hd4296043005%_
                                              _%body4296242999%_))))
                                   (let ((_%body4296343011%_
                                          (reverse _%body4296242999%_)))
                                     (let ((_%g4295043014%_ _%body4296343011%_)
                                           (_%g4295143016%_ _%hd4295342980%_))
                                       (if (gx#underscore? _%g4295143016%_)
                                           (_%__kont4457844579%_
                                            _%g4295043014%_
                                            _%g4295143016%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4289942969%_)))))))))
                     (_%loop4295842992%_ _%target4295542986%_ '()))))
                (_%__match4465644657%_
                 (lambda (_%e4293543048%_
                          _%hd4293643052%_
                          _%tl4293743055%_
                          _%e4293843058%_
                          _%hd4293943062%_
                          _%tl4294043065%_
                          _%__splice4457644577%_
                          _%target4294143068%_
                          _%tl4294343071%_)
                   (letrec ((_%loop4294443074%_
                             (lambda (_%hd4294243078%_ _%body4294843081%_)
                               (if (gx#stx-pair? _%hd4294243078%_)
                                   (let ((_%e4294543083%_
                                          (gx#syntax-e _%hd4294243078%_)))
                                     (let ((_%lp-tl4294743090%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4294543083%_)))
                                           (_%lp-hd4294643087%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4294543083%_))))
                                       (_%loop4294443074%_
                                        _%lp-tl4294743090%_
                                        (cons _%lp-hd4294643087%_
                                              _%body4294843081%_))))
                                   (let ((_%body4294943093%_
                                          (reverse _%body4294843081%_)))
                                     (let ((_%g4293343096%_ _%body4294943093%_)
                                           (_%g4293443098%_ _%hd4293943062%_))
                                       (if (gx#identifier? _%g4293443098%_)
                                           (_%__kont4457444575%_
                                            _%g4293343096%_
                                            _%g4293443098%_)
                                           (_%__match4467044671%_
                                            _%e4293543048%_
                                            _%hd4293643052%_
                                            _%tl4293743055%_
                                            _%__splice4457644577%_
                                            _%target4294143068%_
                                            _%tl4294343071%_))))))))
                     (_%loop4294443074%_ _%target4294143068%_ '()))))
                (_%__match4463444635%_
                 (lambda (_%e4291543130%_
                          _%hd4291643134%_
                          _%tl4291743137%_
                          _%e4291843140%_
                          _%hd4291943144%_
                          _%tl4292043147%_
                          _%e4292143150%_
                          _%hd4292243154%_
                          _%tl4292343157%_
                          _%__splice4457244573%_
                          _%target4292443160%_
                          _%tl4292643163%_)
                   (letrec ((_%loop4292743166%_
                             (lambda (_%hd4292543170%_ _%body4293143173%_)
                               (if (gx#stx-pair? _%hd4292543170%_)
                                   (let ((_%e4292843175%_
                                          (gx#syntax-e _%hd4292543170%_)))
                                     (let ((_%lp-tl4293043182%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4292843175%_)))
                                           (_%lp-hd4292943179%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4292843175%_))))
                                       (_%loop4292743166%_
                                        _%lp-tl4293043182%_
                                        (cons _%lp-hd4292943179%_
                                              _%body4293143173%_))))
                                   (let ((_%body4293243185%_
                                          (reverse _%body4293143173%_)))
                                     (let ((_%g4291243188%_ _%body4293243185%_)
                                           (_%g4291343190%_ _%hd4292243154%_)
                                           (_%g4291443191%_ _%hd4291943144%_))
                                       (if (gx#identifier? _%g4291343190%_)
                                           (_%__kont4457044571%_
                                            _%g4291243188%_
                                            _%g4291343190%_
                                            _%g4291443191%_)
                                           (_%__match4467044671%_
                                            _%e4291543130%_
                                            _%hd4291643134%_
                                            _%tl4291743137%_
                                            _%__splice4457244573%_
                                            _%target4292443160%_
                                            _%tl4292643163%_))))))))
                     (_%loop4292743166%_ _%target4292443160%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4456544566%_)
                                                       (let ((_%e4290343226%_
                                                              (gx#syntax-e
                                                               _%__stx4456544566%_)))
                                                         (let ((_%tl4290543233%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4290343226%_)))
                       (_%hd4290443230%_
                        (let () (declare (not safe)) (##car _%e4290343226%_))))
                   (if (gx#stx-pair? _%tl4290543233%_)
                       (let ((_%e4290643236%_ (gx#syntax-e _%tl4290543233%_)))
                         (let ((_%tl4290843243%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4290643236%_)))
                               (_%hd4290743240%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4290643236%_))))
                           (if (gx#identifier? _%hd4290743240%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g44847_|
                                    _%hd4290743240%_)
                                   (if (gx#stx-pair? _%tl4290843243%_)
                                       (let ((_%e4290943246%_
                                              (gx#syntax-e _%tl4290843243%_)))
                                         (let ((_%tl4291143253%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4290943246%_)))
                                               (_%hd4291043250%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4290943246%_))))
                                           (if (gx#stx-null? _%tl4291143253%_)
                                               (_%__kont4456844569%_
                                                _%hd4291043250%_
                                                _%hd4290443230%_)
                                               (if (gx#stx-pair?
                                                    _%hd4290443230%_)
                                                   (let ((_%e4291843140%_
                                                          (gx#syntax-e
                                                           _%hd4290443230%_)))
                                                     (let ((_%tl4292043147%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4291843140%_)))
                                                           (_%hd4291943144%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4291843140%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4292043147%_)
                                                           (let ((_%e4292143150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4292043147%_)))
                     (let ((_%tl4292343157%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4292143150%_)))
                           (_%hd4292243154%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4292143150%_))))
                       (if (gx#stx-null? _%tl4292343157%_)
                           (if (gx#stx-pair/null? _%tl4290543233%_)
                               (let ((_%__splice4457244573%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4290543233%_
                                       '0)))
                                 (let ((_%tl4292643163%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4457244573%_
                                           '1)))
                                       (_%target4292443160%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4457244573%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4292643163%_)
                                       (_%__match4463444635%_
                                        _%e4290343226%_
                                        _%hd4290443230%_
                                        _%tl4290543233%_
                                        _%e4291843140%_
                                        _%hd4291943144%_
                                        _%tl4292043147%_
                                        _%e4292143150%_
                                        _%hd4292243154%_
                                        _%tl4292343157%_
                                        _%__splice4457244573%_
                                        _%target4292443160%_
                                        _%tl4292643163%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4289942969%_)))))
                               (let () (declare (not safe)) (_%g4289942969%_)))
                           (if (gx#stx-pair/null? _%tl4290543233%_)
                               (let ((_%__splice4458044581%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4290543233%_
                                       '0)))
                                 (let ((_%tl4295742989%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4458044581%_
                                           '1)))
                                       (_%target4295542986%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4458044581%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4295742989%_)
                                       (_%__match4467044671%_
                                        _%e4290343226%_
                                        _%hd4290443230%_
                                        _%tl4290543233%_
                                        _%__splice4458044581%_
                                        _%target4295542986%_
                                        _%tl4295742989%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4289942969%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4289942969%_))))))
                   (if (gx#stx-null? _%tl4292043147%_)
                       (if (gx#stx-pair/null? _%tl4290543233%_)
                           (let ((_%__splice4457644577%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4290543233%_
                                   '0)))
                             (let ((_%tl4294343071%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4457644577%_
                                       '1)))
                                   (_%target4294143068%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4457644577%_
                                       '0))))
                               (if (gx#stx-null? _%tl4294343071%_)
                                   (_%__match4465644657%_
                                    _%e4290343226%_
                                    _%hd4290443230%_
                                    _%tl4290543233%_
                                    _%e4291843140%_
                                    _%hd4291943144%_
                                    _%tl4292043147%_
                                    _%__splice4457644577%_
                                    _%target4294143068%_
                                    _%tl4294343071%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4289942969%_)))))
                           (let () (declare (not safe)) (_%g4289942969%_)))
                       (if (gx#stx-pair/null? _%tl4290543233%_)
                           (let ((_%__splice4458044581%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4290543233%_
                                   '0)))
                             (let ((_%tl4295742989%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4458044581%_
                                       '1)))
                                   (_%target4295542986%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4458044581%_
                                       '0))))
                               (if (gx#stx-null? _%tl4295742989%_)
                                   (_%__match4467044671%_
                                    _%e4290343226%_
                                    _%hd4290443230%_
                                    _%tl4290543233%_
                                    _%__splice4458044581%_
                                    _%target4295542986%_
                                    _%tl4295742989%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4289942969%_)))))
                           (let () (declare (not safe)) (_%g4289942969%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4290543233%_)
                                                       (let ((_%__splice4458044581%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4290543233%_
                                                               '0)))
                                                         (let ((_%tl4295742989%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4458044581%_ '1)))
                       (_%target4295542986%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4458044581%_ '0))))
                   (if (gx#stx-null? _%tl4295742989%_)
                       (_%__match4467044671%_
                        _%e4290343226%_
                        _%hd4290443230%_
                        _%tl4290543233%_
                        _%__splice4458044581%_
                        _%target4295542986%_
                        _%tl4295742989%_)
                       (let () (declare (not safe)) (_%g4289942969%_)))))
               (let () (declare (not safe)) (_%g4289942969%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4290443230%_)
                                           (let ((_%e4291843140%_
                                                  (gx#syntax-e
                                                   _%hd4290443230%_)))
                                             (let ((_%tl4292043147%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4291843140%_)))
                                                   (_%hd4291943144%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4291843140%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4292043147%_)
                                                   (let ((_%e4292143150%_
                                                          (gx#syntax-e
                                                           _%tl4292043147%_)))
                                                     (let ((_%tl4292343157%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4292143150%_)))
                                                           (_%hd4292243154%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4292143150%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4292343157%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4290543233%_)
                                                               (let ((_%__splice4457244573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4290543233%_
                               '0)))
                         (let ((_%tl4292643163%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4457244573%_ '1)))
                               (_%target4292443160%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4457244573%_ '0))))
                           (if (gx#stx-null? _%tl4292643163%_)
                               (_%__match4463444635%_
                                _%e4290343226%_
                                _%hd4290443230%_
                                _%tl4290543233%_
                                _%e4291843140%_
                                _%hd4291943144%_
                                _%tl4292043147%_
                                _%e4292143150%_
                                _%hd4292243154%_
                                _%tl4292343157%_
                                _%__splice4457244573%_
                                _%target4292443160%_
                                _%tl4292643163%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4289942969%_)))))
                       (let () (declare (not safe)) (_%g4289942969%_)))
                   (if (gx#stx-pair/null? _%tl4290543233%_)
                       (let ((_%__splice4458044581%_
                              (gx#syntax-split-splice->vector
                               _%tl4290543233%_
                               '0)))
                         (let ((_%tl4295742989%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4458044581%_ '1)))
                               (_%target4295542986%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4458044581%_ '0))))
                           (if (gx#stx-null? _%tl4295742989%_)
                               (_%__match4467044671%_
                                _%e4290343226%_
                                _%hd4290443230%_
                                _%tl4290543233%_
                                _%__splice4458044581%_
                                _%target4295542986%_
                                _%tl4295742989%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4289942969%_)))))
                       (let () (declare (not safe)) (_%g4289942969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4292043147%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4290543233%_)
                                                           (let ((_%__splice4457644577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4290543233%_
                           '0)))
                     (let ((_%tl4294343071%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4457644577%_ '1)))
                           (_%target4294143068%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4457644577%_ '0))))
                       (if (gx#stx-null? _%tl4294343071%_)
                           (_%__match4465644657%_
                            _%e4290343226%_
                            _%hd4290443230%_
                            _%tl4290543233%_
                            _%e4291843140%_
                            _%hd4291943144%_
                            _%tl4292043147%_
                            _%__splice4457644577%_
                            _%target4294143068%_
                            _%tl4294343071%_)
                           (let () (declare (not safe)) (_%g4289942969%_)))))
                   (let () (declare (not safe)) (_%g4289942969%_)))
               (if (gx#stx-pair/null? _%tl4290543233%_)
                   (let ((_%__splice4458044581%_
                          (gx#syntax-split-splice->vector
                           _%tl4290543233%_
                           '0)))
                     (let ((_%tl4295742989%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4458044581%_ '1)))
                           (_%target4295542986%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4458044581%_ '0))))
                       (if (gx#stx-null? _%tl4295742989%_)
                           (_%__match4467044671%_
                            _%e4290343226%_
                            _%hd4290443230%_
                            _%tl4290543233%_
                            _%__splice4458044581%_
                            _%target4295542986%_
                            _%tl4295742989%_)
                           (let () (declare (not safe)) (_%g4289942969%_)))))
                   (let () (declare (not safe)) (_%g4289942969%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4290543233%_)
                                               (let ((_%__splice4458044581%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4290543233%_
                                                       '0)))
                                                 (let ((_%tl4295742989%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4458044581%_
                                                           '1)))
                                                       (_%target4295542986%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4458044581%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4295742989%_)
                                                       (_%__match4467044671%_
                                                        _%e4290343226%_
                                                        _%hd4290443230%_
                                                        _%tl4290543233%_
                                                        _%__splice4458044581%_
                                                        _%target4295542986%_
                                                        _%tl4295742989%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4289942969%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4289942969%_)))))
                                   (if (gx#stx-pair? _%hd4290443230%_)
                                       (let ((_%e4291843140%_
                                              (gx#syntax-e _%hd4290443230%_)))
                                         (let ((_%tl4292043147%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4291843140%_)))
                                               (_%hd4291943144%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4291843140%_))))
                                           (if (gx#stx-pair? _%tl4292043147%_)
                                               (let ((_%e4292143150%_
                                                      (gx#syntax-e
                                                       _%tl4292043147%_)))
                                                 (let ((_%tl4292343157%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4292143150%_)))
                                                       (_%hd4292243154%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4292143150%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4292343157%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4290543233%_)
                                                           (let ((_%__splice4457244573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4290543233%_
                           '0)))
                     (let ((_%tl4292643163%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4457244573%_ '1)))
                           (_%target4292443160%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4457244573%_ '0))))
                       (if (gx#stx-null? _%tl4292643163%_)
                           (_%__match4463444635%_
                            _%e4290343226%_
                            _%hd4290443230%_
                            _%tl4290543233%_
                            _%e4291843140%_
                            _%hd4291943144%_
                            _%tl4292043147%_
                            _%e4292143150%_
                            _%hd4292243154%_
                            _%tl4292343157%_
                            _%__splice4457244573%_
                            _%target4292443160%_
                            _%tl4292643163%_)
                           (let () (declare (not safe)) (_%g4289942969%_)))))
                   (let () (declare (not safe)) (_%g4289942969%_)))
               (if (gx#stx-pair/null? _%tl4290543233%_)
                   (let ((_%__splice4458044581%_
                          (gx#syntax-split-splice->vector
                           _%tl4290543233%_
                           '0)))
                     (let ((_%tl4295742989%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4458044581%_ '1)))
                           (_%target4295542986%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4458044581%_ '0))))
                       (if (gx#stx-null? _%tl4295742989%_)
                           (_%__match4467044671%_
                            _%e4290343226%_
                            _%hd4290443230%_
                            _%tl4290543233%_
                            _%__splice4458044581%_
                            _%target4295542986%_
                            _%tl4295742989%_)
                           (let () (declare (not safe)) (_%g4289942969%_)))))
                   (let () (declare (not safe)) (_%g4289942969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4292043147%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4290543233%_)
                                                       (let ((_%__splice4457644577%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4290543233%_
                                                               '0)))
                                                         (let ((_%tl4294343071%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4457644577%_ '1)))
                       (_%target4294143068%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4457644577%_ '0))))
                   (if (gx#stx-null? _%tl4294343071%_)
                       (_%__match4465644657%_
                        _%e4290343226%_
                        _%hd4290443230%_
                        _%tl4290543233%_
                        _%e4291843140%_
                        _%hd4291943144%_
                        _%tl4292043147%_
                        _%__splice4457644577%_
                        _%target4294143068%_
                        _%tl4294343071%_)
                       (let () (declare (not safe)) (_%g4289942969%_)))))
               (let () (declare (not safe)) (_%g4289942969%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4290543233%_)
                                                       (let ((_%__splice4458044581%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4290543233%_
                                                               '0)))
                                                         (let ((_%tl4295742989%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4458044581%_ '1)))
                       (_%target4295542986%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4458044581%_ '0))))
                   (if (gx#stx-null? _%tl4295742989%_)
                       (_%__match4467044671%_
                        _%e4290343226%_
                        _%hd4290443230%_
                        _%tl4290543233%_
                        _%__splice4458044581%_
                        _%target4295542986%_
                        _%tl4295742989%_)
                       (let () (declare (not safe)) (_%g4289942969%_)))))
               (let () (declare (not safe)) (_%g4289942969%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4290543233%_)
                                           (let ((_%__splice4458044581%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4290543233%_
                                                   '0)))
                                             (let ((_%tl4295742989%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4458044581%_
                                                       '1)))
                                                   (_%target4295542986%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4458044581%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4295742989%_)
                                                   (_%__match4467044671%_
                                                    _%e4290343226%_
                                                    _%hd4290443230%_
                                                    _%tl4290543233%_
                                                    _%__splice4458044581%_
                                                    _%target4295542986%_
                                                    _%tl4295742989%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4289942969%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4289942969%_)))))
                               (if (gx#stx-pair? _%hd4290443230%_)
                                   (let ((_%e4291843140%_
                                          (gx#syntax-e _%hd4290443230%_)))
                                     (let ((_%tl4292043147%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4291843140%_)))
                                           (_%hd4291943144%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4291843140%_))))
                                       (if (gx#stx-pair? _%tl4292043147%_)
                                           (let ((_%e4292143150%_
                                                  (gx#syntax-e
                                                   _%tl4292043147%_)))
                                             (let ((_%tl4292343157%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4292143150%_)))
                                                   (_%hd4292243154%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4292143150%_))))
                                               (if (gx#stx-null?
                                                    _%tl4292343157%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4290543233%_)
                                                       (let ((_%__splice4457244573%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4290543233%_
                                                               '0)))
                                                         (let ((_%tl4292643163%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4457244573%_ '1)))
                       (_%target4292443160%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4457244573%_ '0))))
                   (if (gx#stx-null? _%tl4292643163%_)
                       (_%__match4463444635%_
                        _%e4290343226%_
                        _%hd4290443230%_
                        _%tl4290543233%_
                        _%e4291843140%_
                        _%hd4291943144%_
                        _%tl4292043147%_
                        _%e4292143150%_
                        _%hd4292243154%_
                        _%tl4292343157%_
                        _%__splice4457244573%_
                        _%target4292443160%_
                        _%tl4292643163%_)
                       (let () (declare (not safe)) (_%g4289942969%_)))))
               (let () (declare (not safe)) (_%g4289942969%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4290543233%_)
                                                       (let ((_%__splice4458044581%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4290543233%_
                                                               '0)))
                                                         (let ((_%tl4295742989%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4458044581%_ '1)))
                       (_%target4295542986%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4458044581%_ '0))))
                   (if (gx#stx-null? _%tl4295742989%_)
                       (_%__match4467044671%_
                        _%e4290343226%_
                        _%hd4290443230%_
                        _%tl4290543233%_
                        _%__splice4458044581%_
                        _%target4295542986%_
                        _%tl4295742989%_)
                       (let () (declare (not safe)) (_%g4289942969%_)))))
               (let () (declare (not safe)) (_%g4289942969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4292043147%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4290543233%_)
                                                   (let ((_%__splice4457644577%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4290543233%_
                                                           '0)))
                                                     (let ((_%tl4294343071%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4457644577%_
                                                               '1)))
                                                           (_%target4294143068%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4457644577%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4294343071%_)
                                                           (_%__match4465644657%_
                                                            _%e4290343226%_
                                                            _%hd4290443230%_
                                                            _%tl4290543233%_
                                                            _%e4291843140%_
                                                            _%hd4291943144%_
                                                            _%tl4292043147%_
                                                            _%__splice4457644577%_
                                                            _%target4294143068%_
                                                            _%tl4294343071%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4289942969%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4289942969%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4290543233%_)
                                                   (let ((_%__splice4458044581%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4290543233%_
                                                           '0)))
                                                     (let ((_%tl4295742989%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4458044581%_
                                                               '1)))
                                                           (_%target4295542986%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4458044581%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4295742989%_)
                                                           (_%__match4467044671%_
                                                            _%e4290343226%_
                                                            _%hd4290443230%_
                                                            _%tl4290543233%_
                                                            _%__splice4458044581%_
                                                            _%target4295542986%_
                                                            _%tl4295742989%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4289942969%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4289942969%_)))))))
                                   (if (gx#stx-pair/null? _%tl4290543233%_)
                                       (let ((_%__splice4458044581%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4290543233%_
                                               '0)))
                                         (let ((_%tl4295742989%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4458044581%_
                                                   '1)))
                                               (_%target4295542986%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4458044581%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4295742989%_)
                                               (_%__match4467044671%_
                                                _%e4290343226%_
                                                _%hd4290443230%_
                                                _%tl4290543233%_
                                                _%__splice4458044581%_
                                                _%target4295542986%_
                                                _%tl4295742989%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4289942969%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4289942969%_)))))))
                       (if (gx#stx-pair? _%hd4290443230%_)
                           (let ((_%e4291843140%_
                                  (gx#syntax-e _%hd4290443230%_)))
                             (let ((_%tl4292043147%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4291843140%_)))
                                   (_%hd4291943144%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4291843140%_))))
                               (if (gx#stx-pair? _%tl4292043147%_)
                                   (let ((_%e4292143150%_
                                          (gx#syntax-e _%tl4292043147%_)))
                                     (let ((_%tl4292343157%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4292143150%_)))
                                           (_%hd4292243154%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4292143150%_))))
                                       (if (gx#stx-null? _%tl4292343157%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4290543233%_)
                                               (let ((_%__splice4457244573%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4290543233%_
                                                       '0)))
                                                 (let ((_%tl4292643163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4457244573%_
                                                           '1)))
                                                       (_%target4292443160%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4457244573%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4292643163%_)
                                                       (_%__match4463444635%_
                                                        _%e4290343226%_
                                                        _%hd4290443230%_
                                                        _%tl4290543233%_
                                                        _%e4291843140%_
                                                        _%hd4291943144%_
                                                        _%tl4292043147%_
                                                        _%e4292143150%_
                                                        _%hd4292243154%_
                                                        _%tl4292343157%_
                                                        _%__splice4457244573%_
                                                        _%target4292443160%_
                                                        _%tl4292643163%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4289942969%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4289942969%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4290543233%_)
                                               (let ((_%__splice4458044581%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4290543233%_
                                                       '0)))
                                                 (let ((_%tl4295742989%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4458044581%_
                                                           '1)))
                                                       (_%target4295542986%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4458044581%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4295742989%_)
                                                       (_%__match4467044671%_
                                                        _%e4290343226%_
                                                        _%hd4290443230%_
                                                        _%tl4290543233%_
                                                        _%__splice4458044581%_
                                                        _%target4295542986%_
                                                        _%tl4295742989%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4289942969%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4289942969%_))))))
                                   (if (gx#stx-null? _%tl4292043147%_)
                                       (if (gx#stx-pair/null? _%tl4290543233%_)
                                           (let ((_%__splice4457644577%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4290543233%_
                                                   '0)))
                                             (let ((_%tl4294343071%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4457644577%_
                                                       '1)))
                                                   (_%target4294143068%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4457644577%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4294343071%_)
                                                   (_%__match4465644657%_
                                                    _%e4290343226%_
                                                    _%hd4290443230%_
                                                    _%tl4290543233%_
                                                    _%e4291843140%_
                                                    _%hd4291943144%_
                                                    _%tl4292043147%_
                                                    _%__splice4457644577%_
                                                    _%target4294143068%_
                                                    _%tl4294343071%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4289942969%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4289942969%_)))
                                       (if (gx#stx-pair/null? _%tl4290543233%_)
                                           (let ((_%__splice4458044581%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4290543233%_
                                                   '0)))
                                             (let ((_%tl4295742989%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4458044581%_
                                                       '1)))
                                                   (_%target4295542986%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4458044581%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4295742989%_)
                                                   (_%__match4467044671%_
                                                    _%e4290343226%_
                                                    _%hd4290443230%_
                                                    _%tl4290543233%_
                                                    _%__splice4458044581%_
                                                    _%target4295542986%_
                                                    _%tl4295742989%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4289942969%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4289942969%_)))))))
                           (if (gx#stx-pair/null? _%tl4290543233%_)
                               (let ((_%__splice4458044581%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4290543233%_
                                       '0)))
                                 (let ((_%tl4295742989%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4458044581%_
                                           '1)))
                                       (_%target4295542986%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4458044581%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4295742989%_)
                                       (_%__match4467044671%_
                                        _%e4290343226%_
                                        _%hd4290443230%_
                                        _%tl4290543233%_
                                        _%__splice4458044581%_
                                        _%target4295542986%_
                                        _%tl4295742989%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4289942969%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4289942969%_)))))))
               (let () (declare (not safe)) (_%g4289942969%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4274942757%_)
                                         (let ((_%hd4275443281%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4274942757%_)))
                                               (_%tl4275543284%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4274942757%_))))
                                           (let* ((_%hd43287%_
                                                   _%hd4275443281%_)
                                                  (_%rest43290%_
                                                   _%tl4275543284%_))
                                             (_%K4275343277%_
                                              _%rest43290%_
                                              _%hd43287%_)))
                                         (_%else4275142888%_)))))
                               _%g4271742728%_))))
                      (_%g4271543293%_ (gx#genident))))))
          (let* ((_%g4210042120%_
                  (lambda (_%g4210142116%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4210142116%_)))
                 (_%g4209942708%_
                  (lambda (_%g4210142124%_)
                    (if (gx#stx-pair? _%g4210142124%_)
                        (let ((_%e4210342127%_ (gx#syntax-e _%g4210142124%_)))
                          (let ((_%hd4210442131%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4210342127%_)))
                                (_%tl4210542134%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4210342127%_))))
                            (if (gx#stx-pair/null? _%tl4210542134%_)
                                (let ((_g44848_
                                       (gx#syntax-split-splice
                                        _%tl4210542134%_
                                        '0)))
                                  (begin
                                    (let ((_g44849_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g44848_)
                                                 (##values-length _g44848_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g44849_ 2)))
                                          (error "Context expects 2 values"
                                                 _g44849_)))
                                    (let ((_%target4210642137%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g44848_ 0)))
                                          (_%tl4210842140%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g44848_ 1))))
                                      (if (gx#stx-null? _%tl4210842140%_)
                                          (letrec ((_%loop4210942143%_
                                                    (lambda (_%hd4210742147%_
                                                             _%e4211342150%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4210742147%_)
                                                          (let ((_%e4211042152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4210742147%_)))
                    (let ((_%lp-hd4211142156%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4211042152%_)))
                          (_%lp-tl4211242159%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4211042152%_))))
                      (_%loop4210942143%_
                       _%lp-tl4211242159%_
                       (cons _%lp-hd4211142156%_ _%e4211342150%_))))
                  (let ((_%e4211442162%_ (reverse _%e4211342150%_)))
                    ((lambda (_%g4210242165%_)
                       (let _%lp42182%_ ((_%rest42185%_
                                          (foldr (lambda (_%g4269942702%_
                                                          _%g4270042705%_)
                                                   (cons _%g4269942702%_
                                                         _%g4270042705%_))
                                                 '()
                                                 _%g4210242165%_))
                                         (_%body42187%_ '()))
                         (let* ((_%__stx4479144792%_ _%rest42185%_)
                                (_%g4219042202%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4479144792%_))))
                           (let ((_%__kont4479444795%_
                                  (lambda (_%g4219242230%_ _%g4219342232%_)
                                    (let* ((_%__stx4473944740%_
                                            _%g4219342232%_)
                                           (_%g4224942282%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4473944740%_))))
                                      (let ((_%__kont4474244743%_
                                             (lambda (_%g4225142669%_)
                                               (if (gx#stx-null?
                                                    _%g4219242230%_)
                                                   (_%generate-fini42097%_
                                                    (_%generate-thunk42095%_
                                                     _%body42187%_)
                                                    (foldr (lambda (_%g4268342686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4268442689%_)
                     (cons _%g4268342686%_ _%g4268442689%_))
                   '()
                   _%g4225142669%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42092%_))))
                                            (_%__kont4474644747%_
                                             (lambda (_%g4226442338%_)
                                               (let _%lp42355%_ ((_%rest42358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4219242230%_)
                         (_%handlers42360%_
                          (cons (foldr (lambda (_%g4261542618%_
                                                _%g4261642621%_)
                                         (cons _%g4261542618%_
                                               _%g4261642621%_))
                                       '()
                                       _%g4226442338%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4467344674%_
                                                         _%rest42358%_)
                                                        (_%g4236442404%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4467344674%_))))
                                                   (let ((_%__kont4467644677%_
                                                          (lambda (_%g4236642585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4236742587%_)
                    (_%lp42355%_
                     _%g4236642585%_
                     (cons (foldr (lambda (_%g4260342606%_ _%g4260442609%_)
                                    (cons _%g4260342606%_ _%g4260442609%_))
                                  '()
                                  _%g4236742587%_)
                           _%handlers42360%_))))
                 (_%__kont4468044681%_
                  (lambda (_%g4238342470%_)
                    (let* ((_%g4249142499%_
                            (lambda (_%g4249242495%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4249242495%_)))
                           (_%g4249042526%_
                            (lambda (_%g4249242503%_)
                              ((lambda (_%g4249342506%_)
                                 (_%generate-fini42097%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g4249342506%_ '())))
                                  (foldr (lambda (_%g4251742520%_
                                                  _%g4251842523%_)
                                           (cons _%g4251742520%_
                                                 _%g4251842523%_))
                                         '()
                                         _%g4238342470%_)))
                               _%g4249242503%_))))
                      (_%g4249042526%_
                       (_%generate-catch42098%_
                        _%handlers42360%_
                        (_%generate-thunk42095%_ _%body42187%_))))))
                 (_%__kont4468444685%_
                  (lambda ()
                    (_%generate-catch42098%_
                     _%handlers42360%_
                     (_%generate-thunk42095%_ _%body42187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4236342415%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4467344674%_)
                           (_%__kont4468444685%_)
                           (let () (declare (not safe)) (_%g4236442404%_)))))
                    (_%__match4473444735%_
                     (lambda (_%e4238442422%_
                              _%hd4238542426%_
                              _%tl4238642429%_
                              _%e4238742432%_
                              _%hd4238842436%_
                              _%tl4238942439%_
                              _%__splice4468244683%_
                              _%target4239042442%_
                              _%tl4239242445%_)
                       (letrec ((_%loop4239342448%_
                                 (lambda (_%hd4239142452%_ _%fini4239742455%_)
                                   (if (gx#stx-pair? _%hd4239142452%_)
                                       (let ((_%e4239442457%_
                                              (gx#syntax-e _%hd4239142452%_)))
                                         (let ((_%lp-tl4239642464%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4239442457%_)))
                                               (_%lp-hd4239542461%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4239442457%_))))
                                           (_%loop4239342448%_
                                            _%lp-tl4239642464%_
                                            (cons _%lp-hd4239542461%_
                                                  _%fini4239742455%_))))
                                       (let ((_%fini4239842467%_
                                              (reverse _%fini4239742455%_)))
                                         (if (gx#stx-null? _%tl4238642429%_)
                                             (_%__kont4468044681%_
                                              _%fini4239842467%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4236442404%_))))))))
                         (_%loop4239342448%_ _%target4239042442%_ '()))))
                    (_%__match4471044711%_
                     (lambda (_%e4236842537%_
                              _%hd4236942541%_
                              _%tl4237042544%_
                              _%e4237142547%_
                              _%hd4237242551%_
                              _%tl4237342554%_
                              _%__splice4467844679%_
                              _%target4237442557%_
                              _%tl4237642560%_)
                       (letrec ((_%loop4237742563%_
                                 (lambda (_%hd4237542567%_
                                          _%handler4238142570%_)
                                   (if (gx#stx-pair? _%hd4237542567%_)
                                       (let ((_%e4237842572%_
                                              (gx#syntax-e _%hd4237542567%_)))
                                         (let ((_%lp-tl4238042579%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4237842572%_)))
                                               (_%lp-hd4237942576%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4237842572%_))))
                                           (_%loop4237742563%_
                                            _%lp-tl4238042579%_
                                            (cons _%lp-hd4237942576%_
                                                  _%handler4238142570%_))))
                                       (let ((_%handler4238242582%_
                                              (reverse _%handler4238142570%_)))
                                         (_%__kont4467644677%_
                                          _%tl4237042544%_
                                          _%handler4238242582%_))))))
                         (_%loop4237742563%_ _%target4237442557%_ '())))))
               (if (gx#stx-pair? _%__stx4467344674%_)
                   (let ((_%e4236842537%_ (gx#syntax-e _%__stx4467344674%_)))
                     (let ((_%tl4237042544%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4236842537%_)))
                           (_%hd4236942541%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4236842537%_))))
                       (if (gx#stx-pair? _%hd4236942541%_)
                           (let ((_%e4237142547%_
                                  (gx#syntax-e _%hd4236942541%_)))
                             (let ((_%tl4237342554%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4237142547%_)))
                                   (_%hd4237242551%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4237142547%_))))
                               (if (gx#identifier? _%hd4237242551%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g44850_|
                                        _%hd4237242551%_)
                                       (if (gx#stx-pair/null? _%tl4237342554%_)
                                           (let ((_%__splice4467844679%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4237342554%_
                                                   '0)))
                                             (let ((_%tl4237642560%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4467844679%_
                                                       '1)))
                                                   (_%target4237442557%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4467844679%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4237642560%_)
                                                   (_%__match4471044711%_
                                                    _%e4236842537%_
                                                    _%hd4236942541%_
                                                    _%tl4237042544%_
                                                    _%e4237142547%_
                                                    _%hd4237242551%_
                                                    _%tl4237342554%_
                                                    _%__splice4467844679%_
                                                    _%target4237442557%_
                                                    _%tl4237642560%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4236442404%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4236442404%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g44851_|
                                            _%hd4237242551%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4237342554%_)
                                               (let ((_%__splice4468244683%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4237342554%_
                                                       '0)))
                                                 (let ((_%tl4239242445%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4468244683%_
                                                           '1)))
                                                       (_%target4239042442%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4468244683%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4239242445%_)
                                                       (_%__match4473444735%_
                                                        _%e4236842537%_
                                                        _%hd4236942541%_
                                                        _%tl4237042544%_
                                                        _%e4237142547%_
                                                        _%hd4237242551%_
                                                        _%tl4237342554%_
                                                        _%__splice4468244683%_
                                                        _%target4239042442%_
                                                        _%tl4239242445%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4236442404%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4236442404%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4236442404%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4236442404%_)))))
                           (let () (declare (not safe)) (_%g4236442404%_)))))
                   (let () (declare (not safe)) (_%g4236342415%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4475044751%_
                                             (lambda ()
                                               (_%lp42182%_
                                                _%g4219242230%_
                                                (cons _%g4219342232%_
                                                      _%body42187%_)))))
                                        (let* ((_%__match4478844789%_
                                                (lambda (_%e4226542300%_
                                                         _%hd4226642304%_
                                                         _%tl4226742307%_
                                                         _%__splice4474844749%_
                                                         _%target4226842310%_
                                                         _%tl4227042313%_)
                                                  (letrec ((_%loop4227142316%_
                                                            (lambda (_%hd4226942320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4227542323%_)
                      (if (gx#stx-pair? _%hd4226942320%_)
                          (let ((_%e4227242325%_
                                 (gx#syntax-e _%hd4226942320%_)))
                            (let ((_%lp-tl4227442332%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4227242325%_)))
                                  (_%lp-hd4227342329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4227242325%_))))
                              (_%loop4227142316%_
                               _%lp-tl4227442332%_
                               (cons _%lp-hd4227342329%_
                                     _%handler4227542323%_))))
                          (let ((_%handler4227642335%_
                                 (reverse _%handler4227542323%_)))
                            (_%__kont4474644747%_ _%handler4227642335%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4227142316%_
                                                     _%target4226842310%_
                                                     '()))))
                                               (_%__match4477044771%_
                                                (lambda (_%e4225242631%_
                                                         _%hd4225342635%_
                                                         _%tl4225442638%_
                                                         _%__splice4474444745%_
                                                         _%target4225542641%_
                                                         _%tl4225742644%_)
                                                  (letrec ((_%loop4225842647%_
                                                            (lambda (_%hd4225642651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4226242654%_)
                      (if (gx#stx-pair? _%hd4225642651%_)
                          (let ((_%e4225942656%_
                                 (gx#syntax-e _%hd4225642651%_)))
                            (let ((_%lp-tl4226142663%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4225942656%_)))
                                  (_%lp-hd4226042660%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4225942656%_))))
                              (_%loop4225842647%_
                               _%lp-tl4226142663%_
                               (cons _%lp-hd4226042660%_ _%fini4226242654%_))))
                          (let ((_%fini4226342666%_
                                 (reverse _%fini4226242654%_)))
                            (_%__kont4474244743%_ _%fini4226342666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4225842647%_
                                                     _%target4225542641%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4473944740%_)
                                              (let ((_%e4225242631%_
                                                     (gx#syntax-e
                                                      _%__stx4473944740%_)))
                                                (let ((_%tl4225442638%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4225242631%_)))
                                                      (_%hd4225342635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4225242631%_))))
                                                  (if (gx#identifier?
                                                       _%hd4225342635%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g44852_|
                                                           _%hd4225342635%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4225442638%_)
                                                              (let ((_%__splice4474444745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4225442638%_
                              '0)))
                        (let ((_%tl4225742644%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4474444745%_ '1)))
                              (_%target4225542641%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4474444745%_ '0))))
                          (if (gx#stx-null? _%tl4225742644%_)
                              (_%__match4477044771%_
                               _%e4225242631%_
                               _%hd4225342635%_
                               _%tl4225442638%_
                               _%__splice4474444745%_
                               _%target4225542641%_
                               _%tl4225742644%_)
                              (_%__kont4475044751%_))))
                      (_%__kont4475044751%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g44853_|
                       _%hd4225342635%_)
                      (if (gx#stx-pair/null? _%tl4225442638%_)
                          (let ((_%__splice4474844749%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4225442638%_
                                  '0)))
                            (let ((_%tl4227042313%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4474844749%_ '1)))
                                  (_%target4226842310%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4474844749%_
                                      '0))))
                              (if (gx#stx-null? _%tl4227042313%_)
                                  (_%__match4478844789%_
                                   _%e4225242631%_
                                   _%hd4225342635%_
                                   _%tl4225442638%_
                                   _%__splice4474844749%_
                                   _%target4226842310%_
                                   _%tl4227042313%_)
                                  (_%__kont4475044751%_))))
                          (_%__kont4475044751%_))
                      (_%__kont4475044751%_)))
              (_%__kont4475044751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4475044751%_)))))))
                                 (_%__kont4479644797%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42187%_)))))
                             (let ((_%g4218942213%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4479144792%_)
                                          (_%__kont4479644797%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4219042202%_))))))
                               (if (gx#stx-pair? _%__stx4479144792%_)
                                   (let ((_%e4219442220%_
                                          (gx#syntax-e _%__stx4479144792%_)))
                                     (let ((_%tl4219642227%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4219442220%_)))
                                           (_%hd4219542224%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4219442220%_))))
                                       (_%__kont4479444795%_
                                        _%tl4219642227%_
                                        _%hd4219542224%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4218942213%_))))))))
                     _%e4211442162%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4210942143%_
                                             _%target4210642137%_
                                             '()))
                                          (_%g4210042120%_ _%g4210142124%_)))))
                                (_%g4210042120%_ _%g4210142124%_))))
                        (_%g4210042120%_ _%g4210142124%_)))))
            (_%g4209942708%_ _%stx42092%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43508%_)
        (let* ((_%g4351243541%_
                (lambda (_%g4351343537%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4351343537%_)))
               (_%g4351143637%_
                (lambda (_%g4351343545%_)
                  (if (gx#stx-pair? _%g4351343545%_)
                      (let ((_%e4351643548%_ (gx#syntax-e _%g4351343545%_)))
                        (let ((_%hd4351743552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4351643548%_)))
                              (_%tl4351843555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4351643548%_))))
                          (if (gx#stx-pair/null? _%tl4351843555%_)
                              (let ((_g44854_
                                     (gx#syntax-split-splice
                                      _%tl4351843555%_
                                      '0)))
                                (begin
                                  (let ((_g44855_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g44854_)
                                               (##values-length _g44854_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g44855_ 2)))
                                        (error "Context expects 2 values"
                                               _g44855_)))
                                  (let ((_%target4351943558%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44854_ 0)))
                                        (_%tl4352143561%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44854_ 1))))
                                    (if (gx#stx-null? _%tl4352143561%_)
                                        (letrec ((_%loop4352243564%_
                                                  (lambda (_%hd4352043568%_
                                                           _%val4352643571%_
                                                           _%key4352743572%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4352043568%_)
                                                        (let ((_%e4352343574%_
                                                               (gx#syntax-e
                                                                _%hd4352043568%_)))
                                                          (let ((_%lp-hd4352443578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4352343574%_)))
                        (_%lp-tl4352543581%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4352343574%_))))
                    (if (gx#stx-pair? _%lp-hd4352443578%_)
                        (let ((_%e4353043584%_
                               (gx#syntax-e _%lp-hd4352443578%_)))
                          (let ((_%hd4353143588%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4353043584%_)))
                                (_%tl4353243591%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4353043584%_))))
                            (if (gx#stx-pair? _%tl4353243591%_)
                                (let ((_%e4353343594%_
                                       (gx#syntax-e _%tl4353243591%_)))
                                  (let ((_%hd4353443598%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4353343594%_)))
                                        (_%tl4353543601%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4353343594%_))))
                                    (if (gx#stx-null? _%tl4353543601%_)
                                        (_%loop4352243564%_
                                         _%lp-tl4352543581%_
                                         (cons _%hd4353443598%_
                                               _%val4352643571%_)
                                         (cons _%hd4353143588%_
                                               _%key4352743572%_))
                                        (_%g4351243541%_ _%g4351343545%_))))
                                (_%g4351243541%_ _%g4351343545%_))))
                        (_%g4351243541%_ _%g4351343545%_))))
                (let ((_%val4352843604%_ (reverse _%val4352643571%_))
                      (_%key4352943606%_ (reverse _%key4352743572%_)))
                  ((lambda (_%g4351443608%_ _%g4351543610%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4351443608%_
                                    _%g4351543610%_)
                                   (foldr (lambda (_%g4362543629%_
                                                   _%g4362643632%_
                                                   _%g4362743634%_)
                                            (cons (cons _%g4362643632%_
                                                        (cons _%g4362543629%_
                                                              '()))
                                                  _%g4362743634%_))
                                          '()
                                          _%g4351443608%_
                                          _%g4351543610%_)))))
                   _%val4352843604%_
                   _%key4352943606%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4352243564%_
                                           _%target4351943558%_
                                           '()
                                           '()))
                                        (_%g4351243541%_ _%g4351343545%_)))))
                              (_%g4351243541%_ _%g4351343545%_))))
                      (_%g4351243541%_ _%g4351343545%_)))))
          (_%g4351143637%_ _%$stx43508%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43642%_)
        (let* ((_%g4364643675%_
                (lambda (_%g4364743671%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4364743671%_)))
               (_%g4364543771%_
                (lambda (_%g4364743679%_)
                  (if (gx#stx-pair? _%g4364743679%_)
                      (let ((_%e4365043682%_ (gx#syntax-e _%g4364743679%_)))
                        (let ((_%hd4365143686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4365043682%_)))
                              (_%tl4365243689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4365043682%_))))
                          (if (gx#stx-pair/null? _%tl4365243689%_)
                              (let ((_g44856_
                                     (gx#syntax-split-splice
                                      _%tl4365243689%_
                                      '0)))
                                (begin
                                  (let ((_g44857_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g44856_)
                                               (##values-length _g44856_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g44857_ 2)))
                                        (error "Context expects 2 values"
                                               _g44857_)))
                                  (let ((_%target4365343692%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44856_ 0)))
                                        (_%tl4365543695%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44856_ 1))))
                                    (if (gx#stx-null? _%tl4365543695%_)
                                        (letrec ((_%loop4365643698%_
                                                  (lambda (_%hd4365443702%_
                                                           _%val4366043705%_
                                                           _%key4366143706%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4365443702%_)
                                                        (let ((_%e4365743708%_
                                                               (gx#syntax-e
                                                                _%hd4365443702%_)))
                                                          (let ((_%lp-hd4365843712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4365743708%_)))
                        (_%lp-tl4365943715%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4365743708%_))))
                    (if (gx#stx-pair? _%lp-hd4365843712%_)
                        (let ((_%e4366443718%_
                               (gx#syntax-e _%lp-hd4365843712%_)))
                          (let ((_%hd4366543722%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4366443718%_)))
                                (_%tl4366643725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4366443718%_))))
                            (if (gx#stx-pair? _%tl4366643725%_)
                                (let ((_%e4366743728%_
                                       (gx#syntax-e _%tl4366643725%_)))
                                  (let ((_%hd4366843732%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4366743728%_)))
                                        (_%tl4366943735%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4366743728%_))))
                                    (if (gx#stx-null? _%tl4366943735%_)
                                        (_%loop4365643698%_
                                         _%lp-tl4365943715%_
                                         (cons _%hd4366843732%_
                                               _%val4366043705%_)
                                         (cons _%hd4366543722%_
                                               _%key4366143706%_))
                                        (_%g4364643675%_ _%g4364743679%_))))
                                (_%g4364643675%_ _%g4364743679%_))))
                        (_%g4364643675%_ _%g4364743679%_))))
                (let ((_%val4366243738%_ (reverse _%val4366043705%_))
                      (_%key4366343740%_ (reverse _%key4366143706%_)))
                  ((lambda (_%g4364843742%_ _%g4364943744%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4364843742%_
                                    _%g4364943744%_)
                                   (foldr (lambda (_%g4375943763%_
                                                   _%g4376043766%_
                                                   _%g4376143768%_)
                                            (cons (cons _%g4376043766%_
                                                        (cons _%g4375943763%_
                                                              '()))
                                                  _%g4376143768%_))
                                          '()
                                          _%g4364843742%_
                                          _%g4364943744%_)))))
                   _%val4366243738%_
                   _%key4366343740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4365643698%_
                                           _%target4365343692%_
                                           '()
                                           '()))
                                        (_%g4364643675%_ _%g4364743679%_)))))
                              (_%g4364643675%_ _%g4364743679%_))))
                      (_%g4364643675%_ _%g4364743679%_)))))
          (_%g4364543771%_ _%$stx43642%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx43776%_)
        (let* ((_%g4378043809%_
                (lambda (_%g4378143805%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4378143805%_)))
               (_%g4377943905%_
                (lambda (_%g4378143813%_)
                  (if (gx#stx-pair? _%g4378143813%_)
                      (let ((_%e4378443816%_ (gx#syntax-e _%g4378143813%_)))
                        (let ((_%hd4378543820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4378443816%_)))
                              (_%tl4378643823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4378443816%_))))
                          (if (gx#stx-pair/null? _%tl4378643823%_)
                              (let ((_g44858_
                                     (gx#syntax-split-splice
                                      _%tl4378643823%_
                                      '0)))
                                (begin
                                  (let ((_g44859_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g44858_)
                                               (##values-length _g44858_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g44859_ 2)))
                                        (error "Context expects 2 values"
                                               _g44859_)))
                                  (let ((_%target4378743826%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44858_ 0)))
                                        (_%tl4378943829%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44858_ 1))))
                                    (if (gx#stx-null? _%tl4378943829%_)
                                        (letrec ((_%loop4379043832%_
                                                  (lambda (_%hd4378843836%_
                                                           _%val4379443839%_
                                                           _%key4379543840%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4378843836%_)
                                                        (let ((_%e4379143842%_
                                                               (gx#syntax-e
                                                                _%hd4378843836%_)))
                                                          (let ((_%lp-hd4379243846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4379143842%_)))
                        (_%lp-tl4379343849%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4379143842%_))))
                    (if (gx#stx-pair? _%lp-hd4379243846%_)
                        (let ((_%e4379843852%_
                               (gx#syntax-e _%lp-hd4379243846%_)))
                          (let ((_%hd4379943856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4379843852%_)))
                                (_%tl4380043859%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4379843852%_))))
                            (if (gx#stx-pair? _%tl4380043859%_)
                                (let ((_%e4380143862%_
                                       (gx#syntax-e _%tl4380043859%_)))
                                  (let ((_%hd4380243866%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4380143862%_)))
                                        (_%tl4380343869%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4380143862%_))))
                                    (if (gx#stx-null? _%tl4380343869%_)
                                        (_%loop4379043832%_
                                         _%lp-tl4379343849%_
                                         (cons _%hd4380243866%_
                                               _%val4379443839%_)
                                         (cons _%hd4379943856%_
                                               _%key4379543840%_))
                                        (_%g4378043809%_ _%g4378143813%_))))
                                (_%g4378043809%_ _%g4378143813%_))))
                        (_%g4378043809%_ _%g4378143813%_))))
                (let ((_%val4379643872%_ (reverse _%val4379443839%_))
                      (_%key4379743874%_ (reverse _%key4379543840%_)))
                  ((lambda (_%g4378243876%_ _%g4378343878%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4378243876%_
                                    _%g4378343878%_)
                                   (foldr (lambda (_%g4389343897%_
                                                   _%g4389443900%_
                                                   _%g4389543902%_)
                                            (cons (cons _%g4389443900%_
                                                        (cons _%g4389343897%_
                                                              '()))
                                                  _%g4389543902%_))
                                          '()
                                          _%g4378243876%_
                                          _%g4378343878%_)))))
                   _%val4379643872%_
                   _%key4379743874%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4379043832%_
                                           _%target4378743826%_
                                           '()
                                           '()))
                                        (_%g4378043809%_ _%g4378143813%_)))))
                              (_%g4378043809%_ _%g4378143813%_))))
                      (_%g4378043809%_ _%g4378143813%_)))))
          (_%g4377943905%_ _%$stx43776%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx43910%_)
        (let* ((_%g4391343937%_
                (lambda (_%g4391443933%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4391443933%_)))
               (_%g4391244178%_
                (lambda (_%g4391443941%_)
                  (if (gx#stx-pair? _%g4391443941%_)
                      (let ((_%e4391743944%_ (gx#syntax-e _%g4391443941%_)))
                        (let ((_%hd4391843948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4391743944%_)))
                              (_%tl4391943951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4391743944%_))))
                          (if (gx#stx-pair? _%tl4391943951%_)
                              (let ((_%e4392043954%_
                                     (gx#syntax-e _%tl4391943951%_)))
                                (let ((_%hd4392143958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4392043954%_)))
                                      (_%tl4392243961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4392043954%_))))
                                  (if (gx#stx-pair/null? _%tl4392243961%_)
                                      (let ((_g44860_
                                             (gx#syntax-split-splice
                                              _%tl4392243961%_
                                              '0)))
                                        (begin
                                          (let ((_g44861_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44860_)
                                                       (##values-length
                                                        _g44860_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44861_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44861_)))
                                          (let ((_%target4392343964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44860_ 0)))
                                                (_%tl4392543967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44860_ 1))))
                                            (if (gx#stx-null? _%tl4392543967%_)
                                                (letrec ((_%loop4392643970%_
                                                          (lambda (_%hd4392443974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4393043977%_)
                    (if (gx#stx-pair? _%hd4392443974%_)
                        (let ((_%e4392743979%_ (gx#syntax-e _%hd4392443974%_)))
                          (let ((_%lp-hd4392843983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4392743979%_)))
                                (_%lp-tl4392943986%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4392743979%_))))
                            (_%loop4392643970%_
                             _%lp-tl4392943986%_
                             (cons _%lp-hd4392843983%_ _%entry4393043977%_))))
                        (let ((_%entry4393143989%_
                               (reverse _%entry4393043977%_)))
                          ((lambda (_%g4391543992%_ _%g4391643994%_)
                             (let* ((_%g4401244020%_
                                     (lambda (_%g4401344016%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4401344016%_)))
                                    (_%g4401144166%_
                                     (lambda (_%g4401344024%_)
                                       ((lambda (_%g4401444027%_)
                                          (let* ((_%g4403944065%_
                                                  (lambda (_%g4404044061%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4404044061%_)))
                                                 (_%g4403844154%_
                                                  (lambda (_%g4404044069%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4404044069%_)
                                                        (let ((_g44862_
                                                               (gx#syntax-split-splice
                                                                _%g4404044069%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g44862_)
                                 (##values-length _g44862_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g44863_ 2)))
                          (error "Context expects 2 values" _g44863_)))
                    (let ((_%target4404344072%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g44862_ 0)))
                          (_%tl4404544075%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g44862_ 1))))
                      (if (gx#stx-null? _%tl4404544075%_)
                          (letrec ((_%loop4404644078%_
                                    (lambda (_%hd4404444082%_
                                             _%val4405044085%_
                                             _%key4405144086%_)
                                      (if (gx#stx-pair? _%hd4404444082%_)
                                          (let ((_%e4404744088%_
                                                 (gx#syntax-e
                                                  _%hd4404444082%_)))
                                            (let ((_%lp-hd4404844092%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4404744088%_)))
                                                  (_%lp-tl4404944095%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4404744088%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4404844092%_)
                                                  (let ((_%e4405444098%_
                                                         (gx#syntax-e
                                                          _%lp-hd4404844092%_)))
                                                    (let ((_%hd4405544102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4405444098%_)))
                                                          (_%tl4405644105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4405444098%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4405644105%_)
                                                          (let ((_%e4405744108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4405644105%_)))
                    (let ((_%hd4405844112%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4405744108%_)))
                          (_%tl4405944115%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4405744108%_))))
                      (if (gx#stx-null? _%tl4405944115%_)
                          (_%loop4404644078%_
                           _%lp-tl4404944095%_
                           (cons _%hd4405844112%_ _%val4405044085%_)
                           (cons _%hd4405544102%_ _%key4405144086%_))
                          (_%g4403944065%_ _%g4404044069%_))))
                  (_%g4403944065%_ _%g4404044069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4403944065%_
                                                   _%g4404044069%_))))
                                          (let ((_%val4405244118%_
                                                 (reverse _%val4405044085%_))
                                                (_%key4405344120%_
                                                 (reverse _%key4405144086%_)))
                                            ((lambda (_%g4404144122%_
                                                      _%g4404244124%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g4391643994%_
                                     (cons 'size: (cons _%g4401444027%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g4404144122%_
                      _%g4404244124%_)
                     (foldr (lambda (_%g4414244146%_
                                     _%g4414344149%_
                                     _%g4414444151%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4414344149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4414244146%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4414444151%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g4404144122%_
                            _%g4404244124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4405244118%_
                                             _%key4405344120%_))))))
                            (_%loop4404644078%_ _%target4404344072%_ '() '()))
                          (_%g4403944065%_ _%g4404044069%_)))))
                (_%g4403944065%_ _%g4404044069%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4403844154%_
                                             (foldr (lambda (_%g4415744160%_
                                                             _%g4415844163%_)
                                                      (cons _%g4415744160%_
                                                            _%g4415844163%_))
                                                    '()
                                                    _%g4391543992%_))))
                                        _%g4401344024%_))))
                               (_%g4401144166%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4416944172%_
                                                 _%g4417044175%_)
                                          (cons _%g4416944172%_
                                                _%g4417044175%_))
                                        '()
                                        _%g4391543992%_)))))
                           _%entry4393143989%_
                           _%hd4392143958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4392643970%_
                                                   _%target4392343964%_
                                                   '()))
                                                (_%g4391343937%_
                                                 _%g4391443941%_)))))
                                      (_%g4391343937%_ _%g4391443941%_))))
                              (_%g4391343937%_ _%g4391443941%_))))
                      (_%g4391343937%_ _%g4391443941%_)))))
          (_%g4391244178%_ _%stx43910%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44184%_)
        (let* ((_%g4418744201%_
                (lambda (_%g4418844197%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4418844197%_)))
               (_%g4418644273%_
                (lambda (_%g4418844205%_)
                  (if (gx#stx-pair? _%g4418844205%_)
                      (let ((_%e4419044208%_ (gx#syntax-e _%g4418844205%_)))
                        (let ((_%hd4419144212%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4419044208%_)))
                              (_%tl4419244215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4419044208%_))))
                          (if (gx#stx-pair? _%tl4419244215%_)
                              (let ((_%e4419344218%_
                                     (gx#syntax-e _%tl4419244215%_)))
                                (let ((_%hd4419444222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4419344218%_)))
                                      (_%tl4419544225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4419344218%_))))
                                  (if (gx#stx-null? _%tl4419544225%_)
                                      ((lambda (_%g4418944228%_)
                                         (if (gx#stx-string? _%g4418944228%_)
                                             (let* ((_%g4424244250%_
                                                     (lambda (_%g4424344246%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4424344246%_)))
                                                    (_%g4424144269%_
                                                     (lambda (_%g4424344254%_)
                                                       ((lambda (_%g4424444257%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g4424444257%_ '())))
                _%g4424344254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4424144269%_
                                                (string->bytes
                                                 (gx#stx-e _%g4418944228%_))))
                                             (_%g4418744201%_
                                              _%g4418844205%_)))
                                       _%hd4419444222%_)
                                      (_%g4418744201%_ _%g4418844205%_))))
                              (_%g4418744201%_ _%g4418844205%_))))
                      (_%g4418744201%_ _%g4418844205%_)))))
          (_%g4418644273%_ _%stx44184%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44277%_)
        (let* ((_%g4428044294%_
                (lambda (_%g4428144290%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4428144290%_)))
               (_%g4427944335%_
                (lambda (_%g4428144298%_)
                  (if (gx#stx-pair? _%g4428144298%_)
                      (let ((_%e4428344301%_ (gx#syntax-e _%g4428144298%_)))
                        (let ((_%hd4428444305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4428344301%_)))
                              (_%tl4428544308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4428344301%_))))
                          (if (gx#stx-pair? _%tl4428544308%_)
                              (let ((_%e4428644311%_
                                     (gx#syntax-e _%tl4428544308%_)))
                                (let ((_%hd4428744315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4428644311%_)))
                                      (_%tl4428844318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4428644311%_))))
                                  (if (gx#stx-null? _%tl4428844318%_)
                                      ((lambda (_%g4428244321%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g4428244321%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4428744315%_)
                                      (_%g4428044294%_ _%g4428144298%_))))
                              (_%g4428044294%_ _%g4428144298%_))))
                      (_%g4428044294%_ _%g4428144298%_)))))
          (_%g4427944335%_ _%stx44277%_))))))
