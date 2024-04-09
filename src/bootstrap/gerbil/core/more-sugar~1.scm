(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
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
    (lambda _%$args40546%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40546%_)))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setq-macro::t| 'macro))
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
    (lambda _%$args40542%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40542%_)))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setf-macro::t| 'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
    (lambda (_%stx40539%_)
      (if (gx#identifier? _%stx40539%_)
          (let ((__tmp41764 (gx#syntax-local-value _%stx40539%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41764))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40536%_)
      (if (gx#identifier? _%stx40536%_)
          (let ((__tmp41765 (gx#syntax-local-value _%stx40536%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41765))
          '#f)))
  (define |gerbil/core/more-sugar[1]#expand-set!|
    (lambda (_%stx40161%_)
      (let* ((_%__stx4160341604%_ _%stx40161%_)
             (_%g4016740230%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4160341604%_))))
        (let ((_%__kont4160641607%_
               (lambda (_%L40513%_ _%L40515%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40515%_)
                  _%stx40161%_)))
              (_%__kont4160841609%_
               (lambda (_%L40402%_ _%L40404%_ _%L40405%_)
                 (let* ((_%g4042740435%_
                         (lambda (_%g4042840431%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4042840431%_)))
                        (_%g4042640462%_
                         (lambda (_%g4042840439%_)
                           ((lambda (_%L40442%_)
                              (let ()
                                (cons _%L40442%_
                                      (foldr (lambda (_%g4045340456%_
                                                      _%g4045440459%_)
                                               (cons _%g4045340456%_
                                                     _%g4045440459%_))
                                             (cons _%L40402%_ '())
                                             _%L40404%_))))
                            _%g4042840439%_)))
                        (__tmp41766
                         (gx#stx-identifier _%L40405%_ _%L40405%_ '"-set!")))
                   (declare (not safe))
                   (_%g4042640462%_ __tmp41766))))
              (_%__kont4161241613%_
               (lambda (_%L40312%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40312%_)
                  _%stx40161%_)))
              (_%__kont4161441615%_
               (lambda (_%L40267%_ _%L40269%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40269%_ (cons _%L40267%_ '()))))))
          (let* ((_%__match4170241703%_
                  (lambda (_%e4021840237%_
                           _%hd4021740241%_
                           _%tl4021640244%_
                           _%e4022140247%_
                           _%hd4022040251%_
                           _%tl4021940254%_
                           _%e4022440257%_
                           _%hd4022340261%_
                           _%tl4022240264%_)
                    (let ((_%L40267%_ _%hd4022340261%_)
                          (_%L40269%_ _%hd4022040251%_))
                      (if (gx#identifier? _%L40269%_)
                          (_%__kont4161441615%_ _%L40267%_ _%L40269%_)
                          (let () (declare (not safe)) (_%g4016740230%_))))))
                 (_%__match4168241683%_
                  (lambda (_%e4021040292%_
                           _%hd4020940296%_
                           _%tl4020840299%_
                           _%e4021340302%_
                           _%hd4021240306%_
                           _%tl4021140309%_)
                    (let ((_%L40312%_ _%hd4021240306%_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%L40312%_))
                          (_%__kont4161241613%_ _%L40312%_)
                          (if (gx#stx-pair? _%tl4021140309%_)
                              (let ((_%e4022440257%_
                                     (gx#syntax-e _%tl4021140309%_)))
                                (let ((_%tl4022240264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4022440257%_)))
                                      (_%hd4022340261%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4022440257%_))))
                                  (if (gx#stx-null? _%tl4022240264%_)
                                      (_%__match4170241703%_
                                       _%e4021040292%_
                                       _%hd4020940296%_
                                       _%tl4020840299%_
                                       _%e4021340302%_
                                       _%hd4021240306%_
                                       _%tl4021140309%_
                                       _%e4022440257%_
                                       _%hd4022340261%_
                                       _%tl4022240264%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4016740230%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4016740230%_)))))))
                 (_%__match4167041671%_
                  (lambda (_%e4018840332%_
                           _%hd4018740336%_
                           _%tl4018640339%_
                           _%e4019140342%_
                           _%hd4019040346%_
                           _%tl4018940349%_
                           _%e4019440352%_
                           _%hd4019340356%_
                           _%tl4019240359%_
                           _%__splice4161041611%_
                           _%target4019540362%_
                           _%tl4019740365%_)
                    (letrec ((_%loop4019840368%_
                              (lambda (_%hd4019640372%_ _%arg4020240375%_)
                                (if (gx#stx-pair? _%hd4019640372%_)
                                    (let ((_%e4019940378%_
                                           (gx#syntax-e _%hd4019640372%_)))
                                      (let ((_%lp-tl4020140385%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4019940378%_)))
                                            (_%lp-hd4020040382%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4019940378%_))))
                                        (let ((__tmp41767
                                               (cons _%lp-hd4020040382%_
                                                     _%arg4020240375%_)))
                                          (declare (not safe))
                                          (_%loop4019840368%_
                                           _%lp-tl4020140385%_
                                           __tmp41767))))
                                    (let ((_%arg4020340388%_
                                           (reverse _%arg4020240375%_)))
                                      (if (gx#stx-pair? _%tl4018940349%_)
                                          (let ((_%e4020640392%_
                                                 (gx#syntax-e
                                                  _%tl4018940349%_)))
                                            (let ((_%tl4020440399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4020640392%_)))
                                                  (_%hd4020540396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4020640392%_))))
                                              (if (gx#stx-null?
                                                   _%tl4020440399%_)
                                                  (let ((_%L40402%_
                                                         _%hd4020540396%_)
                                                        (_%L40404%_
                                                         _%arg4020340388%_)
                                                        (_%L40405%_
                                                         _%hd4019340356%_))
                                                    (if (gx#identifier?
                                                         _%L40405%_)
                                                        (_%__kont4160841609%_
                                                         _%L40402%_
                                                         _%L40404%_
                                                         _%L40405%_)
                                                        (_%__match4168241683%_
                                                         _%e4018840332%_
                                                         _%hd4018740336%_
                                                         _%tl4018640339%_
                                                         _%e4019140342%_
                                                         _%hd4019040346%_
                                                         _%tl4018940349%_)))
                                                  (_%__match4168241683%_
                                                   _%e4018840332%_
                                                   _%hd4018740336%_
                                                   _%tl4018640339%_
                                                   _%e4019140342%_
                                                   _%hd4019040346%_
                                                   _%tl4018940349%_))))
                                          (_%__match4168241683%_
                                           _%e4018840332%_
                                           _%hd4018740336%_
                                           _%tl4018640339%_
                                           _%e4019140342%_
                                           _%hd4019040346%_
                                           _%tl4018940349%_)))))))
                      (let ()
                        (declare (not safe))
                        (_%loop4019840368%_ _%target4019540362%_ '()))))))
            (if (gx#stx-pair? _%__stx4160341604%_)
                (let ((_%e4017340473%_ (gx#syntax-e _%__stx4160341604%_)))
                  (let ((_%tl4017140480%_
                         (let () (declare (not safe)) (##cdr _%e4017340473%_)))
                        (_%hd4017240477%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4017340473%_))))
                    (if (gx#stx-pair? _%tl4017140480%_)
                        (let ((_%e4017640483%_ (gx#syntax-e _%tl4017140480%_)))
                          (let ((_%tl4017440490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4017640483%_)))
                                (_%hd4017540487%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4017640483%_))))
                            (if (gx#stx-pair? _%hd4017540487%_)
                                (let ((_%e4017940493%_
                                       (gx#syntax-e _%hd4017540487%_)))
                                  (let ((_%tl4017740500%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4017940493%_)))
                                        (_%hd4017840497%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4017940493%_))))
                                    (if (gx#stx-pair? _%tl4017440490%_)
                                        (let ((_%e4018240503%_
                                               (gx#syntax-e _%tl4017440490%_)))
                                          (let ((_%tl4018040510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4018240503%_)))
                                                (_%hd4018140507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4018240503%_))))
                                            (if (gx#stx-null? _%tl4018040510%_)
                                                (if (let ((__tmp41768
                                                           (gx#datum->syntax
                                                            '#f
                                                            'setfid)))
                                                      (declare (not safe))
                                                      (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       __tmp41768))
                                                    (let ((_%L40513%_
                                                           _%hd4018140507%_)
                                                          (_%L40515%_
                                                           _%hd4017840497%_))
                                                      (_%__kont4160641607%_
                                                       _%L40513%_
                                                       _%L40515%_))
                                                    (if (gx#stx-pair/null?
                                                         _%tl4017740500%_)
                                                        (let ((_%__splice4161041611%_
                                                               (gx#syntax-split-splice
                                                                _%tl4017740500%_
                                                                '0)))
                                                          (let ((_%tl4019740365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4161041611%_ '1)))
                        (_%target4019540362%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4161041611%_ '0))))
                    (if (gx#stx-null? _%tl4019740365%_)
                        (_%__match4167041671%_
                         _%e4017340473%_
                         _%hd4017240477%_
                         _%tl4017140480%_
                         _%e4017640483%_
                         _%hd4017540487%_
                         _%tl4017440490%_
                         _%e4017940493%_
                         _%hd4017840497%_
                         _%tl4017740500%_
                         _%__splice4161041611%_
                         _%target4019540362%_
                         _%tl4019740365%_)
                        (_%__match4168241683%_
                         _%e4017340473%_
                         _%hd4017240477%_
                         _%tl4017140480%_
                         _%e4017640483%_
                         _%hd4017540487%_
                         _%tl4017440490%_))))
                (_%__match4168241683%_
                 _%e4017340473%_
                 _%hd4017240477%_
                 _%tl4017140480%_
                 _%e4017640483%_
                 _%hd4017540487%_
                 _%tl4017440490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl4017740500%_)
                                                    (let ((_%__splice4161041611%_
                                                           (gx#syntax-split-splice
                                                            _%tl4017740500%_
                                                            '0)))
                                                      (let ((_%tl4019740365%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4161041611%_ '1)))
                    (_%target4019540362%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4161041611%_ '0))))
                (if (gx#stx-null? _%tl4019740365%_)
                    (_%__match4167041671%_
                     _%e4017340473%_
                     _%hd4017240477%_
                     _%tl4017140480%_
                     _%e4017640483%_
                     _%hd4017540487%_
                     _%tl4017440490%_
                     _%e4017940493%_
                     _%hd4017840497%_
                     _%tl4017740500%_
                     _%__splice4161041611%_
                     _%target4019540362%_
                     _%tl4019740365%_)
                    (_%__match4168241683%_
                     _%e4017340473%_
                     _%hd4017240477%_
                     _%tl4017140480%_
                     _%e4017640483%_
                     _%hd4017540487%_
                     _%tl4017440490%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match4168241683%_
                                                     _%e4017340473%_
                                                     _%hd4017240477%_
                                                     _%tl4017140480%_
                                                     _%e4017640483%_
                                                     _%hd4017540487%_
                                                     _%tl4017440490%_)))))
                                        (if (gx#stx-pair/null?
                                             _%tl4017740500%_)
                                            (let ((_%__splice4161041611%_
                                                   (gx#syntax-split-splice
                                                    _%tl4017740500%_
                                                    '0)))
                                              (let ((_%tl4019740365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4161041611%_
                                                        '1)))
                                                    (_%target4019540362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4161041611%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4019740365%_)
                                                    (_%__match4167041671%_
                                                     _%e4017340473%_
                                                     _%hd4017240477%_
                                                     _%tl4017140480%_
                                                     _%e4017640483%_
                                                     _%hd4017540487%_
                                                     _%tl4017440490%_
                                                     _%e4017940493%_
                                                     _%hd4017840497%_
                                                     _%tl4017740500%_
                                                     _%__splice4161041611%_
                                                     _%target4019540362%_
                                                     _%tl4019740365%_)
                                                    (_%__match4168241683%_
                                                     _%e4017340473%_
                                                     _%hd4017240477%_
                                                     _%tl4017140480%_
                                                     _%e4017640483%_
                                                     _%hd4017540487%_
                                                     _%tl4017440490%_))))
                                            (_%__match4168241683%_
                                             _%e4017340473%_
                                             _%hd4017240477%_
                                             _%tl4017140480%_
                                             _%e4017640483%_
                                             _%hd4017540487%_
                                             _%tl4017440490%_)))))
                                (_%__match4168241683%_
                                 _%e4017340473%_
                                 _%hd4017240477%_
                                 _%tl4017140480%_
                                 _%e4017640483%_
                                 _%hd4017540487%_
                                 _%tl4017440490%_))))
                        (let () (declare (not safe)) (_%g4016740230%_)))))
                (let () (declare (not safe)) (_%g4016740230%_))))))))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40551%_)
      (let ()
        (declare (not safe))
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40551%_))))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40554%_)
      (let* ((_%g4055740581%_
              (lambda (_%g4055840577%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4055840577%_)))
             (_%g4055640759%_
              (lambda (_%g4055840585%_)
                (if (gx#stx-pair? _%g4055840585%_)
                    (let ((_%e4056340588%_ (gx#syntax-e _%g4055840585%_)))
                      (let ((_%hd4056240592%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4056340588%_)))
                            (_%tl4056140595%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4056340588%_))))
                        (if (gx#stx-pair/null? _%tl4056140595%_)
                            (if (let ((__tmp41769
                                       (gx#stx-length _%tl4056140595%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41769 '1))
                                (let ((_g41770_
                                       (gx#syntax-split-splice
                                        _%tl4056140595%_
                                        '1)))
                                  (begin
                                    (let ((_g41771_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41770_)
                                                 (##vector-length _g41770_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41771_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41771_)))
                                    (let ((_%target4056440598%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41770_ 0)))
                                          (_%tl4056640601%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41770_ 1))))
                                      (if (gx#stx-pair? _%tl4056640601%_)
                                          (let ((_%e4057540604%_
                                                 (gx#syntax-e
                                                  _%tl4056640601%_)))
                                            (let ((_%hd4057440608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4057540604%_)))
                                                  (_%tl4057340611%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4057540604%_))))
                                              (if (gx#stx-null?
                                                   _%tl4057340611%_)
                                                  (letrec ((_%loop4056740614%_
                                                            (lambda (_%hd4056540618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4057140621%_)
                      (if (gx#stx-pair? _%hd4056540618%_)
                          (let ((_%e4056840624%_
                                 (gx#syntax-e _%hd4056540618%_)))
                            (let ((_%lp-hd4056940628%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4056840624%_)))
                                  (_%lp-tl4057040631%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4056840624%_))))
                              (_%loop4056740614%_
                               _%lp-tl4057040631%_
                               (cons _%lp-hd4056940628%_ _%tgt4057140621%_))))
                          (let ((_%tgt4057240634%_
                                 (reverse _%tgt4057140621%_)))
                            ((lambda (_%L40638%_ _%L40640%_)
                               (let* ((_%g4065840675%_
                                       (lambda (_%g4065940671%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4065940671%_)))
                                      (_%g4065740747%_
                                       (lambda (_%g4065940679%_)
                                         (if (gx#stx-pair/null?
                                              _%g4065940679%_)
                                             (let ((_g41772_
                                                    (gx#syntax-split-splice
                                                     _%g4065940679%_
                                                     '0)))
                                               (begin
                                                 (let ((_g41773_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g41772_)
                                                              (##vector-length
                                                               _g41772_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g41773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g41773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target4066140682%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41772_
                                                           0)))
                                                       (_%tl4066340685%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41772_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4066340685%_)
                                                       (letrec ((_%loop4066440688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4066240692%_ _%$e4066840695%_)
                           (if (gx#stx-pair? _%hd4066240692%_)
                               (let ((_%e4066540698%_
                                      (gx#syntax-e _%hd4066240692%_)))
                                 (let ((_%lp-hd4066640702%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4066540698%_)))
                                       (_%lp-tl4066740705%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4066540698%_))))
                                   (_%loop4066440688%_
                                    _%lp-tl4066740705%_
                                    (cons _%lp-hd4066640702%_
                                          _%$e4066840695%_))))
                               (let ((_%$e4066940708%_
                                      (reverse _%$e4066840695%_)))
                                 ((lambda (_%L40712%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4073040733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4073140736%_)
                               (cons _%g4073040733%_ _%g4073140736%_))
                             '()
                             _%L40712%_)
                      (cons _%L40638%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L40712%_
                                                     _%L40640%_)
                                                    (foldr (lambda (_%g4072740739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4072840742%_
                            _%g4072940744%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4072840742%_
                                       (cons _%g4072740739%_ '())))
                           _%g4072940744%_))
                   '()
                   _%L40712%_
                   _%L40640%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4066940708%_))))))
                 (_%loop4066440688%_ _%target4066140682%_ '()))
               (_%g4065840675%_ _%g4065940679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4065840675%_
                                              _%g4065940679%_)))))
                                 (_%g4065740747%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4075040753%_
                                                   _%g4075140756%_)
                                            (cons _%g4075040753%_
                                                  _%g4075140756%_))
                                          '()
                                          _%L40640%_)))))
                             _%hd4057440608%_
                             _%tgt4057240634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4056740614%_
                                                     _%target4056440598%_
                                                     '()))
                                                  (_%g4055740581%_
                                                   _%g4055840585%_))))
                                          (_%g4055740581%_ _%g4055840585%_)))))
                                (_%g4055740581%_ _%g4055840585%_))
                            (_%g4055740581%_ _%g4055840585%_))))
                    (_%g4055740581%_ _%g4055840585%_)))))
        (_%g4055640759%_ _%stx40554%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40765%_)
      (let* ((_%__stx4170541706%_ _%stx40765%_)
             (_%g4076940827%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4170541706%_))))
        (let ((_%__kont4170841709%_
               (lambda (_%L41161%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4117741180%_ _%g4117841183%_)
                                      (cons _%g4117741180%_ _%g4117841183%_))
                                    '()
                                    _%L41161%_)))))
              (_%__kont4171241713%_
               (lambda (_%L40938%_ _%L40940%_ _%L40941%_)
                 (let* ((_%g4096440972%_
                         (lambda (_%g4096540968%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4096540968%_)))
                        (_%g4096341092%_
                         (lambda (_%g4096540976%_)
                           ((lambda (_%L40979%_)
                              (let ()
                                (let* ((_%g4099141008%_
                                        (lambda (_%g4099241004%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g4099241004%_)))
                                       (_%g4099041072%_
                                        (lambda (_%g4099241012%_)
                                          (if (gx#stx-pair/null?
                                               _%g4099241012%_)
                                              (let ((_g41774_
                                                     (gx#syntax-split-splice
                                                      _%g4099241012%_
                                                      '0)))
                                                (begin
                                                  (let ((_g41775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g41774_)
                                                               (##vector-length
                                                                _g41774_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g41775_ 2)))
                (error "Context expects 2 values" _g41775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4099441015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g41774_
                                                            0)))
                                                        (_%tl4099641018%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g41774_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4099641018%_)
                                                        (letrec ((_%loop4099741021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4099541025%_ _%arg4100141028%_)
                            (if (gx#stx-pair? _%hd4099541025%_)
                                (let ((_%e4099841031%_
                                       (gx#syntax-e _%hd4099541025%_)))
                                  (let ((_%lp-hd4099941035%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4099841031%_)))
                                        (_%lp-tl4100041038%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4099841031%_))))
                                    (_%loop4099741021%_
                                     _%lp-tl4100041038%_
                                     (cons _%lp-hd4099941035%_
                                           _%arg4100141028%_))))
                                (let ((_%arg4100241041%_
                                       (reverse _%arg4100141028%_)))
                                  ((lambda (_%L41045%_)
                                     (let ()
                                       (cons (gx#datum->syntax
                                              '#f
                                              'call-with-parameters)
                                             (cons _%L40979%_
                                                   (foldr (lambda (_%g4106341066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4106441069%_)
                    (cons _%g4106341066%_ _%g4106441069%_))
                  '()
                  _%L41045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%arg4100241041%_))))))
                  (_%loop4099741021%_ _%target4099441015%_ '()))
                (_%g4099141008%_ _%g4099241012%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4099141008%_
                                               _%g4099241012%_)))))
                                  (_%g4099041072%_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_%g4107541078%_
                                                           _%g4107641081%_)
                                                    (cons _%g4107541078%_
                                                          _%g4107641081%_))
                                                  '()
                                                  _%L40941%_))
                                          (gx#syntax->list
                                           (foldr (lambda (_%g4108341086%_
                                                           _%g4108441089%_)
                                                    (cons _%g4108341086%_
                                                          _%g4108441089%_))
                                                  '()
                                                  _%L40940%_)))))))
                            _%g4096540976%_))))
                   (_%g4096341092%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4109541098%_
                                                 _%g4109641101%_)
                                          (cons _%g4109541098%_
                                                _%g4109641101%_))
                                        '()
                                        _%L40938%_)))
                     (gx#stx-source _%stx40765%_)))))))
          (let* ((_%__match4176041761%_
                  (lambda (_%e4079240834%_
                           _%hd4079140838%_
                           _%tl4079040841%_
                           _%e4079540844%_
                           _%hd4079440848%_
                           _%tl4079340851%_
                           _%__splice4171441715%_
                           _%target4079640854%_
                           _%tl4079840857%_)
                    (letrec ((_%loop4079940860%_
                              (lambda (_%hd4079740864%_
                                       _%expr4080340867%_
                                       _%param4080440869%_)
                                (if (gx#stx-pair? _%hd4079740864%_)
                                    (let ((_%e4080040872%_
                                           (gx#syntax-e _%hd4079740864%_)))
                                      (let ((_%lp-tl4080240879%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4080040872%_)))
                                            (_%lp-hd4080140876%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4080040872%_))))
                                        (if (gx#stx-pair? _%lp-hd4080140876%_)
                                            (let ((_%e4080940882%_
                                                   (gx#syntax-e
                                                    _%lp-hd4080140876%_)))
                                              (let ((_%tl4080740889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4080940882%_)))
                                                    (_%hd4080840886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4080940882%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4080740889%_)
                                                    (let ((_%e4081240892%_
                                                           (gx#syntax-e
                                                            _%tl4080740889%_)))
                                                      (let ((_%tl4081040899%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4081240892%_)))
                    (_%hd4081140896%_
                     (let () (declare (not safe)) (##car _%e4081240892%_))))
                (if (gx#stx-null? _%tl4081040899%_)
                    (_%loop4079940860%_
                     _%lp-tl4080240879%_
                     (cons _%hd4081140896%_ _%expr4080340867%_)
                     (cons _%hd4080840886%_ _%param4080440869%_))
                    (let () (declare (not safe)) (_%g4076940827%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4076940827%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4076940827%_)))))
                                    (let ((_%param4080640905%_
                                           (reverse _%param4080440869%_))
                                          (_%expr4080540902%_
                                           (reverse _%expr4080340867%_)))
                                      (if (gx#stx-pair/null? _%tl4079340851%_)
                                          (let ((_%__splice4171641717%_
                                                 (gx#syntax-split-splice
                                                  _%tl4079340851%_
                                                  '0)))
                                            (let ((_%tl4081540911%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4171641717%_
                                                      '1)))
                                                  (_%target4081340908%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4171641717%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4081540911%_)
                                                  (letrec ((_%loop4081640914%_
                                                            (lambda (_%hd4081440918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4082040921%_)
                      (if (gx#stx-pair? _%hd4081440918%_)
                          (let ((_%e4081740924%_
                                 (gx#syntax-e _%hd4081440918%_)))
                            (let ((_%lp-tl4081940931%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4081740924%_)))
                                  (_%lp-hd4081840928%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4081740924%_))))
                              (_%loop4081640914%_
                               _%lp-tl4081940931%_
                               (cons _%lp-hd4081840928%_ _%body4082040921%_))))
                          (let ((_%body4082140934%_
                                 (reverse _%body4082040921%_)))
                            (_%__kont4171241713%_
                             _%body4082140934%_
                             _%expr4080540902%_
                             _%param4080640905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4081640914%_
                                                     _%target4081340908%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4076940827%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4076940827%_))))))))
                      (_%loop4079940860%_ _%target4079640854%_ '() '()))))
                 (_%__match4174041741%_
                  (lambda (_%e4077441111%_
                           _%hd4077341115%_
                           _%tl4077241118%_
                           _%e4077741121%_
                           _%hd4077641125%_
                           _%tl4077541128%_
                           _%__splice4171041711%_
                           _%target4077841131%_
                           _%tl4078041134%_)
                    (letrec ((_%loop4078141137%_
                              (lambda (_%hd4077941141%_ _%body4078541144%_)
                                (if (gx#stx-pair? _%hd4077941141%_)
                                    (let ((_%e4078241147%_
                                           (gx#syntax-e _%hd4077941141%_)))
                                      (let ((_%lp-tl4078441154%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4078241147%_)))
                                            (_%lp-hd4078341151%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4078241147%_))))
                                        (_%loop4078141137%_
                                         _%lp-tl4078441154%_
                                         (cons _%lp-hd4078341151%_
                                               _%body4078541144%_))))
                                    (let ((_%body4078641157%_
                                           (reverse _%body4078541144%_)))
                                      (_%__kont4170841709%_
                                       _%body4078641157%_))))))
                      (_%loop4078141137%_ _%target4077841131%_ '())))))
            (if (gx#stx-pair? _%__stx4170541706%_)
                (let ((_%e4077441111%_ (gx#syntax-e _%__stx4170541706%_)))
                  (let ((_%tl4077241118%_
                         (let () (declare (not safe)) (##cdr _%e4077441111%_)))
                        (_%hd4077341115%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4077441111%_))))
                    (if (gx#stx-pair? _%tl4077241118%_)
                        (let ((_%e4077741121%_ (gx#syntax-e _%tl4077241118%_)))
                          (let ((_%tl4077541128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4077741121%_)))
                                (_%hd4077641125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4077741121%_))))
                            (if (gx#stx-null? _%hd4077641125%_)
                                (if (gx#stx-pair/null? _%tl4077541128%_)
                                    (let ((_%__splice4171041711%_
                                           (gx#syntax-split-splice
                                            _%tl4077541128%_
                                            '0)))
                                      (let ((_%tl4078041134%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4171041711%_
                                                '1)))
                                            (_%target4077841131%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4171041711%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4078041134%_)
                                            (_%__match4174041741%_
                                             _%e4077441111%_
                                             _%hd4077341115%_
                                             _%tl4077241118%_
                                             _%e4077741121%_
                                             _%hd4077641125%_
                                             _%tl4077541128%_
                                             _%__splice4171041711%_
                                             _%target4077841131%_
                                             _%tl4078041134%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4077641125%_)
                                                (let ((_%__splice4171441715%_
                                                       (gx#syntax-split-splice
                                                        _%hd4077641125%_
                                                        '0)))
                                                  (let ((_%tl4079840857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4171441715%_
                                                            '1)))
                                                        (_%target4079640854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4171441715%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4079840857%_)
                                                        (_%__match4176041761%_
                                                         _%e4077441111%_
                                                         _%hd4077341115%_
                                                         _%tl4077241118%_
                                                         _%e4077741121%_
                                                         _%hd4077641125%_
                                                         _%tl4077541128%_
                                                         _%__splice4171441715%_
                                                         _%target4079640854%_
                                                         _%tl4079840857%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4076940827%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4076940827%_))))))
                                    (if (gx#stx-pair/null? _%hd4077641125%_)
                                        (let ((_%__splice4171441715%_
                                               (gx#syntax-split-splice
                                                _%hd4077641125%_
                                                '0)))
                                          (let ((_%tl4079840857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4171441715%_
                                                    '1)))
                                                (_%target4079640854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4171441715%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4079840857%_)
                                                (_%__match4176041761%_
                                                 _%e4077441111%_
                                                 _%hd4077341115%_
                                                 _%tl4077241118%_
                                                 _%e4077741121%_
                                                 _%hd4077641125%_
                                                 _%tl4077541128%_
                                                 _%__splice4171441715%_
                                                 _%target4079640854%_
                                                 _%tl4079840857%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4076940827%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4076940827%_))))
                                (if (gx#stx-pair/null? _%hd4077641125%_)
                                    (let ((_%__splice4171441715%_
                                           (gx#syntax-split-splice
                                            _%hd4077641125%_
                                            '0)))
                                      (let ((_%tl4079840857%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4171441715%_
                                                '1)))
                                            (_%target4079640854%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4171441715%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4079840857%_)
                                            (_%__match4176041761%_
                                             _%e4077441111%_
                                             _%hd4077341115%_
                                             _%tl4077241118%_
                                             _%e4077741121%_
                                             _%hd4077641125%_
                                             _%tl4077541128%_
                                             _%__splice4171441715%_
                                             _%target4079640854%_
                                             _%tl4079840857%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4076940827%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4076940827%_))))))
                        (let () (declare (not safe)) (_%g4076940827%_)))))
                (let () (declare (not safe)) (_%g4076940827%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx41194%_)
      (let* ((_%g4119841222%_
              (lambda (_%g4119941218%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4119941218%_)))
             (_%g4119741307%_
              (lambda (_%g4119941226%_)
                (if (gx#stx-pair? _%g4119941226%_)
                    (let ((_%e4120441229%_ (gx#syntax-e _%g4119941226%_)))
                      (let ((_%hd4120341233%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4120441229%_)))
                            (_%tl4120241236%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4120441229%_))))
                        (if (gx#stx-pair? _%tl4120241236%_)
                            (let ((_%e4120741239%_
                                   (gx#syntax-e _%tl4120241236%_)))
                              (let ((_%hd4120641243%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4120741239%_)))
                                    (_%tl4120541246%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4120741239%_))))
                                (if (gx#stx-pair/null? _%tl4120541246%_)
                                    (let ((_g41776_
                                           (gx#syntax-split-splice
                                            _%tl4120541246%_
                                            '0)))
                                      (begin
                                        (let ((_g41777_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41776_)
                                                     (##vector-length _g41776_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41777_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41777_)))
                                        (let ((_%target4120841249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41776_ 0)))
                                              (_%tl4121041252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41776_ 1))))
                                          (if (gx#stx-null? _%tl4121041252%_)
                                              (letrec ((_%loop4121141255%_
                                                        (lambda (_%hd4120941259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4121541262%_)
                  (if (gx#stx-pair? _%hd4120941259%_)
                      (let ((_%e4121241265%_ (gx#syntax-e _%hd4120941259%_)))
                        (let ((_%lp-hd4121341269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4121241265%_)))
                              (_%lp-tl4121441272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4121241265%_))))
                          (_%loop4121141255%_
                           _%lp-tl4121441272%_
                           (cons _%lp-hd4121341269%_ _%body4121541262%_))))
                      (let ((_%body4121641275%_ (reverse _%body4121541262%_)))
                        ((lambda (_%L41279%_ _%L41281%_)
                           (if (gx#identifier? _%L41281%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41281%_ '())
                                                       (foldr (lambda (_%g4129841301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4129941304%_)
                        (cons _%g4129841301%_ _%g4129941304%_))
                      '()
                      _%L41279%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4119841222%_ _%g4119941226%_)))
                         _%body4121641275%_
                         _%hd4120641243%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4121141255%_
                                                 _%target4120841249%_
                                                 '()))
                                              (_%g4119841222%_
                                               _%g4119941226%_)))))
                                    (_%g4119841222%_ _%g4119941226%_))))
                            (_%g4119841222%_ _%g4119941226%_))))
                    (_%g4119841222%_ _%g4119941226%_)))))
        (_%g4119741307%_ _%$stx41194%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41312%_)
      (let* ((_%g4131641344%_
              (lambda (_%g4131741340%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4131741340%_)))
             (_%g4131541443%_
              (lambda (_%g4131741348%_)
                (if (gx#stx-pair? _%g4131741348%_)
                    (let ((_%e4132341351%_ (gx#syntax-e _%g4131741348%_)))
                      (let ((_%hd4132241355%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4132341351%_)))
                            (_%tl4132141358%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4132341351%_))))
                        (if (gx#stx-pair? _%tl4132141358%_)
                            (let ((_%e4132641361%_
                                   (gx#syntax-e _%tl4132141358%_)))
                              (let ((_%hd4132541365%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4132641361%_)))
                                    (_%tl4132441368%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4132641361%_))))
                                (if (gx#stx-pair? _%tl4132441368%_)
                                    (let ((_%e4132941371%_
                                           (gx#syntax-e _%tl4132441368%_)))
                                      (let ((_%hd4132841375%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4132941371%_)))
                                            (_%tl4132741378%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4132941371%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4132741378%_)
                                            (let ((_g41778_
                                                   (gx#syntax-split-splice
                                                    _%tl4132741378%_
                                                    '0)))
                                              (begin
                                                (let ((_g41779_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41778_)
                                                             (##vector-length
                                                              _g41778_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41779_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4133041381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41778_
                                                          0)))
                                                      (_%tl4133241384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41778_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4133241384%_)
                                                      (letrec ((_%loop4133341387%_
                                                                (lambda (_%hd4133141391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4133741394%_)
                          (if (gx#stx-pair? _%hd4133141391%_)
                              (let ((_%e4133441397%_
                                     (gx#syntax-e _%hd4133141391%_)))
                                (let ((_%lp-hd4133541401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4133441397%_)))
                                      (_%lp-tl4133641404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4133441397%_))))
                                  (_%loop4133341387%_
                                   _%lp-tl4133641404%_
                                   (cons _%lp-hd4133541401%_
                                         _%rest4133741394%_))))
                              (let ((_%rest4133841407%_
                                     (reverse _%rest4133741394%_)))
                                ((lambda (_%L41411%_ _%L41413%_ _%L41414%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41413%_
                               (foldr (lambda (_%g4143441437%_ _%g4143541440%_)
                                        (cons _%g4143441437%_ _%g4143541440%_))
                                      '()
                                      _%L41411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4133841407%_
                                 _%hd4132841375%_
                                 _%hd4132541365%_))))))
                (_%loop4133341387%_ _%target4133041381%_ '()))
              (_%g4131641344%_ _%g4131741348%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4131641344%_
                                             _%g4131741348%_))))
                                    (_%g4131641344%_ _%g4131741348%_))))
                            (_%g4131641344%_ _%g4131741348%_))))
                    (_%g4131641344%_ _%g4131741348%_)))))
        (_%g4131541443%_ _%$stx41312%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41448%_)
      (let* ((_%g4145141465%_
              (lambda (_%g4145241461%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4145241461%_)))
             (_%g4145041537%_
              (lambda (_%g4145241469%_)
                (if (gx#stx-pair? _%g4145241469%_)
                    (let ((_%e4145641472%_ (gx#syntax-e _%g4145241469%_)))
                      (let ((_%hd4145541476%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4145641472%_)))
                            (_%tl4145441479%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4145641472%_))))
                        (if (gx#stx-pair? _%tl4145441479%_)
                            (let ((_%e4145941482%_
                                   (gx#syntax-e _%tl4145441479%_)))
                              (let ((_%hd4145841486%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4145941482%_)))
                                    (_%tl4145741489%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4145941482%_))))
                                (if (gx#stx-null? _%tl4145741489%_)
                                    ((lambda (_%L41492%_)
                                       (if (gx#stx-string? _%L41492%_)
                                           (let* ((_%g4150641514%_
                                                   (lambda (_%g4150741510%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4150741510%_)))
                                                  (_%g4150541533%_
                                                   (lambda (_%g4150741518%_)
                                                     ((lambda (_%L41521%_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L41521%_ '()))))
              _%g4150741518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4150541533%_
                                              (string->bytes
                                               (gx#stx-e _%L41492%_))))
                                           (_%g4145141465%_ _%g4145241469%_)))
                                     _%hd4145841486%_)
                                    (_%g4145141465%_ _%g4145241469%_))))
                            (_%g4145141465%_ _%g4145241469%_))))
                    (_%g4145141465%_ _%g4145241469%_)))))
        (_%g4145041537%_ _%stx41448%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41541%_)
      (let* ((_%g4154441558%_
              (lambda (_%g4154541554%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4154541554%_)))
             (_%g4154341599%_
              (lambda (_%g4154541562%_)
                (if (gx#stx-pair? _%g4154541562%_)
                    (let ((_%e4154941565%_ (gx#syntax-e _%g4154541562%_)))
                      (let ((_%hd4154841569%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4154941565%_)))
                            (_%tl4154741572%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4154941565%_))))
                        (if (gx#stx-pair? _%tl4154741572%_)
                            (let ((_%e4155241575%_
                                   (gx#syntax-e _%tl4154741572%_)))
                              (let ((_%hd4155141579%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4155241575%_)))
                                    (_%tl4155041582%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4155241575%_))))
                                (if (gx#stx-null? _%tl4155041582%_)
                                    ((lambda (_%L41585%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41585%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4155141579%_)
                                    (_%g4154441558%_ _%g4154541562%_))))
                            (_%g4154441558%_ _%g4154541562%_))))
                    (_%g4154441558%_ _%g4154541562%_)))))
        (_%g4154341599%_ _%stx41541%_)))))
