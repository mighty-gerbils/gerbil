(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45094_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45097_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45098_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45099_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45100_|
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
      (lambda _%$args40427%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40427%_)))
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
      (lambda _%$args40423%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40423%_)))
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
      (lambda (_%stx40420%_)
        (if (gx#identifier? _%stx40420%_)
            (let ((__tmp45057 (gx#syntax-local-value _%stx40420%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45057))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40417%_)
        (if (gx#identifier? _%stx40417%_)
            (let ((__tmp45058 (gx#syntax-local-value _%stx40417%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45058))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40044%_)
        (let* ((_%__stx4458644587%_ _%stx40044%_)
               (_%g4005040113%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4458644587%_))))
          (let ((_%__kont4458944590%_
                 (lambda (_%g4005240394%_ _%g4005340396%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4005340396%_)
                    _%stx40044%_)))
                (_%__kont4459144592%_
                 (lambda (_%g4006640283%_ _%g4006740285%_ _%g4006840286%_)
                   (let* ((_%g4030840316%_
                           (lambda (_%g4030940312%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4030940312%_)))
                          (_%g4030740343%_
                           (lambda (_%g4030940320%_)
                             ((lambda (_%g4031040323%_)
                                (cons _%g4031040323%_
                                      (foldr (lambda (_%g4033440337%_
                                                      _%g4033540340%_)
                                               (cons _%g4033440337%_
                                                     _%g4033540340%_))
                                             (cons _%g4006640283%_ '())
                                             _%g4006740285%_)))
                              _%g4030940320%_))))
                     (_%g4030740343%_
                      (gx#stx-identifier
                       _%g4006840286%_
                       _%g4006840286%_
                       '"-set!")))))
                (_%__kont4459544596%_
                 (lambda (_%g4009040195%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4009040195%_)
                    _%stx40044%_)))
                (_%__kont4459744598%_
                 (lambda (_%g4009740150%_ _%g4009840152%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g4009840152%_ (cons _%g4009740150%_ '()))))))
            (let* ((_%__match4468544686%_
                    (lambda (_%e4009940120%_
                             _%hd4010040124%_
                             _%tl4010140127%_
                             _%e4010240130%_
                             _%hd4010340134%_
                             _%tl4010440137%_
                             _%e4010540140%_
                             _%hd4010640144%_
                             _%tl4010740147%_)
                      (let ((_%g4009740150%_ _%hd4010640144%_)
                            (_%g4009840152%_ _%hd4010340134%_))
                        (if (gx#identifier? _%g4009840152%_)
                            (_%__kont4459744598%_
                             _%g4009740150%_
                             _%g4009840152%_)
                            (let () (declare (not safe)) (_%g4005040113%_))))))
                   (_%__match4466544666%_
                    (lambda (_%e4009140175%_
                             _%hd4009240179%_
                             _%tl4009340182%_
                             _%e4009440185%_
                             _%hd4009540189%_
                             _%tl4009640192%_)
                      (let ((_%g4009040195%_ _%hd4009540189%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g4009040195%_)
                            (_%__kont4459544596%_ _%g4009040195%_)
                            (if (gx#stx-pair? _%tl4009640192%_)
                                (let ((_%e4010540140%_
                                       (gx#syntax-e _%tl4009640192%_)))
                                  (let ((_%tl4010740147%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4010540140%_)))
                                        (_%hd4010640144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4010540140%_))))
                                    (if (gx#stx-null? _%tl4010740147%_)
                                        (_%__match4468544686%_
                                         _%e4009140175%_
                                         _%hd4009240179%_
                                         _%tl4009340182%_
                                         _%e4009440185%_
                                         _%hd4009540189%_
                                         _%tl4009640192%_
                                         _%e4010540140%_
                                         _%hd4010640144%_
                                         _%tl4010740147%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4005040113%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4005040113%_)))))))
                   (_%__match4465344654%_
                    (lambda (_%e4006940215%_
                             _%hd4007040219%_
                             _%tl4007140222%_
                             _%e4007240225%_
                             _%hd4007340229%_
                             _%tl4007440232%_
                             _%e4007540235%_
                             _%hd4007640239%_
                             _%tl4007740242%_
                             _%__splice4459344594%_
                             _%target4007840245%_
                             _%tl4008040248%_)
                      (letrec ((_%loop4008140251%_
                                (lambda (_%hd4007940255%_ _%arg4008540258%_)
                                  (if (gx#stx-pair? _%hd4007940255%_)
                                      (let ((_%e4008240260%_
                                             (gx#syntax-e _%hd4007940255%_)))
                                        (let ((_%lp-tl4008440267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4008240260%_)))
                                              (_%lp-hd4008340264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4008240260%_))))
                                          (_%loop4008140251%_
                                           _%lp-tl4008440267%_
                                           (cons _%lp-hd4008340264%_
                                                 _%arg4008540258%_))))
                                      (let ((_%arg4008640270%_
                                             (reverse _%arg4008540258%_)))
                                        (if (gx#stx-pair? _%tl4007440232%_)
                                            (let ((_%e4008740273%_
                                                   (gx#syntax-e
                                                    _%tl4007440232%_)))
                                              (let ((_%tl4008940280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4008740273%_)))
                                                    (_%hd4008840277%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4008740273%_))))
                                                (if (gx#stx-null?
                                                     _%tl4008940280%_)
                                                    (let ((_%g4006640283%_
                                                           _%hd4008840277%_)
                                                          (_%g4006740285%_
                                                           _%arg4008640270%_)
                                                          (_%g4006840286%_
                                                           _%hd4007640239%_))
                                                      (if (gx#identifier?
                                                           _%g4006840286%_)
                                                          (_%__kont4459144592%_
                                                           _%g4006640283%_
                                                           _%g4006740285%_
                                                           _%g4006840286%_)
                                                          (_%__match4466544666%_
                                                           _%e4006940215%_
                                                           _%hd4007040219%_
                                                           _%tl4007140222%_
                                                           _%e4007240225%_
                                                           _%hd4007340229%_
                                                           _%tl4007440232%_)))
                                                    (_%__match4466544666%_
                                                     _%e4006940215%_
                                                     _%hd4007040219%_
                                                     _%tl4007140222%_
                                                     _%e4007240225%_
                                                     _%hd4007340229%_
                                                     _%tl4007440232%_))))
                                            (_%__match4466544666%_
                                             _%e4006940215%_
                                             _%hd4007040219%_
                                             _%tl4007140222%_
                                             _%e4007240225%_
                                             _%hd4007340229%_
                                             _%tl4007440232%_)))))))
                        (_%loop4008140251%_ _%target4007840245%_ '())))))
              (if (gx#stx-pair? _%__stx4458644587%_)
                  (let ((_%e4005440354%_ (gx#syntax-e _%__stx4458644587%_)))
                    (let ((_%tl4005640361%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4005440354%_)))
                          (_%hd4005540358%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4005440354%_))))
                      (if (gx#stx-pair? _%tl4005640361%_)
                          (let ((_%e4005740364%_
                                 (gx#syntax-e _%tl4005640361%_)))
                            (let ((_%tl4005940371%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4005740364%_)))
                                  (_%hd4005840368%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4005740364%_))))
                              (if (gx#stx-pair? _%hd4005840368%_)
                                  (let ((_%e4006040374%_
                                         (gx#syntax-e _%hd4005840368%_)))
                                    (let ((_%tl4006240381%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4006040374%_)))
                                          (_%hd4006140378%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4006040374%_))))
                                      (if (gx#stx-pair? _%tl4005940371%_)
                                          (let ((_%e4006340384%_
                                                 (gx#syntax-e
                                                  _%tl4005940371%_)))
                                            (let ((_%tl4006540391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4006340384%_)))
                                                  (_%hd4006440388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4006340384%_))))
                                              (if (gx#stx-null?
                                                   _%tl4006540391%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g4005240394%_
                                                             _%hd4006440388%_)
                                                            (_%g4005340396%_
                                                             _%hd4006140378%_))
                                                        (_%__kont4458944590%_
                                                         _%g4005240394%_
                                                         _%g4005340396%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4006240381%_)
                                                          (let ((_%__splice4459344594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4006240381%_ '0)))
                    (let ((_%tl4008040248%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4459344594%_ '1)))
                          (_%target4007840245%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4459344594%_ '0))))
                      (if (gx#stx-null? _%tl4008040248%_)
                          (_%__match4465344654%_
                           _%e4005440354%_
                           _%hd4005540358%_
                           _%tl4005640361%_
                           _%e4005740364%_
                           _%hd4005840368%_
                           _%tl4005940371%_
                           _%e4006040374%_
                           _%hd4006140378%_
                           _%tl4006240381%_
                           _%__splice4459344594%_
                           _%target4007840245%_
                           _%tl4008040248%_)
                          (_%__match4466544666%_
                           _%e4005440354%_
                           _%hd4005540358%_
                           _%tl4005640361%_
                           _%e4005740364%_
                           _%hd4005840368%_
                           _%tl4005940371%_))))
                  (_%__match4466544666%_
                   _%e4005440354%_
                   _%hd4005540358%_
                   _%tl4005640361%_
                   _%e4005740364%_
                   _%hd4005840368%_
                   _%tl4005940371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4006240381%_)
                                                      (let ((_%__splice4459344594%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4006240381%_
                                                              '0)))
                                                        (let ((_%tl4008040248%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4459344594%_ '1)))
                      (_%target4007840245%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4459344594%_ '0))))
                  (if (gx#stx-null? _%tl4008040248%_)
                      (_%__match4465344654%_
                       _%e4005440354%_
                       _%hd4005540358%_
                       _%tl4005640361%_
                       _%e4005740364%_
                       _%hd4005840368%_
                       _%tl4005940371%_
                       _%e4006040374%_
                       _%hd4006140378%_
                       _%tl4006240381%_
                       _%__splice4459344594%_
                       _%target4007840245%_
                       _%tl4008040248%_)
                      (_%__match4466544666%_
                       _%e4005440354%_
                       _%hd4005540358%_
                       _%tl4005640361%_
                       _%e4005740364%_
                       _%hd4005840368%_
                       _%tl4005940371%_))))
              (_%__match4466544666%_
               _%e4005440354%_
               _%hd4005540358%_
               _%tl4005640361%_
               _%e4005740364%_
               _%hd4005840368%_
               _%tl4005940371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4006240381%_)
                                              (let ((_%__splice4459344594%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4006240381%_
                                                      '0)))
                                                (let ((_%tl4008040248%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4459344594%_
                                                          '1)))
                                                      (_%target4007840245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4459344594%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4008040248%_)
                                                      (_%__match4465344654%_
                                                       _%e4005440354%_
                                                       _%hd4005540358%_
                                                       _%tl4005640361%_
                                                       _%e4005740364%_
                                                       _%hd4005840368%_
                                                       _%tl4005940371%_
                                                       _%e4006040374%_
                                                       _%hd4006140378%_
                                                       _%tl4006240381%_
                                                       _%__splice4459344594%_
                                                       _%target4007840245%_
                                                       _%tl4008040248%_)
                                                      (_%__match4466544666%_
                                                       _%e4005440354%_
                                                       _%hd4005540358%_
                                                       _%tl4005640361%_
                                                       _%e4005740364%_
                                                       _%hd4005840368%_
                                                       _%tl4005940371%_))))
                                              (_%__match4466544666%_
                                               _%e4005440354%_
                                               _%hd4005540358%_
                                               _%tl4005640361%_
                                               _%e4005740364%_
                                               _%hd4005840368%_
                                               _%tl4005940371%_)))))
                                  (_%__match4466544666%_
                                   _%e4005440354%_
                                   _%hd4005540358%_
                                   _%tl4005640361%_
                                   _%e4005740364%_
                                   _%hd4005840368%_
                                   _%tl4005940371%_))))
                          (let () (declare (not safe)) (_%g4005040113%_)))))
                  (let () (declare (not safe)) (_%g4005040113%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40432%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40432%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40435%_)
        (let* ((_%g4043840462%_
                (lambda (_%g4043940458%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4043940458%_)))
               (_%g4043740636%_
                (lambda (_%g4043940466%_)
                  (if (gx#stx-pair? _%g4043940466%_)
                      (let ((_%e4044240469%_ (gx#syntax-e _%g4043940466%_)))
                        (let ((_%hd4044340473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4044240469%_)))
                              (_%tl4044440476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4044240469%_))))
                          (if (gx#stx-pair/null? _%tl4044440476%_)
                              (if (let ((__tmp45059
                                         (gx#stx-length _%tl4044440476%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45059 '1))
                                  (let ((_g45060_
                                         (gx#syntax-split-splice
                                          _%tl4044440476%_
                                          '1)))
                                    (begin
                                      (let ((_g45061_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45060_)
                                                   (##values-length _g45060_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45061_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45061_)))
                                      (let ((_%target4044540479%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45060_ 0)))
                                            (_%tl4044740482%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45060_ 1))))
                                        (if (gx#stx-pair? _%tl4044740482%_)
                                            (let ((_%e4045440485%_
                                                   (gx#syntax-e
                                                    _%tl4044740482%_)))
                                              (let ((_%hd4045540489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4045440485%_)))
                                                    (_%tl4045640492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4045440485%_))))
                                                (if (gx#stx-null?
                                                     _%tl4045640492%_)
                                                    (letrec ((_%loop4044840495%_
                                                              (lambda (_%hd4044640499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4045240502%_)
                        (if (gx#stx-pair? _%hd4044640499%_)
                            (let ((_%e4044940504%_
                                   (gx#syntax-e _%hd4044640499%_)))
                              (let ((_%lp-hd4045040508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4044940504%_)))
                                    (_%lp-tl4045140511%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4044940504%_))))
                                (_%loop4044840495%_
                                 _%lp-tl4045140511%_
                                 (cons _%lp-hd4045040508%_
                                       _%tgt4045240502%_))))
                            (let ((_%tgt4045340514%_
                                   (reverse _%tgt4045240502%_)))
                              ((lambda (_%g4044040517%_ _%g4044140519%_)
                                 (let* ((_%g4053740554%_
                                         (lambda (_%g4053840550%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4053840550%_)))
                                        (_%g4053640624%_
                                         (lambda (_%g4053840558%_)
                                           (if (gx#stx-pair/null?
                                                _%g4053840558%_)
                                               (let ((_g45062_
                                                      (gx#syntax-split-splice
                                                       _%g4053840558%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45063_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45062_)
                        (##values-length _g45062_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45063_ 2)))
                 (error "Context expects 2 values" _g45063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4054040561%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45062_
                                                             0)))
                                                         (_%tl4054240564%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45062_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4054240564%_)
                                                         (letrec ((_%loop4054340567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4054140571%_ _%$e4054740574%_)
                             (if (gx#stx-pair? _%hd4054140571%_)
                                 (let ((_%e4054440576%_
                                        (gx#syntax-e _%hd4054140571%_)))
                                   (let ((_%lp-hd4054540580%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4054440576%_)))
                                         (_%lp-tl4054640583%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4054440576%_))))
                                     (_%loop4054340567%_
                                      _%lp-tl4054640583%_
                                      (cons _%lp-hd4054540580%_
                                            _%$e4054740574%_))))
                                 (let ((_%$e4054840586%_
                                        (reverse _%$e4054740574%_)))
                                   ((lambda (_%g4053940589%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4060440610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4060540613%_)
                               (cons _%g4060440610%_ _%g4060540613%_))
                             '()
                             _%g4053940589%_)
                      (cons _%g4044040517%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g4053940589%_
                                                     _%g4044140519%_)
                                                    (foldr (lambda (_%g4060640616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4060740619%_
                            _%g4060840621%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4060740619%_
                                       (cons _%g4060640616%_ '())))
                           _%g4060840621%_))
                   '()
                   _%g4053940589%_
                   _%g4044140519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4054840586%_))))))
                   (_%loop4054340567%_ _%target4054040561%_ '()))
                 (_%g4053740554%_ _%g4053840558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4053740554%_
                                                _%g4053840558%_)))))
                                   (_%g4053640624%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4062740630%_
                                                     _%g4062840633%_)
                                              (cons _%g4062740630%_
                                                    _%g4062840633%_))
                                            '()
                                            _%g4044140519%_)))))
                               _%hd4045540489%_
                               _%tgt4045340514%_))))))
              (_%loop4044840495%_ _%target4044540479%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4043840462%_
                                                     _%g4043940466%_))))
                                            (_%g4043840462%_
                                             _%g4043940466%_)))))
                                  (_%g4043840462%_ _%g4043940466%_))
                              (_%g4043840462%_ _%g4043940466%_))))
                      (_%g4043840462%_ _%g4043940466%_)))))
          (_%g4043740636%_ _%stx40435%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40642%_)
        (let* ((_%__stx4468844689%_ _%$stx40642%_)
               (_%g4064840736%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4468844689%_))))
          (let ((_%__kont4469144692%_
                 (lambda (_%g4065041076%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4109241095%_ _%g4109341098%_)
                                        (cons _%g4109241095%_ _%g4109341098%_))
                                      '()
                                      _%g4065041076%_)))))
                (_%__kont4469544696%_
                 (lambda (_%g4066640986%_ _%g4066740988%_ _%g4066840989%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4101241015%_
                                                           _%g4101341018%_)
                                                    (cons _%g4101241015%_
                                                          _%g4101341018%_))
                                                  '()
                                                  _%g4066640986%_)))
                               (cons _%g4066840989%_
                                     (cons _%g4066740988%_ '()))))))
                (_%__kont4469944700%_
                 (lambda (_%g4069340849%_
                          _%g4069440851%_
                          _%g4069540852%_
                          _%g4069640853%_
                          _%g4069740854%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4069740854%_
                                                       (cons (foldr (lambda (_%g4088440889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4088540892%_)
                              (cons _%g4088440889%_ _%g4088540892%_))
                            '()
                            _%g4069440851%_)
                     (foldr (lambda (_%g4088640895%_ _%g4088740898%_)
                              (cons _%g4088640895%_ _%g4088740898%_))
                            '()
                            _%g4069340849%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4069640853%_
                                     (cons _%g4069540852%_ '())))))))
            (let* ((_%__match4480944810%_
                    (lambda (_%e4069840743%_
                             _%hd4069940747%_
                             _%tl4070040750%_
                             _%e4070140753%_
                             _%hd4070240757%_
                             _%tl4070340760%_
                             _%e4070440763%_
                             _%hd4070540767%_
                             _%tl4070640770%_
                             _%e4070740773%_
                             _%hd4070840777%_
                             _%tl4070940780%_
                             _%e4071040783%_
                             _%hd4071140787%_
                             _%tl4071240790%_
                             _%__splice4470144702%_
                             _%target4071340793%_
                             _%tl4071540796%_)
                      (letrec ((_%loop4071640799%_
                                (lambda (_%hd4071440803%_ _%rest4072040806%_)
                                  (if (gx#stx-pair? _%hd4071440803%_)
                                      (let ((_%e4071740808%_
                                             (gx#syntax-e _%hd4071440803%_)))
                                        (let ((_%lp-tl4071940815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4071740808%_)))
                                              (_%lp-hd4071840812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4071740808%_))))
                                          (_%loop4071640799%_
                                           _%lp-tl4071940815%_
                                           (cons _%lp-hd4071840812%_
                                                 _%rest4072040806%_))))
                                      (let ((_%rest4072140818%_
                                             (reverse _%rest4072040806%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4070340760%_)
                                            (let ((_%__splice4470344704%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4070340760%_
                                                    '0)))
                                              (let ((_%tl4072440824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4470344704%_
                                                        '1)))
                                                    (_%target4072240821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4470344704%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4072440824%_)
                                                    (letrec ((_%loop4072540827%_
                                                              (lambda (_%hd4072340831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4072940834%_)
                        (if (gx#stx-pair? _%hd4072340831%_)
                            (let ((_%e4072640836%_
                                   (gx#syntax-e _%hd4072340831%_)))
                              (let ((_%lp-tl4072840843%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4072640836%_)))
                                    (_%lp-hd4072740840%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4072640836%_))))
                                (_%loop4072540827%_
                                 _%lp-tl4072840843%_
                                 (cons _%lp-hd4072740840%_
                                       _%body4072940834%_))))
                            (let ((_%body4073040846%_
                                   (reverse _%body4072940834%_)))
                              (_%__kont4469944700%_
                               _%body4073040846%_
                               _%rest4072140818%_
                               _%hd4071140787%_
                               _%hd4070840777%_
                               _%hd4069940747%_))))))
              (_%loop4072540827%_ _%target4072240821%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4064840736%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4064840736%_))))))))
                        (_%loop4071640799%_ _%target4071340793%_ '()))))
                   (_%__match4476944770%_
                    (lambda (_%e4066940908%_
                             _%hd4067040912%_
                             _%tl4067140915%_
                             _%e4067240918%_
                             _%hd4067340922%_
                             _%tl4067440925%_
                             _%e4067540928%_
                             _%hd4067640932%_
                             _%tl4067740935%_
                             _%e4067840938%_
                             _%hd4067940942%_
                             _%tl4068040945%_
                             _%e4068140948%_
                             _%hd4068240952%_
                             _%tl4068340955%_
                             _%__splice4469744698%_
                             _%target4068440958%_
                             _%tl4068640961%_)
                      (letrec ((_%loop4068740964%_
                                (lambda (_%hd4068540968%_ _%body4069140971%_)
                                  (if (gx#stx-pair? _%hd4068540968%_)
                                      (let ((_%e4068840973%_
                                             (gx#syntax-e _%hd4068540968%_)))
                                        (let ((_%lp-tl4069040980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4068840973%_)))
                                              (_%lp-hd4068940977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4068840973%_))))
                                          (_%loop4068740964%_
                                           _%lp-tl4069040980%_
                                           (cons _%lp-hd4068940977%_
                                                 _%body4069140971%_))))
                                      (let ((_%body4069240983%_
                                             (reverse _%body4069140971%_)))
                                        (_%__kont4469544696%_
                                         _%body4069240983%_
                                         _%hd4068240952%_
                                         _%hd4067940942%_))))))
                        (_%loop4068740964%_ _%target4068440958%_ '()))))
                   (_%__match4472744728%_
                    (lambda (_%e4065141028%_
                             _%hd4065241032%_
                             _%tl4065341035%_
                             _%e4065441038%_
                             _%hd4065541042%_
                             _%tl4065641045%_
                             _%__splice4469344694%_
                             _%target4065741048%_
                             _%tl4065941051%_)
                      (letrec ((_%loop4066041054%_
                                (lambda (_%hd4065841058%_ _%body4066441061%_)
                                  (if (gx#stx-pair? _%hd4065841058%_)
                                      (let ((_%e4066141063%_
                                             (gx#syntax-e _%hd4065841058%_)))
                                        (let ((_%lp-tl4066341070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4066141063%_)))
                                              (_%lp-hd4066241067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4066141063%_))))
                                          (_%loop4066041054%_
                                           _%lp-tl4066341070%_
                                           (cons _%lp-hd4066241067%_
                                                 _%body4066441061%_))))
                                      (let ((_%body4066541073%_
                                             (reverse _%body4066441061%_)))
                                        (_%__kont4469144692%_
                                         _%body4066541073%_))))))
                        (_%loop4066041054%_ _%target4065741048%_ '())))))
              (if (gx#stx-pair? _%__stx4468844689%_)
                  (let ((_%e4065141028%_ (gx#syntax-e _%__stx4468844689%_)))
                    (let ((_%tl4065341035%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4065141028%_)))
                          (_%hd4065241032%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4065141028%_))))
                      (if (gx#stx-pair? _%tl4065341035%_)
                          (let ((_%e4065441038%_
                                 (gx#syntax-e _%tl4065341035%_)))
                            (let ((_%tl4065641045%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4065441038%_)))
                                  (_%hd4065541042%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4065441038%_))))
                              (if (gx#stx-null? _%hd4065541042%_)
                                  (if (gx#stx-pair/null? _%tl4065641045%_)
                                      (let ((_%__splice4469344694%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4065641045%_
                                              '0)))
                                        (let ((_%tl4065941051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4469344694%_
                                                  '1)))
                                              (_%target4065741048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4469344694%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4065941051%_)
                                              (_%__match4472744728%_
                                               _%e4065141028%_
                                               _%hd4065241032%_
                                               _%tl4065341035%_
                                               _%e4065441038%_
                                               _%hd4065541042%_
                                               _%tl4065641045%_
                                               _%__splice4469344694%_
                                               _%target4065741048%_
                                               _%tl4065941051%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4064840736%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4064840736%_)))
                                  (if (gx#stx-pair? _%hd4065541042%_)
                                      (let ((_%e4067540928%_
                                             (gx#syntax-e _%hd4065541042%_)))
                                        (let ((_%tl4067740935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4067540928%_)))
                                              (_%hd4067640932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4067540928%_))))
                                          (if (gx#stx-pair? _%hd4067640932%_)
                                              (let ((_%e4067840938%_
                                                     (gx#syntax-e
                                                      _%hd4067640932%_)))
                                                (let ((_%tl4068040945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4067840938%_)))
                                                      (_%hd4067940942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4067840938%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4068040945%_)
                                                      (let ((_%e4068140948%_
                                                             (gx#syntax-e
                                                              _%tl4068040945%_)))
                                                        (let ((_%tl4068340955%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4068140948%_)))
                      (_%hd4068240952%_
                       (let () (declare (not safe)) (##car _%e4068140948%_))))
                  (if (gx#stx-null? _%tl4068340955%_)
                      (if (gx#stx-null? _%tl4067740935%_)
                          (if (gx#stx-pair/null? _%tl4065641045%_)
                              (let ((_%__splice4469744698%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4065641045%_
                                      '0)))
                                (let ((_%tl4068640961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4469744698%_
                                          '1)))
                                      (_%target4068440958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4469744698%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4068640961%_)
                                      (_%__match4476944770%_
                                       _%e4065141028%_
                                       _%hd4065241032%_
                                       _%tl4065341035%_
                                       _%e4065441038%_
                                       _%hd4065541042%_
                                       _%tl4065641045%_
                                       _%e4067540928%_
                                       _%hd4067640932%_
                                       _%tl4067740935%_
                                       _%e4067840938%_
                                       _%hd4067940942%_
                                       _%tl4068040945%_
                                       _%e4068140948%_
                                       _%hd4068240952%_
                                       _%tl4068340955%_
                                       _%__splice4469744698%_
                                       _%target4068440958%_
                                       _%tl4068640961%_)
                                      (if (gx#stx-pair/null? _%tl4067740935%_)
                                          (let ((_%__splice4470144702%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4067740935%_
                                                  '0)))
                                            (let ((_%tl4071540796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4470144702%_
                                                      '1)))
                                                  (_%target4071340793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4470144702%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4071540796%_)
                                                  (_%__match4480944810%_
                                                   _%e4065141028%_
                                                   _%hd4065241032%_
                                                   _%tl4065341035%_
                                                   _%e4065441038%_
                                                   _%hd4065541042%_
                                                   _%tl4065641045%_
                                                   _%e4067540928%_
                                                   _%hd4067640932%_
                                                   _%tl4067740935%_
                                                   _%e4067840938%_
                                                   _%hd4067940942%_
                                                   _%tl4068040945%_
                                                   _%e4068140948%_
                                                   _%hd4068240952%_
                                                   _%tl4068340955%_
                                                   _%__splice4470144702%_
                                                   _%target4071340793%_
                                                   _%tl4071540796%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4064840736%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4064840736%_))))))
                              (if (gx#stx-pair/null? _%tl4067740935%_)
                                  (let ((_%__splice4470144702%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4067740935%_
                                          '0)))
                                    (let ((_%tl4071540796%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4470144702%_
                                              '1)))
                                          (_%target4071340793%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4470144702%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4071540796%_)
                                          (_%__match4480944810%_
                                           _%e4065141028%_
                                           _%hd4065241032%_
                                           _%tl4065341035%_
                                           _%e4065441038%_
                                           _%hd4065541042%_
                                           _%tl4065641045%_
                                           _%e4067540928%_
                                           _%hd4067640932%_
                                           _%tl4067740935%_
                                           _%e4067840938%_
                                           _%hd4067940942%_
                                           _%tl4068040945%_
                                           _%e4068140948%_
                                           _%hd4068240952%_
                                           _%tl4068340955%_
                                           _%__splice4470144702%_
                                           _%target4071340793%_
                                           _%tl4071540796%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4064840736%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4064840736%_))))
                          (if (gx#stx-pair/null? _%tl4067740935%_)
                              (let ((_%__splice4470144702%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4067740935%_
                                      '0)))
                                (let ((_%tl4071540796%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4470144702%_
                                          '1)))
                                      (_%target4071340793%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4470144702%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4071540796%_)
                                      (_%__match4480944810%_
                                       _%e4065141028%_
                                       _%hd4065241032%_
                                       _%tl4065341035%_
                                       _%e4065441038%_
                                       _%hd4065541042%_
                                       _%tl4065641045%_
                                       _%e4067540928%_
                                       _%hd4067640932%_
                                       _%tl4067740935%_
                                       _%e4067840938%_
                                       _%hd4067940942%_
                                       _%tl4068040945%_
                                       _%e4068140948%_
                                       _%hd4068240952%_
                                       _%tl4068340955%_
                                       _%__splice4470144702%_
                                       _%target4071340793%_
                                       _%tl4071540796%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4064840736%_)))))
                              (let () (declare (not safe)) (_%g4064840736%_))))
                      (let () (declare (not safe)) (_%g4064840736%_)))))
              (let () (declare (not safe)) (_%g4064840736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4064840736%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4064840736%_))))))
                          (let () (declare (not safe)) (_%g4064840736%_)))))
                  (let () (declare (not safe)) (_%g4064840736%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41109%_)
        (let* ((_%g4111341137%_
                (lambda (_%g4111441133%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4111441133%_)))
               (_%g4111241220%_
                (lambda (_%g4111441141%_)
                  (if (gx#stx-pair? _%g4111441141%_)
                      (let ((_%e4111741144%_ (gx#syntax-e _%g4111441141%_)))
                        (let ((_%hd4111841148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4111741144%_)))
                              (_%tl4111941151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4111741144%_))))
                          (if (gx#stx-pair? _%tl4111941151%_)
                              (let ((_%e4112041154%_
                                     (gx#syntax-e _%tl4111941151%_)))
                                (let ((_%hd4112141158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4112041154%_)))
                                      (_%tl4112241161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4112041154%_))))
                                  (if (gx#stx-pair/null? _%tl4112241161%_)
                                      (let ((_g45064_
                                             (gx#syntax-split-splice
                                              _%tl4112241161%_
                                              '0)))
                                        (begin
                                          (let ((_g45065_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45064_)
                                                       (##values-length
                                                        _g45064_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45065_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45065_)))
                                          (let ((_%target4112341164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45064_ 0)))
                                                (_%tl4112541167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45064_ 1))))
                                            (if (gx#stx-null? _%tl4112541167%_)
                                                (letrec ((_%loop4112641170%_
                                                          (lambda (_%hd4112441174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4113041177%_)
                    (if (gx#stx-pair? _%hd4112441174%_)
                        (let ((_%e4112741179%_ (gx#syntax-e _%hd4112441174%_)))
                          (let ((_%lp-hd4112841183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4112741179%_)))
                                (_%lp-tl4112941186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4112741179%_))))
                            (_%loop4112641170%_
                             _%lp-tl4112941186%_
                             (cons _%lp-hd4112841183%_ _%body4113041177%_))))
                        (let ((_%body4113141189%_
                               (reverse _%body4113041177%_)))
                          ((lambda (_%g4111541192%_ _%g4111641194%_)
                             (if (gx#identifier? _%g4111641194%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4111641194%_
                                                               '())
                                                         (foldr (lambda (_%g4121141214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4121241217%_)
                          (cons _%g4121141214%_ _%g4121241217%_))
                        '()
                        _%g4111541192%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4111341137%_ _%g4111441141%_)))
                           _%body4113141189%_
                           _%hd4112141158%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4112641170%_
                                                   _%target4112341164%_
                                                   '()))
                                                (_%g4111341137%_
                                                 _%g4111441141%_)))))
                                      (_%g4111341137%_ _%g4111441141%_))))
                              (_%g4111341137%_ _%g4111441141%_))))
                      (_%g4111341137%_ _%g4111441141%_)))))
          (_%g4111241220%_ _%$stx41109%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41225%_)
        (let* ((_%g4122941257%_
                (lambda (_%g4123041253%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4123041253%_)))
               (_%g4122841354%_
                (lambda (_%g4123041261%_)
                  (if (gx#stx-pair? _%g4123041261%_)
                      (let ((_%e4123441264%_ (gx#syntax-e _%g4123041261%_)))
                        (let ((_%hd4123541268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4123441264%_)))
                              (_%tl4123641271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4123441264%_))))
                          (if (gx#stx-pair? _%tl4123641271%_)
                              (let ((_%e4123741274%_
                                     (gx#syntax-e _%tl4123641271%_)))
                                (let ((_%hd4123841278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4123741274%_)))
                                      (_%tl4123941281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4123741274%_))))
                                  (if (gx#stx-pair? _%tl4123941281%_)
                                      (let ((_%e4124041284%_
                                             (gx#syntax-e _%tl4123941281%_)))
                                        (let ((_%hd4124141288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4124041284%_)))
                                              (_%tl4124241291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4124041284%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4124241291%_)
                                              (let ((_g45066_
                                                     (gx#syntax-split-splice
                                                      _%tl4124241291%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45067_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45066_)
                                                               (##values-length
                                                                _g45066_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45067_ 2)))
                (error "Context expects 2 values" _g45067_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4124341294%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45066_
                                                            0)))
                                                        (_%tl4124541297%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45066_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4124541297%_)
                                                        (letrec ((_%loop4124641300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4124441304%_ _%rest4125041307%_)
                            (if (gx#stx-pair? _%hd4124441304%_)
                                (let ((_%e4124741309%_
                                       (gx#syntax-e _%hd4124441304%_)))
                                  (let ((_%lp-hd4124841313%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4124741309%_)))
                                        (_%lp-tl4124941316%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4124741309%_))))
                                    (_%loop4124641300%_
                                     _%lp-tl4124941316%_
                                     (cons _%lp-hd4124841313%_
                                           _%rest4125041307%_))))
                                (let ((_%rest4125141319%_
                                       (reverse _%rest4125041307%_)))
                                  ((lambda (_%g4123141322%_
                                            _%g4123241324%_
                                            _%g4123341325%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g4123341325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4123241324%_
                                 (foldr (lambda (_%g4134541348%_
                                                 _%g4134641351%_)
                                          (cons _%g4134541348%_
                                                _%g4134641351%_))
                                        '()
                                        _%g4123141322%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4125141319%_
                                   _%hd4124141288%_
                                   _%hd4123841278%_))))))
                  (_%loop4124641300%_ _%target4124341294%_ '()))
                (_%g4122941257%_ _%g4123041261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4122941257%_
                                               _%g4123041261%_))))
                                      (_%g4122941257%_ _%g4123041261%_))))
                              (_%g4122941257%_ _%g4123041261%_))))
                      (_%g4122941257%_ _%g4123041261%_)))))
          (_%g4122841354%_ _%$stx41225%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41359%_)
        (let* ((_%g4136341434%_
                (lambda (_%g4136441430%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4136441430%_)))
               (_%g4136241711%_
                (lambda (_%g4136441438%_)
                  (if (gx#stx-pair? _%g4136441438%_)
                      (let ((_%e4137141441%_ (gx#syntax-e _%g4136441438%_)))
                        (let ((_%hd4137241445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4137141441%_)))
                              (_%tl4137341448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4137141441%_))))
                          (if (gx#stx-pair? _%tl4137341448%_)
                              (let ((_%e4137441451%_
                                     (gx#syntax-e _%tl4137341448%_)))
                                (let ((_%hd4137541455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4137441451%_)))
                                      (_%tl4137641458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4137441451%_))))
                                  (if (gx#stx-pair/null? _%hd4137541455%_)
                                      (let ((_g45068_
                                             (gx#syntax-split-splice
                                              _%hd4137541455%_
                                              '0)))
                                        (begin
                                          (let ((_g45069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45068_)
                                                       (##values-length
                                                        _g45068_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45069_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45069_)))
                                          (let ((_%target4137741461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45068_ 0)))
                                                (_%tl4137941464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45068_ 1))))
                                            (if (gx#stx-null? _%tl4137941464%_)
                                                (letrec ((_%loop4138041467%_
                                                          (lambda (_%hd4137841471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4138441474%_
                           _%init4138541475%_
                           _%var4138641476%_)
                    (if (gx#stx-pair? _%hd4137841471%_)
                        (let ((_%e4138141478%_ (gx#syntax-e _%hd4137841471%_)))
                          (let ((_%lp-hd4138241482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4138141478%_)))
                                (_%lp-tl4138341485%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4138141478%_))))
                            (if (gx#stx-pair? _%lp-hd4138241482%_)
                                (let ((_%e4139041488%_
                                       (gx#syntax-e _%lp-hd4138241482%_)))
                                  (let ((_%hd4139141492%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4139041488%_)))
                                        (_%tl4139241495%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4139041488%_))))
                                    (if (gx#stx-pair? _%tl4139241495%_)
                                        (let ((_%e4139341498%_
                                               (gx#syntax-e _%tl4139241495%_)))
                                          (let ((_%hd4139441502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4139341498%_)))
                                                (_%tl4139541505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4139341498%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4139541505%_)
                                                (let ((_g45070_
                                                       (gx#syntax-split-splice
                                                        _%tl4139541505%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45070_)
                         (##values-length _g45070_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45071_ 2)))
                  (error "Context expects 2 values" _g45071_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4139641508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45070_
                                                              0)))
                                                          (_%tl4139841511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45070_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4139841511%_)
                                                          (letrec ((_%loop4139941514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4139741518%_ _%step4140341521%_)
                              (if (gx#stx-pair? _%hd4139741518%_)
                                  (let ((_%e4140041523%_
                                         (gx#syntax-e _%hd4139741518%_)))
                                    (let ((_%lp-hd4140141527%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4140041523%_)))
                                          (_%lp-tl4140241530%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4140041523%_))))
                                      (_%loop4139941514%_
                                       _%lp-tl4140241530%_
                                       (cons _%lp-hd4140141527%_
                                             _%step4140341521%_))))
                                  (let ((_%step4140441533%_
                                         (reverse _%step4140341521%_)))
                                    (_%loop4138041467%_
                                     _%lp-tl4138341485%_
                                     (cons _%step4140441533%_
                                           _%step4138441474%_)
                                     (cons _%hd4139441502%_ _%init4138541475%_)
                                     (cons _%hd4139141492%_
                                           _%var4138641476%_)))))))
                    (_%loop4139941514%_ _%target4139641508%_ '()))
                  (_%g4136341434%_ _%g4136441438%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4136341434%_
                                                 _%g4136441438%_))))
                                        (_%g4136341434%_ _%g4136441438%_))))
                                (_%g4136341434%_ _%g4136441438%_))))
                        (let ((_%step4138741536%_ (reverse _%step4138441474%_))
                              (_%init4138841538%_ (reverse _%init4138541475%_))
                              (_%var4138941539%_ (reverse _%var4138641476%_)))
                          (if (gx#stx-pair? _%tl4137641458%_)
                              (let ((_%e4140541541%_
                                     (gx#syntax-e _%tl4137641458%_)))
                                (let ((_%hd4140641545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4140541541%_)))
                                      (_%tl4140741548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4140541541%_))))
                                  (if (gx#stx-pair? _%hd4140641545%_)
                                      (let ((_%e4140841551%_
                                             (gx#syntax-e _%hd4140641545%_)))
                                        (let ((_%hd4140941555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4140841551%_)))
                                              (_%tl4141041558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4140841551%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4141041558%_)
                                              (let ((_g45072_
                                                     (gx#syntax-split-splice
                                                      _%tl4141041558%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45073_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45072_)
                                                               (##values-length
                                                                _g45072_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45073_ 2)))
                (error "Context expects 2 values" _g45073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4141141561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45072_
                                                            0)))
                                                        (_%tl4141341564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45072_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4141341564%_)
                                                        (letrec ((_%loop4141441567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4141241571%_ _%fini4141841574%_)
                            (if (gx#stx-pair? _%hd4141241571%_)
                                (let ((_%e4141541576%_
                                       (gx#syntax-e _%hd4141241571%_)))
                                  (let ((_%lp-hd4141641580%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4141541576%_)))
                                        (_%lp-tl4141741583%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4141541576%_))))
                                    (_%loop4141441567%_
                                     _%lp-tl4141741583%_
                                     (cons _%lp-hd4141641580%_
                                           _%fini4141841574%_))))
                                (let ((_%fini4141941586%_
                                       (reverse _%fini4141841574%_)))
                                  (if (gx#stx-pair/null? _%tl4140741548%_)
                                      (let ((_g45074_
                                             (gx#syntax-split-splice
                                              _%tl4140741548%_
                                              '0)))
                                        (begin
                                          (let ((_g45075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45074_)
                                                       (##values-length
                                                        _g45074_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45075_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45075_)))
                                          (let ((_%target4142041589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45074_ 0)))
                                                (_%tl4142241592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45074_ 1))))
                                            (if (gx#stx-null? _%tl4142241592%_)
                                                (letrec ((_%loop4142341595%_
                                                          (lambda (_%hd4142141599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4142741602%_)
                    (if (gx#stx-pair? _%hd4142141599%_)
                        (let ((_%e4142441604%_ (gx#syntax-e _%hd4142141599%_)))
                          (let ((_%lp-hd4142541608%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4142441604%_)))
                                (_%lp-tl4142641611%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4142441604%_))))
                            (_%loop4142341595%_
                             _%lp-tl4142641611%_
                             (cons _%lp-hd4142541608%_ _%body4142741602%_))))
                        (let ((_%body4142841614%_
                               (reverse _%body4142741602%_)))
                          ((lambda (_%g4136541617%_
                                    _%g4136641619%_
                                    _%g4136741620%_
                                    _%g4136841621%_
                                    _%g4136941622%_
                                    _%g4137041623%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4165641659%_
                                                  _%g4165741662%_)
                                           (cons _%g4165641659%_
                                                 _%g4165741662%_))
                                         '()
                                         _%g4137041623%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4136941622%_
                                                      _%g4137041623%_)
                                                     (foldr (lambda (_%g4166441677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4166541680%_
                             _%g4166641682%_)
                      (cons (cons _%g4166541680%_ (cons _%g4166441677%_ '()))
                            _%g4166641682%_))
                    '()
                    _%g4136941622%_
                    _%g4137041623%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g4136741620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4166741685%_
                                                               _%g4166841688%_)
                                                        (cons _%g4166741685%_
                                                              _%g4166841688%_))
                                                      '()
                                                      _%g4136641619%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4166941691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4167041694%_)
                      (cons _%g4166941691%_ _%g4167041694%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g4136841621%_
                                   _%g4137041623%_)
                                  (foldr (lambda (_%g4167141697%_
                                                  _%g4167241700%_
                                                  _%g4167341702%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4167241700%_
                                                             (foldr (lambda (_%g4167441705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4167541708%_)
                              (cons _%g4167441705%_ _%g4167541708%_))
                            '()
                            _%g4167141697%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4167341702%_))
                                         '()
                                         _%g4136841621%_
                                         _%g4137041623%_)))
                          '())
                    _%g4136541617%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4136341434%_ _%g4136441438%_)))
                           _%body4142841614%_
                           _%fini4141941586%_
                           _%hd4140941555%_
                           _%step4138741536%_
                           _%init4138841538%_
                           _%var4138941539%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4142341595%_
                                                   _%target4142041589%_
                                                   '()))
                                                (_%g4136341434%_
                                                 _%g4136441438%_)))))
                                      (_%g4136341434%_ _%g4136441438%_)))))))
                  (_%loop4141441567%_ _%target4141141561%_ '()))
                (_%g4136341434%_ _%g4136441438%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4136341434%_
                                               _%g4136441438%_))))
                                      (_%g4136341434%_ _%g4136441438%_))))
                              (_%g4136341434%_ _%g4136441438%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4138041467%_
                                                   _%target4137741461%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4136341434%_
                                                 _%g4136441438%_)))))
                                      (_%g4136341434%_ _%g4136441438%_))))
                              (_%g4136341434%_ _%g4136441438%_))))
                      (_%g4136341434%_ _%g4136441438%_)))))
          (_%g4136241711%_ _%$stx41359%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41719%_)
        (let* ((_%g4172341794%_
                (lambda (_%g4172441790%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4172441790%_)))
               (_%g4172242071%_
                (lambda (_%g4172441798%_)
                  (if (gx#stx-pair? _%g4172441798%_)
                      (let ((_%e4173141801%_ (gx#syntax-e _%g4172441798%_)))
                        (let ((_%hd4173241805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4173141801%_)))
                              (_%tl4173341808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4173141801%_))))
                          (if (gx#stx-pair? _%tl4173341808%_)
                              (let ((_%e4173441811%_
                                     (gx#syntax-e _%tl4173341808%_)))
                                (let ((_%hd4173541815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4173441811%_)))
                                      (_%tl4173641818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4173441811%_))))
                                  (if (gx#stx-pair/null? _%hd4173541815%_)
                                      (let ((_g45076_
                                             (gx#syntax-split-splice
                                              _%hd4173541815%_
                                              '0)))
                                        (begin
                                          (let ((_g45077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45076_)
                                                       (##values-length
                                                        _g45076_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45077_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45077_)))
                                          (let ((_%target4173741821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45076_ 0)))
                                                (_%tl4173941824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45076_ 1))))
                                            (if (gx#stx-null? _%tl4173941824%_)
                                                (letrec ((_%loop4174041827%_
                                                          (lambda (_%hd4173841831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4174441834%_
                           _%init4174541835%_
                           _%var4174641836%_)
                    (if (gx#stx-pair? _%hd4173841831%_)
                        (let ((_%e4174141838%_ (gx#syntax-e _%hd4173841831%_)))
                          (let ((_%lp-hd4174241842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4174141838%_)))
                                (_%lp-tl4174341845%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4174141838%_))))
                            (if (gx#stx-pair? _%lp-hd4174241842%_)
                                (let ((_%e4175041848%_
                                       (gx#syntax-e _%lp-hd4174241842%_)))
                                  (let ((_%hd4175141852%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4175041848%_)))
                                        (_%tl4175241855%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4175041848%_))))
                                    (if (gx#stx-pair? _%tl4175241855%_)
                                        (let ((_%e4175341858%_
                                               (gx#syntax-e _%tl4175241855%_)))
                                          (let ((_%hd4175441862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4175341858%_)))
                                                (_%tl4175541865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4175341858%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4175541865%_)
                                                (let ((_g45078_
                                                       (gx#syntax-split-splice
                                                        _%tl4175541865%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45078_)
                         (##values-length _g45078_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45079_ 2)))
                  (error "Context expects 2 values" _g45079_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4175641868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45078_
                                                              0)))
                                                          (_%tl4175841871%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45078_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4175841871%_)
                                                          (letrec ((_%loop4175941874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4175741878%_ _%step4176341881%_)
                              (if (gx#stx-pair? _%hd4175741878%_)
                                  (let ((_%e4176041883%_
                                         (gx#syntax-e _%hd4175741878%_)))
                                    (let ((_%lp-hd4176141887%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4176041883%_)))
                                          (_%lp-tl4176241890%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4176041883%_))))
                                      (_%loop4175941874%_
                                       _%lp-tl4176241890%_
                                       (cons _%lp-hd4176141887%_
                                             _%step4176341881%_))))
                                  (let ((_%step4176441893%_
                                         (reverse _%step4176341881%_)))
                                    (_%loop4174041827%_
                                     _%lp-tl4174341845%_
                                     (cons _%step4176441893%_
                                           _%step4174441834%_)
                                     (cons _%hd4175441862%_ _%init4174541835%_)
                                     (cons _%hd4175141852%_
                                           _%var4174641836%_)))))))
                    (_%loop4175941874%_ _%target4175641868%_ '()))
                  (_%g4172341794%_ _%g4172441798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4172341794%_
                                                 _%g4172441798%_))))
                                        (_%g4172341794%_ _%g4172441798%_))))
                                (_%g4172341794%_ _%g4172441798%_))))
                        (let ((_%step4174741896%_ (reverse _%step4174441834%_))
                              (_%init4174841898%_ (reverse _%init4174541835%_))
                              (_%var4174941899%_ (reverse _%var4174641836%_)))
                          (if (gx#stx-pair? _%tl4173641818%_)
                              (let ((_%e4176541901%_
                                     (gx#syntax-e _%tl4173641818%_)))
                                (let ((_%hd4176641905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4176541901%_)))
                                      (_%tl4176741908%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4176541901%_))))
                                  (if (gx#stx-pair? _%hd4176641905%_)
                                      (let ((_%e4176841911%_
                                             (gx#syntax-e _%hd4176641905%_)))
                                        (let ((_%hd4176941915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4176841911%_)))
                                              (_%tl4177041918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4176841911%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4177041918%_)
                                              (let ((_g45080_
                                                     (gx#syntax-split-splice
                                                      _%tl4177041918%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45081_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45080_)
                                                               (##values-length
                                                                _g45080_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45081_ 2)))
                (error "Context expects 2 values" _g45081_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4177141921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45080_
                                                            0)))
                                                        (_%tl4177341924%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45080_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4177341924%_)
                                                        (letrec ((_%loop4177441927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4177241931%_ _%fini4177841934%_)
                            (if (gx#stx-pair? _%hd4177241931%_)
                                (let ((_%e4177541936%_
                                       (gx#syntax-e _%hd4177241931%_)))
                                  (let ((_%lp-hd4177641940%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4177541936%_)))
                                        (_%lp-tl4177741943%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4177541936%_))))
                                    (_%loop4177441927%_
                                     _%lp-tl4177741943%_
                                     (cons _%lp-hd4177641940%_
                                           _%fini4177841934%_))))
                                (let ((_%fini4177941946%_
                                       (reverse _%fini4177841934%_)))
                                  (if (gx#stx-pair/null? _%tl4176741908%_)
                                      (let ((_g45082_
                                             (gx#syntax-split-splice
                                              _%tl4176741908%_
                                              '0)))
                                        (begin
                                          (let ((_g45083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45082_)
                                                       (##values-length
                                                        _g45082_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45083_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45083_)))
                                          (let ((_%target4178041949%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45082_ 0)))
                                                (_%tl4178241952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45082_ 1))))
                                            (if (gx#stx-null? _%tl4178241952%_)
                                                (letrec ((_%loop4178341955%_
                                                          (lambda (_%hd4178141959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4178741962%_)
                    (if (gx#stx-pair? _%hd4178141959%_)
                        (let ((_%e4178441964%_ (gx#syntax-e _%hd4178141959%_)))
                          (let ((_%lp-hd4178541968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4178441964%_)))
                                (_%lp-tl4178641971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4178441964%_))))
                            (_%loop4178341955%_
                             _%lp-tl4178641971%_
                             (cons _%lp-hd4178541968%_ _%body4178741962%_))))
                        (let ((_%body4178841974%_
                               (reverse _%body4178741962%_)))
                          ((lambda (_%g4172541977%_
                                    _%g4172641979%_
                                    _%g4172741980%_
                                    _%g4172841981%_
                                    _%g4172941982%_
                                    _%g4173041983%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4201642019%_
                                                  _%g4201742022%_)
                                           (cons _%g4201642019%_
                                                 _%g4201742022%_))
                                         '()
                                         _%g4173041983%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4172941982%_
                                                      _%g4173041983%_)
                                                     (foldr (lambda (_%g4202442037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4202542040%_
                             _%g4202642042%_)
                      (cons (cons _%g4202542040%_ (cons _%g4202442037%_ '()))
                            _%g4202642042%_))
                    '()
                    _%g4172941982%_
                    _%g4173041983%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4202742045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4202842048%_)
                    (cons _%g4202742045%_ _%g4202842048%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g4172741980%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g4172841981%_
                                                   _%g4173041983%_)
                                                  (foldr (lambda (_%g4202942051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4203042054%_
                          _%g4203142056%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4203042054%_
                                     (foldr (lambda (_%g4203242059%_
                                                     _%g4203342062%_)
                                              (cons _%g4203242059%_
                                                    _%g4203342062%_))
                                            '()
                                            _%g4202942051%_)))
                         _%g4203142056%_))
                 '()
                 _%g4172841981%_
                 _%g4173041983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4203442065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4203542068%_)
                             (cons _%g4203442065%_ _%g4203542068%_))
                           '()
                           _%g4172641979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g4172541977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4172341794%_ _%g4172441798%_)))
                           _%body4178841974%_
                           _%fini4177941946%_
                           _%hd4176941915%_
                           _%step4174741896%_
                           _%init4174841898%_
                           _%var4174941899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4178341955%_
                                                   _%target4178041949%_
                                                   '()))
                                                (_%g4172341794%_
                                                 _%g4172441798%_)))))
                                      (_%g4172341794%_ _%g4172441798%_)))))))
                  (_%loop4177441927%_ _%target4177141921%_ '()))
                (_%g4172341794%_ _%g4172441798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4172341794%_
                                               _%g4172441798%_))))
                                      (_%g4172341794%_ _%g4172441798%_))))
                              (_%g4172341794%_ _%g4172441798%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4174041827%_
                                                   _%target4173741821%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4172341794%_
                                                 _%g4172441798%_)))))
                                      (_%g4172341794%_ _%g4172441798%_))))
                              (_%g4172341794%_ _%g4172441798%_))))
                      (_%g4172341794%_ _%g4172441798%_)))))
          (_%g4172242071%_ _%$stx41719%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42079%_)
        (let* ((_%g4208342107%_
                (lambda (_%g4208442103%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4208442103%_)))
               (_%g4208242190%_
                (lambda (_%g4208442111%_)
                  (if (gx#stx-pair? _%g4208442111%_)
                      (let ((_%e4208742114%_ (gx#syntax-e _%g4208442111%_)))
                        (let ((_%hd4208842118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4208742114%_)))
                              (_%tl4208942121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4208742114%_))))
                          (if (gx#stx-pair? _%tl4208942121%_)
                              (let ((_%e4209042124%_
                                     (gx#syntax-e _%tl4208942121%_)))
                                (let ((_%hd4209142128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4209042124%_)))
                                      (_%tl4209242131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4209042124%_))))
                                  (if (gx#stx-pair/null? _%tl4209242131%_)
                                      (let ((_g45084_
                                             (gx#syntax-split-splice
                                              _%tl4209242131%_
                                              '0)))
                                        (begin
                                          (let ((_g45085_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45084_)
                                                       (##values-length
                                                        _g45084_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45085_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45085_)))
                                          (let ((_%target4209342134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45084_ 0)))
                                                (_%tl4209542137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45084_ 1))))
                                            (if (gx#stx-null? _%tl4209542137%_)
                                                (letrec ((_%loop4209642140%_
                                                          (lambda (_%hd4209442144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4210042147%_)
                    (if (gx#stx-pair? _%hd4209442144%_)
                        (let ((_%e4209742149%_ (gx#syntax-e _%hd4209442144%_)))
                          (let ((_%lp-hd4209842153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4209742149%_)))
                                (_%lp-tl4209942156%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4209742149%_))))
                            (_%loop4209642140%_
                             _%lp-tl4209942156%_
                             (cons _%lp-hd4209842153%_ _%body4210042147%_))))
                        (let ((_%body4210142159%_
                               (reverse _%body4210042147%_)))
                          ((lambda (_%g4208542162%_ _%g4208642164%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g4208642164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4218142184%_ _%g4218242187%_)
                                  (cons _%g4218142184%_ _%g4218242187%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4208542162%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4210142159%_
                           _%hd4209142128%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4209642140%_
                                                   _%target4209342134%_
                                                   '()))
                                                (_%g4208342107%_
                                                 _%g4208442111%_)))))
                                      (_%g4208342107%_ _%g4208442111%_))))
                              (_%g4208342107%_ _%g4208442111%_))))
                      (_%g4208342107%_ _%g4208442111%_)))))
          (_%g4208242190%_ _%$stx42079%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42195%_)
        (let* ((_%g4219942223%_
                (lambda (_%g4220042219%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4220042219%_)))
               (_%g4219842306%_
                (lambda (_%g4220042227%_)
                  (if (gx#stx-pair? _%g4220042227%_)
                      (let ((_%e4220342230%_ (gx#syntax-e _%g4220042227%_)))
                        (let ((_%hd4220442234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4220342230%_)))
                              (_%tl4220542237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4220342230%_))))
                          (if (gx#stx-pair? _%tl4220542237%_)
                              (let ((_%e4220642240%_
                                     (gx#syntax-e _%tl4220542237%_)))
                                (let ((_%hd4220742244%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4220642240%_)))
                                      (_%tl4220842247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4220642240%_))))
                                  (if (gx#stx-pair/null? _%tl4220842247%_)
                                      (let ((_g45086_
                                             (gx#syntax-split-splice
                                              _%tl4220842247%_
                                              '0)))
                                        (begin
                                          (let ((_g45087_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45086_)
                                                       (##values-length
                                                        _g45086_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45087_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45087_)))
                                          (let ((_%target4220942250%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45086_ 0)))
                                                (_%tl4221142253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45086_ 1))))
                                            (if (gx#stx-null? _%tl4221142253%_)
                                                (letrec ((_%loop4221242256%_
                                                          (lambda (_%hd4221042260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4221642263%_)
                    (if (gx#stx-pair? _%hd4221042260%_)
                        (let ((_%e4221342265%_ (gx#syntax-e _%hd4221042260%_)))
                          (let ((_%lp-hd4221442269%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4221342265%_)))
                                (_%lp-tl4221542272%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4221342265%_))))
                            (_%loop4221242256%_
                             _%lp-tl4221542272%_
                             (cons _%lp-hd4221442269%_ _%body4221642263%_))))
                        (let ((_%body4221742275%_
                               (reverse _%body4221642263%_)))
                          ((lambda (_%g4220142278%_ _%g4220242280%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g4220242280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4229742300%_ _%g4229842303%_)
                                  (cons _%g4229742300%_ _%g4229842303%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4220142278%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4221742275%_
                           _%hd4220742244%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4221242256%_
                                                   _%target4220942250%_
                                                   '()))
                                                (_%g4219942223%_
                                                 _%g4220042227%_)))))
                                      (_%g4219942223%_ _%g4220042227%_))))
                              (_%g4219942223%_ _%g4220042227%_))))
                      (_%g4219942223%_ _%g4220042227%_)))))
          (_%g4219842306%_ _%$stx42195%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42311%_)
        (let ((_%g4231442321%_
               (lambda (_%g4231542317%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4231542317%_))))
          (_%g4231442321%_ _%$stx42311%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42325%_)
        (let ((_%g4232842335%_
               (lambda (_%g4232942331%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4232942331%_))))
          (_%g4232842335%_ _%$stx42325%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42339%_)
        (letrec ((_%generate-thunk42342%_
                  (lambda (_%body43661%_)
                    (if (null? _%body43661%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42339%_)
                        (let* ((_%g4366443681%_
                                (lambda (_%g4366543677%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4366543677%_)))
                               (_%g4366343740%_
                                (lambda (_%g4366543685%_)
                                  (if (gx#stx-pair/null? _%g4366543685%_)
                                      (let ((_g45088_
                                             (gx#syntax-split-splice
                                              _%g4366543685%_
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
                                          (let ((_%target4366743688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45088_ 0)))
                                                (_%tl4366943691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45088_ 1))))
                                            (if (gx#stx-null? _%tl4366943691%_)
                                                (letrec ((_%loop4367043694%_
                                                          (lambda (_%hd4366843698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4367443701%_)
                    (if (gx#stx-pair? _%hd4366843698%_)
                        (let ((_%e4367143703%_ (gx#syntax-e _%hd4366843698%_)))
                          (let ((_%lp-hd4367243707%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4367143703%_)))
                                (_%lp-tl4367343710%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4367143703%_))))
                            (_%loop4367043694%_
                             _%lp-tl4367343710%_
                             (cons _%lp-hd4367243707%_ _%e4367443701%_))))
                        (let ((_%e4367543713%_ (reverse _%e4367443701%_)))
                          ((lambda (_%g4366643716%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4373143734%_
                                                         _%g4373243737%_)
                                                  (cons _%g4373143734%_
                                                        _%g4373243737%_))
                                                '()
                                                _%g4366643716%_))))
                           _%e4367543713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4367043694%_
                                                   _%target4366743688%_
                                                   '()))
                                                (_%g4366443681%_
                                                 _%g4366543685%_)))))
                                      (_%g4366443681%_ _%g4366543685%_)))))
                          (_%g4366343740%_ (reverse _%body43661%_))))))
                 (_%generate-fini42344%_
                  (lambda (_%thunk43544%_ _%fini43546%_)
                    (let* ((_%g4354843572%_
                            (lambda (_%g4354943568%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4354943568%_)))
                           (_%g4354743657%_
                            (lambda (_%g4354943576%_)
                              (if (gx#stx-pair? _%g4354943576%_)
                                  (let ((_%e4355243579%_
                                         (gx#syntax-e _%g4354943576%_)))
                                    (let ((_%hd4355343583%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4355243579%_)))
                                          (_%tl4355443586%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4355243579%_))))
                                      (if (gx#stx-pair? _%tl4355443586%_)
                                          (let ((_%e4355543589%_
                                                 (gx#syntax-e
                                                  _%tl4355443586%_)))
                                            (let ((_%hd4355643593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4355543589%_)))
                                                  (_%tl4355743596%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4355543589%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4355643593%_)
                                                  (let ((_g45090_
                                                         (gx#syntax-split-splice
                                                          _%hd4355643593%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45091_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45090_)
                           (##values-length _g45090_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45091_ 2)))
                    (error "Context expects 2 values" _g45091_)))
              (let ((_%target4355843599%_
                     (let () (declare (not safe)) (##values-ref _g45090_ 0)))
                    (_%tl4356043602%_
                     (let () (declare (not safe)) (##values-ref _g45090_ 1))))
                (if (gx#stx-null? _%tl4356043602%_)
                    (letrec ((_%loop4356143605%_
                              (lambda (_%hd4355943609%_ _%e4356543612%_)
                                (if (gx#stx-pair? _%hd4355943609%_)
                                    (let ((_%e4356243614%_
                                           (gx#syntax-e _%hd4355943609%_)))
                                      (let ((_%lp-hd4356343618%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4356243614%_)))
                                            (_%lp-tl4356443621%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4356243614%_))))
                                        (_%loop4356143605%_
                                         _%lp-tl4356443621%_
                                         (cons _%lp-hd4356343618%_
                                               _%e4356543612%_))))
                                    (let ((_%e4356643624%_
                                           (reverse _%e4356543612%_)))
                                      (if (gx#stx-null? _%tl4355743596%_)
                                          ((lambda (_%g4355043627%_
                                                    _%g4355143629%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g4355143629%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4364843651%_
                                                   _%g4364943654%_)
                                            (cons _%g4364843651%_
                                                  _%g4364943654%_))
                                          '()
                                          _%g4355043627%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4356643624%_
                                           _%hd4355343583%_)
                                          (_%g4354843572%_
                                           _%g4354943576%_)))))))
                      (_%loop4356143605%_ _%target4355843599%_ '()))
                    (_%g4354843572%_ _%g4354943576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4354843572%_
                                                   _%g4354943576%_))))
                                          (_%g4354843572%_ _%g4354943576%_))))
                                  (_%g4354843572%_ _%g4354943576%_)))))
                      (_%g4354743657%_ (list _%thunk43544%_ _%fini43546%_)))))
                 (_%generate-catch42345%_
                  (lambda (_%handlers42959%_ _%thunk42961%_)
                    (let* ((_%g4296342971%_
                            (lambda (_%g4296442967%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4296442967%_)))
                           (_%g4296243540%_
                            (lambda (_%g4296442975%_)
                              ((lambda (_%g4296542978%_)
                                 (let _%lp42990%_ ((_%rest42993%_
                                                    _%handlers42959%_)
                                                   (_%clauses42995%_ '()))
                                   (let* ((_%rest4299643004%_ _%rest42993%_)
                                          (_%else4299843135%_
                                           (lambda ()
                                             (let* ((_%g4301643040%_
                                                     (lambda (_%g4301743036%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4301743036%_)))
                                                    (_%g4301543131%_
                                                     (lambda (_%g4301743044%_)
                                                       (if (gx#stx-pair?
                                                            _%g4301743044%_)
                                                           (let ((_%e4302043047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4301743044%_)))
                     (let ((_%hd4302143051%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4302043047%_)))
                           (_%tl4302243054%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4302043047%_))))
                       (if (gx#stx-pair/null? _%hd4302143051%_)
                           (let ((_g45092_
                                  (gx#syntax-split-splice
                                   _%hd4302143051%_
                                   '0)))
                             (begin
                               (let ((_g45093_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45092_)
                                            (##values-length _g45092_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45093_ 2)))
                                     (error "Context expects 2 values"
                                            _g45093_)))
                               (let ((_%target4302343057%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45092_ 0)))
                                     (_%tl4302543060%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45092_ 1))))
                                 (if (gx#stx-null? _%tl4302543060%_)
                                     (letrec ((_%loop4302643063%_
                                               (lambda (_%hd4302443067%_
                                                        _%clause4303043070%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4302443067%_)
                                                     (let ((_%e4302743072%_
                                                            (gx#syntax-e
                                                             _%hd4302443067%_)))
                                                       (let ((_%lp-hd4302843076%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4302743072%_)))
                     (_%lp-tl4302943079%_
                      (let () (declare (not safe)) (##cdr _%e4302743072%_))))
                 (_%loop4302643063%_
                  _%lp-tl4302943079%_
                  (cons _%lp-hd4302843076%_ _%clause4303043070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4303143082%_
                                                            (reverse _%clause4303043070%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4302243054%_)
                                                           (let ((_%e4303243085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4302243054%_)))
                     (let ((_%hd4303343089%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4303243085%_)))
                           (_%tl4303443092%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4303243085%_))))
                       (if (gx#stx-null? _%tl4303443092%_)
                           ((lambda (_%g4301843095%_ _%g4301943097%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g4296542978%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4312243125%_ _%g4312343128%_)
                                   (cons _%g4312243125%_ _%g4312343128%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g4296542978%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g4301943097%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g4301843095%_ '()))))
                            _%hd4303343089%_
                            _%clause4303143082%_)
                           (_%g4301643040%_ _%g4301743044%_))))
                   (_%g4301643040%_ _%g4301743044%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4302643063%_
                                        _%target4302343057%_
                                        '()))
                                     (_%g4301643040%_ _%g4301743044%_)))))
                           (_%g4301643040%_ _%g4301743044%_))))
                   (_%g4301643040%_ _%g4301743044%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4301543131%_
                                                (list _%clauses42995%_
                                                      _%thunk42961%_)))))
                                          (_%K4300043524%_
                                           (lambda (_%rest43139%_ _%hd43141%_)
                                             (let* ((_%__stx4481244813%_
                                                     _%hd43141%_)
                                                    (_%g4314643216%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4481244813%_))))
                                               (let ((_%__kont4481544816%_
                                                      (lambda (_%g4314843503%_
                                                               _%g4314943505%_)
                                                        (_%lp42990%_
                                                         _%rest43139%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4314943505%_ '()))
                                   (cons _%g4296542978%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g4314843503%_ '())))
                       _%clauses42995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4481744818%_
                                                      (lambda (_%g4315943435%_
                                                               _%g4316043437%_
                                                               _%g4316143438%_)
                                                        (_%lp42990%_
                                                         _%rest43139%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4316143438%_ '()))
                                   (cons _%g4296542978%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4316043437%_
                                                           (cons _%g4296542978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4345743460%_
                                                               _%g4345843463%_)
                                                        (cons _%g4345743460%_
                                                              _%g4345843463%_))
                                                      '()
                                                      _%g4315943435%_)))
                                   '()))
                       _%clauses42995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4482144822%_
                                                      (lambda (_%g4318043343%_
                                                               _%g4318143345%_)
                                                        (_%lp42990%_
                                                         _%rest43139%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4318143345%_
                                                           (cons _%g4296542978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4336143364%_
                                                               _%g4336243367%_)
                                                        (cons _%g4336143364%_
                                                              _%g4336243367%_))
                                                      '()
                                                      _%g4318043343%_)))
                                   '()))
                       _%clauses42995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4482544826%_
                                                      (lambda (_%g4319743261%_
                                                               _%g4319843263%_)
                                                        (_%lp42990%_
                                                         _%rest43139%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4327943282%_
                                                         _%g4328043285%_)
                                                  (cons _%g4327943282%_
                                                        _%g4328043285%_))
                                                '()
                                                _%g4319743261%_))
                                   '()))
                       _%clauses42995%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4491744918%_
                                                         (lambda (_%e4319943223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4320043227%_
                          _%tl4320143230%_
                          _%__splice4482744828%_
                          _%target4320243233%_
                          _%tl4320443236%_)
                   (letrec ((_%loop4320543239%_
                             (lambda (_%hd4320343243%_ _%body4320943246%_)
                               (if (gx#stx-pair? _%hd4320343243%_)
                                   (let ((_%e4320643248%_
                                          (gx#syntax-e _%hd4320343243%_)))
                                     (let ((_%lp-tl4320843255%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4320643248%_)))
                                           (_%lp-hd4320743252%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4320643248%_))))
                                       (_%loop4320543239%_
                                        _%lp-tl4320843255%_
                                        (cons _%lp-hd4320743252%_
                                              _%body4320943246%_))))
                                   (let ((_%body4321043258%_
                                          (reverse _%body4320943246%_)))
                                     (let ((_%g4319743261%_ _%body4321043258%_)
                                           (_%g4319843263%_ _%hd4320043227%_))
                                       (if (gx#underscore? _%g4319843263%_)
                                           (_%__kont4482544826%_
                                            _%g4319743261%_
                                            _%g4319843263%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4314643216%_)))))))))
                     (_%loop4320543239%_ _%target4320243233%_ '()))))
                (_%__match4490344904%_
                 (lambda (_%e4318243295%_
                          _%hd4318343299%_
                          _%tl4318443302%_
                          _%e4318543305%_
                          _%hd4318643309%_
                          _%tl4318743312%_
                          _%__splice4482344824%_
                          _%target4318843315%_
                          _%tl4319043318%_)
                   (letrec ((_%loop4319143321%_
                             (lambda (_%hd4318943325%_ _%body4319543328%_)
                               (if (gx#stx-pair? _%hd4318943325%_)
                                   (let ((_%e4319243330%_
                                          (gx#syntax-e _%hd4318943325%_)))
                                     (let ((_%lp-tl4319443337%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4319243330%_)))
                                           (_%lp-hd4319343334%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4319243330%_))))
                                       (_%loop4319143321%_
                                        _%lp-tl4319443337%_
                                        (cons _%lp-hd4319343334%_
                                              _%body4319543328%_))))
                                   (let ((_%body4319643340%_
                                          (reverse _%body4319543328%_)))
                                     (let ((_%g4318043343%_ _%body4319643340%_)
                                           (_%g4318143345%_ _%hd4318643309%_))
                                       (if (gx#identifier? _%g4318143345%_)
                                           (_%__kont4482144822%_
                                            _%g4318043343%_
                                            _%g4318143345%_)
                                           (_%__match4491744918%_
                                            _%e4318243295%_
                                            _%hd4318343299%_
                                            _%tl4318443302%_
                                            _%__splice4482344824%_
                                            _%target4318843315%_
                                            _%tl4319043318%_))))))))
                     (_%loop4319143321%_ _%target4318843315%_ '()))))
                (_%__match4488144882%_
                 (lambda (_%e4316243377%_
                          _%hd4316343381%_
                          _%tl4316443384%_
                          _%e4316543387%_
                          _%hd4316643391%_
                          _%tl4316743394%_
                          _%e4316843397%_
                          _%hd4316943401%_
                          _%tl4317043404%_
                          _%__splice4481944820%_
                          _%target4317143407%_
                          _%tl4317343410%_)
                   (letrec ((_%loop4317443413%_
                             (lambda (_%hd4317243417%_ _%body4317843420%_)
                               (if (gx#stx-pair? _%hd4317243417%_)
                                   (let ((_%e4317543422%_
                                          (gx#syntax-e _%hd4317243417%_)))
                                     (let ((_%lp-tl4317743429%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4317543422%_)))
                                           (_%lp-hd4317643426%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4317543422%_))))
                                       (_%loop4317443413%_
                                        _%lp-tl4317743429%_
                                        (cons _%lp-hd4317643426%_
                                              _%body4317843420%_))))
                                   (let ((_%body4317943432%_
                                          (reverse _%body4317843420%_)))
                                     (let ((_%g4315943435%_ _%body4317943432%_)
                                           (_%g4316043437%_ _%hd4316943401%_)
                                           (_%g4316143438%_ _%hd4316643391%_))
                                       (if (gx#identifier? _%g4316043437%_)
                                           (_%__kont4481744818%_
                                            _%g4315943435%_
                                            _%g4316043437%_
                                            _%g4316143438%_)
                                           (_%__match4491744918%_
                                            _%e4316243377%_
                                            _%hd4316343381%_
                                            _%tl4316443384%_
                                            _%__splice4481944820%_
                                            _%target4317143407%_
                                            _%tl4317343410%_))))))))
                     (_%loop4317443413%_ _%target4317143407%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4481244813%_)
                                                       (let ((_%e4315043473%_
                                                              (gx#syntax-e
                                                               _%__stx4481244813%_)))
                                                         (let ((_%tl4315243480%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4315043473%_)))
                       (_%hd4315143477%_
                        (let () (declare (not safe)) (##car _%e4315043473%_))))
                   (if (gx#stx-pair? _%tl4315243480%_)
                       (let ((_%e4315343483%_ (gx#syntax-e _%tl4315243480%_)))
                         (let ((_%tl4315543490%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4315343483%_)))
                               (_%hd4315443487%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4315343483%_))))
                           (if (gx#identifier? _%hd4315443487%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45094_|
                                    _%hd4315443487%_)
                                   (if (gx#stx-pair? _%tl4315543490%_)
                                       (let ((_%e4315643493%_
                                              (gx#syntax-e _%tl4315543490%_)))
                                         (let ((_%tl4315843500%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4315643493%_)))
                                               (_%hd4315743497%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4315643493%_))))
                                           (if (gx#stx-null? _%tl4315843500%_)
                                               (_%__kont4481544816%_
                                                _%hd4315743497%_
                                                _%hd4315143477%_)
                                               (if (gx#stx-pair?
                                                    _%hd4315143477%_)
                                                   (let ((_%e4316543387%_
                                                          (gx#syntax-e
                                                           _%hd4315143477%_)))
                                                     (let ((_%tl4316743394%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4316543387%_)))
                                                           (_%hd4316643391%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4316543387%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4316743394%_)
                                                           (let ((_%e4316843397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4316743394%_)))
                     (let ((_%tl4317043404%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4316843397%_)))
                           (_%hd4316943401%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4316843397%_))))
                       (if (gx#stx-null? _%tl4317043404%_)
                           (if (gx#stx-pair/null? _%tl4315243480%_)
                               (let ((_%__splice4481944820%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4315243480%_
                                       '0)))
                                 (let ((_%tl4317343410%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4481944820%_
                                           '1)))
                                       (_%target4317143407%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4481944820%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4317343410%_)
                                       (_%__match4488144882%_
                                        _%e4315043473%_
                                        _%hd4315143477%_
                                        _%tl4315243480%_
                                        _%e4316543387%_
                                        _%hd4316643391%_
                                        _%tl4316743394%_
                                        _%e4316843397%_
                                        _%hd4316943401%_
                                        _%tl4317043404%_
                                        _%__splice4481944820%_
                                        _%target4317143407%_
                                        _%tl4317343410%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4314643216%_)))))
                               (let () (declare (not safe)) (_%g4314643216%_)))
                           (if (gx#stx-pair/null? _%tl4315243480%_)
                               (let ((_%__splice4482744828%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4315243480%_
                                       '0)))
                                 (let ((_%tl4320443236%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4482744828%_
                                           '1)))
                                       (_%target4320243233%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4482744828%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4320443236%_)
                                       (_%__match4491744918%_
                                        _%e4315043473%_
                                        _%hd4315143477%_
                                        _%tl4315243480%_
                                        _%__splice4482744828%_
                                        _%target4320243233%_
                                        _%tl4320443236%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4314643216%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4314643216%_))))))
                   (if (gx#stx-null? _%tl4316743394%_)
                       (if (gx#stx-pair/null? _%tl4315243480%_)
                           (let ((_%__splice4482344824%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4315243480%_
                                   '0)))
                             (let ((_%tl4319043318%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4482344824%_
                                       '1)))
                                   (_%target4318843315%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4482344824%_
                                       '0))))
                               (if (gx#stx-null? _%tl4319043318%_)
                                   (_%__match4490344904%_
                                    _%e4315043473%_
                                    _%hd4315143477%_
                                    _%tl4315243480%_
                                    _%e4316543387%_
                                    _%hd4316643391%_
                                    _%tl4316743394%_
                                    _%__splice4482344824%_
                                    _%target4318843315%_
                                    _%tl4319043318%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4314643216%_)))))
                           (let () (declare (not safe)) (_%g4314643216%_)))
                       (if (gx#stx-pair/null? _%tl4315243480%_)
                           (let ((_%__splice4482744828%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4315243480%_
                                   '0)))
                             (let ((_%tl4320443236%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4482744828%_
                                       '1)))
                                   (_%target4320243233%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4482744828%_
                                       '0))))
                               (if (gx#stx-null? _%tl4320443236%_)
                                   (_%__match4491744918%_
                                    _%e4315043473%_
                                    _%hd4315143477%_
                                    _%tl4315243480%_
                                    _%__splice4482744828%_
                                    _%target4320243233%_
                                    _%tl4320443236%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4314643216%_)))))
                           (let () (declare (not safe)) (_%g4314643216%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4315243480%_)
                                                       (let ((_%__splice4482744828%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4315243480%_
                                                               '0)))
                                                         (let ((_%tl4320443236%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4482744828%_ '1)))
                       (_%target4320243233%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4482744828%_ '0))))
                   (if (gx#stx-null? _%tl4320443236%_)
                       (_%__match4491744918%_
                        _%e4315043473%_
                        _%hd4315143477%_
                        _%tl4315243480%_
                        _%__splice4482744828%_
                        _%target4320243233%_
                        _%tl4320443236%_)
                       (let () (declare (not safe)) (_%g4314643216%_)))))
               (let () (declare (not safe)) (_%g4314643216%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4315143477%_)
                                           (let ((_%e4316543387%_
                                                  (gx#syntax-e
                                                   _%hd4315143477%_)))
                                             (let ((_%tl4316743394%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4316543387%_)))
                                                   (_%hd4316643391%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4316543387%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4316743394%_)
                                                   (let ((_%e4316843397%_
                                                          (gx#syntax-e
                                                           _%tl4316743394%_)))
                                                     (let ((_%tl4317043404%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4316843397%_)))
                                                           (_%hd4316943401%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4316843397%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4317043404%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4315243480%_)
                                                               (let ((_%__splice4481944820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4315243480%_
                               '0)))
                         (let ((_%tl4317343410%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4481944820%_ '1)))
                               (_%target4317143407%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4481944820%_ '0))))
                           (if (gx#stx-null? _%tl4317343410%_)
                               (_%__match4488144882%_
                                _%e4315043473%_
                                _%hd4315143477%_
                                _%tl4315243480%_
                                _%e4316543387%_
                                _%hd4316643391%_
                                _%tl4316743394%_
                                _%e4316843397%_
                                _%hd4316943401%_
                                _%tl4317043404%_
                                _%__splice4481944820%_
                                _%target4317143407%_
                                _%tl4317343410%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4314643216%_)))))
                       (let () (declare (not safe)) (_%g4314643216%_)))
                   (if (gx#stx-pair/null? _%tl4315243480%_)
                       (let ((_%__splice4482744828%_
                              (gx#syntax-split-splice->vector
                               _%tl4315243480%_
                               '0)))
                         (let ((_%tl4320443236%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4482744828%_ '1)))
                               (_%target4320243233%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4482744828%_ '0))))
                           (if (gx#stx-null? _%tl4320443236%_)
                               (_%__match4491744918%_
                                _%e4315043473%_
                                _%hd4315143477%_
                                _%tl4315243480%_
                                _%__splice4482744828%_
                                _%target4320243233%_
                                _%tl4320443236%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4314643216%_)))))
                       (let () (declare (not safe)) (_%g4314643216%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4316743394%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4315243480%_)
                                                           (let ((_%__splice4482344824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4315243480%_
                           '0)))
                     (let ((_%tl4319043318%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4482344824%_ '1)))
                           (_%target4318843315%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4482344824%_ '0))))
                       (if (gx#stx-null? _%tl4319043318%_)
                           (_%__match4490344904%_
                            _%e4315043473%_
                            _%hd4315143477%_
                            _%tl4315243480%_
                            _%e4316543387%_
                            _%hd4316643391%_
                            _%tl4316743394%_
                            _%__splice4482344824%_
                            _%target4318843315%_
                            _%tl4319043318%_)
                           (let () (declare (not safe)) (_%g4314643216%_)))))
                   (let () (declare (not safe)) (_%g4314643216%_)))
               (if (gx#stx-pair/null? _%tl4315243480%_)
                   (let ((_%__splice4482744828%_
                          (gx#syntax-split-splice->vector
                           _%tl4315243480%_
                           '0)))
                     (let ((_%tl4320443236%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4482744828%_ '1)))
                           (_%target4320243233%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4482744828%_ '0))))
                       (if (gx#stx-null? _%tl4320443236%_)
                           (_%__match4491744918%_
                            _%e4315043473%_
                            _%hd4315143477%_
                            _%tl4315243480%_
                            _%__splice4482744828%_
                            _%target4320243233%_
                            _%tl4320443236%_)
                           (let () (declare (not safe)) (_%g4314643216%_)))))
                   (let () (declare (not safe)) (_%g4314643216%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4315243480%_)
                                               (let ((_%__splice4482744828%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4315243480%_
                                                       '0)))
                                                 (let ((_%tl4320443236%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4482744828%_
                                                           '1)))
                                                       (_%target4320243233%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4482744828%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4320443236%_)
                                                       (_%__match4491744918%_
                                                        _%e4315043473%_
                                                        _%hd4315143477%_
                                                        _%tl4315243480%_
                                                        _%__splice4482744828%_
                                                        _%target4320243233%_
                                                        _%tl4320443236%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4314643216%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4314643216%_)))))
                                   (if (gx#stx-pair? _%hd4315143477%_)
                                       (let ((_%e4316543387%_
                                              (gx#syntax-e _%hd4315143477%_)))
                                         (let ((_%tl4316743394%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4316543387%_)))
                                               (_%hd4316643391%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4316543387%_))))
                                           (if (gx#stx-pair? _%tl4316743394%_)
                                               (let ((_%e4316843397%_
                                                      (gx#syntax-e
                                                       _%tl4316743394%_)))
                                                 (let ((_%tl4317043404%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4316843397%_)))
                                                       (_%hd4316943401%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4316843397%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4317043404%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4315243480%_)
                                                           (let ((_%__splice4481944820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4315243480%_
                           '0)))
                     (let ((_%tl4317343410%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4481944820%_ '1)))
                           (_%target4317143407%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4481944820%_ '0))))
                       (if (gx#stx-null? _%tl4317343410%_)
                           (_%__match4488144882%_
                            _%e4315043473%_
                            _%hd4315143477%_
                            _%tl4315243480%_
                            _%e4316543387%_
                            _%hd4316643391%_
                            _%tl4316743394%_
                            _%e4316843397%_
                            _%hd4316943401%_
                            _%tl4317043404%_
                            _%__splice4481944820%_
                            _%target4317143407%_
                            _%tl4317343410%_)
                           (let () (declare (not safe)) (_%g4314643216%_)))))
                   (let () (declare (not safe)) (_%g4314643216%_)))
               (if (gx#stx-pair/null? _%tl4315243480%_)
                   (let ((_%__splice4482744828%_
                          (gx#syntax-split-splice->vector
                           _%tl4315243480%_
                           '0)))
                     (let ((_%tl4320443236%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4482744828%_ '1)))
                           (_%target4320243233%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4482744828%_ '0))))
                       (if (gx#stx-null? _%tl4320443236%_)
                           (_%__match4491744918%_
                            _%e4315043473%_
                            _%hd4315143477%_
                            _%tl4315243480%_
                            _%__splice4482744828%_
                            _%target4320243233%_
                            _%tl4320443236%_)
                           (let () (declare (not safe)) (_%g4314643216%_)))))
                   (let () (declare (not safe)) (_%g4314643216%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4316743394%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4315243480%_)
                                                       (let ((_%__splice4482344824%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4315243480%_
                                                               '0)))
                                                         (let ((_%tl4319043318%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4482344824%_ '1)))
                       (_%target4318843315%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4482344824%_ '0))))
                   (if (gx#stx-null? _%tl4319043318%_)
                       (_%__match4490344904%_
                        _%e4315043473%_
                        _%hd4315143477%_
                        _%tl4315243480%_
                        _%e4316543387%_
                        _%hd4316643391%_
                        _%tl4316743394%_
                        _%__splice4482344824%_
                        _%target4318843315%_
                        _%tl4319043318%_)
                       (let () (declare (not safe)) (_%g4314643216%_)))))
               (let () (declare (not safe)) (_%g4314643216%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4315243480%_)
                                                       (let ((_%__splice4482744828%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4315243480%_
                                                               '0)))
                                                         (let ((_%tl4320443236%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4482744828%_ '1)))
                       (_%target4320243233%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4482744828%_ '0))))
                   (if (gx#stx-null? _%tl4320443236%_)
                       (_%__match4491744918%_
                        _%e4315043473%_
                        _%hd4315143477%_
                        _%tl4315243480%_
                        _%__splice4482744828%_
                        _%target4320243233%_
                        _%tl4320443236%_)
                       (let () (declare (not safe)) (_%g4314643216%_)))))
               (let () (declare (not safe)) (_%g4314643216%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4315243480%_)
                                           (let ((_%__splice4482744828%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4315243480%_
                                                   '0)))
                                             (let ((_%tl4320443236%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4482744828%_
                                                       '1)))
                                                   (_%target4320243233%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4482744828%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4320443236%_)
                                                   (_%__match4491744918%_
                                                    _%e4315043473%_
                                                    _%hd4315143477%_
                                                    _%tl4315243480%_
                                                    _%__splice4482744828%_
                                                    _%target4320243233%_
                                                    _%tl4320443236%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314643216%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4314643216%_)))))
                               (if (gx#stx-pair? _%hd4315143477%_)
                                   (let ((_%e4316543387%_
                                          (gx#syntax-e _%hd4315143477%_)))
                                     (let ((_%tl4316743394%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4316543387%_)))
                                           (_%hd4316643391%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4316543387%_))))
                                       (if (gx#stx-pair? _%tl4316743394%_)
                                           (let ((_%e4316843397%_
                                                  (gx#syntax-e
                                                   _%tl4316743394%_)))
                                             (let ((_%tl4317043404%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4316843397%_)))
                                                   (_%hd4316943401%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4316843397%_))))
                                               (if (gx#stx-null?
                                                    _%tl4317043404%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4315243480%_)
                                                       (let ((_%__splice4481944820%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4315243480%_
                                                               '0)))
                                                         (let ((_%tl4317343410%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4481944820%_ '1)))
                       (_%target4317143407%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4481944820%_ '0))))
                   (if (gx#stx-null? _%tl4317343410%_)
                       (_%__match4488144882%_
                        _%e4315043473%_
                        _%hd4315143477%_
                        _%tl4315243480%_
                        _%e4316543387%_
                        _%hd4316643391%_
                        _%tl4316743394%_
                        _%e4316843397%_
                        _%hd4316943401%_
                        _%tl4317043404%_
                        _%__splice4481944820%_
                        _%target4317143407%_
                        _%tl4317343410%_)
                       (let () (declare (not safe)) (_%g4314643216%_)))))
               (let () (declare (not safe)) (_%g4314643216%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4315243480%_)
                                                       (let ((_%__splice4482744828%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4315243480%_
                                                               '0)))
                                                         (let ((_%tl4320443236%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4482744828%_ '1)))
                       (_%target4320243233%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4482744828%_ '0))))
                   (if (gx#stx-null? _%tl4320443236%_)
                       (_%__match4491744918%_
                        _%e4315043473%_
                        _%hd4315143477%_
                        _%tl4315243480%_
                        _%__splice4482744828%_
                        _%target4320243233%_
                        _%tl4320443236%_)
                       (let () (declare (not safe)) (_%g4314643216%_)))))
               (let () (declare (not safe)) (_%g4314643216%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4316743394%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4315243480%_)
                                                   (let ((_%__splice4482344824%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4315243480%_
                                                           '0)))
                                                     (let ((_%tl4319043318%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4482344824%_
                                                               '1)))
                                                           (_%target4318843315%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4482344824%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4319043318%_)
                                                           (_%__match4490344904%_
                                                            _%e4315043473%_
                                                            _%hd4315143477%_
                                                            _%tl4315243480%_
                                                            _%e4316543387%_
                                                            _%hd4316643391%_
                                                            _%tl4316743394%_
                                                            _%__splice4482344824%_
                                                            _%target4318843315%_
                                                            _%tl4319043318%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4314643216%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314643216%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4315243480%_)
                                                   (let ((_%__splice4482744828%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4315243480%_
                                                           '0)))
                                                     (let ((_%tl4320443236%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4482744828%_
                                                               '1)))
                                                           (_%target4320243233%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4482744828%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4320443236%_)
                                                           (_%__match4491744918%_
                                                            _%e4315043473%_
                                                            _%hd4315143477%_
                                                            _%tl4315243480%_
                                                            _%__splice4482744828%_
                                                            _%target4320243233%_
                                                            _%tl4320443236%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4314643216%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314643216%_)))))))
                                   (if (gx#stx-pair/null? _%tl4315243480%_)
                                       (let ((_%__splice4482744828%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4315243480%_
                                               '0)))
                                         (let ((_%tl4320443236%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4482744828%_
                                                   '1)))
                                               (_%target4320243233%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4482744828%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4320443236%_)
                                               (_%__match4491744918%_
                                                _%e4315043473%_
                                                _%hd4315143477%_
                                                _%tl4315243480%_
                                                _%__splice4482744828%_
                                                _%target4320243233%_
                                                _%tl4320443236%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4314643216%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4314643216%_)))))))
                       (if (gx#stx-pair? _%hd4315143477%_)
                           (let ((_%e4316543387%_
                                  (gx#syntax-e _%hd4315143477%_)))
                             (let ((_%tl4316743394%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4316543387%_)))
                                   (_%hd4316643391%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4316543387%_))))
                               (if (gx#stx-pair? _%tl4316743394%_)
                                   (let ((_%e4316843397%_
                                          (gx#syntax-e _%tl4316743394%_)))
                                     (let ((_%tl4317043404%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4316843397%_)))
                                           (_%hd4316943401%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4316843397%_))))
                                       (if (gx#stx-null? _%tl4317043404%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4315243480%_)
                                               (let ((_%__splice4481944820%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4315243480%_
                                                       '0)))
                                                 (let ((_%tl4317343410%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4481944820%_
                                                           '1)))
                                                       (_%target4317143407%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4481944820%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4317343410%_)
                                                       (_%__match4488144882%_
                                                        _%e4315043473%_
                                                        _%hd4315143477%_
                                                        _%tl4315243480%_
                                                        _%e4316543387%_
                                                        _%hd4316643391%_
                                                        _%tl4316743394%_
                                                        _%e4316843397%_
                                                        _%hd4316943401%_
                                                        _%tl4317043404%_
                                                        _%__splice4481944820%_
                                                        _%target4317143407%_
                                                        _%tl4317343410%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4314643216%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4314643216%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4315243480%_)
                                               (let ((_%__splice4482744828%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4315243480%_
                                                       '0)))
                                                 (let ((_%tl4320443236%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4482744828%_
                                                           '1)))
                                                       (_%target4320243233%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4482744828%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4320443236%_)
                                                       (_%__match4491744918%_
                                                        _%e4315043473%_
                                                        _%hd4315143477%_
                                                        _%tl4315243480%_
                                                        _%__splice4482744828%_
                                                        _%target4320243233%_
                                                        _%tl4320443236%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4314643216%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4314643216%_))))))
                                   (if (gx#stx-null? _%tl4316743394%_)
                                       (if (gx#stx-pair/null? _%tl4315243480%_)
                                           (let ((_%__splice4482344824%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4315243480%_
                                                   '0)))
                                             (let ((_%tl4319043318%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4482344824%_
                                                       '1)))
                                                   (_%target4318843315%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4482344824%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4319043318%_)
                                                   (_%__match4490344904%_
                                                    _%e4315043473%_
                                                    _%hd4315143477%_
                                                    _%tl4315243480%_
                                                    _%e4316543387%_
                                                    _%hd4316643391%_
                                                    _%tl4316743394%_
                                                    _%__splice4482344824%_
                                                    _%target4318843315%_
                                                    _%tl4319043318%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314643216%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4314643216%_)))
                                       (if (gx#stx-pair/null? _%tl4315243480%_)
                                           (let ((_%__splice4482744828%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4315243480%_
                                                   '0)))
                                             (let ((_%tl4320443236%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4482744828%_
                                                       '1)))
                                                   (_%target4320243233%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4482744828%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4320443236%_)
                                                   (_%__match4491744918%_
                                                    _%e4315043473%_
                                                    _%hd4315143477%_
                                                    _%tl4315243480%_
                                                    _%__splice4482744828%_
                                                    _%target4320243233%_
                                                    _%tl4320443236%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4314643216%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4314643216%_)))))))
                           (if (gx#stx-pair/null? _%tl4315243480%_)
                               (let ((_%__splice4482744828%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4315243480%_
                                       '0)))
                                 (let ((_%tl4320443236%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4482744828%_
                                           '1)))
                                       (_%target4320243233%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4482744828%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4320443236%_)
                                       (_%__match4491744918%_
                                        _%e4315043473%_
                                        _%hd4315143477%_
                                        _%tl4315243480%_
                                        _%__splice4482744828%_
                                        _%target4320243233%_
                                        _%tl4320443236%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4314643216%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4314643216%_)))))))
               (let () (declare (not safe)) (_%g4314643216%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4299643004%_)
                                         (let ((_%hd4300143528%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4299643004%_)))
                                               (_%tl4300243531%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4299643004%_))))
                                           (let* ((_%hd43534%_
                                                   _%hd4300143528%_)
                                                  (_%rest43537%_
                                                   _%tl4300243531%_))
                                             (_%K4300043524%_
                                              _%rest43537%_
                                              _%hd43534%_)))
                                         (_%else4299843135%_)))))
                               _%g4296442975%_))))
                      (_%g4296243540%_ (gx#genident))))))
          (let* ((_%g4234742367%_
                  (lambda (_%g4234842363%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4234842363%_)))
                 (_%g4234642955%_
                  (lambda (_%g4234842371%_)
                    (if (gx#stx-pair? _%g4234842371%_)
                        (let ((_%e4235042374%_ (gx#syntax-e _%g4234842371%_)))
                          (let ((_%hd4235142378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4235042374%_)))
                                (_%tl4235242381%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4235042374%_))))
                            (if (gx#stx-pair/null? _%tl4235242381%_)
                                (let ((_g45095_
                                       (gx#syntax-split-splice
                                        _%tl4235242381%_
                                        '0)))
                                  (begin
                                    (let ((_g45096_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45095_)
                                                 (##values-length _g45095_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45096_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45096_)))
                                    (let ((_%target4235342384%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45095_ 0)))
                                          (_%tl4235542387%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45095_ 1))))
                                      (if (gx#stx-null? _%tl4235542387%_)
                                          (letrec ((_%loop4235642390%_
                                                    (lambda (_%hd4235442394%_
                                                             _%e4236042397%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4235442394%_)
                                                          (let ((_%e4235742399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4235442394%_)))
                    (let ((_%lp-hd4235842403%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4235742399%_)))
                          (_%lp-tl4235942406%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4235742399%_))))
                      (_%loop4235642390%_
                       _%lp-tl4235942406%_
                       (cons _%lp-hd4235842403%_ _%e4236042397%_))))
                  (let ((_%e4236142409%_ (reverse _%e4236042397%_)))
                    ((lambda (_%g4234942412%_)
                       (let _%lp42429%_ ((_%rest42432%_
                                          (foldr (lambda (_%g4294642949%_
                                                          _%g4294742952%_)
                                                   (cons _%g4294642949%_
                                                         _%g4294742952%_))
                                                 '()
                                                 _%g4234942412%_))
                                         (_%body42434%_ '()))
                         (let* ((_%__stx4503845039%_ _%rest42432%_)
                                (_%g4243742449%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4503845039%_))))
                           (let ((_%__kont4504145042%_
                                  (lambda (_%g4243942477%_ _%g4244042479%_)
                                    (let* ((_%__stx4498644987%_
                                            _%g4244042479%_)
                                           (_%g4249642529%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4498644987%_))))
                                      (let ((_%__kont4498944990%_
                                             (lambda (_%g4249842916%_)
                                               (if (gx#stx-null?
                                                    _%g4243942477%_)
                                                   (_%generate-fini42344%_
                                                    (_%generate-thunk42342%_
                                                     _%body42434%_)
                                                    (foldr (lambda (_%g4293042933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4293142936%_)
                     (cons _%g4293042933%_ _%g4293142936%_))
                   '()
                   _%g4249842916%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42339%_))))
                                            (_%__kont4499344994%_
                                             (lambda (_%g4251142585%_)
                                               (let _%lp42602%_ ((_%rest42605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4243942477%_)
                         (_%handlers42607%_
                          (cons (foldr (lambda (_%g4286242865%_
                                                _%g4286342868%_)
                                         (cons _%g4286242865%_
                                               _%g4286342868%_))
                                       '()
                                       _%g4251142585%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4492044921%_
                                                         _%rest42605%_)
                                                        (_%g4261142651%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4492044921%_))))
                                                   (let ((_%__kont4492344924%_
                                                          (lambda (_%g4261342832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4261442834%_)
                    (_%lp42602%_
                     _%g4261342832%_
                     (cons (foldr (lambda (_%g4285042853%_ _%g4285142856%_)
                                    (cons _%g4285042853%_ _%g4285142856%_))
                                  '()
                                  _%g4261442834%_)
                           _%handlers42607%_))))
                 (_%__kont4492744928%_
                  (lambda (_%g4263042717%_)
                    (let* ((_%g4273842746%_
                            (lambda (_%g4273942742%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4273942742%_)))
                           (_%g4273742773%_
                            (lambda (_%g4273942750%_)
                              ((lambda (_%g4274042753%_)
                                 (_%generate-fini42344%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g4274042753%_ '())))
                                  (foldr (lambda (_%g4276442767%_
                                                  _%g4276542770%_)
                                           (cons _%g4276442767%_
                                                 _%g4276542770%_))
                                         '()
                                         _%g4263042717%_)))
                               _%g4273942750%_))))
                      (_%g4273742773%_
                       (_%generate-catch42345%_
                        _%handlers42607%_
                        (_%generate-thunk42342%_ _%body42434%_))))))
                 (_%__kont4493144932%_
                  (lambda ()
                    (_%generate-catch42345%_
                     _%handlers42607%_
                     (_%generate-thunk42342%_ _%body42434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4261042662%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4492044921%_)
                           (_%__kont4493144932%_)
                           (let () (declare (not safe)) (_%g4261142651%_)))))
                    (_%__match4498144982%_
                     (lambda (_%e4263142669%_
                              _%hd4263242673%_
                              _%tl4263342676%_
                              _%e4263442679%_
                              _%hd4263542683%_
                              _%tl4263642686%_
                              _%__splice4492944930%_
                              _%target4263742689%_
                              _%tl4263942692%_)
                       (letrec ((_%loop4264042695%_
                                 (lambda (_%hd4263842699%_ _%fini4264442702%_)
                                   (if (gx#stx-pair? _%hd4263842699%_)
                                       (let ((_%e4264142704%_
                                              (gx#syntax-e _%hd4263842699%_)))
                                         (let ((_%lp-tl4264342711%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4264142704%_)))
                                               (_%lp-hd4264242708%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4264142704%_))))
                                           (_%loop4264042695%_
                                            _%lp-tl4264342711%_
                                            (cons _%lp-hd4264242708%_
                                                  _%fini4264442702%_))))
                                       (let ((_%fini4264542714%_
                                              (reverse _%fini4264442702%_)))
                                         (if (gx#stx-null? _%tl4263342676%_)
                                             (_%__kont4492744928%_
                                              _%fini4264542714%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4261142651%_))))))))
                         (_%loop4264042695%_ _%target4263742689%_ '()))))
                    (_%__match4495744958%_
                     (lambda (_%e4261542784%_
                              _%hd4261642788%_
                              _%tl4261742791%_
                              _%e4261842794%_
                              _%hd4261942798%_
                              _%tl4262042801%_
                              _%__splice4492544926%_
                              _%target4262142804%_
                              _%tl4262342807%_)
                       (letrec ((_%loop4262442810%_
                                 (lambda (_%hd4262242814%_
                                          _%handler4262842817%_)
                                   (if (gx#stx-pair? _%hd4262242814%_)
                                       (let ((_%e4262542819%_
                                              (gx#syntax-e _%hd4262242814%_)))
                                         (let ((_%lp-tl4262742826%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4262542819%_)))
                                               (_%lp-hd4262642823%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4262542819%_))))
                                           (_%loop4262442810%_
                                            _%lp-tl4262742826%_
                                            (cons _%lp-hd4262642823%_
                                                  _%handler4262842817%_))))
                                       (let ((_%handler4262942829%_
                                              (reverse _%handler4262842817%_)))
                                         (_%__kont4492344924%_
                                          _%tl4261742791%_
                                          _%handler4262942829%_))))))
                         (_%loop4262442810%_ _%target4262142804%_ '())))))
               (if (gx#stx-pair? _%__stx4492044921%_)
                   (let ((_%e4261542784%_ (gx#syntax-e _%__stx4492044921%_)))
                     (let ((_%tl4261742791%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4261542784%_)))
                           (_%hd4261642788%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4261542784%_))))
                       (if (gx#stx-pair? _%hd4261642788%_)
                           (let ((_%e4261842794%_
                                  (gx#syntax-e _%hd4261642788%_)))
                             (let ((_%tl4262042801%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4261842794%_)))
                                   (_%hd4261942798%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4261842794%_))))
                               (if (gx#identifier? _%hd4261942798%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45097_|
                                        _%hd4261942798%_)
                                       (if (gx#stx-pair/null? _%tl4262042801%_)
                                           (let ((_%__splice4492544926%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4262042801%_
                                                   '0)))
                                             (let ((_%tl4262342807%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4492544926%_
                                                       '1)))
                                                   (_%target4262142804%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4492544926%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4262342807%_)
                                                   (_%__match4495744958%_
                                                    _%e4261542784%_
                                                    _%hd4261642788%_
                                                    _%tl4261742791%_
                                                    _%e4261842794%_
                                                    _%hd4261942798%_
                                                    _%tl4262042801%_
                                                    _%__splice4492544926%_
                                                    _%target4262142804%_
                                                    _%tl4262342807%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4261142651%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4261142651%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45098_|
                                            _%hd4261942798%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4262042801%_)
                                               (let ((_%__splice4492944930%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4262042801%_
                                                       '0)))
                                                 (let ((_%tl4263942692%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4492944930%_
                                                           '1)))
                                                       (_%target4263742689%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4492944930%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4263942692%_)
                                                       (_%__match4498144982%_
                                                        _%e4261542784%_
                                                        _%hd4261642788%_
                                                        _%tl4261742791%_
                                                        _%e4261842794%_
                                                        _%hd4261942798%_
                                                        _%tl4262042801%_
                                                        _%__splice4492944930%_
                                                        _%target4263742689%_
                                                        _%tl4263942692%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4261142651%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4261142651%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4261142651%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4261142651%_)))))
                           (let () (declare (not safe)) (_%g4261142651%_)))))
                   (let () (declare (not safe)) (_%g4261042662%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4499744998%_
                                             (lambda ()
                                               (_%lp42429%_
                                                _%g4243942477%_
                                                (cons _%g4244042479%_
                                                      _%body42434%_)))))
                                        (let* ((_%__match4503545036%_
                                                (lambda (_%e4251242547%_
                                                         _%hd4251342551%_
                                                         _%tl4251442554%_
                                                         _%__splice4499544996%_
                                                         _%target4251542557%_
                                                         _%tl4251742560%_)
                                                  (letrec ((_%loop4251842563%_
                                                            (lambda (_%hd4251642567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4252242570%_)
                      (if (gx#stx-pair? _%hd4251642567%_)
                          (let ((_%e4251942572%_
                                 (gx#syntax-e _%hd4251642567%_)))
                            (let ((_%lp-tl4252142579%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4251942572%_)))
                                  (_%lp-hd4252042576%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4251942572%_))))
                              (_%loop4251842563%_
                               _%lp-tl4252142579%_
                               (cons _%lp-hd4252042576%_
                                     _%handler4252242570%_))))
                          (let ((_%handler4252342582%_
                                 (reverse _%handler4252242570%_)))
                            (_%__kont4499344994%_ _%handler4252342582%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4251842563%_
                                                     _%target4251542557%_
                                                     '()))))
                                               (_%__match4501745018%_
                                                (lambda (_%e4249942878%_
                                                         _%hd4250042882%_
                                                         _%tl4250142885%_
                                                         _%__splice4499144992%_
                                                         _%target4250242888%_
                                                         _%tl4250442891%_)
                                                  (letrec ((_%loop4250542894%_
                                                            (lambda (_%hd4250342898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4250942901%_)
                      (if (gx#stx-pair? _%hd4250342898%_)
                          (let ((_%e4250642903%_
                                 (gx#syntax-e _%hd4250342898%_)))
                            (let ((_%lp-tl4250842910%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4250642903%_)))
                                  (_%lp-hd4250742907%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4250642903%_))))
                              (_%loop4250542894%_
                               _%lp-tl4250842910%_
                               (cons _%lp-hd4250742907%_ _%fini4250942901%_))))
                          (let ((_%fini4251042913%_
                                 (reverse _%fini4250942901%_)))
                            (_%__kont4498944990%_ _%fini4251042913%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4250542894%_
                                                     _%target4250242888%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4498644987%_)
                                              (let ((_%e4249942878%_
                                                     (gx#syntax-e
                                                      _%__stx4498644987%_)))
                                                (let ((_%tl4250142885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4249942878%_)))
                                                      (_%hd4250042882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4249942878%_))))
                                                  (if (gx#identifier?
                                                       _%hd4250042882%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45099_|
                                                           _%hd4250042882%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4250142885%_)
                                                              (let ((_%__splice4499144992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4250142885%_
                              '0)))
                        (let ((_%tl4250442891%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4499144992%_ '1)))
                              (_%target4250242888%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4499144992%_ '0))))
                          (if (gx#stx-null? _%tl4250442891%_)
                              (_%__match4501745018%_
                               _%e4249942878%_
                               _%hd4250042882%_
                               _%tl4250142885%_
                               _%__splice4499144992%_
                               _%target4250242888%_
                               _%tl4250442891%_)
                              (_%__kont4499744998%_))))
                      (_%__kont4499744998%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45100_|
                       _%hd4250042882%_)
                      (if (gx#stx-pair/null? _%tl4250142885%_)
                          (let ((_%__splice4499544996%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4250142885%_
                                  '0)))
                            (let ((_%tl4251742560%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4499544996%_ '1)))
                                  (_%target4251542557%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4499544996%_
                                      '0))))
                              (if (gx#stx-null? _%tl4251742560%_)
                                  (_%__match4503545036%_
                                   _%e4249942878%_
                                   _%hd4250042882%_
                                   _%tl4250142885%_
                                   _%__splice4499544996%_
                                   _%target4251542557%_
                                   _%tl4251742560%_)
                                  (_%__kont4499744998%_))))
                          (_%__kont4499744998%_))
                      (_%__kont4499744998%_)))
              (_%__kont4499744998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4499744998%_)))))))
                                 (_%__kont4504345044%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42434%_)))))
                             (let ((_%g4243642460%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4503845039%_)
                                          (_%__kont4504345044%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4243742449%_))))))
                               (if (gx#stx-pair? _%__stx4503845039%_)
                                   (let ((_%e4244142467%_
                                          (gx#syntax-e _%__stx4503845039%_)))
                                     (let ((_%tl4244342474%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4244142467%_)))
                                           (_%hd4244242471%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4244142467%_))))
                                       (_%__kont4504145042%_
                                        _%tl4244342474%_
                                        _%hd4244242471%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4243642460%_))))))))
                     _%e4236142409%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4235642390%_
                                             _%target4235342384%_
                                             '()))
                                          (_%g4234742367%_ _%g4234842371%_)))))
                                (_%g4234742367%_ _%g4234842371%_))))
                        (_%g4234742367%_ _%g4234842371%_)))))
            (_%g4234642955%_ _%stx42339%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43755%_)
        (let* ((_%g4375943788%_
                (lambda (_%g4376043784%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4376043784%_)))
               (_%g4375843884%_
                (lambda (_%g4376043792%_)
                  (if (gx#stx-pair? _%g4376043792%_)
                      (let ((_%e4376343795%_ (gx#syntax-e _%g4376043792%_)))
                        (let ((_%hd4376443799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4376343795%_)))
                              (_%tl4376543802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4376343795%_))))
                          (if (gx#stx-pair/null? _%tl4376543802%_)
                              (let ((_g45101_
                                     (gx#syntax-split-splice
                                      _%tl4376543802%_
                                      '0)))
                                (begin
                                  (let ((_g45102_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45101_)
                                               (##values-length _g45101_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45102_ 2)))
                                        (error "Context expects 2 values"
                                               _g45102_)))
                                  (let ((_%target4376643805%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45101_ 0)))
                                        (_%tl4376843808%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45101_ 1))))
                                    (if (gx#stx-null? _%tl4376843808%_)
                                        (letrec ((_%loop4376943811%_
                                                  (lambda (_%hd4376743815%_
                                                           _%val4377343818%_
                                                           _%key4377443819%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4376743815%_)
                                                        (let ((_%e4377043821%_
                                                               (gx#syntax-e
                                                                _%hd4376743815%_)))
                                                          (let ((_%lp-hd4377143825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4377043821%_)))
                        (_%lp-tl4377243828%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4377043821%_))))
                    (if (gx#stx-pair? _%lp-hd4377143825%_)
                        (let ((_%e4377743831%_
                               (gx#syntax-e _%lp-hd4377143825%_)))
                          (let ((_%hd4377843835%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4377743831%_)))
                                (_%tl4377943838%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4377743831%_))))
                            (if (gx#stx-pair? _%tl4377943838%_)
                                (let ((_%e4378043841%_
                                       (gx#syntax-e _%tl4377943838%_)))
                                  (let ((_%hd4378143845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4378043841%_)))
                                        (_%tl4378243848%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4378043841%_))))
                                    (if (gx#stx-null? _%tl4378243848%_)
                                        (_%loop4376943811%_
                                         _%lp-tl4377243828%_
                                         (cons _%hd4378143845%_
                                               _%val4377343818%_)
                                         (cons _%hd4377843835%_
                                               _%key4377443819%_))
                                        (_%g4375943788%_ _%g4376043792%_))))
                                (_%g4375943788%_ _%g4376043792%_))))
                        (_%g4375943788%_ _%g4376043792%_))))
                (let ((_%val4377543851%_ (reverse _%val4377343818%_))
                      (_%key4377643853%_ (reverse _%key4377443819%_)))
                  ((lambda (_%g4376143855%_ _%g4376243857%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4376143855%_
                                    _%g4376243857%_)
                                   (foldr (lambda (_%g4387243876%_
                                                   _%g4387343879%_
                                                   _%g4387443881%_)
                                            (cons (cons _%g4387343879%_
                                                        (cons _%g4387243876%_
                                                              '()))
                                                  _%g4387443881%_))
                                          '()
                                          _%g4376143855%_
                                          _%g4376243857%_)))))
                   _%val4377543851%_
                   _%key4377643853%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4376943811%_
                                           _%target4376643805%_
                                           '()
                                           '()))
                                        (_%g4375943788%_ _%g4376043792%_)))))
                              (_%g4375943788%_ _%g4376043792%_))))
                      (_%g4375943788%_ _%g4376043792%_)))))
          (_%g4375843884%_ _%$stx43755%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43889%_)
        (let* ((_%g4389343922%_
                (lambda (_%g4389443918%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4389443918%_)))
               (_%g4389244018%_
                (lambda (_%g4389443926%_)
                  (if (gx#stx-pair? _%g4389443926%_)
                      (let ((_%e4389743929%_ (gx#syntax-e _%g4389443926%_)))
                        (let ((_%hd4389843933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4389743929%_)))
                              (_%tl4389943936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4389743929%_))))
                          (if (gx#stx-pair/null? _%tl4389943936%_)
                              (let ((_g45103_
                                     (gx#syntax-split-splice
                                      _%tl4389943936%_
                                      '0)))
                                (begin
                                  (let ((_g45104_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45103_)
                                               (##values-length _g45103_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45104_ 2)))
                                        (error "Context expects 2 values"
                                               _g45104_)))
                                  (let ((_%target4390043939%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45103_ 0)))
                                        (_%tl4390243942%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45103_ 1))))
                                    (if (gx#stx-null? _%tl4390243942%_)
                                        (letrec ((_%loop4390343945%_
                                                  (lambda (_%hd4390143949%_
                                                           _%val4390743952%_
                                                           _%key4390843953%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4390143949%_)
                                                        (let ((_%e4390443955%_
                                                               (gx#syntax-e
                                                                _%hd4390143949%_)))
                                                          (let ((_%lp-hd4390543959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4390443955%_)))
                        (_%lp-tl4390643962%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4390443955%_))))
                    (if (gx#stx-pair? _%lp-hd4390543959%_)
                        (let ((_%e4391143965%_
                               (gx#syntax-e _%lp-hd4390543959%_)))
                          (let ((_%hd4391243969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4391143965%_)))
                                (_%tl4391343972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4391143965%_))))
                            (if (gx#stx-pair? _%tl4391343972%_)
                                (let ((_%e4391443975%_
                                       (gx#syntax-e _%tl4391343972%_)))
                                  (let ((_%hd4391543979%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4391443975%_)))
                                        (_%tl4391643982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4391443975%_))))
                                    (if (gx#stx-null? _%tl4391643982%_)
                                        (_%loop4390343945%_
                                         _%lp-tl4390643962%_
                                         (cons _%hd4391543979%_
                                               _%val4390743952%_)
                                         (cons _%hd4391243969%_
                                               _%key4390843953%_))
                                        (_%g4389343922%_ _%g4389443926%_))))
                                (_%g4389343922%_ _%g4389443926%_))))
                        (_%g4389343922%_ _%g4389443926%_))))
                (let ((_%val4390943985%_ (reverse _%val4390743952%_))
                      (_%key4391043987%_ (reverse _%key4390843953%_)))
                  ((lambda (_%g4389543989%_ _%g4389643991%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4389543989%_
                                    _%g4389643991%_)
                                   (foldr (lambda (_%g4400644010%_
                                                   _%g4400744013%_
                                                   _%g4400844015%_)
                                            (cons (cons _%g4400744013%_
                                                        (cons _%g4400644010%_
                                                              '()))
                                                  _%g4400844015%_))
                                          '()
                                          _%g4389543989%_
                                          _%g4389643991%_)))))
                   _%val4390943985%_
                   _%key4391043987%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4390343945%_
                                           _%target4390043939%_
                                           '()
                                           '()))
                                        (_%g4389343922%_ _%g4389443926%_)))))
                              (_%g4389343922%_ _%g4389443926%_))))
                      (_%g4389343922%_ _%g4389443926%_)))))
          (_%g4389244018%_ _%$stx43889%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44023%_)
        (let* ((_%g4402744056%_
                (lambda (_%g4402844052%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4402844052%_)))
               (_%g4402644152%_
                (lambda (_%g4402844060%_)
                  (if (gx#stx-pair? _%g4402844060%_)
                      (let ((_%e4403144063%_ (gx#syntax-e _%g4402844060%_)))
                        (let ((_%hd4403244067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4403144063%_)))
                              (_%tl4403344070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4403144063%_))))
                          (if (gx#stx-pair/null? _%tl4403344070%_)
                              (let ((_g45105_
                                     (gx#syntax-split-splice
                                      _%tl4403344070%_
                                      '0)))
                                (begin
                                  (let ((_g45106_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45105_)
                                               (##values-length _g45105_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45106_ 2)))
                                        (error "Context expects 2 values"
                                               _g45106_)))
                                  (let ((_%target4403444073%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45105_ 0)))
                                        (_%tl4403644076%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45105_ 1))))
                                    (if (gx#stx-null? _%tl4403644076%_)
                                        (letrec ((_%loop4403744079%_
                                                  (lambda (_%hd4403544083%_
                                                           _%val4404144086%_
                                                           _%key4404244087%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4403544083%_)
                                                        (let ((_%e4403844089%_
                                                               (gx#syntax-e
                                                                _%hd4403544083%_)))
                                                          (let ((_%lp-hd4403944093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4403844089%_)))
                        (_%lp-tl4404044096%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4403844089%_))))
                    (if (gx#stx-pair? _%lp-hd4403944093%_)
                        (let ((_%e4404544099%_
                               (gx#syntax-e _%lp-hd4403944093%_)))
                          (let ((_%hd4404644103%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4404544099%_)))
                                (_%tl4404744106%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4404544099%_))))
                            (if (gx#stx-pair? _%tl4404744106%_)
                                (let ((_%e4404844109%_
                                       (gx#syntax-e _%tl4404744106%_)))
                                  (let ((_%hd4404944113%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4404844109%_)))
                                        (_%tl4405044116%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4404844109%_))))
                                    (if (gx#stx-null? _%tl4405044116%_)
                                        (_%loop4403744079%_
                                         _%lp-tl4404044096%_
                                         (cons _%hd4404944113%_
                                               _%val4404144086%_)
                                         (cons _%hd4404644103%_
                                               _%key4404244087%_))
                                        (_%g4402744056%_ _%g4402844060%_))))
                                (_%g4402744056%_ _%g4402844060%_))))
                        (_%g4402744056%_ _%g4402844060%_))))
                (let ((_%val4404344119%_ (reverse _%val4404144086%_))
                      (_%key4404444121%_ (reverse _%key4404244087%_)))
                  ((lambda (_%g4402944123%_ _%g4403044125%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4402944123%_
                                    _%g4403044125%_)
                                   (foldr (lambda (_%g4414044144%_
                                                   _%g4414144147%_
                                                   _%g4414244149%_)
                                            (cons (cons _%g4414144147%_
                                                        (cons _%g4414044144%_
                                                              '()))
                                                  _%g4414244149%_))
                                          '()
                                          _%g4402944123%_
                                          _%g4403044125%_)))))
                   _%val4404344119%_
                   _%key4404444121%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4403744079%_
                                           _%target4403444073%_
                                           '()
                                           '()))
                                        (_%g4402744056%_ _%g4402844060%_)))))
                              (_%g4402744056%_ _%g4402844060%_))))
                      (_%g4402744056%_ _%g4402844060%_)))))
          (_%g4402644152%_ _%$stx44023%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44157%_)
        (let* ((_%g4416044184%_
                (lambda (_%g4416144180%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4416144180%_)))
               (_%g4415944425%_
                (lambda (_%g4416144188%_)
                  (if (gx#stx-pair? _%g4416144188%_)
                      (let ((_%e4416444191%_ (gx#syntax-e _%g4416144188%_)))
                        (let ((_%hd4416544195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4416444191%_)))
                              (_%tl4416644198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4416444191%_))))
                          (if (gx#stx-pair? _%tl4416644198%_)
                              (let ((_%e4416744201%_
                                     (gx#syntax-e _%tl4416644198%_)))
                                (let ((_%hd4416844205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4416744201%_)))
                                      (_%tl4416944208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4416744201%_))))
                                  (if (gx#stx-pair/null? _%tl4416944208%_)
                                      (let ((_g45107_
                                             (gx#syntax-split-splice
                                              _%tl4416944208%_
                                              '0)))
                                        (begin
                                          (let ((_g45108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45107_)
                                                       (##values-length
                                                        _g45107_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45108_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45108_)))
                                          (let ((_%target4417044211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45107_ 0)))
                                                (_%tl4417244214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45107_ 1))))
                                            (if (gx#stx-null? _%tl4417244214%_)
                                                (letrec ((_%loop4417344217%_
                                                          (lambda (_%hd4417144221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4417744224%_)
                    (if (gx#stx-pair? _%hd4417144221%_)
                        (let ((_%e4417444226%_ (gx#syntax-e _%hd4417144221%_)))
                          (let ((_%lp-hd4417544230%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4417444226%_)))
                                (_%lp-tl4417644233%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4417444226%_))))
                            (_%loop4417344217%_
                             _%lp-tl4417644233%_
                             (cons _%lp-hd4417544230%_ _%entry4417744224%_))))
                        (let ((_%entry4417844236%_
                               (reverse _%entry4417744224%_)))
                          ((lambda (_%g4416244239%_ _%g4416344241%_)
                             (let* ((_%g4425944267%_
                                     (lambda (_%g4426044263%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4426044263%_)))
                                    (_%g4425844413%_
                                     (lambda (_%g4426044271%_)
                                       ((lambda (_%g4426144274%_)
                                          (let* ((_%g4428644312%_
                                                  (lambda (_%g4428744308%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4428744308%_)))
                                                 (_%g4428544401%_
                                                  (lambda (_%g4428744316%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4428744316%_)
                                                        (let ((_g45109_
                                                               (gx#syntax-split-splice
                                                                _%g4428744316%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45109_)
                                 (##values-length _g45109_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45110_ 2)))
                          (error "Context expects 2 values" _g45110_)))
                    (let ((_%target4429044319%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45109_ 0)))
                          (_%tl4429244322%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45109_ 1))))
                      (if (gx#stx-null? _%tl4429244322%_)
                          (letrec ((_%loop4429344325%_
                                    (lambda (_%hd4429144329%_
                                             _%val4429744332%_
                                             _%key4429844333%_)
                                      (if (gx#stx-pair? _%hd4429144329%_)
                                          (let ((_%e4429444335%_
                                                 (gx#syntax-e
                                                  _%hd4429144329%_)))
                                            (let ((_%lp-hd4429544339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4429444335%_)))
                                                  (_%lp-tl4429644342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4429444335%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4429544339%_)
                                                  (let ((_%e4430144345%_
                                                         (gx#syntax-e
                                                          _%lp-hd4429544339%_)))
                                                    (let ((_%hd4430244349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4430144345%_)))
                                                          (_%tl4430344352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4430144345%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4430344352%_)
                                                          (let ((_%e4430444355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4430344352%_)))
                    (let ((_%hd4430544359%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4430444355%_)))
                          (_%tl4430644362%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4430444355%_))))
                      (if (gx#stx-null? _%tl4430644362%_)
                          (_%loop4429344325%_
                           _%lp-tl4429644342%_
                           (cons _%hd4430544359%_ _%val4429744332%_)
                           (cons _%hd4430244349%_ _%key4429844333%_))
                          (_%g4428644312%_ _%g4428744316%_))))
                  (_%g4428644312%_ _%g4428744316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4428644312%_
                                                   _%g4428744316%_))))
                                          (let ((_%val4429944365%_
                                                 (reverse _%val4429744332%_))
                                                (_%key4430044367%_
                                                 (reverse _%key4429844333%_)))
                                            ((lambda (_%g4428844369%_
                                                      _%g4428944371%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g4416344241%_
                                     (cons 'size: (cons _%g4426144274%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g4428844369%_
                      _%g4428944371%_)
                     (foldr (lambda (_%g4438944393%_
                                     _%g4439044396%_
                                     _%g4439144398%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4439044396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4438944393%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4439144398%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g4428844369%_
                            _%g4428944371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4429944365%_
                                             _%key4430044367%_))))))
                            (_%loop4429344325%_ _%target4429044319%_ '() '()))
                          (_%g4428644312%_ _%g4428744316%_)))))
                (_%g4428644312%_ _%g4428744316%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4428544401%_
                                             (foldr (lambda (_%g4440444407%_
                                                             _%g4440544410%_)
                                                      (cons _%g4440444407%_
                                                            _%g4440544410%_))
                                                    '()
                                                    _%g4416244239%_))))
                                        _%g4426044271%_))))
                               (_%g4425844413%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4441644419%_
                                                 _%g4441744422%_)
                                          (cons _%g4441644419%_
                                                _%g4441744422%_))
                                        '()
                                        _%g4416244239%_)))))
                           _%entry4417844236%_
                           _%hd4416844205%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4417344217%_
                                                   _%target4417044211%_
                                                   '()))
                                                (_%g4416044184%_
                                                 _%g4416144188%_)))))
                                      (_%g4416044184%_ _%g4416144188%_))))
                              (_%g4416044184%_ _%g4416144188%_))))
                      (_%g4416044184%_ _%g4416144188%_)))))
          (_%g4415944425%_ _%stx44157%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44431%_)
        (let* ((_%g4443444448%_
                (lambda (_%g4443544444%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4443544444%_)))
               (_%g4443344520%_
                (lambda (_%g4443544452%_)
                  (if (gx#stx-pair? _%g4443544452%_)
                      (let ((_%e4443744455%_ (gx#syntax-e _%g4443544452%_)))
                        (let ((_%hd4443844459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4443744455%_)))
                              (_%tl4443944462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4443744455%_))))
                          (if (gx#stx-pair? _%tl4443944462%_)
                              (let ((_%e4444044465%_
                                     (gx#syntax-e _%tl4443944462%_)))
                                (let ((_%hd4444144469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4444044465%_)))
                                      (_%tl4444244472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4444044465%_))))
                                  (if (gx#stx-null? _%tl4444244472%_)
                                      ((lambda (_%g4443644475%_)
                                         (if (gx#stx-string? _%g4443644475%_)
                                             (let* ((_%g4448944497%_
                                                     (lambda (_%g4449044493%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4449044493%_)))
                                                    (_%g4448844516%_
                                                     (lambda (_%g4449044501%_)
                                                       ((lambda (_%g4449144504%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g4449144504%_ '())))
                _%g4449044501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4448844516%_
                                                (string->bytes
                                                 (gx#stx-e _%g4443644475%_))))
                                             (_%g4443444448%_
                                              _%g4443544452%_)))
                                       _%hd4444144469%_)
                                      (_%g4443444448%_ _%g4443544452%_))))
                              (_%g4443444448%_ _%g4443544452%_))))
                      (_%g4443444448%_ _%g4443544452%_)))))
          (_%g4443344520%_ _%stx44431%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44524%_)
        (let* ((_%g4452744541%_
                (lambda (_%g4452844537%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4452844537%_)))
               (_%g4452644582%_
                (lambda (_%g4452844545%_)
                  (if (gx#stx-pair? _%g4452844545%_)
                      (let ((_%e4453044548%_ (gx#syntax-e _%g4452844545%_)))
                        (let ((_%hd4453144552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4453044548%_)))
                              (_%tl4453244555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4453044548%_))))
                          (if (gx#stx-pair? _%tl4453244555%_)
                              (let ((_%e4453344558%_
                                     (gx#syntax-e _%tl4453244555%_)))
                                (let ((_%hd4453444562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4453344558%_)))
                                      (_%tl4453544565%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4453344558%_))))
                                  (if (gx#stx-null? _%tl4453544565%_)
                                      ((lambda (_%g4452944568%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g4452944568%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4453444562%_)
                                      (_%g4452744541%_ _%g4452844545%_))))
                              (_%g4452744541%_ _%g4452844545%_))))
                      (_%g4452744541%_ _%g4452844545%_)))))
          (_%g4452644582%_ _%stx44524%_))))))
