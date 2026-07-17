(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g49141_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g49144_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49145_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49146_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49147_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49162_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49163_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49164_|
    (##structure
     gx#syntax-quote::t
     'unquote
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
      (lambda _%$args43691%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args43691%_)))
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
      (lambda _%$args43687%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args43687%_)))
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
      (lambda (_%stx43684%_)
        (if (gx#identifier? _%stx43684%_)
            (let ((__tmp49102 (gx#syntax-local-value _%stx43684%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp49102))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx43681%_)
        (if (gx#identifier? _%stx43681%_)
            (let ((__tmp49103 (gx#syntax-local-value _%stx43681%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp49103))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx43308%_)
        (let* ((_%__stx4849348494%_ _%stx43308%_)
               (_%$%g4331443377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4849348494%_))))
          (let ((_%__kont4849648497%_
                 (lambda (_%$%g4331643658%_ _%$%g4331743660%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4331743660%_)
                    _%stx43308%_)))
                (_%__kont4849848499%_
                 (lambda (_%$%g4333043547%_
                          _%$%g4333143549%_
                          _%$%g4333243550%_)
                   (let* ((_%$%g4357243580%_
                           (lambda (_%$%g4357343576%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g4357343576%_)))
                          (_%$%g4357143607%_
                           (lambda (_%$%g4357343584%_)
                             (cons _%$%g4357343584%_
                                   (foldr (lambda (_%$%g4359843601%_
                                                   _%$%g4359943604%_)
                                            (cons _%$%g4359843601%_
                                                  _%$%g4359943604%_))
                                          (cons _%$%g4333043547%_ '())
                                          _%$%g4333143549%_)))))
                     (_%$%g4357143607%_
                      (gx#stx-identifier
                       _%$%g4333243550%_
                       _%$%g4333243550%_
                       '"-set!")))))
                (_%__kont4850248503%_
                 (lambda (_%$%g4335443459%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4335443459%_)
                    _%stx43308%_)))
                (_%__kont4850448505%_
                 (lambda (_%$%g4336143414%_ _%$%g4336243416%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%$%g4336243416%_
                               (cons _%$%g4336143414%_ '()))))))
            (let* ((_%__match4859248593%_
                    (lambda (_%$%e4336343384%_
                             _%$%hd4336443388%_
                             _%$%tl4336543391%_
                             _%$%e4336643394%_
                             _%$%hd4336743398%_
                             _%$%tl4336843401%_
                             _%$%e4336943404%_
                             _%$%hd4337043408%_
                             _%$%tl4337143411%_)
                      (let ((_%$%g4336143414%_ _%$%hd4337043408%_)
                            (_%$%g4336243416%_ _%$%hd4336743398%_))
                        (if (gx#identifier? _%$%g4336243416%_)
                            (_%__kont4850448505%_
                             _%$%g4336143414%_
                             _%$%g4336243416%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g4331443377%_))))))
                   (_%__match4857248573%_
                    (lambda (_%$%e4335543439%_
                             _%$%hd4335643443%_
                             _%$%tl4335743446%_
                             _%$%e4335843449%_
                             _%$%hd4335943453%_
                             _%$%tl4336043456%_)
                      (let ((_%$%g4335443459%_ _%$%hd4335943453%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%$%g4335443459%_)
                            (_%__kont4850248503%_ _%$%g4335443459%_)
                            (if (gx#stx-pair? _%$%tl4336043456%_)
                                (let ((_%$%e4336943404%_
                                       (gx#syntax-e _%$%tl4336043456%_)))
                                  (let ((_%$%tl4337143411%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4336943404%_)))
                                        (_%$%hd4337043408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4336943404%_))))
                                    (if (gx#stx-null? _%$%tl4337143411%_)
                                        (_%__match4859248593%_
                                         _%$%e4335543439%_
                                         _%$%hd4335643443%_
                                         _%$%tl4335743446%_
                                         _%$%e4335843449%_
                                         _%$%hd4335943453%_
                                         _%$%tl4336043456%_
                                         _%$%e4336943404%_
                                         _%$%hd4337043408%_
                                         _%$%tl4337143411%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g4331443377%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g4331443377%_)))))))
                   (_%__match4856048561%_
                    (lambda (_%$%e4333343479%_
                             _%$%hd4333443483%_
                             _%$%tl4333543486%_
                             _%$%e4333643489%_
                             _%$%hd4333743493%_
                             _%$%tl4333843496%_
                             _%$%e4333943499%_
                             _%$%hd4334043503%_
                             _%$%tl4334143506%_
                             _%__splice4850048501%_
                             _%$%target4334243509%_
                             _%$%tl4334443512%_)
                      (letrec ((_%$%loop4334543515%_
                                (lambda (_%$%hd4334343519%_
                                         _%$%arg4334943522%_)
                                  (if (gx#stx-pair? _%$%hd4334343519%_)
                                      (let ((_%$%e4334643524%_
                                             (gx#syntax-e _%$%hd4334343519%_)))
                                        (let ((_%$%lp-tl4334843531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4334643524%_)))
                                              (_%$%lp-hd4334743528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4334643524%_))))
                                          (_%$%loop4334543515%_
                                           _%$%lp-tl4334843531%_
                                           (cons _%$%lp-hd4334743528%_
                                                 _%$%arg4334943522%_))))
                                      (let ((_%$%arg4335043534%_
                                             (reverse _%$%arg4334943522%_)))
                                        (if (gx#stx-pair? _%$%tl4333843496%_)
                                            (let ((_%$%e4335143537%_
                                                   (gx#syntax-e
                                                    _%$%tl4333843496%_)))
                                              (let ((_%$%tl4335343544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4335143537%_)))
                                                    (_%$%hd4335243541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4335143537%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4335343544%_)
                                                    (let ((_%$%g4333043547%_
                                                           _%$%hd4335243541%_)
                                                          (_%$%g4333143549%_
                                                           _%$%arg4335043534%_)
                                                          (_%$%g4333243550%_
                                                           _%$%hd4334043503%_))
                                                      (if (gx#identifier?
                                                           _%$%g4333243550%_)
                                                          (_%__kont4849848499%_
                                                           _%$%g4333043547%_
                                                           _%$%g4333143549%_
                                                           _%$%g4333243550%_)
                                                          (_%__match4857248573%_
                                                           _%$%e4333343479%_
                                                           _%$%hd4333443483%_
                                                           _%$%tl4333543486%_
                                                           _%$%e4333643489%_
                                                           _%$%hd4333743493%_
                                                           _%$%tl4333843496%_)))
                                                    (_%__match4857248573%_
                                                     _%$%e4333343479%_
                                                     _%$%hd4333443483%_
                                                     _%$%tl4333543486%_
                                                     _%$%e4333643489%_
                                                     _%$%hd4333743493%_
                                                     _%$%tl4333843496%_))))
                                            (_%__match4857248573%_
                                             _%$%e4333343479%_
                                             _%$%hd4333443483%_
                                             _%$%tl4333543486%_
                                             _%$%e4333643489%_
                                             _%$%hd4333743493%_
                                             _%$%tl4333843496%_)))))))
                        (_%$%loop4334543515%_ _%$%target4334243509%_ '())))))
              (if (gx#stx-pair? _%__stx4849348494%_)
                  (let ((_%$%e4331843618%_ (gx#syntax-e _%__stx4849348494%_)))
                    (let ((_%$%tl4332043625%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4331843618%_)))
                          (_%$%hd4331943622%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4331843618%_))))
                      (if (gx#stx-pair? _%$%tl4332043625%_)
                          (let ((_%$%e4332143628%_
                                 (gx#syntax-e _%$%tl4332043625%_)))
                            (let ((_%$%tl4332343635%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4332143628%_)))
                                  (_%$%hd4332243632%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4332143628%_))))
                              (if (gx#stx-pair? _%$%hd4332243632%_)
                                  (let ((_%$%e4332443638%_
                                         (gx#syntax-e _%$%hd4332243632%_)))
                                    (let ((_%$%tl4332643645%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4332443638%_)))
                                          (_%$%hd4332543642%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4332443638%_))))
                                      (if (gx#stx-pair? _%$%tl4332343635%_)
                                          (let ((_%$%e4332743648%_
                                                 (gx#syntax-e
                                                  _%$%tl4332343635%_)))
                                            (let ((_%$%tl4332943655%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4332743648%_)))
                                                  (_%$%hd4332843652%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4332743648%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl4332943655%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%$%g4331643658%_
                                                             _%$%hd4332843652%_)
                                                            (_%$%g4331743660%_
                                                             _%$%hd4332543642%_))
                                                        (_%__kont4849648497%_
                                                         _%$%g4331643658%_
                                                         _%$%g4331743660%_))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl4332643645%_)
                                                          (let ((_%__splice4850048501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl4332643645%_
                          '0)))
                    (let ((_%$%tl4334443512%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4850048501%_ '1)))
                          (_%$%target4334243509%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4850048501%_ '0))))
                      (if (gx#stx-null? _%$%tl4334443512%_)
                          (_%__match4856048561%_
                           _%$%e4331843618%_
                           _%$%hd4331943622%_
                           _%$%tl4332043625%_
                           _%$%e4332143628%_
                           _%$%hd4332243632%_
                           _%$%tl4332343635%_
                           _%$%e4332443638%_
                           _%$%hd4332543642%_
                           _%$%tl4332643645%_
                           _%__splice4850048501%_
                           _%$%target4334243509%_
                           _%$%tl4334443512%_)
                          (_%__match4857248573%_
                           _%$%e4331843618%_
                           _%$%hd4331943622%_
                           _%$%tl4332043625%_
                           _%$%e4332143628%_
                           _%$%hd4332243632%_
                           _%$%tl4332343635%_))))
                  (_%__match4857248573%_
                   _%$%e4331843618%_
                   _%$%hd4331943622%_
                   _%$%tl4332043625%_
                   _%$%e4332143628%_
                   _%$%hd4332243632%_
                   _%$%tl4332343635%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl4332643645%_)
                                                      (let ((_%__splice4850048501%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl4332643645%_
                                                              '0)))
                                                        (let ((_%$%tl4334443512%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4850048501%_ '1)))
                      (_%$%target4334243509%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4850048501%_ '0))))
                  (if (gx#stx-null? _%$%tl4334443512%_)
                      (_%__match4856048561%_
                       _%$%e4331843618%_
                       _%$%hd4331943622%_
                       _%$%tl4332043625%_
                       _%$%e4332143628%_
                       _%$%hd4332243632%_
                       _%$%tl4332343635%_
                       _%$%e4332443638%_
                       _%$%hd4332543642%_
                       _%$%tl4332643645%_
                       _%__splice4850048501%_
                       _%$%target4334243509%_
                       _%$%tl4334443512%_)
                      (_%__match4857248573%_
                       _%$%e4331843618%_
                       _%$%hd4331943622%_
                       _%$%tl4332043625%_
                       _%$%e4332143628%_
                       _%$%hd4332243632%_
                       _%$%tl4332343635%_))))
              (_%__match4857248573%_
               _%$%e4331843618%_
               _%$%hd4331943622%_
               _%$%tl4332043625%_
               _%$%e4332143628%_
               _%$%hd4332243632%_
               _%$%tl4332343635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl4332643645%_)
                                              (let ((_%__splice4850048501%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl4332643645%_
                                                      '0)))
                                                (let ((_%$%tl4334443512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4850048501%_
                                                          '1)))
                                                      (_%$%target4334243509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4850048501%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl4334443512%_)
                                                      (_%__match4856048561%_
                                                       _%$%e4331843618%_
                                                       _%$%hd4331943622%_
                                                       _%$%tl4332043625%_
                                                       _%$%e4332143628%_
                                                       _%$%hd4332243632%_
                                                       _%$%tl4332343635%_
                                                       _%$%e4332443638%_
                                                       _%$%hd4332543642%_
                                                       _%$%tl4332643645%_
                                                       _%__splice4850048501%_
                                                       _%$%target4334243509%_
                                                       _%$%tl4334443512%_)
                                                      (_%__match4857248573%_
                                                       _%$%e4331843618%_
                                                       _%$%hd4331943622%_
                                                       _%$%tl4332043625%_
                                                       _%$%e4332143628%_
                                                       _%$%hd4332243632%_
                                                       _%$%tl4332343635%_))))
                                              (_%__match4857248573%_
                                               _%$%e4331843618%_
                                               _%$%hd4331943622%_
                                               _%$%tl4332043625%_
                                               _%$%e4332143628%_
                                               _%$%hd4332243632%_
                                               _%$%tl4332343635%_)))))
                                  (_%__match4857248573%_
                                   _%$%e4331843618%_
                                   _%$%hd4331943622%_
                                   _%$%tl4332043625%_
                                   _%$%e4332143628%_
                                   _%$%hd4332243632%_
                                   _%$%tl4332343635%_))))
                          (let () (declare (not safe)) (_%$%g4331443377%_)))))
                  (let () (declare (not safe)) (_%$%g4331443377%_))))))))
    (define |gerbil/core/more-sugar[1]#stx-re-source|
      (lambda (_%stx43304%_ _%src43306%_)
        (if (gx#identifier? _%stx43304%_)
            _%stx43304%_
            (gx#stx-wrap-source
             (gx#syntax-e _%stx43304%_)
             (gx#stx-source _%src43306%_)))))
    (define |gerbil/core/more-sugar[1]#stx-substitute__%|
      (lambda (_%subs43261%_ _%stx43263%_ _%id=?43264%_)
        (let _%recur43266%_ ((_%stx43269%_ _%stx43263%_))
          (if (gx#identifier? _%stx43269%_)
              (let ((_%$e43274%_
                     (assoc _%stx43269%_ _%subs43261%_ _%id=?43264%_)))
                (if _%$e43274%_ (cdr _%$e43274%_) _%stx43269%_))
              (if (gx#stx-pair? _%stx43269%_)
                  (|gerbil/core/more-sugar[1]#stx-re-source|
                   (cons (_%recur43266%_ (gx#stx-car _%stx43269%_))
                         (_%recur43266%_ (gx#stx-cdr _%stx43269%_)))
                   _%stx43269%_)
                  (if (gx#stx-vector? _%stx43269%_)
                      (|gerbil/core/more-sugar[1]#stx-re-source|
                       (vector-map _%recur43266%_ (gx#syntax-e _%stx43269%_))
                       _%stx43269%_)
                      (if (gx#stx-box? _%stx43269%_)
                          (|gerbil/core/more-sugar[1]#stx-re-source|
                           (box (_%recur43266%_
                                 (unbox (gx#syntax-e _%stx43269%_))))
                           _%stx43269%_)
                          _%stx43269%_)))))))
    (define |gerbil/core/more-sugar[1]#stx-substitute__0|
      (lambda (_%subs43292%_ _%stx43294%_)
        (let ((_%id=?43296%_ gx#bound-identifier=?))
          (|gerbil/core/more-sugar[1]#stx-substitute__%|
           _%subs43292%_
           _%stx43294%_
           _%id=?43296%_))))
    (define |gerbil/core/more-sugar[1]#stx-substitute|
      (lambda _g49104_
        (let ((_g49105_ (let () (declare (not safe)) (##length _g49104_))))
          (cond ((let () (declare (not safe)) (##fx= _g49105_ 2))
                 (apply |gerbil/core/more-sugar[1]#stx-substitute__0|
                        _g49104_))
                ((let () (declare (not safe)) (##fx= _g49105_ 3))
                 (apply |gerbil/core/more-sugar[1]#stx-substitute__%|
                        _g49104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/more-sugar[1]#stx-substitute|
                  _g49104_))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx43698%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx43698%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx43701%_)
        (let* ((_%$%g4370443728%_
                (lambda (_%$%g4370543724%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4370543724%_)))
               (_%$%g4370343902%_
                (lambda (_%$%g4370543732%_)
                  (if (gx#stx-pair? _%$%g4370543732%_)
                      (let ((_%$%e4370843735%_
                             (gx#syntax-e _%$%g4370543732%_)))
                        (let ((_%$%hd4370943739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4370843735%_)))
                              (_%$%tl4371043742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4370843735%_))))
                          (if (gx#stx-pair/null? _%$%tl4371043742%_)
                              (if (let ((__tmp49106
                                         (gx#stx-length _%$%tl4371043742%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp49106 '1))
                                  (let ((_g49107_
                                         (gx#syntax-split-splice
                                          _%$%tl4371043742%_
                                          '1)))
                                    (begin
                                      (let ((_g49108_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49107_)
                                                   (##values-length _g49107_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49108_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49108_)))
                                      (let ((_%$%target4371143745%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g49107_ 0)))
                                            (_%$%tl4371343748%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g49107_ 1))))
                                        (if (gx#stx-pair? _%$%tl4371343748%_)
                                            (let ((_%$%e4372043751%_
                                                   (gx#syntax-e
                                                    _%$%tl4371343748%_)))
                                              (let ((_%$%hd4372143755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4372043751%_)))
                                                    (_%$%tl4372243758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4372043751%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4372243758%_)
                                                    (letrec ((_%$%loop4371443761%_
                                                              (lambda (_%$%hd4371243765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%tgt4371843768%_)
                        (if (gx#stx-pair? _%$%hd4371243765%_)
                            (let ((_%$%e4371543770%_
                                   (gx#syntax-e _%$%hd4371243765%_)))
                              (let ((_%$%lp-hd4371643774%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4371543770%_)))
                                    (_%$%lp-tl4371743777%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4371543770%_))))
                                (_%$%loop4371443761%_
                                 _%$%lp-tl4371743777%_
                                 (cons _%$%lp-hd4371643774%_
                                       _%$%tgt4371843768%_))))
                            (let* ((_%$%tgt4371943780%_
                                    (reverse _%$%tgt4371843768%_))
                                   (_%$%g4380343820%_
                                    (lambda (_%$%g4380443816%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g4380443816%_)))
                                   (_%$%g4380243890%_
                                    (lambda (_%$%g4380443824%_)
                                      (if (gx#stx-pair/null? _%$%g4380443824%_)
                                          (let ((_g49109_
                                                 (gx#syntax-split-splice
                                                  _%$%g4380443824%_
                                                  '0)))
                                            (begin
                                              (let ((_g49110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g49109_)
                                                           (##values-length
                                                            _g49109_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g49110_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g49110_)))
                                              (let ((_%$%target4380643827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g49109_
                                                        0)))
                                                    (_%$%tl4380843830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g49109_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl4380843830%_)
                                                    (letrec ((_%$%loop4380943833%_
                                                              (lambda (_%$%hd4380743837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%$e4381343840%_)
                        (if (gx#stx-pair? _%$%hd4380743837%_)
                            (let ((_%$%e4381043842%_
                                   (gx#syntax-e _%$%hd4380743837%_)))
                              (let ((_%$%lp-hd4381143846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4381043842%_)))
                                    (_%$%lp-tl4381243849%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4381043842%_))))
                                (_%$%loop4380943833%_
                                 _%$%lp-tl4381243849%_
                                 (cons _%$%lp-hd4381143846%_
                                       _%$%$e4381343840%_))))
                            (let ((_%$%$e4381443852%_
                                   (reverse _%$%$e4381343840%_)))
                              (cons (gx#datum->syntax '#f 'let-values)
                                    (cons (cons (cons (foldr (lambda (_%$%g4387043876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4387143879%_)
                       (cons _%$%g4387043876%_ _%$%g4387143879%_))
                     '()
                     _%$%$e4381443852%_)
              (cons _%$%hd4372143755%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _%$%$e4381443852%_
                                             _%$%tgt4371943780%_)
                                            (foldr (lambda (_%$%g4387243882%_
                                                            _%$%g4387343885%_
                                                            _%$%g4387443887%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons _%$%g4387343885%_ (cons _%$%g4387243882%_ '())))
                   _%$%g4387443887%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%$%$e4381443852%_
                                                   _%$%tgt4371943780%_)))))))))
              (_%$%loop4380943833%_ _%$%target4380643827%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4380343820%_
                                                     _%$%g4380443824%_)))))
                                          (_%$%g4380343820%_
                                           _%$%g4380443824%_)))))
                              (_%$%g4380243890%_
                               (gx#gentemps
                                (foldr (lambda (_%$%g4389343896%_
                                                _%$%g4389443899%_)
                                         (cons _%$%g4389343896%_
                                               _%$%g4389443899%_))
                                       '()
                                       _%$%tgt4371943780%_))))))))
              (_%$%loop4371443761%_ _%$%target4371143745%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4370443728%_
                                                     _%$%g4370543732%_))))
                                            (_%$%g4370443728%_
                                             _%$%g4370543732%_)))))
                                  (_%$%g4370443728%_ _%$%g4370543732%_))
                              (_%$%g4370443728%_ _%$%g4370543732%_))))
                      (_%$%g4370443728%_ _%$%g4370543732%_)))))
          (_%$%g4370343902%_ _%stx43701%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx43908%_)
        (let* ((_%__stx4859548596%_ _%$stx43908%_)
               (_%$%g4391444002%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4859548596%_))))
          (let ((_%__kont4859848599%_
                 (lambda (_%$%g4391644342%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g4435844361%_
                                               _%$%g4435944364%_)
                                        (cons _%$%g4435844361%_
                                              _%$%g4435944364%_))
                                      '()
                                      _%$%g4391644342%_)))))
                (_%__kont4860248603%_
                 (lambda (_%$%g4393244252%_
                          _%$%g4393344254%_
                          _%$%g4393444255%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%$%g4427844281%_
                                                           _%$%g4427944284%_)
                                                    (cons _%$%g4427844281%_
                                                          _%$%g4427944284%_))
                                                  '()
                                                  _%$%g4393244252%_)))
                               (cons _%$%g4393444255%_
                                     (cons _%$%g4393344254%_ '()))))))
                (_%__kont4860648607%_
                 (lambda (_%$%g4395944115%_
                          _%$%g4396044117%_
                          _%$%g4396144118%_
                          _%$%g4396244119%_
                          _%$%g4396344120%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%$%g4396344120%_
                                                       (cons (foldr (lambda (_%$%g4415044155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4415144158%_)
                              (cons _%$%g4415044155%_ _%$%g4415144158%_))
                            '()
                            _%$%g4396044117%_)
                     (foldr (lambda (_%$%g4415244161%_ _%$%g4415344164%_)
                              (cons _%$%g4415244161%_ _%$%g4415344164%_))
                            '()
                            _%$%g4395944115%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%$%g4396244119%_
                                     (cons _%$%g4396144118%_ '())))))))
            (let* ((_%__match4871648717%_
                    (lambda (_%$%e4396444009%_
                             _%$%hd4396544013%_
                             _%$%tl4396644016%_
                             _%$%e4396744019%_
                             _%$%hd4396844023%_
                             _%$%tl4396944026%_
                             _%$%e4397044029%_
                             _%$%hd4397144033%_
                             _%$%tl4397244036%_
                             _%$%e4397344039%_
                             _%$%hd4397444043%_
                             _%$%tl4397544046%_
                             _%$%e4397644049%_
                             _%$%hd4397744053%_
                             _%$%tl4397844056%_
                             _%__splice4860848609%_
                             _%$%target4397944059%_
                             _%$%tl4398144062%_)
                      (letrec ((_%$%loop4398244065%_
                                (lambda (_%$%hd4398044069%_
                                         _%$%rest4398644072%_)
                                  (if (gx#stx-pair? _%$%hd4398044069%_)
                                      (let ((_%$%e4398344074%_
                                             (gx#syntax-e _%$%hd4398044069%_)))
                                        (let ((_%$%lp-tl4398544081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4398344074%_)))
                                              (_%$%lp-hd4398444078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4398344074%_))))
                                          (_%$%loop4398244065%_
                                           _%$%lp-tl4398544081%_
                                           (cons _%$%lp-hd4398444078%_
                                                 _%$%rest4398644072%_))))
                                      (let ((_%$%rest4398744084%_
                                             (reverse _%$%rest4398644072%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4396944026%_)
                                            (let ((_%__splice4861048611%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4396944026%_
                                                    '0)))
                                              (let ((_%$%tl4399044090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4861048611%_
                                                        '1)))
                                                    (_%$%target4398844087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4861048611%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4399044090%_)
                                                    (letrec ((_%$%loop4399144093%_
                                                              (lambda (_%$%hd4398944097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body4399544100%_)
                        (if (gx#stx-pair? _%$%hd4398944097%_)
                            (let ((_%$%e4399244102%_
                                   (gx#syntax-e _%$%hd4398944097%_)))
                              (let ((_%$%lp-tl4399444109%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4399244102%_)))
                                    (_%$%lp-hd4399344106%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4399244102%_))))
                                (_%$%loop4399144093%_
                                 _%$%lp-tl4399444109%_
                                 (cons _%$%lp-hd4399344106%_
                                       _%$%body4399544100%_))))
                            (let ((_%$%body4399644112%_
                                   (reverse _%$%body4399544100%_)))
                              (_%__kont4860648607%_
                               _%$%body4399644112%_
                               _%$%rest4398744084%_
                               _%$%hd4397744053%_
                               _%$%hd4397444043%_
                               _%$%hd4396544013%_))))))
              (_%$%loop4399144093%_ _%$%target4398844087%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4391444002%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4391444002%_))))))))
                        (_%$%loop4398244065%_ _%$%target4397944059%_ '()))))
                   (_%__match4867648677%_
                    (lambda (_%$%e4393544174%_
                             _%$%hd4393644178%_
                             _%$%tl4393744181%_
                             _%$%e4393844184%_
                             _%$%hd4393944188%_
                             _%$%tl4394044191%_
                             _%$%e4394144194%_
                             _%$%hd4394244198%_
                             _%$%tl4394344201%_
                             _%$%e4394444204%_
                             _%$%hd4394544208%_
                             _%$%tl4394644211%_
                             _%$%e4394744214%_
                             _%$%hd4394844218%_
                             _%$%tl4394944221%_
                             _%__splice4860448605%_
                             _%$%target4395044224%_
                             _%$%tl4395244227%_)
                      (letrec ((_%$%loop4395344230%_
                                (lambda (_%$%hd4395144234%_
                                         _%$%body4395744237%_)
                                  (if (gx#stx-pair? _%$%hd4395144234%_)
                                      (let ((_%$%e4395444239%_
                                             (gx#syntax-e _%$%hd4395144234%_)))
                                        (let ((_%$%lp-tl4395644246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4395444239%_)))
                                              (_%$%lp-hd4395544243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4395444239%_))))
                                          (_%$%loop4395344230%_
                                           _%$%lp-tl4395644246%_
                                           (cons _%$%lp-hd4395544243%_
                                                 _%$%body4395744237%_))))
                                      (let ((_%$%body4395844249%_
                                             (reverse _%$%body4395744237%_)))
                                        (_%__kont4860248603%_
                                         _%$%body4395844249%_
                                         _%$%hd4394844218%_
                                         _%$%hd4394544208%_))))))
                        (_%$%loop4395344230%_ _%$%target4395044224%_ '()))))
                   (_%__match4863448635%_
                    (lambda (_%$%e4391744294%_
                             _%$%hd4391844298%_
                             _%$%tl4391944301%_
                             _%$%e4392044304%_
                             _%$%hd4392144308%_
                             _%$%tl4392244311%_
                             _%__splice4860048601%_
                             _%$%target4392344314%_
                             _%$%tl4392544317%_)
                      (letrec ((_%$%loop4392644320%_
                                (lambda (_%$%hd4392444324%_
                                         _%$%body4393044327%_)
                                  (if (gx#stx-pair? _%$%hd4392444324%_)
                                      (let ((_%$%e4392744329%_
                                             (gx#syntax-e _%$%hd4392444324%_)))
                                        (let ((_%$%lp-tl4392944336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4392744329%_)))
                                              (_%$%lp-hd4392844333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4392744329%_))))
                                          (_%$%loop4392644320%_
                                           _%$%lp-tl4392944336%_
                                           (cons _%$%lp-hd4392844333%_
                                                 _%$%body4393044327%_))))
                                      (let ((_%$%body4393144339%_
                                             (reverse _%$%body4393044327%_)))
                                        (_%__kont4859848599%_
                                         _%$%body4393144339%_))))))
                        (_%$%loop4392644320%_ _%$%target4392344314%_ '())))))
              (if (gx#stx-pair? _%__stx4859548596%_)
                  (let ((_%$%e4391744294%_ (gx#syntax-e _%__stx4859548596%_)))
                    (let ((_%$%tl4391944301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4391744294%_)))
                          (_%$%hd4391844298%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4391744294%_))))
                      (if (gx#stx-pair? _%$%tl4391944301%_)
                          (let ((_%$%e4392044304%_
                                 (gx#syntax-e _%$%tl4391944301%_)))
                            (let ((_%$%tl4392244311%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4392044304%_)))
                                  (_%$%hd4392144308%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4392044304%_))))
                              (if (gx#stx-null? _%$%hd4392144308%_)
                                  (if (gx#stx-pair/null? _%$%tl4392244311%_)
                                      (let ((_%__splice4860048601%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4392244311%_
                                              '0)))
                                        (let ((_%$%tl4392544317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4860048601%_
                                                  '1)))
                                              (_%$%target4392344314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4860048601%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4392544317%_)
                                              (_%__match4863448635%_
                                               _%$%e4391744294%_
                                               _%$%hd4391844298%_
                                               _%$%tl4391944301%_
                                               _%$%e4392044304%_
                                               _%$%hd4392144308%_
                                               _%$%tl4392244311%_
                                               _%__splice4860048601%_
                                               _%$%target4392344314%_
                                               _%$%tl4392544317%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4391444002%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4391444002%_)))
                                  (if (gx#stx-pair? _%$%hd4392144308%_)
                                      (let ((_%$%e4394144194%_
                                             (gx#syntax-e _%$%hd4392144308%_)))
                                        (let ((_%$%tl4394344201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4394144194%_)))
                                              (_%$%hd4394244198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4394144194%_))))
                                          (if (gx#stx-pair? _%$%hd4394244198%_)
                                              (let ((_%$%e4394444204%_
                                                     (gx#syntax-e
                                                      _%$%hd4394244198%_)))
                                                (let ((_%$%tl4394644211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4394444204%_)))
                                                      (_%$%hd4394544208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4394444204%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl4394644211%_)
                                                      (let ((_%$%e4394744214%_
                                                             (gx#syntax-e
                                                              _%$%tl4394644211%_)))
                                                        (let ((_%$%tl4394944221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e4394744214%_)))
                      (_%$%hd4394844218%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e4394744214%_))))
                  (if (gx#stx-null? _%$%tl4394944221%_)
                      (if (gx#stx-null? _%$%tl4394344201%_)
                          (if (gx#stx-pair/null? _%$%tl4392244311%_)
                              (let ((_%__splice4860448605%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4392244311%_
                                      '0)))
                                (let ((_%$%tl4395244227%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4860448605%_
                                          '1)))
                                      (_%$%target4395044224%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4860448605%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4395244227%_)
                                      (_%__match4867648677%_
                                       _%$%e4391744294%_
                                       _%$%hd4391844298%_
                                       _%$%tl4391944301%_
                                       _%$%e4392044304%_
                                       _%$%hd4392144308%_
                                       _%$%tl4392244311%_
                                       _%$%e4394144194%_
                                       _%$%hd4394244198%_
                                       _%$%tl4394344201%_
                                       _%$%e4394444204%_
                                       _%$%hd4394544208%_
                                       _%$%tl4394644211%_
                                       _%$%e4394744214%_
                                       _%$%hd4394844218%_
                                       _%$%tl4394944221%_
                                       _%__splice4860448605%_
                                       _%$%target4395044224%_
                                       _%$%tl4395244227%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl4394344201%_)
                                          (let ((_%__splice4860848609%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl4394344201%_
                                                  '0)))
                                            (let ((_%$%tl4398144062%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4860848609%_
                                                      '1)))
                                                  (_%$%target4397944059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4860848609%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl4398144062%_)
                                                  (_%__match4871648717%_
                                                   _%$%e4391744294%_
                                                   _%$%hd4391844298%_
                                                   _%$%tl4391944301%_
                                                   _%$%e4392044304%_
                                                   _%$%hd4392144308%_
                                                   _%$%tl4392244311%_
                                                   _%$%e4394144194%_
                                                   _%$%hd4394244198%_
                                                   _%$%tl4394344201%_
                                                   _%$%e4394444204%_
                                                   _%$%hd4394544208%_
                                                   _%$%tl4394644211%_
                                                   _%$%e4394744214%_
                                                   _%$%hd4394844218%_
                                                   _%$%tl4394944221%_
                                                   _%__splice4860848609%_
                                                   _%$%target4397944059%_
                                                   _%$%tl4398144062%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g4391444002%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4391444002%_))))))
                              (if (gx#stx-pair/null? _%$%tl4394344201%_)
                                  (let ((_%__splice4860848609%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl4394344201%_
                                          '0)))
                                    (let ((_%$%tl4398144062%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4860848609%_
                                              '1)))
                                          (_%$%target4397944059%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4860848609%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl4398144062%_)
                                          (_%__match4871648717%_
                                           _%$%e4391744294%_
                                           _%$%hd4391844298%_
                                           _%$%tl4391944301%_
                                           _%$%e4392044304%_
                                           _%$%hd4392144308%_
                                           _%$%tl4392244311%_
                                           _%$%e4394144194%_
                                           _%$%hd4394244198%_
                                           _%$%tl4394344201%_
                                           _%$%e4394444204%_
                                           _%$%hd4394544208%_
                                           _%$%tl4394644211%_
                                           _%$%e4394744214%_
                                           _%$%hd4394844218%_
                                           _%$%tl4394944221%_
                                           _%__splice4860848609%_
                                           _%$%target4397944059%_
                                           _%$%tl4398144062%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4391444002%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g4391444002%_))))
                          (if (gx#stx-pair/null? _%$%tl4394344201%_)
                              (let ((_%__splice4860848609%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4394344201%_
                                      '0)))
                                (let ((_%$%tl4398144062%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4860848609%_
                                          '1)))
                                      (_%$%target4397944059%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4860848609%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4398144062%_)
                                      (_%__match4871648717%_
                                       _%$%e4391744294%_
                                       _%$%hd4391844298%_
                                       _%$%tl4391944301%_
                                       _%$%e4392044304%_
                                       _%$%hd4392144308%_
                                       _%$%tl4392244311%_
                                       _%$%e4394144194%_
                                       _%$%hd4394244198%_
                                       _%$%tl4394344201%_
                                       _%$%e4394444204%_
                                       _%$%hd4394544208%_
                                       _%$%tl4394644211%_
                                       _%$%e4394744214%_
                                       _%$%hd4394844218%_
                                       _%$%tl4394944221%_
                                       _%__splice4860848609%_
                                       _%$%target4397944059%_
                                       _%$%tl4398144062%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4391444002%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4391444002%_))))
                      (let () (declare (not safe)) (_%$%g4391444002%_)))))
              (let () (declare (not safe)) (_%$%g4391444002%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4391444002%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4391444002%_))))))
                          (let () (declare (not safe)) (_%$%g4391444002%_)))))
                  (let () (declare (not safe)) (_%$%g4391444002%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx44375%_)
        (let* ((_%$%g4437944403%_
                (lambda (_%$%g4438044399%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4438044399%_)))
               (_%$%g4437844486%_
                (lambda (_%$%g4438044407%_)
                  (if (gx#stx-pair? _%$%g4438044407%_)
                      (let ((_%$%e4438344410%_
                             (gx#syntax-e _%$%g4438044407%_)))
                        (let ((_%$%hd4438444414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4438344410%_)))
                              (_%$%tl4438544417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4438344410%_))))
                          (if (gx#stx-pair? _%$%tl4438544417%_)
                              (let ((_%$%e4438644420%_
                                     (gx#syntax-e _%$%tl4438544417%_)))
                                (let ((_%$%hd4438744424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4438644420%_)))
                                      (_%$%tl4438844427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4438644420%_))))
                                  (if (gx#stx-pair/null? _%$%tl4438844427%_)
                                      (let ((_g49111_
                                             (gx#syntax-split-splice
                                              _%$%tl4438844427%_
                                              '0)))
                                        (begin
                                          (let ((_g49112_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49111_)
                                                       (##values-length
                                                        _g49111_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49112_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49112_)))
                                          (let ((_%$%target4438944430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49111_ 0)))
                                                (_%$%tl4439144433%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49111_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4439144433%_)
                                                (letrec ((_%$%loop4439244436%_
                                                          (lambda (_%$%hd4439044440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4439644443%_)
                    (if (gx#stx-pair? _%$%hd4439044440%_)
                        (let ((_%$%e4439344445%_
                               (gx#syntax-e _%$%hd4439044440%_)))
                          (let ((_%$%lp-hd4439444449%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4439344445%_)))
                                (_%$%lp-tl4439544452%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4439344445%_))))
                            (_%$%loop4439244436%_
                             _%$%lp-tl4439544452%_
                             (cons _%$%lp-hd4439444449%_
                                   _%$%body4439644443%_))))
                        (let ((_%$%body4439744455%_
                               (reverse _%$%body4439644443%_)))
                          (if (gx#identifier? _%$%hd4438744424%_)
                              (cons (gx#datum->syntax '#f 'call/cc)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%$%hd4438744424%_
                                                            '())
                                                      (foldr (lambda (_%$%g4447744480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4447844483%_)
                       (cons _%$%g4447744480%_ _%$%g4447844483%_))
                     '()
                     _%$%body4439744455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (_%$%g4437944403%_ _%$%g4438044407%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4439244436%_
                                                   _%$%target4438944430%_
                                                   '()))
                                                (_%$%g4437944403%_
                                                 _%$%g4438044407%_)))))
                                      (_%$%g4437944403%_ _%$%g4438044407%_))))
                              (_%$%g4437944403%_ _%$%g4438044407%_))))
                      (_%$%g4437944403%_ _%$%g4438044407%_)))))
          (_%$%g4437844486%_ _%$stx44375%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx44491%_)
        (let* ((_%$%g4449544523%_
                (lambda (_%$%g4449644519%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4449644519%_)))
               (_%$%g4449444620%_
                (lambda (_%$%g4449644527%_)
                  (if (gx#stx-pair? _%$%g4449644527%_)
                      (let ((_%$%e4450044530%_
                             (gx#syntax-e _%$%g4449644527%_)))
                        (let ((_%$%hd4450144534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4450044530%_)))
                              (_%$%tl4450244537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4450044530%_))))
                          (if (gx#stx-pair? _%$%tl4450244537%_)
                              (let ((_%$%e4450344540%_
                                     (gx#syntax-e _%$%tl4450244537%_)))
                                (let ((_%$%hd4450444544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4450344540%_)))
                                      (_%$%tl4450544547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4450344540%_))))
                                  (if (gx#stx-pair? _%$%tl4450544547%_)
                                      (let ((_%$%e4450644550%_
                                             (gx#syntax-e _%$%tl4450544547%_)))
                                        (let ((_%$%hd4450744554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4450644550%_)))
                                              (_%$%tl4450844557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4450644550%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4450844557%_)
                                              (let ((_g49113_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4450844557%_
                                                      '0)))
                                                (begin
                                                  (let ((_g49114_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g49113_)
                                                               (##values-length
                                                                _g49113_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g49114_ 2)))
                (error "Context expects 2 values" _g49114_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4450944560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49113_
                                                            0)))
                                                        (_%$%tl4451144563%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49113_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4451144563%_)
                                                        (letrec ((_%$%loop4451244566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4451044570%_ _%$%rest4451644573%_)
                            (if (gx#stx-pair? _%$%hd4451044570%_)
                                (let ((_%$%e4451344575%_
                                       (gx#syntax-e _%$%hd4451044570%_)))
                                  (let ((_%$%lp-hd4451444579%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4451344575%_)))
                                        (_%$%lp-tl4451544582%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4451344575%_))))
                                    (_%$%loop4451244566%_
                                     _%$%lp-tl4451544582%_
                                     (cons _%$%lp-hd4451444579%_
                                           _%$%rest4451644573%_))))
                                (let ((_%$%rest4451744585%_
                                       (reverse _%$%rest4451644573%_)))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'with-unwind-protect)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%$%hd4450444544%_
                                                                '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%$%hd4450744554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%$%g4461144614%_
                                              _%$%g4461244617%_)
                                       (cons _%$%g4461144614%_
                                             _%$%g4461244617%_))
                                     '()
                                     _%$%rest4451744585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))
                  (_%$%loop4451244566%_ _%$%target4450944560%_ '()))
                (_%$%g4449544523%_ _%$%g4449644527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4449544523%_
                                               _%$%g4449644527%_))))
                                      (_%$%g4449544523%_ _%$%g4449644527%_))))
                              (_%$%g4449544523%_ _%$%g4449644527%_))))
                      (_%$%g4449544523%_ _%$%g4449644527%_)))))
          (_%$%g4449444620%_ _%$stx44491%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx44625%_)
        (let* ((_%$%g4462944700%_
                (lambda (_%$%g4463044696%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4463044696%_)))
               (_%$%g4462844977%_
                (lambda (_%$%g4463044704%_)
                  (if (gx#stx-pair? _%$%g4463044704%_)
                      (let ((_%$%e4463744707%_
                             (gx#syntax-e _%$%g4463044704%_)))
                        (let ((_%$%hd4463844711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4463744707%_)))
                              (_%$%tl4463944714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4463744707%_))))
                          (if (gx#stx-pair? _%$%tl4463944714%_)
                              (let ((_%$%e4464044717%_
                                     (gx#syntax-e _%$%tl4463944714%_)))
                                (let ((_%$%hd4464144721%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4464044717%_)))
                                      (_%$%tl4464244724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4464044717%_))))
                                  (if (gx#stx-pair/null? _%$%hd4464144721%_)
                                      (let ((_g49115_
                                             (gx#syntax-split-splice
                                              _%$%hd4464144721%_
                                              '0)))
                                        (begin
                                          (let ((_g49116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49115_)
                                                       (##values-length
                                                        _g49115_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49116_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49116_)))
                                          (let ((_%$%target4464344727%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49115_ 0)))
                                                (_%$%tl4464544730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49115_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4464544730%_)
                                                (letrec ((_%$%loop4464644733%_
                                                          (lambda (_%$%hd4464444737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4465044740%_
                           _%$%init4465144741%_
                           _%$%var4465244742%_)
                    (if (gx#stx-pair? _%$%hd4464444737%_)
                        (let ((_%$%e4464744744%_
                               (gx#syntax-e _%$%hd4464444737%_)))
                          (let ((_%$%lp-hd4464844748%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4464744744%_)))
                                (_%$%lp-tl4464944751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4464744744%_))))
                            (if (gx#stx-pair? _%$%lp-hd4464844748%_)
                                (let ((_%$%e4465644754%_
                                       (gx#syntax-e _%$%lp-hd4464844748%_)))
                                  (let ((_%$%hd4465744758%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4465644754%_)))
                                        (_%$%tl4465844761%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4465644754%_))))
                                    (if (gx#stx-pair? _%$%tl4465844761%_)
                                        (let ((_%$%e4465944764%_
                                               (gx#syntax-e
                                                _%$%tl4465844761%_)))
                                          (let ((_%$%hd4466044768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4465944764%_)))
                                                (_%$%tl4466144771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4465944764%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4466144771%_)
                                                (let ((_g49117_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4466144771%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49118_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49117_)
                         (##values-length _g49117_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49118_ 2)))
                  (error "Context expects 2 values" _g49118_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4466244774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49117_
                                                              0)))
                                                          (_%$%tl4466444777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49117_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4466444777%_)
                                                          (letrec ((_%$%loop4466544780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4466344784%_ _%$%step4466944787%_)
                              (if (gx#stx-pair? _%$%hd4466344784%_)
                                  (let ((_%$%e4466644789%_
                                         (gx#syntax-e _%$%hd4466344784%_)))
                                    (let ((_%$%lp-hd4466744793%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4466644789%_)))
                                          (_%$%lp-tl4466844796%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4466644789%_))))
                                      (_%$%loop4466544780%_
                                       _%$%lp-tl4466844796%_
                                       (cons _%$%lp-hd4466744793%_
                                             _%$%step4466944787%_))))
                                  (let ((_%$%step4467044799%_
                                         (reverse _%$%step4466944787%_)))
                                    (_%$%loop4464644733%_
                                     _%$%lp-tl4464944751%_
                                     (cons _%$%step4467044799%_
                                           _%$%step4465044740%_)
                                     (cons _%$%hd4466044768%_
                                           _%$%init4465144741%_)
                                     (cons _%$%hd4465744758%_
                                           _%$%var4465244742%_)))))))
                    (_%$%loop4466544780%_ _%$%target4466244774%_ '()))
                  (_%$%g4462944700%_ _%$%g4463044704%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4462944700%_
                                                 _%$%g4463044704%_))))
                                        (_%$%g4462944700%_
                                         _%$%g4463044704%_))))
                                (_%$%g4462944700%_ _%$%g4463044704%_))))
                        (let ((_%$%step4465344802%_
                               (reverse _%$%step4465044740%_))
                              (_%$%init4465444804%_
                               (reverse _%$%init4465144741%_))
                              (_%$%var4465544805%_
                               (reverse _%$%var4465244742%_)))
                          (if (gx#stx-pair? _%$%tl4464244724%_)
                              (let ((_%$%e4467144807%_
                                     (gx#syntax-e _%$%tl4464244724%_)))
                                (let ((_%$%hd4467244811%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4467144807%_)))
                                      (_%$%tl4467344814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4467144807%_))))
                                  (if (gx#stx-pair? _%$%hd4467244811%_)
                                      (let ((_%$%e4467444817%_
                                             (gx#syntax-e _%$%hd4467244811%_)))
                                        (let ((_%$%hd4467544821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4467444817%_)))
                                              (_%$%tl4467644824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4467444817%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4467644824%_)
                                              (let ((_g49119_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4467644824%_
                                                      '0)))
                                                (begin
                                                  (let ((_g49120_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g49119_)
                                                               (##values-length
                                                                _g49119_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g49120_ 2)))
                (error "Context expects 2 values" _g49120_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4467744827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49119_
                                                            0)))
                                                        (_%$%tl4467944830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49119_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4467944830%_)
                                                        (letrec ((_%$%loop4468044833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4467844837%_ _%$%fini4468444840%_)
                            (if (gx#stx-pair? _%$%hd4467844837%_)
                                (let ((_%$%e4468144842%_
                                       (gx#syntax-e _%$%hd4467844837%_)))
                                  (let ((_%$%lp-hd4468244846%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4468144842%_)))
                                        (_%$%lp-tl4468344849%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4468144842%_))))
                                    (_%$%loop4468044833%_
                                     _%$%lp-tl4468344849%_
                                     (cons _%$%lp-hd4468244846%_
                                           _%$%fini4468444840%_))))
                                (let ((_%$%fini4468544852%_
                                       (reverse _%$%fini4468444840%_)))
                                  (if (gx#stx-pair/null? _%$%tl4467344814%_)
                                      (let ((_g49121_
                                             (gx#syntax-split-splice
                                              _%$%tl4467344814%_
                                              '0)))
                                        (begin
                                          (let ((_g49122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49121_)
                                                       (##values-length
                                                        _g49121_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49122_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49122_)))
                                          (let ((_%$%target4468644855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49121_ 0)))
                                                (_%$%tl4468844858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49121_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4468844858%_)
                                                (letrec ((_%$%loop4468944861%_
                                                          (lambda (_%$%hd4468744865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4469344868%_)
                    (if (gx#stx-pair? _%$%hd4468744865%_)
                        (let ((_%$%e4469044870%_
                               (gx#syntax-e _%$%hd4468744865%_)))
                          (let ((_%$%lp-hd4469144874%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4469044870%_)))
                                (_%$%lp-tl4469244877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4469044870%_))))
                            (_%$%loop4468944861%_
                             _%$%lp-tl4469244877%_
                             (cons _%$%lp-hd4469144874%_
                                   _%$%body4469344868%_))))
                        (let ((_%$%body4469444880%_
                               (reverse _%$%body4469344868%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4492244925%_
                                               _%$%g4492344928%_)
                                        (cons _%$%g4492244925%_
                                              _%$%g4492344928%_))
                                      '()
                                      _%$%var4465544805%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4465444804%_
                                                   _%$%var4465544805%_)
                                                  (foldr (lambda (_%$%g4493044943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4493144946%_
                          _%$%g4493244948%_)
                   (cons (cons _%$%g4493144946%_ (cons _%$%g4493044943%_ '()))
                         _%$%g4493244948%_))
                 '()
                 _%$%init4465444804%_
                 _%$%var4465544805%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%$%hd4467544821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (cons '#!void
                                            (foldr (lambda (_%$%g4493344951%_
                                                            _%$%g4493444954%_)
                                                     (cons _%$%g4493344951%_
                                                           _%$%g4493444954%_))
                                                   '()
                                                   _%$%fini4468544852%_)))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g4493544957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4493644960%_)
                   (cons _%$%g4493544957%_ _%$%g4493644960%_))
                 (cons (cons (gx#datum->syntax '#f '$loop)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%$%step4465344802%_
                                _%$%var4465544805%_)
                               (foldr (lambda (_%$%g4493744963%_
                                               _%$%g4493844966%_
                                               _%$%g4493944968%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%$%g4493844966%_
                                                          (foldr (lambda (_%$%g4494044971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%$%g4494144974%_)
                           (cons _%$%g4494044971%_ _%$%g4494144974%_))
                         '()
                         _%$%g4493744963%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%g4493944968%_))
                                      '()
                                      _%$%step4465344802%_
                                      _%$%var4465544805%_)))
                       '())
                 _%$%body4469444880%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4462944700%_ _%$%g4463044704%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4468944861%_
                                                   _%$%target4468644855%_
                                                   '()))
                                                (_%$%g4462944700%_
                                                 _%$%g4463044704%_)))))
                                      (_%$%g4462944700%_
                                       _%$%g4463044704%_)))))))
                  (_%$%loop4468044833%_ _%$%target4467744827%_ '()))
                (_%$%g4462944700%_ _%$%g4463044704%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4462944700%_
                                               _%$%g4463044704%_))))
                                      (_%$%g4462944700%_ _%$%g4463044704%_))))
                              (_%$%g4462944700%_ _%$%g4463044704%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4464644733%_
                                                   _%$%target4464344727%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4462944700%_
                                                 _%$%g4463044704%_)))))
                                      (_%$%g4462944700%_ _%$%g4463044704%_))))
                              (_%$%g4462944700%_ _%$%g4463044704%_))))
                      (_%$%g4462944700%_ _%$%g4463044704%_)))))
          (_%$%g4462844977%_ _%$stx44625%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx44985%_)
        (let* ((_%$%g4498945060%_
                (lambda (_%$%g4499045056%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4499045056%_)))
               (_%$%g4498845337%_
                (lambda (_%$%g4499045064%_)
                  (if (gx#stx-pair? _%$%g4499045064%_)
                      (let ((_%$%e4499745067%_
                             (gx#syntax-e _%$%g4499045064%_)))
                        (let ((_%$%hd4499845071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4499745067%_)))
                              (_%$%tl4499945074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4499745067%_))))
                          (if (gx#stx-pair? _%$%tl4499945074%_)
                              (let ((_%$%e4500045077%_
                                     (gx#syntax-e _%$%tl4499945074%_)))
                                (let ((_%$%hd4500145081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4500045077%_)))
                                      (_%$%tl4500245084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4500045077%_))))
                                  (if (gx#stx-pair/null? _%$%hd4500145081%_)
                                      (let ((_g49123_
                                             (gx#syntax-split-splice
                                              _%$%hd4500145081%_
                                              '0)))
                                        (begin
                                          (let ((_g49124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49123_)
                                                       (##values-length
                                                        _g49123_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49124_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49124_)))
                                          (let ((_%$%target4500345087%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49123_ 0)))
                                                (_%$%tl4500545090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49123_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4500545090%_)
                                                (letrec ((_%$%loop4500645093%_
                                                          (lambda (_%$%hd4500445097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4501045100%_
                           _%$%init4501145101%_
                           _%$%var4501245102%_)
                    (if (gx#stx-pair? _%$%hd4500445097%_)
                        (let ((_%$%e4500745104%_
                               (gx#syntax-e _%$%hd4500445097%_)))
                          (let ((_%$%lp-hd4500845108%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4500745104%_)))
                                (_%$%lp-tl4500945111%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4500745104%_))))
                            (if (gx#stx-pair? _%$%lp-hd4500845108%_)
                                (let ((_%$%e4501645114%_
                                       (gx#syntax-e _%$%lp-hd4500845108%_)))
                                  (let ((_%$%hd4501745118%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4501645114%_)))
                                        (_%$%tl4501845121%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4501645114%_))))
                                    (if (gx#stx-pair? _%$%tl4501845121%_)
                                        (let ((_%$%e4501945124%_
                                               (gx#syntax-e
                                                _%$%tl4501845121%_)))
                                          (let ((_%$%hd4502045128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4501945124%_)))
                                                (_%$%tl4502145131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4501945124%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4502145131%_)
                                                (let ((_g49125_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4502145131%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49126_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49125_)
                         (##values-length _g49125_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49126_ 2)))
                  (error "Context expects 2 values" _g49126_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4502245134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49125_
                                                              0)))
                                                          (_%$%tl4502445137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49125_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4502445137%_)
                                                          (letrec ((_%$%loop4502545140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4502345144%_ _%$%step4502945147%_)
                              (if (gx#stx-pair? _%$%hd4502345144%_)
                                  (let ((_%$%e4502645149%_
                                         (gx#syntax-e _%$%hd4502345144%_)))
                                    (let ((_%$%lp-hd4502745153%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4502645149%_)))
                                          (_%$%lp-tl4502845156%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4502645149%_))))
                                      (_%$%loop4502545140%_
                                       _%$%lp-tl4502845156%_
                                       (cons _%$%lp-hd4502745153%_
                                             _%$%step4502945147%_))))
                                  (let ((_%$%step4503045159%_
                                         (reverse _%$%step4502945147%_)))
                                    (_%$%loop4500645093%_
                                     _%$%lp-tl4500945111%_
                                     (cons _%$%step4503045159%_
                                           _%$%step4501045100%_)
                                     (cons _%$%hd4502045128%_
                                           _%$%init4501145101%_)
                                     (cons _%$%hd4501745118%_
                                           _%$%var4501245102%_)))))))
                    (_%$%loop4502545140%_ _%$%target4502245134%_ '()))
                  (_%$%g4498945060%_ _%$%g4499045064%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4498945060%_
                                                 _%$%g4499045064%_))))
                                        (_%$%g4498945060%_
                                         _%$%g4499045064%_))))
                                (_%$%g4498945060%_ _%$%g4499045064%_))))
                        (let ((_%$%step4501345162%_
                               (reverse _%$%step4501045100%_))
                              (_%$%init4501445164%_
                               (reverse _%$%init4501145101%_))
                              (_%$%var4501545165%_
                               (reverse _%$%var4501245102%_)))
                          (if (gx#stx-pair? _%$%tl4500245084%_)
                              (let ((_%$%e4503145167%_
                                     (gx#syntax-e _%$%tl4500245084%_)))
                                (let ((_%$%hd4503245171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4503145167%_)))
                                      (_%$%tl4503345174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4503145167%_))))
                                  (if (gx#stx-pair? _%$%hd4503245171%_)
                                      (let ((_%$%e4503445177%_
                                             (gx#syntax-e _%$%hd4503245171%_)))
                                        (let ((_%$%hd4503545181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4503445177%_)))
                                              (_%$%tl4503645184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4503445177%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4503645184%_)
                                              (let ((_g49127_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4503645184%_
                                                      '0)))
                                                (begin
                                                  (let ((_g49128_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g49127_)
                                                               (##values-length
                                                                _g49127_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g49128_ 2)))
                (error "Context expects 2 values" _g49128_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4503745187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49127_
                                                            0)))
                                                        (_%$%tl4503945190%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49127_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4503945190%_)
                                                        (letrec ((_%$%loop4504045193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4503845197%_ _%$%fini4504445200%_)
                            (if (gx#stx-pair? _%$%hd4503845197%_)
                                (let ((_%$%e4504145202%_
                                       (gx#syntax-e _%$%hd4503845197%_)))
                                  (let ((_%$%lp-hd4504245206%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4504145202%_)))
                                        (_%$%lp-tl4504345209%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4504145202%_))))
                                    (_%$%loop4504045193%_
                                     _%$%lp-tl4504345209%_
                                     (cons _%$%lp-hd4504245206%_
                                           _%$%fini4504445200%_))))
                                (let ((_%$%fini4504545212%_
                                       (reverse _%$%fini4504445200%_)))
                                  (if (gx#stx-pair/null? _%$%tl4503345174%_)
                                      (let ((_g49129_
                                             (gx#syntax-split-splice
                                              _%$%tl4503345174%_
                                              '0)))
                                        (begin
                                          (let ((_g49130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49129_)
                                                       (##values-length
                                                        _g49129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49130_)))
                                          (let ((_%$%target4504645215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49129_ 0)))
                                                (_%$%tl4504845218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49129_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4504845218%_)
                                                (letrec ((_%$%loop4504945221%_
                                                          (lambda (_%$%hd4504745225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4505345228%_)
                    (if (gx#stx-pair? _%$%hd4504745225%_)
                        (let ((_%$%e4505045230%_
                               (gx#syntax-e _%$%hd4504745225%_)))
                          (let ((_%$%lp-hd4505145234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4505045230%_)))
                                (_%$%lp-tl4505245237%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4505045230%_))))
                            (_%$%loop4504945221%_
                             _%$%lp-tl4505245237%_
                             (cons _%$%lp-hd4505145234%_
                                   _%$%body4505345228%_))))
                        (let ((_%$%body4505445240%_
                               (reverse _%$%body4505345228%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4528245285%_
                                               _%$%g4528345288%_)
                                        (cons _%$%g4528245285%_
                                              _%$%g4528345288%_))
                                      '()
                                      _%$%var4501545165%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4501445164%_
                                                   _%$%var4501545165%_)
                                                  (foldr (lambda (_%$%g4529045303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4529145306%_
                          _%$%g4529245308%_)
                   (cons (cons _%$%g4529145306%_ (cons _%$%g4529045303%_ '()))
                         _%$%g4529245308%_))
                 '()
                 _%$%init4501445164%_
                 _%$%var4501545165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (foldr (lambda (_%$%g4529345311%_
                                                                _%$%g4529445314%_)
                                                         (cons _%$%g4529345311%_
                                                               _%$%g4529445314%_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'if)
                           (cons _%$%hd4503545181%_
                                 (cons (cons (gx#datum->syntax '#f '$loop)
                                             (begin
                                               (gx#syntax-check-splice-targets
                                                _%$%step4501345162%_
                                                _%$%var4501545165%_)
                                               (foldr (lambda (_%$%g4529545317%_
                                                               _%$%g4529645320%_
                                                               _%$%g4529745322%_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin)
                            (cons _%$%g4529645320%_
                                  (foldr (lambda (_%$%g4529845325%_
                                                  _%$%g4529945328%_)
                                           (cons _%$%g4529845325%_
                                                 _%$%g4529945328%_))
                                         '()
                                         _%$%g4529545317%_)))
                      _%$%g4529745322%_))
              '()
              _%$%step4501345162%_
              _%$%var4501545165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons '#!void
                                                         (foldr (lambda (_%$%g4530045331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g4530145334%_)
                          (cons _%$%g4530045331%_ _%$%g4530145334%_))
                        '()
                        _%$%fini4504545212%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                     '())
               _%$%body4505445240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4498945060%_ _%$%g4499045064%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4504945221%_
                                                   _%$%target4504645215%_
                                                   '()))
                                                (_%$%g4498945060%_
                                                 _%$%g4499045064%_)))))
                                      (_%$%g4498945060%_
                                       _%$%g4499045064%_)))))))
                  (_%$%loop4504045193%_ _%$%target4503745187%_ '()))
                (_%$%g4498945060%_ _%$%g4499045064%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4498945060%_
                                               _%$%g4499045064%_))))
                                      (_%$%g4498945060%_ _%$%g4499045064%_))))
                              (_%$%g4498945060%_ _%$%g4499045064%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4500645093%_
                                                   _%$%target4500345087%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4498945060%_
                                                 _%$%g4499045064%_)))))
                                      (_%$%g4498945060%_ _%$%g4499045064%_))))
                              (_%$%g4498945060%_ _%$%g4499045064%_))))
                      (_%$%g4498945060%_ _%$%g4499045064%_)))))
          (_%$%g4498845337%_ _%$stx44985%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx45345%_)
        (let* ((_%$%g4534945373%_
                (lambda (_%$%g4535045369%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4535045369%_)))
               (_%$%g4534845456%_
                (lambda (_%$%g4535045377%_)
                  (if (gx#stx-pair? _%$%g4535045377%_)
                      (let ((_%$%e4535345380%_
                             (gx#syntax-e _%$%g4535045377%_)))
                        (let ((_%$%hd4535445384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4535345380%_)))
                              (_%$%tl4535545387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4535345380%_))))
                          (if (gx#stx-pair? _%$%tl4535545387%_)
                              (let ((_%$%e4535645390%_
                                     (gx#syntax-e _%$%tl4535545387%_)))
                                (let ((_%$%hd4535745394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4535645390%_)))
                                      (_%$%tl4535845397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4535645390%_))))
                                  (if (gx#stx-pair/null? _%$%tl4535845397%_)
                                      (let ((_g49131_
                                             (gx#syntax-split-splice
                                              _%$%tl4535845397%_
                                              '0)))
                                        (begin
                                          (let ((_g49132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49131_)
                                                       (##values-length
                                                        _g49131_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49132_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49132_)))
                                          (let ((_%$%target4535945400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49131_ 0)))
                                                (_%$%tl4536145403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49131_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4536145403%_)
                                                (letrec ((_%$%loop4536245406%_
                                                          (lambda (_%$%hd4536045410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4536645413%_)
                    (if (gx#stx-pair? _%$%hd4536045410%_)
                        (let ((_%$%e4536345415%_
                               (gx#syntax-e _%$%hd4536045410%_)))
                          (let ((_%$%lp-hd4536445419%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4536345415%_)))
                                (_%$%lp-tl4536545422%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4536345415%_))))
                            (_%$%loop4536245406%_
                             _%$%lp-tl4536545422%_
                             (cons _%$%lp-hd4536445419%_
                                   _%$%body4536645413%_))))
                        (let ((_%$%body4536745425%_
                               (reverse _%$%body4536645413%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'when)
                                                        (cons _%$%hd4535745394%_
                                                              (foldr (lambda (_%$%g4544745450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4544845453%_)
                               (cons _%$%g4544745450%_ _%$%g4544845453%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4536745425%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4536245406%_
                                                   _%$%target4535945400%_
                                                   '()))
                                                (_%$%g4534945373%_
                                                 _%$%g4535045377%_)))))
                                      (_%$%g4534945373%_ _%$%g4535045377%_))))
                              (_%$%g4534945373%_ _%$%g4535045377%_))))
                      (_%$%g4534945373%_ _%$%g4535045377%_)))))
          (_%$%g4534845456%_ _%$stx45345%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx45461%_)
        (let* ((_%$%g4546545489%_
                (lambda (_%$%g4546645485%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4546645485%_)))
               (_%$%g4546445572%_
                (lambda (_%$%g4546645493%_)
                  (if (gx#stx-pair? _%$%g4546645493%_)
                      (let ((_%$%e4546945496%_
                             (gx#syntax-e _%$%g4546645493%_)))
                        (let ((_%$%hd4547045500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4546945496%_)))
                              (_%$%tl4547145503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4546945496%_))))
                          (if (gx#stx-pair? _%$%tl4547145503%_)
                              (let ((_%$%e4547245506%_
                                     (gx#syntax-e _%$%tl4547145503%_)))
                                (let ((_%$%hd4547345510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4547245506%_)))
                                      (_%$%tl4547445513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4547245506%_))))
                                  (if (gx#stx-pair/null? _%$%tl4547445513%_)
                                      (let ((_g49133_
                                             (gx#syntax-split-splice
                                              _%$%tl4547445513%_
                                              '0)))
                                        (begin
                                          (let ((_g49134_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49133_)
                                                       (##values-length
                                                        _g49133_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49134_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49134_)))
                                          (let ((_%$%target4547545516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49133_ 0)))
                                                (_%$%tl4547745519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49133_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4547745519%_)
                                                (letrec ((_%$%loop4547845522%_
                                                          (lambda (_%$%hd4547645526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4548245529%_)
                    (if (gx#stx-pair? _%$%hd4547645526%_)
                        (let ((_%$%e4547945531%_
                               (gx#syntax-e _%$%hd4547645526%_)))
                          (let ((_%$%lp-hd4548045535%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4547945531%_)))
                                (_%$%lp-tl4548145538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4547945531%_))))
                            (_%$%loop4547845522%_
                             _%$%lp-tl4548145538%_
                             (cons _%$%lp-hd4548045535%_
                                   _%$%body4548245529%_))))
                        (let ((_%$%body4548345541%_
                               (reverse _%$%body4548245529%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'unless)
                                                        (cons _%$%hd4547345510%_
                                                              (foldr (lambda (_%$%g4556345566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4556445569%_)
                               (cons _%$%g4556345566%_ _%$%g4556445569%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4548345541%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4547845522%_
                                                   _%$%target4547545516%_
                                                   '()))
                                                (_%$%g4546545489%_
                                                 _%$%g4546645493%_)))))
                                      (_%$%g4546545489%_ _%$%g4546645493%_))))
                              (_%$%g4546545489%_ _%$%g4546645493%_))))
                      (_%$%g4546545489%_ _%$%g4546645493%_)))))
          (_%$%g4546445572%_ _%$stx45461%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx45577%_)
        (let ((_%$%g4558045587%_
               (lambda (_%$%g4558145583%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4558145583%_))))
          (_%$%g4558045587%_ _%$stx45577%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx45591%_)
        (let ((_%$%g4559445601%_
               (lambda (_%$%g4559545597%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4559545597%_))))
          (_%$%g4559445601%_ _%$stx45591%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx45605%_)
        (letrec ((_%generate-thunk45608%_
                  (lambda (_%body46927%_)
                    (if (null? _%body46927%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx45605%_)
                        (let* ((_%$%g4693046947%_
                                (lambda (_%$%g4693146943%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4693146943%_)))
                               (_%$%g4692947006%_
                                (lambda (_%$%g4693146951%_)
                                  (if (gx#stx-pair/null? _%$%g4693146951%_)
                                      (let ((_g49135_
                                             (gx#syntax-split-splice
                                              _%$%g4693146951%_
                                              '0)))
                                        (begin
                                          (let ((_g49136_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49135_)
                                                       (##values-length
                                                        _g49135_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49136_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49136_)))
                                          (let ((_%$%target4693346954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49135_ 0)))
                                                (_%$%tl4693546957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49135_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4693546957%_)
                                                (letrec ((_%$%loop4693646960%_
                                                          (lambda (_%$%hd4693446964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%e4694046967%_)
                    (if (gx#stx-pair? _%$%hd4693446964%_)
                        (let ((_%$%e4693746969%_
                               (gx#syntax-e _%$%hd4693446964%_)))
                          (let ((_%$%lp-hd4693846973%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4693746969%_)))
                                (_%$%lp-tl4693946976%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4693746969%_))))
                            (_%$%loop4693646960%_
                             _%$%lp-tl4693946976%_
                             (cons _%$%lp-hd4693846973%_ _%$%e4694046967%_))))
                        (let ((_%$%e4694146979%_ (reverse _%$%e4694046967%_)))
                          (cons (gx#datum->syntax '#f 'lambda)
                                (cons '()
                                      (foldr (lambda (_%$%g4699747000%_
                                                      _%$%g4699847003%_)
                                               (cons _%$%g4699747000%_
                                                     _%$%g4699847003%_))
                                             '()
                                             _%$%e4694146979%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4693646960%_
                                                   _%$%target4693346954%_
                                                   '()))
                                                (_%$%g4693046947%_
                                                 _%$%g4693146951%_)))))
                                      (_%$%g4693046947%_ _%$%g4693146951%_)))))
                          (_%$%g4692947006%_ (reverse _%body46927%_))))))
                 (_%generate-fini45610%_
                  (lambda (_%thunk46810%_ _%fini46812%_)
                    (let* ((_%$%g4681446838%_
                            (lambda (_%$%g4681546834%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4681546834%_)))
                           (_%$%g4681346923%_
                            (lambda (_%$%g4681546842%_)
                              (if (gx#stx-pair? _%$%g4681546842%_)
                                  (let ((_%$%e4681846845%_
                                         (gx#syntax-e _%$%g4681546842%_)))
                                    (let ((_%$%hd4681946849%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4681846845%_)))
                                          (_%$%tl4682046852%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4681846845%_))))
                                      (if (gx#stx-pair? _%$%tl4682046852%_)
                                          (let ((_%$%e4682146855%_
                                                 (gx#syntax-e
                                                  _%$%tl4682046852%_)))
                                            (let ((_%$%hd4682246859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4682146855%_)))
                                                  (_%$%tl4682346862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4682146855%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd4682246859%_)
                                                  (let ((_g49137_
                                                         (gx#syntax-split-splice
                                                          _%$%hd4682246859%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g49138_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g49137_)
                           (##values-length _g49137_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g49138_ 2)))
                    (error "Context expects 2 values" _g49138_)))
              (let ((_%$%target4682446865%_
                     (let () (declare (not safe)) (##values-ref _g49137_ 0)))
                    (_%$%tl4682646868%_
                     (let () (declare (not safe)) (##values-ref _g49137_ 1))))
                (if (gx#stx-null? _%$%tl4682646868%_)
                    (letrec ((_%$%loop4682746871%_
                              (lambda (_%$%hd4682546875%_ _%$%e4683146878%_)
                                (if (gx#stx-pair? _%$%hd4682546875%_)
                                    (let ((_%$%e4682846880%_
                                           (gx#syntax-e _%$%hd4682546875%_)))
                                      (let ((_%$%lp-hd4682946884%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4682846880%_)))
                                            (_%$%lp-tl4683046887%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4682846880%_))))
                                        (_%$%loop4682746871%_
                                         _%$%lp-tl4683046887%_
                                         (cons _%$%lp-hd4682946884%_
                                               _%$%e4683146878%_))))
                                    (let ((_%$%e4683246890%_
                                           (reverse _%$%e4683146878%_)))
                                      (if (gx#stx-null? _%$%tl4682346862%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-unwind-protect)
                                                (cons _%$%hd4681946849%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (foldr (lambda (_%$%g4691446917%_
                                                _%$%g4691546920%_)
                                         (cons _%$%g4691446917%_
                                               _%$%g4691546920%_))
                                       '()
                                       _%$%e4683246890%_)))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g4681446838%_
                                           _%$%g4681546842%_)))))))
                      (_%$%loop4682746871%_ _%$%target4682446865%_ '()))
                    (_%$%g4681446838%_ _%$%g4681546842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4681446838%_
                                                   _%$%g4681546842%_))))
                                          (_%$%g4681446838%_
                                           _%$%g4681546842%_))))
                                  (_%$%g4681446838%_ _%$%g4681546842%_)))))
                      (_%$%g4681346923%_
                       (list _%thunk46810%_ _%fini46812%_)))))
                 (_%generate-catch45611%_
                  (lambda (_%handlers46225%_ _%thunk46227%_)
                    (let* ((_%$%g4622946237%_
                            (lambda (_%$%g4623046233%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4623046233%_)))
                           (_%$%g4622846806%_
                            (lambda (_%$%g4623046241%_)
                              (let _%lp46256%_ ((_%rest46259%_
                                                 _%handlers46225%_)
                                                (_%clauses46261%_ '()))
                                (let* ((_%$%rest4626246270%_ _%rest46259%_)
                                       (_%$%else4626446401%_
                                        (lambda ()
                                          (let* ((_%$%g4628246306%_
                                                  (lambda (_%$%g4628346302%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4628346302%_)))
                                                 (_%$%g4628146397%_
                                                  (lambda (_%$%g4628346310%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g4628346310%_)
                                                        (let ((_%$%e4628646313%_
                                                               (gx#syntax-e
                                                                _%$%g4628346310%_)))
                                                          (let ((_%$%hd4628746317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4628646313%_)))
                        (_%$%tl4628846320%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4628646313%_))))
                    (if (gx#stx-pair/null? _%$%hd4628746317%_)
                        (let ((_g49139_
                               (gx#syntax-split-splice _%$%hd4628746317%_ '0)))
                          (begin
                            (let ((_g49140_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g49139_)
                                         (##values-length _g49139_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g49140_ 2)))
                                  (error "Context expects 2 values" _g49140_)))
                            (let ((_%$%target4628946323%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g49139_ 0)))
                                  (_%$%tl4629146326%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g49139_ 1))))
                              (if (gx#stx-null? _%$%tl4629146326%_)
                                  (letrec ((_%$%loop4629246329%_
                                            (lambda (_%$%hd4629046333%_
                                                     _%$%clause4629646336%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd4629046333%_)
                                                  (let ((_%$%e4629346338%_
                                                         (gx#syntax-e
                                                          _%$%hd4629046333%_)))
                                                    (let ((_%$%lp-hd4629446342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4629346338%_)))
                                                          (_%$%lp-tl4629546345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4629346338%_))))
                                                      (_%$%loop4629246329%_
                                                       _%$%lp-tl4629546345%_
                                                       (cons _%$%lp-hd4629446342%_
                                                             _%$%clause4629646336%_))))
                                                  (let ((_%$%clause4629746348%_
                                                         (reverse _%$%clause4629646336%_)))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4628846320%_)
                                                        (let ((_%$%e4629846351%_
                                                               (gx#syntax-e
                                                                _%$%tl4628846320%_)))
                                                          (let ((_%$%hd4629946355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4629846351%_)))
                        (_%$%tl4630046358%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4629846351%_))))
                    (if (gx#stx-null? _%$%tl4630046358%_)
                        (cons (gx#datum->syntax '#f 'with-catch)
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _%$%g4623046241%_ '())
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'cond)
                                                            (foldr (lambda (_%$%g4638846391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g4638946394%_)
                             (cons _%$%g4638846391%_ _%$%g4638946394%_))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'raise)
                                                   (cons _%$%g4623046241%_
                                                         '()))
                                             '()))
                                 '())
                           _%$%clause4629746348%_))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _%$%hd4629946355%_ '())))
                        (_%$%g4628246306%_ _%$%g4628346310%_))))
                (_%$%g4628246306%_ _%$%g4628346310%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop4629246329%_
                                     _%$%target4628946323%_
                                     '()))
                                  (_%$%g4628246306%_ _%$%g4628346310%_)))))
                        (_%$%g4628246306%_ _%$%g4628346310%_))))
                (_%$%g4628246306%_ _%$%g4628346310%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4628146397%_
                                             (list _%clauses46261%_
                                                   _%thunk46227%_)))))
                                       (_%$%K4626646790%_
                                        (lambda (_%rest46405%_ _%hd46407%_)
                                          (let* ((_%__stx4871948720%_
                                                  _%hd46407%_)
                                                 (_%$%g4641246482%_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx4871948720%_))))
                                            (let ((_%__kont4872248723%_
                                                   (lambda (_%$%g4641446769%_
                                                            _%$%g4641546771%_)
                                                     (_%lp46256%_
                                                      _%rest46405%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4641546771%_ '()))
                                (cons _%$%g4623046241%_ '()))
                          (cons (gx#datum->syntax '#f '=>)
                                (cons _%$%g4641446769%_ '())))
                    _%clauses46261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4872448725%_
                                                   (lambda (_%$%g4642546701%_
                                                            _%$%g4642646703%_
                                                            _%$%g4642746704%_)
                                                     (_%lp46256%_
                                                      _%rest46405%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4642746704%_ '()))
                                (cons _%$%g4623046241%_ '()))
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4642646703%_
                                                        (cons _%$%g4623046241%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4672346726%_
                                                            _%$%g4672446729%_)
                                                     (cons _%$%g4672346726%_
                                                           _%$%g4672446729%_))
                                                   '()
                                                   _%$%g4642546701%_)))
                                '()))
                    _%clauses46261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4872848729%_
                                                   (lambda (_%$%g4644646609%_
                                                            _%$%g4644746611%_)
                                                     (_%lp46256%_
                                                      _%rest46405%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4644746611%_
                                                        (cons _%$%g4623046241%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4662746630%_
                                                            _%$%g4662846633%_)
                                                     (cons _%$%g4662746630%_
                                                           _%$%g4662846633%_))
                                                   '()
                                                   _%$%g4644646609%_)))
                                '()))
                    _%clauses46261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4873248733%_
                                                   (lambda (_%$%g4646346527%_
                                                            _%$%g4646446529%_)
                                                     (_%lp46256%_
                                                      _%rest46405%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (foldr (lambda (_%$%g4654546548%_
                                                      _%$%g4654646551%_)
                                               (cons _%$%g4654546548%_
                                                     _%$%g4654646551%_))
                                             '()
                                             _%$%g4646346527%_))
                                '()))
                    _%clauses46261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__match4882448825%_
                                                      (lambda (_%$%e4646546489%_
                                                               _%$%hd4646646493%_
                                                               _%$%tl4646746496%_
                                                               _%__splice4873448735%_
                                                               _%$%target4646846499%_
                                                               _%$%tl4647046502%_)
                                                        (letrec ((_%$%loop4647146505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4646946509%_ _%$%body4647546512%_)
                            (if (gx#stx-pair? _%$%hd4646946509%_)
                                (let ((_%$%e4647246514%_
                                       (gx#syntax-e _%$%hd4646946509%_)))
                                  (let ((_%$%lp-tl4647446521%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4647246514%_)))
                                        (_%$%lp-hd4647346518%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4647246514%_))))
                                    (_%$%loop4647146505%_
                                     _%$%lp-tl4647446521%_
                                     (cons _%$%lp-hd4647346518%_
                                           _%$%body4647546512%_))))
                                (let ((_%$%body4647646524%_
                                       (reverse _%$%body4647546512%_)))
                                  (let ((_%$%g4646346527%_
                                         _%$%body4647646524%_)
                                        (_%$%g4646446529%_ _%$%hd4646646493%_))
                                    (if (gx#underscore? _%$%g4646446529%_)
                                        (_%__kont4873248733%_
                                         _%$%g4646346527%_
                                         _%$%g4646446529%_)
                                        (_%$%g4641246482%_))))))))
                  (_%$%loop4647146505%_ _%$%target4646846499%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4881048811%_
                                                      (lambda (_%$%e4644846561%_
                                                               _%$%hd4644946565%_
                                                               _%$%tl4645046568%_
                                                               _%$%e4645146571%_
                                                               _%$%hd4645246575%_
                                                               _%$%tl4645346578%_
                                                               _%__splice4873048731%_
                                                               _%$%target4645446581%_
                                                               _%$%tl4645646584%_)
                                                        (letrec ((_%$%loop4645746587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4645546591%_ _%$%body4646146594%_)
                            (if (gx#stx-pair? _%$%hd4645546591%_)
                                (let ((_%$%e4645846596%_
                                       (gx#syntax-e _%$%hd4645546591%_)))
                                  (let ((_%$%lp-tl4646046603%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4645846596%_)))
                                        (_%$%lp-hd4645946600%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4645846596%_))))
                                    (_%$%loop4645746587%_
                                     _%$%lp-tl4646046603%_
                                     (cons _%$%lp-hd4645946600%_
                                           _%$%body4646146594%_))))
                                (let ((_%$%body4646246606%_
                                       (reverse _%$%body4646146594%_)))
                                  (let ((_%$%g4644646609%_
                                         _%$%body4646246606%_)
                                        (_%$%g4644746611%_ _%$%hd4645246575%_))
                                    (if (gx#identifier? _%$%g4644746611%_)
                                        (_%__kont4872848729%_
                                         _%$%g4644646609%_
                                         _%$%g4644746611%_)
                                        (_%__match4882448825%_
                                         _%$%e4644846561%_
                                         _%$%hd4644946565%_
                                         _%$%tl4645046568%_
                                         _%__splice4873048731%_
                                         _%$%target4645446581%_
                                         _%$%tl4645646584%_))))))))
                  (_%$%loop4645746587%_ _%$%target4645446581%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4878848789%_
                                                      (lambda (_%$%e4642846643%_
                                                               _%$%hd4642946647%_
                                                               _%$%tl4643046650%_
                                                               _%$%e4643146653%_
                                                               _%$%hd4643246657%_
                                                               _%$%tl4643346660%_
                                                               _%$%e4643446663%_
                                                               _%$%hd4643546667%_
                                                               _%$%tl4643646670%_
                                                               _%__splice4872648727%_
                                                               _%$%target4643746673%_
                                                               _%$%tl4643946676%_)
                                                        (letrec ((_%$%loop4644046679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4643846683%_ _%$%body4644446686%_)
                            (if (gx#stx-pair? _%$%hd4643846683%_)
                                (let ((_%$%e4644146688%_
                                       (gx#syntax-e _%$%hd4643846683%_)))
                                  (let ((_%$%lp-tl4644346695%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4644146688%_)))
                                        (_%$%lp-hd4644246692%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4644146688%_))))
                                    (_%$%loop4644046679%_
                                     _%$%lp-tl4644346695%_
                                     (cons _%$%lp-hd4644246692%_
                                           _%$%body4644446686%_))))
                                (let ((_%$%body4644546698%_
                                       (reverse _%$%body4644446686%_)))
                                  (let ((_%$%g4642546701%_
                                         _%$%body4644546698%_)
                                        (_%$%g4642646703%_ _%$%hd4643546667%_)
                                        (_%$%g4642746704%_ _%$%hd4643246657%_))
                                    (if (gx#identifier? _%$%g4642646703%_)
                                        (_%__kont4872448725%_
                                         _%$%g4642546701%_
                                         _%$%g4642646703%_
                                         _%$%g4642746704%_)
                                        (_%__match4882448825%_
                                         _%$%e4642846643%_
                                         _%$%hd4642946647%_
                                         _%$%tl4643046650%_
                                         _%__splice4872648727%_
                                         _%$%target4643746673%_
                                         _%$%tl4643946676%_))))))))
                  (_%$%loop4644046679%_ _%$%target4643746673%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx4871948720%_)
                                                    (let ((_%$%e4641646739%_
                                                           (gx#syntax-e
                                                            _%__stx4871948720%_)))
                                                      (let ((_%$%tl4641846746%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4641646739%_)))
                    (_%$%hd4641746743%_
                     (let () (declare (not safe)) (##car _%$%e4641646739%_))))
                (if (gx#stx-pair? _%$%tl4641846746%_)
                    (let ((_%$%e4641946749%_ (gx#syntax-e _%$%tl4641846746%_)))
                      (let ((_%$%tl4642146756%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4641946749%_)))
                            (_%$%hd4642046753%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4641946749%_))))
                        (if (gx#identifier? _%$%hd4642046753%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-sugar[1]#_g49141_|
                                 _%$%hd4642046753%_)
                                (if (gx#stx-pair? _%$%tl4642146756%_)
                                    (let ((_%$%e4642246759%_
                                           (gx#syntax-e _%$%tl4642146756%_)))
                                      (let ((_%$%tl4642446766%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4642246759%_)))
                                            (_%$%hd4642346763%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4642246759%_))))
                                        (if (gx#stx-null? _%$%tl4642446766%_)
                                            (_%__kont4872248723%_
                                             _%$%hd4642346763%_
                                             _%$%hd4641746743%_)
                                            (if (gx#stx-pair?
                                                 _%$%hd4641746743%_)
                                                (let ((_%$%e4643146653%_
                                                       (gx#syntax-e
                                                        _%$%hd4641746743%_)))
                                                  (let ((_%$%tl4643346660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4643146653%_)))
                                                        (_%$%hd4643246657%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4643146653%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4643346660%_)
                                                        (let ((_%$%e4643446663%_
                                                               (gx#syntax-e
                                                                _%$%tl4643346660%_)))
                                                          (let ((_%$%tl4643646670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4643446663%_)))
                        (_%$%hd4643546667%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4643446663%_))))
                    (if (gx#stx-null? _%$%tl4643646670%_)
                        (if (gx#stx-pair/null? _%$%tl4641846746%_)
                            (let ((_%__splice4872648727%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4641846746%_
                                    '0)))
                              (let ((_%$%tl4643946676%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4872648727%_
                                        '1)))
                                    (_%$%target4643746673%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4872648727%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4643946676%_)
                                    (_%__match4878848789%_
                                     _%$%e4641646739%_
                                     _%$%hd4641746743%_
                                     _%$%tl4641846746%_
                                     _%$%e4643146653%_
                                     _%$%hd4643246657%_
                                     _%$%tl4643346660%_
                                     _%$%e4643446663%_
                                     _%$%hd4643546667%_
                                     _%$%tl4643646670%_
                                     _%__splice4872648727%_
                                     _%$%target4643746673%_
                                     _%$%tl4643946676%_)
                                    (_%$%g4641246482%_))))
                            (_%$%g4641246482%_))
                        (if (gx#stx-pair/null? _%$%tl4641846746%_)
                            (let ((_%__splice4873448735%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4641846746%_
                                    '0)))
                              (let ((_%$%tl4647046502%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4873448735%_
                                        '1)))
                                    (_%$%target4646846499%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4873448735%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4647046502%_)
                                    (_%__match4882448825%_
                                     _%$%e4641646739%_
                                     _%$%hd4641746743%_
                                     _%$%tl4641846746%_
                                     _%__splice4873448735%_
                                     _%$%target4646846499%_
                                     _%$%tl4647046502%_)
                                    (_%$%g4641246482%_))))
                            (_%$%g4641246482%_)))))
                (if (gx#stx-null? _%$%tl4643346660%_)
                    (if (gx#stx-pair/null? _%$%tl4641846746%_)
                        (let ((_%__splice4873048731%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4641846746%_
                                '0)))
                          (let ((_%$%tl4645646584%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4873048731%_ '1)))
                                (_%$%target4645446581%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4873048731%_ '0))))
                            (if (gx#stx-null? _%$%tl4645646584%_)
                                (_%__match4881048811%_
                                 _%$%e4641646739%_
                                 _%$%hd4641746743%_
                                 _%$%tl4641846746%_
                                 _%$%e4643146653%_
                                 _%$%hd4643246657%_
                                 _%$%tl4643346660%_
                                 _%__splice4873048731%_
                                 _%$%target4645446581%_
                                 _%$%tl4645646584%_)
                                (_%$%g4641246482%_))))
                        (_%$%g4641246482%_))
                    (if (gx#stx-pair/null? _%$%tl4641846746%_)
                        (let ((_%__splice4873448735%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4641846746%_
                                '0)))
                          (let ((_%$%tl4647046502%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4873448735%_ '1)))
                                (_%$%target4646846499%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4873448735%_ '0))))
                            (if (gx#stx-null? _%$%tl4647046502%_)
                                (_%__match4882448825%_
                                 _%$%e4641646739%_
                                 _%$%hd4641746743%_
                                 _%$%tl4641846746%_
                                 _%__splice4873448735%_
                                 _%$%target4646846499%_
                                 _%$%tl4647046502%_)
                                (_%$%g4641246482%_))))
                        (_%$%g4641246482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4641846746%_)
                                                    (let ((_%__splice4873448735%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4641846746%_
                                                            '0)))
                                                      (let ((_%$%tl4647046502%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4873448735%_ '1)))
                    (_%$%target4646846499%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4873448735%_ '0))))
                (if (gx#stx-null? _%$%tl4647046502%_)
                    (_%__match4882448825%_
                     _%$%e4641646739%_
                     _%$%hd4641746743%_
                     _%$%tl4641846746%_
                     _%__splice4873448735%_
                     _%$%target4646846499%_
                     _%$%tl4647046502%_)
                    (_%$%g4641246482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4641246482%_))))))
                                    (if (gx#stx-pair? _%$%hd4641746743%_)
                                        (let ((_%$%e4643146653%_
                                               (gx#syntax-e
                                                _%$%hd4641746743%_)))
                                          (let ((_%$%tl4643346660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4643146653%_)))
                                                (_%$%hd4643246657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4643146653%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4643346660%_)
                                                (let ((_%$%e4643446663%_
                                                       (gx#syntax-e
                                                        _%$%tl4643346660%_)))
                                                  (let ((_%$%tl4643646670%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4643446663%_)))
                                                        (_%$%hd4643546667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4643446663%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4643646670%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl4641846746%_)
                                                            (let ((_%__splice4872648727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl4641846746%_
                            '0)))
                      (let ((_%$%tl4643946676%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4872648727%_ '1)))
                            (_%$%target4643746673%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4872648727%_ '0))))
                        (if (gx#stx-null? _%$%tl4643946676%_)
                            (_%__match4878848789%_
                             _%$%e4641646739%_
                             _%$%hd4641746743%_
                             _%$%tl4641846746%_
                             _%$%e4643146653%_
                             _%$%hd4643246657%_
                             _%$%tl4643346660%_
                             _%$%e4643446663%_
                             _%$%hd4643546667%_
                             _%$%tl4643646670%_
                             _%__splice4872648727%_
                             _%$%target4643746673%_
                             _%$%tl4643946676%_)
                            (_%$%g4641246482%_))))
                    (_%$%g4641246482%_))
                (if (gx#stx-pair/null? _%$%tl4641846746%_)
                    (let ((_%__splice4873448735%_
                           (gx#syntax-split-splice->vector
                            _%$%tl4641846746%_
                            '0)))
                      (let ((_%$%tl4647046502%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4873448735%_ '1)))
                            (_%$%target4646846499%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4873448735%_ '0))))
                        (if (gx#stx-null? _%$%tl4647046502%_)
                            (_%__match4882448825%_
                             _%$%e4641646739%_
                             _%$%hd4641746743%_
                             _%$%tl4641846746%_
                             _%__splice4873448735%_
                             _%$%target4646846499%_
                             _%$%tl4647046502%_)
                            (_%$%g4641246482%_))))
                    (_%$%g4641246482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%$%tl4643346660%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4641846746%_)
                                                        (let ((_%__splice4873048731%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4641846746%_
                                                                '0)))
                                                          (let ((_%$%tl4645646584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4873048731%_ '1)))
                        (_%$%target4645446581%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4873048731%_ '0))))
                    (if (gx#stx-null? _%$%tl4645646584%_)
                        (_%__match4881048811%_
                         _%$%e4641646739%_
                         _%$%hd4641746743%_
                         _%$%tl4641846746%_
                         _%$%e4643146653%_
                         _%$%hd4643246657%_
                         _%$%tl4643346660%_
                         _%__splice4873048731%_
                         _%$%target4645446581%_
                         _%$%tl4645646584%_)
                        (_%$%g4641246482%_))))
                (_%$%g4641246482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4641846746%_)
                                                        (let ((_%__splice4873448735%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4641846746%_
                                                                '0)))
                                                          (let ((_%$%tl4647046502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4873448735%_ '1)))
                        (_%$%target4646846499%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4873448735%_ '0))))
                    (if (gx#stx-null? _%$%tl4647046502%_)
                        (_%__match4882448825%_
                         _%$%e4641646739%_
                         _%$%hd4641746743%_
                         _%$%tl4641846746%_
                         _%__splice4873448735%_
                         _%$%target4646846499%_
                         _%$%tl4647046502%_)
                        (_%$%g4641246482%_))))
                (_%$%g4641246482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair/null?
                                             _%$%tl4641846746%_)
                                            (let ((_%__splice4873448735%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4641846746%_
                                                    '0)))
                                              (let ((_%$%tl4647046502%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4873448735%_
                                                        '1)))
                                                    (_%$%target4646846499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4873448735%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4647046502%_)
                                                    (_%__match4882448825%_
                                                     _%$%e4641646739%_
                                                     _%$%hd4641746743%_
                                                     _%$%tl4641846746%_
                                                     _%__splice4873448735%_
                                                     _%$%target4646846499%_
                                                     _%$%tl4647046502%_)
                                                    (_%$%g4641246482%_))))
                                            (_%$%g4641246482%_))))
                                (if (gx#stx-pair? _%$%hd4641746743%_)
                                    (let ((_%$%e4643146653%_
                                           (gx#syntax-e _%$%hd4641746743%_)))
                                      (let ((_%$%tl4643346660%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4643146653%_)))
                                            (_%$%hd4643246657%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4643146653%_))))
                                        (if (gx#stx-pair? _%$%tl4643346660%_)
                                            (let ((_%$%e4643446663%_
                                                   (gx#syntax-e
                                                    _%$%tl4643346660%_)))
                                              (let ((_%$%tl4643646670%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4643446663%_)))
                                                    (_%$%hd4643546667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4643446663%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4643646670%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4641846746%_)
                                                        (let ((_%__splice4872648727%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4641846746%_
                                                                '0)))
                                                          (let ((_%$%tl4643946676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4872648727%_ '1)))
                        (_%$%target4643746673%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4872648727%_ '0))))
                    (if (gx#stx-null? _%$%tl4643946676%_)
                        (_%__match4878848789%_
                         _%$%e4641646739%_
                         _%$%hd4641746743%_
                         _%$%tl4641846746%_
                         _%$%e4643146653%_
                         _%$%hd4643246657%_
                         _%$%tl4643346660%_
                         _%$%e4643446663%_
                         _%$%hd4643546667%_
                         _%$%tl4643646670%_
                         _%__splice4872648727%_
                         _%$%target4643746673%_
                         _%$%tl4643946676%_)
                        (_%$%g4641246482%_))))
                (_%$%g4641246482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4641846746%_)
                                                        (let ((_%__splice4873448735%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4641846746%_
                                                                '0)))
                                                          (let ((_%$%tl4647046502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4873448735%_ '1)))
                        (_%$%target4646846499%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4873448735%_ '0))))
                    (if (gx#stx-null? _%$%tl4647046502%_)
                        (_%__match4882448825%_
                         _%$%e4641646739%_
                         _%$%hd4641746743%_
                         _%$%tl4641846746%_
                         _%__splice4873448735%_
                         _%$%target4646846499%_
                         _%$%tl4647046502%_)
                        (_%$%g4641246482%_))))
                (_%$%g4641246482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-null?
                                                 _%$%tl4643346660%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4641846746%_)
                                                    (let ((_%__splice4873048731%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4641846746%_
                                                            '0)))
                                                      (let ((_%$%tl4645646584%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4873048731%_ '1)))
                    (_%$%target4645446581%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4873048731%_ '0))))
                (if (gx#stx-null? _%$%tl4645646584%_)
                    (_%__match4881048811%_
                     _%$%e4641646739%_
                     _%$%hd4641746743%_
                     _%$%tl4641846746%_
                     _%$%e4643146653%_
                     _%$%hd4643246657%_
                     _%$%tl4643346660%_
                     _%__splice4873048731%_
                     _%$%target4645446581%_
                     _%$%tl4645646584%_)
                    (_%$%g4641246482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4641246482%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4641846746%_)
                                                    (let ((_%__splice4873448735%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4641846746%_
                                                            '0)))
                                                      (let ((_%$%tl4647046502%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4873448735%_ '1)))
                    (_%$%target4646846499%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4873448735%_ '0))))
                (if (gx#stx-null? _%$%tl4647046502%_)
                    (_%__match4882448825%_
                     _%$%e4641646739%_
                     _%$%hd4641746743%_
                     _%$%tl4641846746%_
                     _%__splice4873448735%_
                     _%$%target4646846499%_
                     _%$%tl4647046502%_)
                    (_%$%g4641246482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4641246482%_))))))
                                    (if (gx#stx-pair/null? _%$%tl4641846746%_)
                                        (let ((_%__splice4873448735%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4641846746%_
                                                '0)))
                                          (let ((_%$%tl4647046502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4873448735%_
                                                    '1)))
                                                (_%$%target4646846499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4873448735%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4647046502%_)
                                                (_%__match4882448825%_
                                                 _%$%e4641646739%_
                                                 _%$%hd4641746743%_
                                                 _%$%tl4641846746%_
                                                 _%__splice4873448735%_
                                                 _%$%target4646846499%_
                                                 _%$%tl4647046502%_)
                                                (_%$%g4641246482%_))))
                                        (_%$%g4641246482%_))))
                            (if (gx#stx-pair? _%$%hd4641746743%_)
                                (let ((_%$%e4643146653%_
                                       (gx#syntax-e _%$%hd4641746743%_)))
                                  (let ((_%$%tl4643346660%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4643146653%_)))
                                        (_%$%hd4643246657%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4643146653%_))))
                                    (if (gx#stx-pair? _%$%tl4643346660%_)
                                        (let ((_%$%e4643446663%_
                                               (gx#syntax-e
                                                _%$%tl4643346660%_)))
                                          (let ((_%$%tl4643646670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4643446663%_)))
                                                (_%$%hd4643546667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4643446663%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl4643646670%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4641846746%_)
                                                    (let ((_%__splice4872648727%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4641846746%_
                                                            '0)))
                                                      (let ((_%$%tl4643946676%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4872648727%_ '1)))
                    (_%$%target4643746673%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4872648727%_ '0))))
                (if (gx#stx-null? _%$%tl4643946676%_)
                    (_%__match4878848789%_
                     _%$%e4641646739%_
                     _%$%hd4641746743%_
                     _%$%tl4641846746%_
                     _%$%e4643146653%_
                     _%$%hd4643246657%_
                     _%$%tl4643346660%_
                     _%$%e4643446663%_
                     _%$%hd4643546667%_
                     _%$%tl4643646670%_
                     _%__splice4872648727%_
                     _%$%target4643746673%_
                     _%$%tl4643946676%_)
                    (_%$%g4641246482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4641246482%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4641846746%_)
                                                    (let ((_%__splice4873448735%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4641846746%_
                                                            '0)))
                                                      (let ((_%$%tl4647046502%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4873448735%_ '1)))
                    (_%$%target4646846499%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4873448735%_ '0))))
                (if (gx#stx-null? _%$%tl4647046502%_)
                    (_%__match4882448825%_
                     _%$%e4641646739%_
                     _%$%hd4641746743%_
                     _%$%tl4641846746%_
                     _%__splice4873448735%_
                     _%$%target4646846499%_
                     _%$%tl4647046502%_)
                    (_%$%g4641246482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4641246482%_)))))
                                        (if (gx#stx-null? _%$%tl4643346660%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4641846746%_)
                                                (let ((_%__splice4873048731%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4641846746%_
                                                        '0)))
                                                  (let ((_%$%tl4645646584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4873048731%_
                                                            '1)))
                                                        (_%$%target4645446581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4873048731%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4645646584%_)
                                                        (_%__match4881048811%_
                                                         _%$%e4641646739%_
                                                         _%$%hd4641746743%_
                                                         _%$%tl4641846746%_
                                                         _%$%e4643146653%_
                                                         _%$%hd4643246657%_
                                                         _%$%tl4643346660%_
                                                         _%__splice4873048731%_
                                                         _%$%target4645446581%_
                                                         _%$%tl4645646584%_)
                                                        (_%$%g4641246482%_))))
                                                (_%$%g4641246482%_))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4641846746%_)
                                                (let ((_%__splice4873448735%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4641846746%_
                                                        '0)))
                                                  (let ((_%$%tl4647046502%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4873448735%_
                                                            '1)))
                                                        (_%$%target4646846499%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4873448735%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4647046502%_)
                                                        (_%__match4882448825%_
                                                         _%$%e4641646739%_
                                                         _%$%hd4641746743%_
                                                         _%$%tl4641846746%_
                                                         _%__splice4873448735%_
                                                         _%$%target4646846499%_
                                                         _%$%tl4647046502%_)
                                                        (_%$%g4641246482%_))))
                                                (_%$%g4641246482%_))))))
                                (if (gx#stx-pair/null? _%$%tl4641846746%_)
                                    (let ((_%__splice4873448735%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4641846746%_
                                            '0)))
                                      (let ((_%$%tl4647046502%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4873448735%_
                                                '1)))
                                            (_%$%target4646846499%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4873448735%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4647046502%_)
                                            (_%__match4882448825%_
                                             _%$%e4641646739%_
                                             _%$%hd4641746743%_
                                             _%$%tl4641846746%_
                                             _%__splice4873448735%_
                                             _%$%target4646846499%_
                                             _%$%tl4647046502%_)
                                            (_%$%g4641246482%_))))
                                    (_%$%g4641246482%_))))))
                    (if (gx#stx-pair? _%$%hd4641746743%_)
                        (let ((_%$%e4643146653%_
                               (gx#syntax-e _%$%hd4641746743%_)))
                          (let ((_%$%tl4643346660%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4643146653%_)))
                                (_%$%hd4643246657%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4643146653%_))))
                            (if (gx#stx-pair? _%$%tl4643346660%_)
                                (let ((_%$%e4643446663%_
                                       (gx#syntax-e _%$%tl4643346660%_)))
                                  (let ((_%$%tl4643646670%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4643446663%_)))
                                        (_%$%hd4643546667%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4643446663%_))))
                                    (if (gx#stx-null? _%$%tl4643646670%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4641846746%_)
                                            (let ((_%__splice4872648727%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4641846746%_
                                                    '0)))
                                              (let ((_%$%tl4643946676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4872648727%_
                                                        '1)))
                                                    (_%$%target4643746673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4872648727%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4643946676%_)
                                                    (_%__match4878848789%_
                                                     _%$%e4641646739%_
                                                     _%$%hd4641746743%_
                                                     _%$%tl4641846746%_
                                                     _%$%e4643146653%_
                                                     _%$%hd4643246657%_
                                                     _%$%tl4643346660%_
                                                     _%$%e4643446663%_
                                                     _%$%hd4643546667%_
                                                     _%$%tl4643646670%_
                                                     _%__splice4872648727%_
                                                     _%$%target4643746673%_
                                                     _%$%tl4643946676%_)
                                                    (_%$%g4641246482%_))))
                                            (_%$%g4641246482%_))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4641846746%_)
                                            (let ((_%__splice4873448735%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4641846746%_
                                                    '0)))
                                              (let ((_%$%tl4647046502%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4873448735%_
                                                        '1)))
                                                    (_%$%target4646846499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4873448735%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4647046502%_)
                                                    (_%__match4882448825%_
                                                     _%$%e4641646739%_
                                                     _%$%hd4641746743%_
                                                     _%$%tl4641846746%_
                                                     _%__splice4873448735%_
                                                     _%$%target4646846499%_
                                                     _%$%tl4647046502%_)
                                                    (_%$%g4641246482%_))))
                                            (_%$%g4641246482%_)))))
                                (if (gx#stx-null? _%$%tl4643346660%_)
                                    (if (gx#stx-pair/null? _%$%tl4641846746%_)
                                        (let ((_%__splice4873048731%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4641846746%_
                                                '0)))
                                          (let ((_%$%tl4645646584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4873048731%_
                                                    '1)))
                                                (_%$%target4645446581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4873048731%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4645646584%_)
                                                (_%__match4881048811%_
                                                 _%$%e4641646739%_
                                                 _%$%hd4641746743%_
                                                 _%$%tl4641846746%_
                                                 _%$%e4643146653%_
                                                 _%$%hd4643246657%_
                                                 _%$%tl4643346660%_
                                                 _%__splice4873048731%_
                                                 _%$%target4645446581%_
                                                 _%$%tl4645646584%_)
                                                (_%$%g4641246482%_))))
                                        (_%$%g4641246482%_))
                                    (if (gx#stx-pair/null? _%$%tl4641846746%_)
                                        (let ((_%__splice4873448735%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4641846746%_
                                                '0)))
                                          (let ((_%$%tl4647046502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4873448735%_
                                                    '1)))
                                                (_%$%target4646846499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4873448735%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4647046502%_)
                                                (_%__match4882448825%_
                                                 _%$%e4641646739%_
                                                 _%$%hd4641746743%_
                                                 _%$%tl4641846746%_
                                                 _%__splice4873448735%_
                                                 _%$%target4646846499%_
                                                 _%$%tl4647046502%_)
                                                (_%$%g4641246482%_))))
                                        (_%$%g4641246482%_))))))
                        (if (gx#stx-pair/null? _%$%tl4641846746%_)
                            (let ((_%__splice4873448735%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4641846746%_
                                    '0)))
                              (let ((_%$%tl4647046502%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4873448735%_
                                        '1)))
                                    (_%$%target4646846499%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4873448735%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4647046502%_)
                                    (_%__match4882448825%_
                                     _%$%e4641646739%_
                                     _%$%hd4641746743%_
                                     _%$%tl4641846746%_
                                     _%__splice4873448735%_
                                     _%$%target4646846499%_
                                     _%$%tl4647046502%_)
                                    (_%$%g4641246482%_))))
                            (_%$%g4641246482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4641246482%_))))))))
                                  (if (pair? _%$%rest4626246270%_)
                                      (let ((_%$%hd4626746794%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest4626246270%_)))
                                            (_%$%tl4626846797%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%rest4626246270%_))))
                                        (let* ((_%hd46800%_ _%$%hd4626746794%_)
                                               (_%rest46803%_
                                                _%$%tl4626846797%_))
                                          (_%$%K4626646790%_
                                           _%rest46803%_
                                           _%hd46800%_)))
                                      (_%$%else4626446401%_)))))))
                      (_%$%g4622846806%_ (gx#genident))))))
          (let* ((_%$%g4561345633%_
                  (lambda (_%$%g4561445629%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g4561445629%_)))
                 (_%$%g4561246221%_
                  (lambda (_%$%g4561445637%_)
                    (if (gx#stx-pair? _%$%g4561445637%_)
                        (let ((_%$%e4561645640%_
                               (gx#syntax-e _%$%g4561445637%_)))
                          (let ((_%$%hd4561745644%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4561645640%_)))
                                (_%$%tl4561845647%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4561645640%_))))
                            (if (gx#stx-pair/null? _%$%tl4561845647%_)
                                (let ((_g49142_
                                       (gx#syntax-split-splice
                                        _%$%tl4561845647%_
                                        '0)))
                                  (begin
                                    (let ((_g49143_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g49142_)
                                                 (##values-length _g49142_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g49143_ 2)))
                                          (error "Context expects 2 values"
                                                 _g49143_)))
                                    (let ((_%$%target4561945650%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g49142_ 0)))
                                          (_%$%tl4562145653%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g49142_ 1))))
                                      (if (gx#stx-null? _%$%tl4562145653%_)
                                          (letrec ((_%$%loop4562245656%_
                                                    (lambda (_%$%hd4562045660%_
                                                             _%$%e4562645663%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd4562045660%_)
                                                          (let ((_%$%e4562345665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd4562045660%_)))
                    (let ((_%$%lp-hd4562445669%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4562345665%_)))
                          (_%$%lp-tl4562545672%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4562345665%_))))
                      (_%$%loop4562245656%_
                       _%$%lp-tl4562545672%_
                       (cons _%$%lp-hd4562445669%_ _%$%e4562645663%_))))
                  (let ((_%$%e4562745675%_ (reverse _%$%e4562645663%_)))
                    (let _%lp45695%_ ((_%rest45698%_
                                       (foldr (lambda (_%$%g4621246215%_
                                                       _%$%g4621346218%_)
                                                (cons _%$%g4621246215%_
                                                      _%$%g4621346218%_))
                                              '()
                                              _%$%e4562745675%_))
                                      (_%body45700%_ '()))
                      (let* ((_%__stx4894548946%_ _%rest45698%_)
                             (_%$%g4570345715%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4894548946%_))))
                        (let ((_%__kont4894848949%_
                               (lambda (_%$%g4570545743%_ _%$%g4570645745%_)
                                 (let* ((_%__stx4889348894%_ _%$%g4570645745%_)
                                        (_%$%g4576245795%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx4889348894%_))))
                                   (let ((_%__kont4889648897%_
                                          (lambda (_%$%g4576446182%_)
                                            (if (gx#stx-null?
                                                 _%$%g4570545743%_)
                                                (_%generate-fini45610%_
                                                 (_%generate-thunk45608%_
                                                  _%body45700%_)
                                                 (foldr (lambda (_%$%g4619646199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g4619746202%_)
                  (cons _%$%g4619646199%_ _%$%g4619746202%_))
                '()
                _%$%g4576446182%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced finally clause"
                                                 _%stx45605%_))))
                                         (_%__kont4890048901%_
                                          (lambda (_%$%g4577745851%_)
                                            (let _%lp45868%_ ((_%rest45871%_
                                                               _%$%g4570545743%_)
                                                              (_%handlers45873%_
                                                               (cons (foldr (lambda (_%$%g4612846131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%$%g4612946134%_)
                                      (cons _%$%g4612846131%_
                                            _%$%g4612946134%_))
                                    '()
                                    _%$%g4577745851%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__stx4882748828%_
                                                      _%rest45871%_)
                                                     (_%$%g4587745917%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx4882748828%_))))
                                                (let ((_%__kont4883048831%_
                                                       (lambda (_%$%g4587946098%_
                                                                _%$%g4588046100%_)
                                                         (_%lp45868%_
                                                          _%$%g4587946098%_
                                                          (cons (foldr (lambda (_%$%g4611646119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%$%g4611746122%_)
                                 (cons _%$%g4611646119%_ _%$%g4611746122%_))
                               '()
                               _%$%g4588046100%_)
                        _%handlers45873%_))))
              (_%__kont4883448835%_
               (lambda (_%$%g4589645983%_)
                 (let* ((_%$%g4600446012%_
                         (lambda (_%$%g4600546008%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g4600546008%_)))
                        (_%$%g4600346039%_
                         (lambda (_%$%g4600546016%_)
                           (_%generate-fini45610%_
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons '() (cons _%$%g4600546016%_ '())))
                            (foldr (lambda (_%$%g4603046033%_
                                            _%$%g4603146036%_)
                                     (cons _%$%g4603046033%_
                                           _%$%g4603146036%_))
                                   '()
                                   _%$%g4589645983%_)))))
                   (_%$%g4600346039%_
                    (_%generate-catch45611%_
                     _%handlers45873%_
                     (_%generate-thunk45608%_ _%body45700%_))))))
              (_%__kont4883848839%_
               (lambda ()
                 (_%generate-catch45611%_
                  _%handlers45873%_
                  (_%generate-thunk45608%_ _%body45700%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%$%g4587645928%_
                                                          (lambda ()
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%__stx4882748828%_)
                        (_%__kont4883848839%_)
                        (_%$%g4587745917%_))))
                 (_%__match4888848889%_
                  (lambda (_%$%e4589745935%_
                           _%$%hd4589845939%_
                           _%$%tl4589945942%_
                           _%$%e4590045945%_
                           _%$%hd4590145949%_
                           _%$%tl4590245952%_
                           _%__splice4883648837%_
                           _%$%target4590345955%_
                           _%$%tl4590545958%_)
                    (letrec ((_%$%loop4590645961%_
                              (lambda (_%$%hd4590445965%_ _%$%fini4591045968%_)
                                (if (gx#stx-pair? _%$%hd4590445965%_)
                                    (let ((_%$%e4590745970%_
                                           (gx#syntax-e _%$%hd4590445965%_)))
                                      (let ((_%$%lp-tl4590945977%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4590745970%_)))
                                            (_%$%lp-hd4590845974%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4590745970%_))))
                                        (_%$%loop4590645961%_
                                         _%$%lp-tl4590945977%_
                                         (cons _%$%lp-hd4590845974%_
                                               _%$%fini4591045968%_))))
                                    (let ((_%$%fini4591145980%_
                                           (reverse _%$%fini4591045968%_)))
                                      (if (gx#stx-null? _%$%tl4589945942%_)
                                          (_%__kont4883448835%_
                                           _%$%fini4591145980%_)
                                          (_%$%g4587745917%_)))))))
                      (_%$%loop4590645961%_ _%$%target4590345955%_ '()))))
                 (_%__match4886448865%_
                  (lambda (_%$%e4588146050%_
                           _%$%hd4588246054%_
                           _%$%tl4588346057%_
                           _%$%e4588446060%_
                           _%$%hd4588546064%_
                           _%$%tl4588646067%_
                           _%__splice4883248833%_
                           _%$%target4588746070%_
                           _%$%tl4588946073%_)
                    (letrec ((_%$%loop4589046076%_
                              (lambda (_%$%hd4588846080%_
                                       _%$%handler4589446083%_)
                                (if (gx#stx-pair? _%$%hd4588846080%_)
                                    (let ((_%$%e4589146085%_
                                           (gx#syntax-e _%$%hd4588846080%_)))
                                      (let ((_%$%lp-tl4589346092%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4589146085%_)))
                                            (_%$%lp-hd4589246089%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4589146085%_))))
                                        (_%$%loop4589046076%_
                                         _%$%lp-tl4589346092%_
                                         (cons _%$%lp-hd4589246089%_
                                               _%$%handler4589446083%_))))
                                    (let ((_%$%handler4589546095%_
                                           (reverse _%$%handler4589446083%_)))
                                      (_%__kont4883048831%_
                                       _%$%tl4588346057%_
                                       _%$%handler4589546095%_))))))
                      (_%$%loop4589046076%_ _%$%target4588746070%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _%__stx4882748828%_)
                                                        (let ((_%$%e4588146050%_
                                                               (gx#syntax-e
                                                                _%__stx4882748828%_)))
                                                          (let ((_%$%tl4588346057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4588146050%_)))
                        (_%$%hd4588246054%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4588146050%_))))
                    (if (gx#stx-pair? _%$%hd4588246054%_)
                        (let ((_%$%e4588446060%_
                               (gx#syntax-e _%$%hd4588246054%_)))
                          (let ((_%$%tl4588646067%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4588446060%_)))
                                (_%$%hd4588546064%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4588446060%_))))
                            (if (gx#identifier? _%$%hd4588546064%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/more-sugar[1]#_g49144_|
                                     _%$%hd4588546064%_)
                                    (if (gx#stx-pair/null? _%$%tl4588646067%_)
                                        (let ((_%__splice4883248833%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4588646067%_
                                                '0)))
                                          (let ((_%$%tl4588946073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4883248833%_
                                                    '1)))
                                                (_%$%target4588746070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4883248833%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4588946073%_)
                                                (_%__match4886448865%_
                                                 _%$%e4588146050%_
                                                 _%$%hd4588246054%_
                                                 _%$%tl4588346057%_
                                                 _%$%e4588446060%_
                                                 _%$%hd4588546064%_
                                                 _%$%tl4588646067%_
                                                 _%__splice4883248833%_
                                                 _%$%target4588746070%_
                                                 _%$%tl4588946073%_)
                                                (_%$%g4587745917%_))))
                                        (_%$%g4587745917%_))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/more-sugar[1]#_g49145_|
                                         _%$%hd4588546064%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4588646067%_)
                                            (let ((_%__splice4883648837%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4588646067%_
                                                    '0)))
                                              (let ((_%$%tl4590545958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4883648837%_
                                                        '1)))
                                                    (_%$%target4590345955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4883648837%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4590545958%_)
                                                    (_%__match4888848889%_
                                                     _%$%e4588146050%_
                                                     _%$%hd4588246054%_
                                                     _%$%tl4588346057%_
                                                     _%$%e4588446060%_
                                                     _%$%hd4588546064%_
                                                     _%$%tl4588646067%_
                                                     _%__splice4883648837%_
                                                     _%$%target4590345955%_
                                                     _%$%tl4590545958%_)
                                                    (_%$%g4587745917%_))))
                                            (_%$%g4587745917%_))
                                        (_%$%g4587745917%_)))
                                (_%$%g4587745917%_))))
                        (_%$%g4587745917%_))))
                (_%$%g4587645928%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont4890448905%_
                                          (lambda ()
                                            (_%lp45695%_
                                             _%$%g4570545743%_
                                             (cons _%$%g4570645745%_
                                                   _%body45700%_)))))
                                     (let* ((_%__match4894248943%_
                                             (lambda (_%$%e4577845813%_
                                                      _%$%hd4577945817%_
                                                      _%$%tl4578045820%_
                                                      _%__splice4890248903%_
                                                      _%$%target4578145823%_
                                                      _%$%tl4578345826%_)
                                               (letrec ((_%$%loop4578445829%_
                                                         (lambda (_%$%hd4578245833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%handler4578845836%_)
                   (if (gx#stx-pair? _%$%hd4578245833%_)
                       (let ((_%$%e4578545838%_
                              (gx#syntax-e _%$%hd4578245833%_)))
                         (let ((_%$%lp-tl4578745845%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4578545838%_)))
                               (_%$%lp-hd4578645842%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4578545838%_))))
                           (_%$%loop4578445829%_
                            _%$%lp-tl4578745845%_
                            (cons _%$%lp-hd4578645842%_
                                  _%$%handler4578845836%_))))
                       (let ((_%$%handler4578945848%_
                              (reverse _%$%handler4578845836%_)))
                         (_%__kont4890048901%_ _%$%handler4578945848%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4578445829%_
                                                  _%$%target4578145823%_
                                                  '()))))
                                            (_%__match4892448925%_
                                             (lambda (_%$%e4576546144%_
                                                      _%$%hd4576646148%_
                                                      _%$%tl4576746151%_
                                                      _%__splice4889848899%_
                                                      _%$%target4576846154%_
                                                      _%$%tl4577046157%_)
                                               (letrec ((_%$%loop4577146160%_
                                                         (lambda (_%$%hd4576946164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%fini4577546167%_)
                   (if (gx#stx-pair? _%$%hd4576946164%_)
                       (let ((_%$%e4577246169%_
                              (gx#syntax-e _%$%hd4576946164%_)))
                         (let ((_%$%lp-tl4577446176%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4577246169%_)))
                               (_%$%lp-hd4577346173%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4577246169%_))))
                           (_%$%loop4577146160%_
                            _%$%lp-tl4577446176%_
                            (cons _%$%lp-hd4577346173%_
                                  _%$%fini4577546167%_))))
                       (let ((_%$%fini4577646179%_
                              (reverse _%$%fini4577546167%_)))
                         (_%__kont4889648897%_ _%$%fini4577646179%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4577146160%_
                                                  _%$%target4576846154%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx4889348894%_)
                                           (let ((_%$%e4576546144%_
                                                  (gx#syntax-e
                                                   _%__stx4889348894%_)))
                                             (let ((_%$%tl4576746151%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e4576546144%_)))
                                                   (_%$%hd4576646148%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e4576546144%_))))
                                               (if (gx#identifier?
                                                    _%$%hd4576646148%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/more-sugar[1]#_g49146_|
                                                        _%$%hd4576646148%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%tl4576746151%_)
                                                           (let ((_%__splice4889848899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%$%tl4576746151%_
                           '0)))
                     (let ((_%$%tl4577046157%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4889848899%_ '1)))
                           (_%$%target4576846154%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4889848899%_ '0))))
                       (if (gx#stx-null? _%$%tl4577046157%_)
                           (_%__match4892448925%_
                            _%$%e4576546144%_
                            _%$%hd4576646148%_
                            _%$%tl4576746151%_
                            _%__splice4889848899%_
                            _%$%target4576846154%_
                            _%$%tl4577046157%_)
                           (_%__kont4890448905%_))))
                   (_%__kont4890448905%_))
               (if (gx#free-identifier=?
                    |gerbil/core/more-sugar[1]#_g49147_|
                    _%$%hd4576646148%_)
                   (if (gx#stx-pair/null? _%$%tl4576746151%_)
                       (let ((_%__splice4890248903%_
                              (gx#syntax-split-splice->vector
                               _%$%tl4576746151%_
                               '0)))
                         (let ((_%$%tl4578345826%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4890248903%_ '1)))
                               (_%$%target4578145823%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4890248903%_ '0))))
                           (if (gx#stx-null? _%$%tl4578345826%_)
                               (_%__match4894248943%_
                                _%$%e4576546144%_
                                _%$%hd4576646148%_
                                _%$%tl4576746151%_
                                _%__splice4890248903%_
                                _%$%target4578145823%_
                                _%$%tl4578345826%_)
                               (_%__kont4890448905%_))))
                       (_%__kont4890448905%_))
                   (_%__kont4890448905%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont4890448905%_))))
                                           (_%__kont4890448905%_)))))))
                              (_%__kont4895048951%_
                               (lambda ()
                                 (cons 'begin (reverse _%body45700%_)))))
                          (let ((_%$%g4570245726%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx4894548946%_)
                                       (_%__kont4895048951%_)
                                       (_%$%g4570345715%_)))))
                            (if (gx#stx-pair? _%__stx4894548946%_)
                                (let ((_%$%e4570745733%_
                                       (gx#syntax-e _%__stx4894548946%_)))
                                  (let ((_%$%tl4570945740%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4570745733%_)))
                                        (_%$%hd4570845737%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4570745733%_))))
                                    (_%__kont4894848949%_
                                     _%$%tl4570945740%_
                                     _%$%hd4570845737%_)))
                                (_%$%g4570245726%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop4562245656%_
                                             _%$%target4561945650%_
                                             '()))
                                          (_%$%g4561345633%_
                                           _%$%g4561445637%_)))))
                                (_%$%g4561345633%_ _%$%g4561445637%_))))
                        (_%$%g4561345633%_ _%$%g4561445637%_)))))
            (_%$%g4561246221%_ _%stx45605%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx47021%_)
        (let* ((_%$%g4702547054%_
                (lambda (_%$%g4702647050%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4702647050%_)))
               (_%$%g4702447150%_
                (lambda (_%$%g4702647058%_)
                  (if (gx#stx-pair? _%$%g4702647058%_)
                      (let ((_%$%e4702947061%_
                             (gx#syntax-e _%$%g4702647058%_)))
                        (let ((_%$%hd4703047065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4702947061%_)))
                              (_%$%tl4703147068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4702947061%_))))
                          (if (gx#stx-pair/null? _%$%tl4703147068%_)
                              (let ((_g49148_
                                     (gx#syntax-split-splice
                                      _%$%tl4703147068%_
                                      '0)))
                                (begin
                                  (let ((_g49149_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g49148_)
                                               (##values-length _g49148_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g49149_ 2)))
                                        (error "Context expects 2 values"
                                               _g49149_)))
                                  (let ((_%$%target4703247071%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49148_ 0)))
                                        (_%$%tl4703447074%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49148_ 1))))
                                    (if (gx#stx-null? _%$%tl4703447074%_)
                                        (letrec ((_%$%loop4703547077%_
                                                  (lambda (_%$%hd4703347081%_
                                                           _%$%val4703947084%_
                                                           _%$%key4704047085%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4703347081%_)
                                                        (let ((_%$%e4703647087%_
                                                               (gx#syntax-e
                                                                _%$%hd4703347081%_)))
                                                          (let ((_%$%lp-hd4703747091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4703647087%_)))
                        (_%$%lp-tl4703847094%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4703647087%_))))
                    (if (gx#stx-pair? _%$%lp-hd4703747091%_)
                        (let ((_%$%e4704347097%_
                               (gx#syntax-e _%$%lp-hd4703747091%_)))
                          (let ((_%$%hd4704447101%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4704347097%_)))
                                (_%$%tl4704547104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4704347097%_))))
                            (if (gx#stx-pair? _%$%tl4704547104%_)
                                (let ((_%$%e4704647107%_
                                       (gx#syntax-e _%$%tl4704547104%_)))
                                  (let ((_%$%hd4704747111%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4704647107%_)))
                                        (_%$%tl4704847114%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4704647107%_))))
                                    (if (gx#stx-null? _%$%tl4704847114%_)
                                        (_%$%loop4703547077%_
                                         _%$%lp-tl4703847094%_
                                         (cons _%$%hd4704747111%_
                                               _%$%val4703947084%_)
                                         (cons _%$%hd4704447101%_
                                               _%$%key4704047085%_))
                                        (_%$%g4702547054%_
                                         _%$%g4702647058%_))))
                                (_%$%g4702547054%_ _%$%g4702647058%_))))
                        (_%$%g4702547054%_ _%$%g4702647058%_))))
                (let ((_%$%val4704147117%_ (reverse _%$%val4703947084%_))
                      (_%$%key4704247119%_ (reverse _%$%key4704047085%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4704147117%_
                                 _%$%key4704247119%_)
                                (foldr (lambda (_%$%g4713847142%_
                                                _%$%g4713947145%_
                                                _%$%g4714047147%_)
                                         (cons (cons _%$%g4713947145%_
                                                     (cons _%$%g4713847142%_
                                                           '()))
                                               _%$%g4714047147%_))
                                       '()
                                       _%$%val4704147117%_
                                       _%$%key4704247119%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4703547077%_
                                           _%$%target4703247071%_
                                           '()
                                           '()))
                                        (_%$%g4702547054%_
                                         _%$%g4702647058%_)))))
                              (_%$%g4702547054%_ _%$%g4702647058%_))))
                      (_%$%g4702547054%_ _%$%g4702647058%_)))))
          (_%$%g4702447150%_ _%$stx47021%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx47155%_)
        (let* ((_%$%g4715947188%_
                (lambda (_%$%g4716047184%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4716047184%_)))
               (_%$%g4715847284%_
                (lambda (_%$%g4716047192%_)
                  (if (gx#stx-pair? _%$%g4716047192%_)
                      (let ((_%$%e4716347195%_
                             (gx#syntax-e _%$%g4716047192%_)))
                        (let ((_%$%hd4716447199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4716347195%_)))
                              (_%$%tl4716547202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4716347195%_))))
                          (if (gx#stx-pair/null? _%$%tl4716547202%_)
                              (let ((_g49150_
                                     (gx#syntax-split-splice
                                      _%$%tl4716547202%_
                                      '0)))
                                (begin
                                  (let ((_g49151_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g49150_)
                                               (##values-length _g49150_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g49151_ 2)))
                                        (error "Context expects 2 values"
                                               _g49151_)))
                                  (let ((_%$%target4716647205%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49150_ 0)))
                                        (_%$%tl4716847208%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49150_ 1))))
                                    (if (gx#stx-null? _%$%tl4716847208%_)
                                        (letrec ((_%$%loop4716947211%_
                                                  (lambda (_%$%hd4716747215%_
                                                           _%$%val4717347218%_
                                                           _%$%key4717447219%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4716747215%_)
                                                        (let ((_%$%e4717047221%_
                                                               (gx#syntax-e
                                                                _%$%hd4716747215%_)))
                                                          (let ((_%$%lp-hd4717147225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4717047221%_)))
                        (_%$%lp-tl4717247228%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4717047221%_))))
                    (if (gx#stx-pair? _%$%lp-hd4717147225%_)
                        (let ((_%$%e4717747231%_
                               (gx#syntax-e _%$%lp-hd4717147225%_)))
                          (let ((_%$%hd4717847235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4717747231%_)))
                                (_%$%tl4717947238%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4717747231%_))))
                            (if (gx#stx-pair? _%$%tl4717947238%_)
                                (let ((_%$%e4718047241%_
                                       (gx#syntax-e _%$%tl4717947238%_)))
                                  (let ((_%$%hd4718147245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4718047241%_)))
                                        (_%$%tl4718247248%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4718047241%_))))
                                    (if (gx#stx-null? _%$%tl4718247248%_)
                                        (_%$%loop4716947211%_
                                         _%$%lp-tl4717247228%_
                                         (cons _%$%hd4718147245%_
                                               _%$%val4717347218%_)
                                         (cons _%$%hd4717847235%_
                                               _%$%key4717447219%_))
                                        (_%$%g4715947188%_
                                         _%$%g4716047192%_))))
                                (_%$%g4715947188%_ _%$%g4716047192%_))))
                        (_%$%g4715947188%_ _%$%g4716047192%_))))
                (let ((_%$%val4717547251%_ (reverse _%$%val4717347218%_))
                      (_%$%key4717647253%_ (reverse _%$%key4717447219%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4717547251%_
                                 _%$%key4717647253%_)
                                (foldr (lambda (_%$%g4727247276%_
                                                _%$%g4727347279%_
                                                _%$%g4727447281%_)
                                         (cons (cons _%$%g4727347279%_
                                                     (cons _%$%g4727247276%_
                                                           '()))
                                               _%$%g4727447281%_))
                                       '()
                                       _%$%val4717547251%_
                                       _%$%key4717647253%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4716947211%_
                                           _%$%target4716647205%_
                                           '()
                                           '()))
                                        (_%$%g4715947188%_
                                         _%$%g4716047192%_)))))
                              (_%$%g4715947188%_ _%$%g4716047192%_))))
                      (_%$%g4715947188%_ _%$%g4716047192%_)))))
          (_%$%g4715847284%_ _%$stx47155%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx47289%_)
        (let* ((_%$%g4729347322%_
                (lambda (_%$%g4729447318%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4729447318%_)))
               (_%$%g4729247418%_
                (lambda (_%$%g4729447326%_)
                  (if (gx#stx-pair? _%$%g4729447326%_)
                      (let ((_%$%e4729747329%_
                             (gx#syntax-e _%$%g4729447326%_)))
                        (let ((_%$%hd4729847333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4729747329%_)))
                              (_%$%tl4729947336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4729747329%_))))
                          (if (gx#stx-pair/null? _%$%tl4729947336%_)
                              (let ((_g49152_
                                     (gx#syntax-split-splice
                                      _%$%tl4729947336%_
                                      '0)))
                                (begin
                                  (let ((_g49153_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g49152_)
                                               (##values-length _g49152_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g49153_ 2)))
                                        (error "Context expects 2 values"
                                               _g49153_)))
                                  (let ((_%$%target4730047339%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49152_ 0)))
                                        (_%$%tl4730247342%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49152_ 1))))
                                    (if (gx#stx-null? _%$%tl4730247342%_)
                                        (letrec ((_%$%loop4730347345%_
                                                  (lambda (_%$%hd4730147349%_
                                                           _%$%val4730747352%_
                                                           _%$%key4730847353%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4730147349%_)
                                                        (let ((_%$%e4730447355%_
                                                               (gx#syntax-e
                                                                _%$%hd4730147349%_)))
                                                          (let ((_%$%lp-hd4730547359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4730447355%_)))
                        (_%$%lp-tl4730647362%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4730447355%_))))
                    (if (gx#stx-pair? _%$%lp-hd4730547359%_)
                        (let ((_%$%e4731147365%_
                               (gx#syntax-e _%$%lp-hd4730547359%_)))
                          (let ((_%$%hd4731247369%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4731147365%_)))
                                (_%$%tl4731347372%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4731147365%_))))
                            (if (gx#stx-pair? _%$%tl4731347372%_)
                                (let ((_%$%e4731447375%_
                                       (gx#syntax-e _%$%tl4731347372%_)))
                                  (let ((_%$%hd4731547379%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4731447375%_)))
                                        (_%$%tl4731647382%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4731447375%_))))
                                    (if (gx#stx-null? _%$%tl4731647382%_)
                                        (_%$%loop4730347345%_
                                         _%$%lp-tl4730647362%_
                                         (cons _%$%hd4731547379%_
                                               _%$%val4730747352%_)
                                         (cons _%$%hd4731247369%_
                                               _%$%key4730847353%_))
                                        (_%$%g4729347322%_
                                         _%$%g4729447326%_))))
                                (_%$%g4729347322%_ _%$%g4729447326%_))))
                        (_%$%g4729347322%_ _%$%g4729447326%_))))
                (let ((_%$%val4730947385%_ (reverse _%$%val4730747352%_))
                      (_%$%key4731047387%_ (reverse _%$%key4730847353%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4730947385%_
                                 _%$%key4731047387%_)
                                (foldr (lambda (_%$%g4740647410%_
                                                _%$%g4740747413%_
                                                _%$%g4740847415%_)
                                         (cons (cons _%$%g4740747413%_
                                                     (cons _%$%g4740647410%_
                                                           '()))
                                               _%$%g4740847415%_))
                                       '()
                                       _%$%val4730947385%_
                                       _%$%key4731047387%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4730347345%_
                                           _%$%target4730047339%_
                                           '()
                                           '()))
                                        (_%$%g4729347322%_
                                         _%$%g4729447326%_)))))
                              (_%$%g4729347322%_ _%$%g4729447326%_))))
                      (_%$%g4729347322%_ _%$%g4729447326%_)))))
          (_%$%g4729247418%_ _%$stx47289%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx47423%_)
        (let* ((_%$%g4742647450%_
                (lambda (_%$%g4742747446%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4742747446%_)))
               (_%$%g4742547691%_
                (lambda (_%$%g4742747454%_)
                  (if (gx#stx-pair? _%$%g4742747454%_)
                      (let ((_%$%e4743047457%_
                             (gx#syntax-e _%$%g4742747454%_)))
                        (let ((_%$%hd4743147461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4743047457%_)))
                              (_%$%tl4743247464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4743047457%_))))
                          (if (gx#stx-pair? _%$%tl4743247464%_)
                              (let ((_%$%e4743347467%_
                                     (gx#syntax-e _%$%tl4743247464%_)))
                                (let ((_%$%hd4743447471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4743347467%_)))
                                      (_%$%tl4743547474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4743347467%_))))
                                  (if (gx#stx-pair/null? _%$%tl4743547474%_)
                                      (let ((_g49154_
                                             (gx#syntax-split-splice
                                              _%$%tl4743547474%_
                                              '0)))
                                        (begin
                                          (let ((_g49155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49154_)
                                                       (##values-length
                                                        _g49154_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49155_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49155_)))
                                          (let ((_%$%target4743647477%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49154_ 0)))
                                                (_%$%tl4743847480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49154_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4743847480%_)
                                                (letrec ((_%$%loop4743947483%_
                                                          (lambda (_%$%hd4743747487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%entry4744347490%_)
                    (if (gx#stx-pair? _%$%hd4743747487%_)
                        (let ((_%$%e4744047492%_
                               (gx#syntax-e _%$%hd4743747487%_)))
                          (let ((_%$%lp-hd4744147496%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4744047492%_)))
                                (_%$%lp-tl4744247499%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4744047492%_))))
                            (_%$%loop4743947483%_
                             _%$%lp-tl4744247499%_
                             (cons _%$%lp-hd4744147496%_
                                   _%$%entry4744347490%_))))
                        (let* ((_%$%entry4744447502%_
                                (reverse _%$%entry4744347490%_))
                               (_%$%g4752547533%_
                                (lambda (_%$%g4752647529%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4752647529%_)))
                               (_%$%g4752447679%_
                                (lambda (_%$%g4752647537%_)
                                  (let* ((_%$%g4755247578%_
                                          (lambda (_%$%g4755347574%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g4755347574%_)))
                                         (_%$%g4755147667%_
                                          (lambda (_%$%g4755347582%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%g4755347582%_)
                                                (let ((_g49156_
                                                       (gx#syntax-split-splice
                                                        _%$%g4755347582%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49156_)
                         (##values-length _g49156_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49157_ 2)))
                  (error "Context expects 2 values" _g49157_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4755647585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49156_
                                                              0)))
                                                          (_%$%tl4755847588%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49156_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4755847588%_)
                                                          (letrec ((_%$%loop4755947591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4755747595%_
                                     _%$%val4756347598%_
                                     _%$%key4756447599%_)
                              (if (gx#stx-pair? _%$%hd4755747595%_)
                                  (let ((_%$%e4756047601%_
                                         (gx#syntax-e _%$%hd4755747595%_)))
                                    (let ((_%$%lp-hd4756147605%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4756047601%_)))
                                          (_%$%lp-tl4756247608%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4756047601%_))))
                                      (if (gx#stx-pair? _%$%lp-hd4756147605%_)
                                          (let ((_%$%e4756747611%_
                                                 (gx#syntax-e
                                                  _%$%lp-hd4756147605%_)))
                                            (let ((_%$%hd4756847615%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4756747611%_)))
                                                  (_%$%tl4756947618%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4756747611%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl4756947618%_)
                                                  (let ((_%$%e4757047621%_
                                                         (gx#syntax-e
                                                          _%$%tl4756947618%_)))
                                                    (let ((_%$%hd4757147625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4757047621%_)))
                                                          (_%$%tl4757247628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4757047621%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4757247628%_)
                                                          (_%$%loop4755947591%_
                                                           _%$%lp-tl4756247608%_
                                                           (cons _%$%hd4757147625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%val4756347598%_)
                   (cons _%$%hd4756847615%_ _%$%key4756447599%_))
                  (_%$%g4755247578%_ _%$%g4755347582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4755247578%_
                                                   _%$%g4755347582%_))))
                                          (_%$%g4755247578%_
                                           _%$%g4755347582%_))))
                                  (let ((_%$%val4756547631%_
                                         (reverse _%$%val4756347598%_))
                                        (_%$%key4756647633%_
                                         (reverse _%$%key4756447599%_)))
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'ht)
                                                      (cons (cons _%$%hd4743447471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'size: (cons _%$%g4752647537%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%val4756547631%_
                                                   _%$%key4756647633%_)
                                                  (foldr (lambda (_%$%g4765547659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4765647662%_
                          _%$%g4765747664%_)
                   (cons (cons (gx#datum->syntax '#f 'hash-put!)
                               (cons (gx#datum->syntax '#f 'ht)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quasiquote)
                                                 (cons _%$%g4765647662%_ '()))
                                           (cons _%$%g4765547659%_ '()))))
                         _%$%g4765747664%_))
                 (cons (gx#datum->syntax '#f 'ht) '())
                 _%$%val4756547631%_
                 _%$%key4756647633%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (_%$%loop4755947591%_ _%$%target4755647585%_ '() '()))
                  (_%$%g4755247578%_ _%$%g4755347582%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4755247578%_
                                                 _%$%g4755347582%_)))))
                                    (_%$%g4755147667%_
                                     (foldr (lambda (_%$%g4767047673%_
                                                     _%$%g4767147676%_)
                                              (cons _%$%g4767047673%_
                                                    _%$%g4767147676%_))
                                            '()
                                            _%$%entry4744447502%_))))))
                          (_%$%g4752447679%_
                           (gx#stx-length
                            (foldr (lambda (_%$%g4768247685%_
                                            _%$%g4768347688%_)
                                     (cons _%$%g4768247685%_
                                           _%$%g4768347688%_))
                                   '()
                                   _%$%entry4744447502%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4743947483%_
                                                   _%$%target4743647477%_
                                                   '()))
                                                (_%$%g4742647450%_
                                                 _%$%g4742747454%_)))))
                                      (_%$%g4742647450%_ _%$%g4742747454%_))))
                              (_%$%g4742647450%_ _%$%g4742747454%_))))
                      (_%$%g4742647450%_ _%$%g4742747454%_)))))
          (_%$%g4742547691%_ _%stx47423%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx47697%_)
        (let* ((_%$%g4770047714%_
                (lambda (_%$%g4770147710%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4770147710%_)))
               (_%$%g4769947786%_
                (lambda (_%$%g4770147718%_)
                  (if (gx#stx-pair? _%$%g4770147718%_)
                      (let ((_%$%e4770347721%_
                             (gx#syntax-e _%$%g4770147718%_)))
                        (let ((_%$%hd4770447725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4770347721%_)))
                              (_%$%tl4770547728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4770347721%_))))
                          (if (gx#stx-pair? _%$%tl4770547728%_)
                              (let ((_%$%e4770647731%_
                                     (gx#syntax-e _%$%tl4770547728%_)))
                                (let ((_%$%hd4770747735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4770647731%_)))
                                      (_%$%tl4770847738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4770647731%_))))
                                  (if (gx#stx-null? _%$%tl4770847738%_)
                                      (if (gx#stx-string? _%$%hd4770747735%_)
                                          (let* ((_%$%g4775547763%_
                                                  (lambda (_%$%g4775647759%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4775647759%_)))
                                                 (_%$%g4775447782%_
                                                  (lambda (_%$%g4775647767%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%$%g4775647767%_
                                                                '())))))
                                            (_%$%g4775447782%_
                                             (string->bytes
                                              (gx#stx-e _%$%hd4770747735%_))))
                                          (_%$%g4770047714%_
                                           _%$%g4770147718%_))
                                      (_%$%g4770047714%_ _%$%g4770147718%_))))
                              (_%$%g4770047714%_ _%$%g4770147718%_))))
                      (_%$%g4770047714%_ _%$%g4770147718%_)))))
          (_%$%g4769947786%_ _%stx47697%_))))
    (define |gerbil/core/more-sugar[:0:]#@eval|
      (lambda (_%stx47790%_)
        (let* ((_%$%g4779347807%_
                (lambda (_%$%g4779447803%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4779447803%_)))
               (_%$%g4779247879%_
                (lambda (_%$%g4779447811%_)
                  (if (gx#stx-pair? _%$%g4779447811%_)
                      (let ((_%$%e4779647814%_
                             (gx#syntax-e _%$%g4779447811%_)))
                        (let ((_%$%hd4779747818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4779647814%_)))
                              (_%$%tl4779847821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4779647814%_))))
                          (if (gx#stx-pair? _%$%tl4779847821%_)
                              (let ((_%$%e4779947824%_
                                     (gx#syntax-e _%$%tl4779847821%_)))
                                (let ((_%$%hd4780047828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4779947824%_)))
                                      (_%$%tl4780147831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4779947824%_))))
                                  (if (gx#stx-null? _%$%tl4780147831%_)
                                      (let* ((_%$%g4784847856%_
                                              (lambda (_%$%g4784947852%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g4784947852%_)))
                                             (_%$%g4784747875%_
                                              (lambda (_%$%g4784947860%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%$%g4784947860%_
                                                            '())))))
                                        (_%$%g4784747875%_
                                         (gx#eval-syntax+1
                                          _%$%hd4780047828%_)))
                                      (_%$%g4779347807%_ _%$%g4779447811%_))))
                              (_%$%g4779347807%_ _%$%g4779447811%_))))
                      (_%$%g4779347807%_ _%$%g4779447811%_)))))
          (_%$%g4779247879%_ _%stx47790%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx47883%_)
        (let* ((_%$%g4788647900%_
                (lambda (_%$%g4788747896%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4788747896%_)))
               (_%$%g4788547941%_
                (lambda (_%$%g4788747904%_)
                  (if (gx#stx-pair? _%$%g4788747904%_)
                      (let ((_%$%e4788947907%_
                             (gx#syntax-e _%$%g4788747904%_)))
                        (let ((_%$%hd4789047911%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4788947907%_)))
                              (_%$%tl4789147914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4788947907%_))))
                          (if (gx#stx-pair? _%$%tl4789147914%_)
                              (let ((_%$%e4789247917%_
                                     (gx#syntax-e _%$%tl4789147914%_)))
                                (let ((_%$%hd4789347921%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4789247917%_)))
                                      (_%$%tl4789447924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4789247917%_))))
                                  (if (gx#stx-null? _%$%tl4789447924%_)
                                      (let ()
                                        (if (gx#current-expander-compiling?)
                                            (gx#eval-syntax _%$%hd4789347921%_)
                                            '#!void)
                                        (cons (gx#datum->syntax '#f 'void)
                                              '()))
                                      (_%$%g4788647900%_ _%$%g4788747904%_))))
                              (_%$%g4788647900%_ _%$%g4788747904%_))))
                      (_%$%g4788647900%_ _%$%g4788747904%_)))))
          (_%$%g4788547941%_ _%stx47883%_))))
    (define |gerbil/core/more-sugar[:0:]#with-id|
      (lambda (_%stx47945%_)
        (let* ((_%$%g4794847981%_
                (lambda (_%$%g4794947977%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4794947977%_)))
               (_%$%g4794748486%_
                (lambda (_%$%g4794947985%_)
                  (if (gx#stx-pair? _%$%g4794947985%_)
                      (let ((_%$%e4795247988%_
                             (gx#syntax-e _%$%g4794947985%_)))
                        (let ((_%$%hd4795347992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4795247988%_)))
                              (_%$%tl4795447995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4795247988%_))))
                          (if (gx#stx-pair? _%$%tl4795447995%_)
                              (let ((_%$%e4795547998%_
                                     (gx#syntax-e _%$%tl4795447995%_)))
                                (let ((_%$%hd4795648002%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4795547998%_)))
                                      (_%$%tl4795748005%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4795547998%_))))
                                  (if (gx#stx-pair/null? _%$%hd4795648002%_)
                                      (let ((_g49158_
                                             (gx#syntax-split-splice
                                              _%$%hd4795648002%_
                                              '0)))
                                        (begin
                                          (let ((_g49159_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49158_)
                                                       (##values-length
                                                        _g49158_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49159_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49159_)))
                                          (let ((_%$%target4795848008%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49158_ 0)))
                                                (_%$%tl4796048011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49158_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4796048011%_)
                                                (letrec ((_%$%loop4796148014%_
                                                          (lambda (_%$%hd4795948018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause4796548021%_)
                    (if (gx#stx-pair? _%$%hd4795948018%_)
                        (let ((_%$%e4796248023%_
                               (gx#syntax-e _%$%hd4795948018%_)))
                          (let ((_%$%lp-hd4796348027%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4796248023%_)))
                                (_%$%lp-tl4796448030%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4796248023%_))))
                            (_%$%loop4796148014%_
                             _%$%lp-tl4796448030%_
                             (cons _%$%lp-hd4796348027%_
                                   _%$%clause4796548021%_))))
                        (let ((_%$%clause4796648033%_
                               (reverse _%$%clause4796548021%_)))
                          (if (gx#stx-pair/null? _%$%tl4795748005%_)
                              (let ((_g49160_
                                     (gx#syntax-split-splice
                                      _%$%tl4795748005%_
                                      '0)))
                                (begin
                                  (let ((_g49161_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g49160_)
                                               (##values-length _g49160_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g49161_ 2)))
                                        (error "Context expects 2 values"
                                               _g49161_)))
                                  (let ((_%$%target4796748036%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49160_ 0)))
                                        (_%$%tl4796948039%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49160_ 1))))
                                    (if (gx#stx-null? _%$%tl4796948039%_)
                                        (letrec ((_%$%loop4797048042%_
                                                  (lambda (_%$%hd4796848046%_
                                                           _%$%body4797448049%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4796848046%_)
                                                        (let ((_%$%e4797148051%_
                                                               (gx#syntax-e
                                                                _%$%hd4796848046%_)))
                                                          (let ((_%$%lp-hd4797248055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4797148051%_)))
                        (_%$%lp-tl4797348058%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4797148051%_))))
                    (_%$%loop4797048042%_
                     _%$%lp-tl4797348058%_
                     (cons _%$%lp-hd4797248055%_ _%$%body4797448049%_))))
                (let* ((_%$%body4797548061%_ (reverse _%$%body4797448049%_))
                       (_%subs48475%_
                        (map (lambda (_%clause48088%_)
                               (let* ((_%__stx4896348964%_ _%clause48088%_)
                                      (_%$%g4809448165%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4896348964%_))))
                                 (let ((_%__kont4896648967%_
                                        (lambda (_%$%g4809648444%_
                                                 _%$%g4809748446%_)
                                          (cons _%$%g4809748446%_
                                                (gx#syntax-local-temp
                                                 (gx#stx-e
                                                  _%$%g4809648444%_)))))
                                       (_%__kont4896848969%_
                                        (lambda (_%$%g4811048378%_
                                                 _%$%g4811148380%_)
                                          (cons _%$%g4811148380%_
                                                (gx#genident 'local-id))))
                                       (_%__kont4897048971%_
                                        (lambda (_%$%g4812448312%_
                                                 _%$%g4812548314%_)
                                          (cons _%$%g4812548314%_
                                                (gx#syntax-local-introduce
                                                 _%$%g4812448312%_))))
                                       (_%__kont4897248973%_
                                        (lambda (_%$%g4813848230%_
                                                 _%$%g4813948232%_
                                                 _%$%g4814048233%_
                                                 _%$%g4814148234%_)
                                          (cons _%$%g4814148234%_
                                                (gx#stx-identifier
                                                 _%$%g4814048233%_
                                                 (cons _%$%g4813948232%_
                                                       (foldr (lambda (_%$%g4825648259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g4825748262%_)
                        (cons _%$%g4825648259%_ _%$%g4825748262%_))
                      '()
                      _%$%g4813848230%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4909849099%_
                                           (lambda (_%$%e4814248172%_
                                                    _%$%hd4814348176%_
                                                    _%$%tl4814448179%_
                                                    _%$%e4814548182%_
                                                    _%$%hd4814648186%_
                                                    _%$%tl4814748189%_
                                                    _%$%e4814848192%_
                                                    _%$%hd4814948196%_
                                                    _%$%tl4815048199%_
                                                    _%__splice4897448975%_
                                                    _%$%target4815148202%_
                                                    _%$%tl4815348205%_)
                                             (letrec ((_%$%loop4815448208%_
                                                       (lambda (_%$%hd4815248212%_
                                                                _%$%components4815848215%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd4815248212%_)
                                                             (let ((_%$%e4815548217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd4815248212%_)))
                       (let ((_%$%lp-tl4815748224%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4815548217%_)))
                             (_%$%lp-hd4815648221%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4815548217%_))))
                         (_%$%loop4815448208%_
                          _%$%lp-tl4815748224%_
                          (cons _%$%lp-hd4815648221%_
                                _%$%components4815848215%_))))
                     (let ((_%$%components4815948227%_
                            (reverse _%$%components4815848215%_)))
                       (let ((_%$%g4813848230%_ _%$%components4815948227%_)
                             (_%$%g4813948232%_ _%$%hd4814948196%_)
                             (_%$%g4814048233%_ _%$%hd4814648186%_)
                             (_%$%g4814148234%_ _%$%hd4814348176%_))
                         (if (gx#identifier? _%$%g4814148234%_)
                             (_%__kont4897248973%_
                              _%$%g4813848230%_
                              _%$%g4813948232%_
                              _%$%g4814048233%_
                              _%$%g4814148234%_)
                             (_%$%g4809448165%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop4815448208%_
                                                _%$%target4815148202%_
                                                '()))))
                                          (_%__match4907249073%_
                                           (lambda (_%$%e4812648272%_
                                                    _%$%hd4812748276%_
                                                    _%$%tl4812848279%_
                                                    _%$%e4812948282%_
                                                    _%$%hd4813048286%_
                                                    _%$%tl4813148289%_
                                                    _%$%e4813248292%_
                                                    _%$%hd4813348296%_
                                                    _%$%tl4813448299%_
                                                    _%$%e4813548302%_
                                                    _%$%hd4813648306%_
                                                    _%$%tl4813748309%_)
                                             (let ((_%$%g4812448312%_
                                                    _%$%hd4813648306%_)
                                                   (_%$%g4812548314%_
                                                    _%$%hd4812748276%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4812548314%_)
                                                        (gx#identifier?
                                                         _%$%g4812448312%_))
                                                   (_%__kont4897048971%_
                                                    _%$%g4812448312%_
                                                    _%$%g4812548314%_)
                                                   (_%$%g4809448165%_)))))
                                          (_%__match4904049041%_
                                           (lambda (_%$%e4811248338%_
                                                    _%$%hd4811348342%_
                                                    _%$%tl4811448345%_
                                                    _%$%e4811548348%_
                                                    _%$%hd4811648352%_
                                                    _%$%tl4811748355%_
                                                    _%$%e4811848358%_
                                                    _%$%hd4811948362%_
                                                    _%$%tl4812048365%_
                                                    _%$%e4812148368%_
                                                    _%$%hd4812248372%_
                                                    _%$%tl4812348375%_)
                                             (let ((_%$%g4811048378%_
                                                    _%$%hd4812248372%_)
                                                   (_%$%g4811148380%_
                                                    _%$%hd4811348342%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4811148380%_)
                                                        (gx#identifier?
                                                         _%$%g4811048378%_))
                                                   (_%__kont4896848969%_
                                                    _%$%g4811048378%_
                                                    _%$%g4811148380%_)
                                                   (_%$%g4809448165%_)))))
                                          (_%__match4900849009%_
                                           (lambda (_%$%e4809848404%_
                                                    _%$%hd4809948408%_
                                                    _%$%tl4810048411%_
                                                    _%$%e4810148414%_
                                                    _%$%hd4810248418%_
                                                    _%$%tl4810348421%_
                                                    _%$%e4810448424%_
                                                    _%$%hd4810548428%_
                                                    _%$%tl4810648431%_
                                                    _%$%e4810748434%_
                                                    _%$%hd4810848438%_
                                                    _%$%tl4810948441%_)
                                             (let ((_%$%g4809648444%_
                                                    _%$%hd4810848438%_)
                                                   (_%$%g4809748446%_
                                                    _%$%hd4809948408%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4809748446%_)
                                                        (gx#identifier?
                                                         _%$%g4809648444%_))
                                                   (_%__kont4896648967%_
                                                    _%$%g4809648444%_
                                                    _%$%g4809748446%_)
                                                   (_%$%g4809448165%_))))))
                                     (if (gx#stx-pair? _%__stx4896348964%_)
                                         (let ((_%$%e4809848404%_
                                                (gx#syntax-e
                                                 _%__stx4896348964%_)))
                                           (let ((_%$%tl4810048411%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4809848404%_)))
                                                 (_%$%hd4809948408%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4809848404%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl4810048411%_)
                                                 (let ((_%$%e4810148414%_
                                                        (gx#syntax-e
                                                         _%$%tl4810048411%_)))
                                                   (let ((_%$%tl4810348421%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4810148414%_)))
                                                         (_%$%hd4810248418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4810148414%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%hd4810248418%_)
                                                         (let ((_%$%e4810448424%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd4810248418%_)))
                   (let ((_%$%tl4810648431%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e4810448424%_)))
                         (_%$%hd4810548428%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e4810448424%_))))
                     (if (gx#identifier? _%$%hd4810548428%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-sugar[1]#_g49162_|
                              _%$%hd4810548428%_)
                             (if (gx#stx-pair? _%$%tl4810648431%_)
                                 (let ((_%$%e4810748434%_
                                        (gx#syntax-e _%$%tl4810648431%_)))
                                   (let ((_%$%tl4810948441%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e4810748434%_)))
                                         (_%$%hd4810848438%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e4810748434%_))))
                                     (if (gx#stx-null? _%$%tl4810948441%_)
                                         (if (gx#stx-null? _%$%tl4810348421%_)
                                             (_%__match4900849009%_
                                              _%$%e4809848404%_
                                              _%$%hd4809948408%_
                                              _%$%tl4810048411%_
                                              _%$%e4810148414%_
                                              _%$%hd4810248418%_
                                              _%$%tl4810348421%_
                                              _%$%e4810448424%_
                                              _%$%hd4810548428%_
                                              _%$%tl4810648431%_
                                              _%$%e4810748434%_
                                              _%$%hd4810848438%_
                                              _%$%tl4810948441%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl4810348421%_)
                                                 (let ((_%$%e4814848192%_
                                                        (gx#syntax-e
                                                         _%$%tl4810348421%_)))
                                                   (let ((_%$%tl4815048199%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4814848192%_)))
                                                         (_%$%hd4814948196%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4814848192%_))))
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4815048199%_)
                                                         (let ((_%__splice4897448975%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4815048199%_
                         '0)))
                   (let ((_%$%tl4815348205%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4897448975%_ '1)))
                         (_%$%target4815148202%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4897448975%_ '0))))
                     (if (gx#stx-null? _%$%tl4815348205%_)
                         (_%__match4909849099%_
                          _%$%e4809848404%_
                          _%$%hd4809948408%_
                          _%$%tl4810048411%_
                          _%$%e4810148414%_
                          _%$%hd4810248418%_
                          _%$%tl4810348421%_
                          _%$%e4814848192%_
                          _%$%hd4814948196%_
                          _%$%tl4815048199%_
                          _%__splice4897448975%_
                          _%$%target4815148202%_
                          _%$%tl4815348205%_)
                         (_%$%g4809448165%_))))
                 (_%$%g4809448165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4809448165%_)))
                                         (if (gx#stx-pair? _%$%tl4810348421%_)
                                             (let ((_%$%e4814848192%_
                                                    (gx#syntax-e
                                                     _%$%tl4810348421%_)))
                                               (let ((_%$%tl4815048199%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4814848192%_)))
                                                     (_%$%hd4814948196%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4814848192%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4815048199%_)
                                                     (let ((_%__splice4897448975%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4815048199%_
                                                             '0)))
                                                       (let ((_%$%tl4815348205%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4897448975%_ '1)))
                     (_%$%target4815148202%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4897448975%_ '0))))
                 (if (gx#stx-null? _%$%tl4815348205%_)
                     (_%__match4909849099%_
                      _%$%e4809848404%_
                      _%$%hd4809948408%_
                      _%$%tl4810048411%_
                      _%$%e4810148414%_
                      _%$%hd4810248418%_
                      _%$%tl4810348421%_
                      _%$%e4814848192%_
                      _%$%hd4814948196%_
                      _%$%tl4815048199%_
                      _%__splice4897448975%_
                      _%$%target4815148202%_
                      _%$%tl4815348205%_)
                     (_%$%g4809448165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4809448165%_))))
                                             (_%$%g4809448165%_)))))
                                 (if (gx#stx-pair? _%$%tl4810348421%_)
                                     (let ((_%$%e4814848192%_
                                            (gx#syntax-e _%$%tl4810348421%_)))
                                       (let ((_%$%tl4815048199%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4814848192%_)))
                                             (_%$%hd4814948196%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4814848192%_))))
                                         (if (gx#stx-pair/null?
                                              _%$%tl4815048199%_)
                                             (let ((_%__splice4897448975%_
                                                    (gx#syntax-split-splice->vector
                                                     _%$%tl4815048199%_
                                                     '0)))
                                               (let ((_%$%tl4815348205%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4897448975%_
                                                         '1)))
                                                     (_%$%target4815148202%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4897448975%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%$%tl4815348205%_)
                                                     (_%__match4909849099%_
                                                      _%$%e4809848404%_
                                                      _%$%hd4809948408%_
                                                      _%$%tl4810048411%_
                                                      _%$%e4810148414%_
                                                      _%$%hd4810248418%_
                                                      _%$%tl4810348421%_
                                                      _%$%e4814848192%_
                                                      _%$%hd4814948196%_
                                                      _%$%tl4815048199%_
                                                      _%__splice4897448975%_
                                                      _%$%target4815148202%_
                                                      _%$%tl4815348205%_)
                                                     (_%$%g4809448165%_))))
                                             (_%$%g4809448165%_))))
                                     (_%$%g4809448165%_)))
                             (if (gx#free-identifier=?
                                  |gerbil/core/more-sugar[1]#_g49163_|
                                  _%$%hd4810548428%_)
                                 (if (gx#stx-pair? _%$%tl4810648431%_)
                                     (let ((_%$%e4812148368%_
                                            (gx#syntax-e _%$%tl4810648431%_)))
                                       (let ((_%$%tl4812348375%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4812148368%_)))
                                             (_%$%hd4812248372%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4812148368%_))))
                                         (if (gx#stx-null? _%$%tl4812348375%_)
                                             (if (gx#stx-null?
                                                  _%$%tl4810348421%_)
                                                 (_%__match4904049041%_
                                                  _%$%e4809848404%_
                                                  _%$%hd4809948408%_
                                                  _%$%tl4810048411%_
                                                  _%$%e4810148414%_
                                                  _%$%hd4810248418%_
                                                  _%$%tl4810348421%_
                                                  _%$%e4810448424%_
                                                  _%$%hd4810548428%_
                                                  _%$%tl4810648431%_
                                                  _%$%e4812148368%_
                                                  _%$%hd4812248372%_
                                                  _%$%tl4812348375%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl4810348421%_)
                                                     (let ((_%$%e4814848192%_
                                                            (gx#syntax-e
                                                             _%$%tl4810348421%_)))
                                                       (let ((_%$%tl4815048199%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e4814848192%_)))
                     (_%$%hd4814948196%_
                      (let () (declare (not safe)) (##car _%$%e4814848192%_))))
                 (if (gx#stx-pair/null? _%$%tl4815048199%_)
                     (let ((_%__splice4897448975%_
                            (gx#syntax-split-splice->vector
                             _%$%tl4815048199%_
                             '0)))
                       (let ((_%$%tl4815348205%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4897448975%_ '1)))
                             (_%$%target4815148202%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4897448975%_ '0))))
                         (if (gx#stx-null? _%$%tl4815348205%_)
                             (_%__match4909849099%_
                              _%$%e4809848404%_
                              _%$%hd4809948408%_
                              _%$%tl4810048411%_
                              _%$%e4810148414%_
                              _%$%hd4810248418%_
                              _%$%tl4810348421%_
                              _%$%e4814848192%_
                              _%$%hd4814948196%_
                              _%$%tl4815048199%_
                              _%__splice4897448975%_
                              _%$%target4815148202%_
                              _%$%tl4815348205%_)
                             (_%$%g4809448165%_))))
                     (_%$%g4809448165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4809448165%_)))
                                             (if (gx#stx-pair?
                                                  _%$%tl4810348421%_)
                                                 (let ((_%$%e4814848192%_
                                                        (gx#syntax-e
                                                         _%$%tl4810348421%_)))
                                                   (let ((_%$%tl4815048199%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4814848192%_)))
                                                         (_%$%hd4814948196%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4814848192%_))))
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4815048199%_)
                                                         (let ((_%__splice4897448975%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4815048199%_
                         '0)))
                   (let ((_%$%tl4815348205%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4897448975%_ '1)))
                         (_%$%target4815148202%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4897448975%_ '0))))
                     (if (gx#stx-null? _%$%tl4815348205%_)
                         (_%__match4909849099%_
                          _%$%e4809848404%_
                          _%$%hd4809948408%_
                          _%$%tl4810048411%_
                          _%$%e4810148414%_
                          _%$%hd4810248418%_
                          _%$%tl4810348421%_
                          _%$%e4814848192%_
                          _%$%hd4814948196%_
                          _%$%tl4815048199%_
                          _%__splice4897448975%_
                          _%$%target4815148202%_
                          _%$%tl4815348205%_)
                         (_%$%g4809448165%_))))
                 (_%$%g4809448165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4809448165%_)))))
                                     (if (gx#stx-pair? _%$%tl4810348421%_)
                                         (let ((_%$%e4814848192%_
                                                (gx#syntax-e
                                                 _%$%tl4810348421%_)))
                                           (let ((_%$%tl4815048199%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4814848192%_)))
                                                 (_%$%hd4814948196%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4814848192%_))))
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4815048199%_)
                                                 (let ((_%__splice4897448975%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4815048199%_
                                                         '0)))
                                                   (let ((_%$%tl4815348205%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4897448975%_
                                                             '1)))
                                                         (_%$%target4815148202%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4897448975%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl4815348205%_)
                                                         (_%__match4909849099%_
                                                          _%$%e4809848404%_
                                                          _%$%hd4809948408%_
                                                          _%$%tl4810048411%_
                                                          _%$%e4810148414%_
                                                          _%$%hd4810248418%_
                                                          _%$%tl4810348421%_
                                                          _%$%e4814848192%_
                                                          _%$%hd4814948196%_
                                                          _%$%tl4815048199%_
                                                          _%__splice4897448975%_
                                                          _%$%target4815148202%_
                                                          _%$%tl4815348205%_)
                                                         (_%$%g4809448165%_))))
                                                 (_%$%g4809448165%_))))
                                         (_%$%g4809448165%_)))
                                 (if (gx#free-identifier=?
                                      |gerbil/core/more-sugar[1]#_g49164_|
                                      _%$%hd4810548428%_)
                                     (if (gx#stx-pair? _%$%tl4810648431%_)
                                         (let ((_%$%e4813548302%_
                                                (gx#syntax-e
                                                 _%$%tl4810648431%_)))
                                           (let ((_%$%tl4813748309%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4813548302%_)))
                                                 (_%$%hd4813648306%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4813548302%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl4813748309%_)
                                                 (if (gx#stx-null?
                                                      _%$%tl4810348421%_)
                                                     (_%__match4907249073%_
                                                      _%$%e4809848404%_
                                                      _%$%hd4809948408%_
                                                      _%$%tl4810048411%_
                                                      _%$%e4810148414%_
                                                      _%$%hd4810248418%_
                                                      _%$%tl4810348421%_
                                                      _%$%e4810448424%_
                                                      _%$%hd4810548428%_
                                                      _%$%tl4810648431%_
                                                      _%$%e4813548302%_
                                                      _%$%hd4813648306%_
                                                      _%$%tl4813748309%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl4810348421%_)
                                                         (let ((_%$%e4814848192%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4810348421%_)))
                   (let ((_%$%tl4815048199%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e4814848192%_)))
                         (_%$%hd4814948196%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e4814848192%_))))
                     (if (gx#stx-pair/null? _%$%tl4815048199%_)
                         (let ((_%__splice4897448975%_
                                (gx#syntax-split-splice->vector
                                 _%$%tl4815048199%_
                                 '0)))
                           (let ((_%$%tl4815348205%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4897448975%_ '1)))
                                 (_%$%target4815148202%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4897448975%_ '0))))
                             (if (gx#stx-null? _%$%tl4815348205%_)
                                 (_%__match4909849099%_
                                  _%$%e4809848404%_
                                  _%$%hd4809948408%_
                                  _%$%tl4810048411%_
                                  _%$%e4810148414%_
                                  _%$%hd4810248418%_
                                  _%$%tl4810348421%_
                                  _%$%e4814848192%_
                                  _%$%hd4814948196%_
                                  _%$%tl4815048199%_
                                  _%__splice4897448975%_
                                  _%$%target4815148202%_
                                  _%$%tl4815348205%_)
                                 (_%$%g4809448165%_))))
                         (_%$%g4809448165%_))))
                 (_%$%g4809448165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%$%tl4810348421%_)
                                                     (let ((_%$%e4814848192%_
                                                            (gx#syntax-e
                                                             _%$%tl4810348421%_)))
                                                       (let ((_%$%tl4815048199%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e4814848192%_)))
                     (_%$%hd4814948196%_
                      (let () (declare (not safe)) (##car _%$%e4814848192%_))))
                 (if (gx#stx-pair/null? _%$%tl4815048199%_)
                     (let ((_%__splice4897448975%_
                            (gx#syntax-split-splice->vector
                             _%$%tl4815048199%_
                             '0)))
                       (let ((_%$%tl4815348205%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4897448975%_ '1)))
                             (_%$%target4815148202%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4897448975%_ '0))))
                         (if (gx#stx-null? _%$%tl4815348205%_)
                             (_%__match4909849099%_
                              _%$%e4809848404%_
                              _%$%hd4809948408%_
                              _%$%tl4810048411%_
                              _%$%e4810148414%_
                              _%$%hd4810248418%_
                              _%$%tl4810348421%_
                              _%$%e4814848192%_
                              _%$%hd4814948196%_
                              _%$%tl4815048199%_
                              _%__splice4897448975%_
                              _%$%target4815148202%_
                              _%$%tl4815348205%_)
                             (_%$%g4809448165%_))))
                     (_%$%g4809448165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4809448165%_)))))
                                         (if (gx#stx-pair? _%$%tl4810348421%_)
                                             (let ((_%$%e4814848192%_
                                                    (gx#syntax-e
                                                     _%$%tl4810348421%_)))
                                               (let ((_%$%tl4815048199%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4814848192%_)))
                                                     (_%$%hd4814948196%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4814848192%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4815048199%_)
                                                     (let ((_%__splice4897448975%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4815048199%_
                                                             '0)))
                                                       (let ((_%$%tl4815348205%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4897448975%_ '1)))
                     (_%$%target4815148202%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4897448975%_ '0))))
                 (if (gx#stx-null? _%$%tl4815348205%_)
                     (_%__match4909849099%_
                      _%$%e4809848404%_
                      _%$%hd4809948408%_
                      _%$%tl4810048411%_
                      _%$%e4810148414%_
                      _%$%hd4810248418%_
                      _%$%tl4810348421%_
                      _%$%e4814848192%_
                      _%$%hd4814948196%_
                      _%$%tl4815048199%_
                      _%__splice4897448975%_
                      _%$%target4815148202%_
                      _%$%tl4815348205%_)
                     (_%$%g4809448165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4809448165%_))))
                                             (_%$%g4809448165%_)))
                                     (if (gx#stx-pair? _%$%tl4810348421%_)
                                         (let ((_%$%e4814848192%_
                                                (gx#syntax-e
                                                 _%$%tl4810348421%_)))
                                           (let ((_%$%tl4815048199%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4814848192%_)))
                                                 (_%$%hd4814948196%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4814848192%_))))
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4815048199%_)
                                                 (let ((_%__splice4897448975%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4815048199%_
                                                         '0)))
                                                   (let ((_%$%tl4815348205%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4897448975%_
                                                             '1)))
                                                         (_%$%target4815148202%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4897448975%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl4815348205%_)
                                                         (_%__match4909849099%_
                                                          _%$%e4809848404%_
                                                          _%$%hd4809948408%_
                                                          _%$%tl4810048411%_
                                                          _%$%e4810148414%_
                                                          _%$%hd4810248418%_
                                                          _%$%tl4810348421%_
                                                          _%$%e4814848192%_
                                                          _%$%hd4814948196%_
                                                          _%$%tl4815048199%_
                                                          _%__splice4897448975%_
                                                          _%$%target4815148202%_
                                                          _%$%tl4815348205%_)
                                                         (_%$%g4809448165%_))))
                                                 (_%$%g4809448165%_))))
                                         (_%$%g4809448165%_)))))
                         (if (gx#stx-pair? _%$%tl4810348421%_)
                             (let ((_%$%e4814848192%_
                                    (gx#syntax-e _%$%tl4810348421%_)))
                               (let ((_%$%tl4815048199%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4814848192%_)))
                                     (_%$%hd4814948196%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4814848192%_))))
                                 (if (gx#stx-pair/null? _%$%tl4815048199%_)
                                     (let ((_%__splice4897448975%_
                                            (gx#syntax-split-splice->vector
                                             _%$%tl4815048199%_
                                             '0)))
                                       (let ((_%$%tl4815348205%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4897448975%_
                                                 '1)))
                                             (_%$%target4815148202%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4897448975%_
                                                 '0))))
                                         (if (gx#stx-null? _%$%tl4815348205%_)
                                             (_%__match4909849099%_
                                              _%$%e4809848404%_
                                              _%$%hd4809948408%_
                                              _%$%tl4810048411%_
                                              _%$%e4810148414%_
                                              _%$%hd4810248418%_
                                              _%$%tl4810348421%_
                                              _%$%e4814848192%_
                                              _%$%hd4814948196%_
                                              _%$%tl4815048199%_
                                              _%__splice4897448975%_
                                              _%$%target4815148202%_
                                              _%$%tl4815348205%_)
                                             (_%$%g4809448165%_))))
                                     (_%$%g4809448165%_))))
                             (_%$%g4809448165%_)))))
                 (if (gx#stx-pair? _%$%tl4810348421%_)
                     (let ((_%$%e4814848192%_
                            (gx#syntax-e _%$%tl4810348421%_)))
                       (let ((_%$%tl4815048199%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4814848192%_)))
                             (_%$%hd4814948196%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4814848192%_))))
                         (if (gx#stx-pair/null? _%$%tl4815048199%_)
                             (let ((_%__splice4897448975%_
                                    (gx#syntax-split-splice->vector
                                     _%$%tl4815048199%_
                                     '0)))
                               (let ((_%$%tl4815348205%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4897448975%_
                                         '1)))
                                     (_%$%target4815148202%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4897448975%_
                                         '0))))
                                 (if (gx#stx-null? _%$%tl4815348205%_)
                                     (_%__match4909849099%_
                                      _%$%e4809848404%_
                                      _%$%hd4809948408%_
                                      _%$%tl4810048411%_
                                      _%$%e4810148414%_
                                      _%$%hd4810248418%_
                                      _%$%tl4810348421%_
                                      _%$%e4814848192%_
                                      _%$%hd4814948196%_
                                      _%$%tl4815048199%_
                                      _%__splice4897448975%_
                                      _%$%target4815148202%_
                                      _%$%tl4815348205%_)
                                     (_%$%g4809448165%_))))
                             (_%$%g4809448165%_))))
                     (_%$%g4809448165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4809448165%_))))
                                         (_%$%g4809448165%_))))))
                             (gx#syntax->list
                              (foldr (lambda (_%$%g4846648469%_
                                              _%$%g4846748472%_)
                                       (cons _%$%g4846648469%_
                                             _%$%g4846748472%_))
                                     '()
                                     _%$%clause4796648033%_)))))
                  (|gerbil/core/more-sugar[1]#stx-substitute__0|
                   _%subs48475%_
                   (cons (gx#datum->syntax '#f 'begin)
                         (foldr (lambda (_%$%g4847748480%_ _%$%g4847848483%_)
                                  (cons _%$%g4847748480%_ _%$%g4847848483%_))
                                '()
                                _%$%body4797548061%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4797048042%_
                                           _%$%target4796748036%_
                                           '()))
                                        (_%$%g4794847981%_
                                         _%$%g4794947985%_)))))
                              (_%$%g4794847981%_ _%$%g4794947985%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4796148014%_
                                                   _%$%target4795848008%_
                                                   '()))
                                                (_%$%g4794847981%_
                                                 _%$%g4794947985%_)))))
                                      (_%$%g4794847981%_ _%$%g4794947985%_))))
                              (_%$%g4794847981%_ _%$%g4794947985%_))))
                      (_%$%g4794847981%_ _%$%g4794947985%_)))))
          (_%$%g4794748486%_ _%stx47945%_))))))
