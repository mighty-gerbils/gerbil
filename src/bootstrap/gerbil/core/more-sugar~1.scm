(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45626_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45629_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45630_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45631_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45632_|
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
      (lambda _%$args40866%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40866%_)))
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
      (lambda _%$args40862%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40862%_)))
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
      (lambda (_%stx40859%_)
        (if (gx#identifier? _%stx40859%_)
            (let ((__tmp45589 (gx#syntax-local-value _%stx40859%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45589))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40856%_)
        (if (gx#identifier? _%stx40856%_)
            (let ((__tmp45590 (gx#syntax-local-value _%stx40856%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45590))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40483%_)
        (let* ((_%__stx4511845119%_ _%stx40483%_)
               (_%$%g4048940552%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4511845119%_))))
          (let ((_%__kont4512145122%_
                 (lambda (_%$%g4049140833%_ _%$%g4049240835%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4049240835%_)
                    _%stx40483%_)))
                (_%__kont4512345124%_
                 (lambda (_%$%g4050540722%_
                          _%$%g4050640724%_
                          _%$%g4050740725%_)
                   (let* ((_%$%g4074740755%_
                           (lambda (_%$%g4074840751%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g4074840751%_)))
                          (_%$%g4074640782%_
                           (lambda (_%$%g4074840759%_)
                             (cons _%$%g4074840759%_
                                   (foldr (lambda (_%$%g4077340776%_
                                                   _%$%g4077440779%_)
                                            (cons _%$%g4077340776%_
                                                  _%$%g4077440779%_))
                                          (cons _%$%g4050540722%_ '())
                                          _%$%g4050640724%_)))))
                     (_%$%g4074640782%_
                      (gx#stx-identifier
                       _%$%g4050740725%_
                       _%$%g4050740725%_
                       '"-set!")))))
                (_%__kont4512745128%_
                 (lambda (_%$%g4052940634%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4052940634%_)
                    _%stx40483%_)))
                (_%__kont4512945130%_
                 (lambda (_%$%g4053640589%_ _%$%g4053740591%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%$%g4053740591%_
                               (cons _%$%g4053640589%_ '()))))))
            (let* ((_%__match4521745218%_
                    (lambda (_%$%e4053840559%_
                             _%$%hd4053940563%_
                             _%$%tl4054040566%_
                             _%$%e4054140569%_
                             _%$%hd4054240573%_
                             _%$%tl4054340576%_
                             _%$%e4054440579%_
                             _%$%hd4054540583%_
                             _%$%tl4054640586%_)
                      (let ((_%$%g4053640589%_ _%$%hd4054540583%_)
                            (_%$%g4053740591%_ _%$%hd4054240573%_))
                        (if (gx#identifier? _%$%g4053740591%_)
                            (_%__kont4512945130%_
                             _%$%g4053640589%_
                             _%$%g4053740591%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g4048940552%_))))))
                   (_%__match4519745198%_
                    (lambda (_%$%e4053040614%_
                             _%$%hd4053140618%_
                             _%$%tl4053240621%_
                             _%$%e4053340624%_
                             _%$%hd4053440628%_
                             _%$%tl4053540631%_)
                      (let ((_%$%g4052940634%_ _%$%hd4053440628%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%$%g4052940634%_)
                            (_%__kont4512745128%_ _%$%g4052940634%_)
                            (if (gx#stx-pair? _%$%tl4053540631%_)
                                (let ((_%$%e4054440579%_
                                       (gx#syntax-e _%$%tl4053540631%_)))
                                  (let ((_%$%tl4054640586%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4054440579%_)))
                                        (_%$%hd4054540583%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4054440579%_))))
                                    (if (gx#stx-null? _%$%tl4054640586%_)
                                        (_%__match4521745218%_
                                         _%$%e4053040614%_
                                         _%$%hd4053140618%_
                                         _%$%tl4053240621%_
                                         _%$%e4053340624%_
                                         _%$%hd4053440628%_
                                         _%$%tl4053540631%_
                                         _%$%e4054440579%_
                                         _%$%hd4054540583%_
                                         _%$%tl4054640586%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g4048940552%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g4048940552%_)))))))
                   (_%__match4518545186%_
                    (lambda (_%$%e4050840654%_
                             _%$%hd4050940658%_
                             _%$%tl4051040661%_
                             _%$%e4051140664%_
                             _%$%hd4051240668%_
                             _%$%tl4051340671%_
                             _%$%e4051440674%_
                             _%$%hd4051540678%_
                             _%$%tl4051640681%_
                             _%__splice4512545126%_
                             _%$%target4051740684%_
                             _%$%tl4051940687%_)
                      (letrec ((_%$%loop4052040690%_
                                (lambda (_%$%hd4051840694%_
                                         _%$%arg4052440697%_)
                                  (if (gx#stx-pair? _%$%hd4051840694%_)
                                      (let ((_%$%e4052140699%_
                                             (gx#syntax-e _%$%hd4051840694%_)))
                                        (let ((_%$%lp-tl4052340706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4052140699%_)))
                                              (_%$%lp-hd4052240703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4052140699%_))))
                                          (_%$%loop4052040690%_
                                           _%$%lp-tl4052340706%_
                                           (cons _%$%lp-hd4052240703%_
                                                 _%$%arg4052440697%_))))
                                      (let ((_%$%arg4052540709%_
                                             (reverse _%$%arg4052440697%_)))
                                        (if (gx#stx-pair? _%$%tl4051340671%_)
                                            (let ((_%$%e4052640712%_
                                                   (gx#syntax-e
                                                    _%$%tl4051340671%_)))
                                              (let ((_%$%tl4052840719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4052640712%_)))
                                                    (_%$%hd4052740716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4052640712%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4052840719%_)
                                                    (let ((_%$%g4050540722%_
                                                           _%$%hd4052740716%_)
                                                          (_%$%g4050640724%_
                                                           _%$%arg4052540709%_)
                                                          (_%$%g4050740725%_
                                                           _%$%hd4051540678%_))
                                                      (if (gx#identifier?
                                                           _%$%g4050740725%_)
                                                          (_%__kont4512345124%_
                                                           _%$%g4050540722%_
                                                           _%$%g4050640724%_
                                                           _%$%g4050740725%_)
                                                          (_%__match4519745198%_
                                                           _%$%e4050840654%_
                                                           _%$%hd4050940658%_
                                                           _%$%tl4051040661%_
                                                           _%$%e4051140664%_
                                                           _%$%hd4051240668%_
                                                           _%$%tl4051340671%_)))
                                                    (_%__match4519745198%_
                                                     _%$%e4050840654%_
                                                     _%$%hd4050940658%_
                                                     _%$%tl4051040661%_
                                                     _%$%e4051140664%_
                                                     _%$%hd4051240668%_
                                                     _%$%tl4051340671%_))))
                                            (_%__match4519745198%_
                                             _%$%e4050840654%_
                                             _%$%hd4050940658%_
                                             _%$%tl4051040661%_
                                             _%$%e4051140664%_
                                             _%$%hd4051240668%_
                                             _%$%tl4051340671%_)))))))
                        (_%$%loop4052040690%_ _%$%target4051740684%_ '())))))
              (if (gx#stx-pair? _%__stx4511845119%_)
                  (let ((_%$%e4049340793%_ (gx#syntax-e _%__stx4511845119%_)))
                    (let ((_%$%tl4049540800%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4049340793%_)))
                          (_%$%hd4049440797%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4049340793%_))))
                      (if (gx#stx-pair? _%$%tl4049540800%_)
                          (let ((_%$%e4049640803%_
                                 (gx#syntax-e _%$%tl4049540800%_)))
                            (let ((_%$%tl4049840810%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4049640803%_)))
                                  (_%$%hd4049740807%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4049640803%_))))
                              (if (gx#stx-pair? _%$%hd4049740807%_)
                                  (let ((_%$%e4049940813%_
                                         (gx#syntax-e _%$%hd4049740807%_)))
                                    (let ((_%$%tl4050140820%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4049940813%_)))
                                          (_%$%hd4050040817%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4049940813%_))))
                                      (if (gx#stx-pair? _%$%tl4049840810%_)
                                          (let ((_%$%e4050240823%_
                                                 (gx#syntax-e
                                                  _%$%tl4049840810%_)))
                                            (let ((_%$%tl4050440830%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4050240823%_)))
                                                  (_%$%hd4050340827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4050240823%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl4050440830%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%$%g4049140833%_
                                                             _%$%hd4050340827%_)
                                                            (_%$%g4049240835%_
                                                             _%$%hd4050040817%_))
                                                        (_%__kont4512145122%_
                                                         _%$%g4049140833%_
                                                         _%$%g4049240835%_))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl4050140820%_)
                                                          (let ((_%__splice4512545126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl4050140820%_
                          '0)))
                    (let ((_%$%tl4051940687%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4512545126%_ '1)))
                          (_%$%target4051740684%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4512545126%_ '0))))
                      (if (gx#stx-null? _%$%tl4051940687%_)
                          (_%__match4518545186%_
                           _%$%e4049340793%_
                           _%$%hd4049440797%_
                           _%$%tl4049540800%_
                           _%$%e4049640803%_
                           _%$%hd4049740807%_
                           _%$%tl4049840810%_
                           _%$%e4049940813%_
                           _%$%hd4050040817%_
                           _%$%tl4050140820%_
                           _%__splice4512545126%_
                           _%$%target4051740684%_
                           _%$%tl4051940687%_)
                          (_%__match4519745198%_
                           _%$%e4049340793%_
                           _%$%hd4049440797%_
                           _%$%tl4049540800%_
                           _%$%e4049640803%_
                           _%$%hd4049740807%_
                           _%$%tl4049840810%_))))
                  (_%__match4519745198%_
                   _%$%e4049340793%_
                   _%$%hd4049440797%_
                   _%$%tl4049540800%_
                   _%$%e4049640803%_
                   _%$%hd4049740807%_
                   _%$%tl4049840810%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl4050140820%_)
                                                      (let ((_%__splice4512545126%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl4050140820%_
                                                              '0)))
                                                        (let ((_%$%tl4051940687%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4512545126%_ '1)))
                      (_%$%target4051740684%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4512545126%_ '0))))
                  (if (gx#stx-null? _%$%tl4051940687%_)
                      (_%__match4518545186%_
                       _%$%e4049340793%_
                       _%$%hd4049440797%_
                       _%$%tl4049540800%_
                       _%$%e4049640803%_
                       _%$%hd4049740807%_
                       _%$%tl4049840810%_
                       _%$%e4049940813%_
                       _%$%hd4050040817%_
                       _%$%tl4050140820%_
                       _%__splice4512545126%_
                       _%$%target4051740684%_
                       _%$%tl4051940687%_)
                      (_%__match4519745198%_
                       _%$%e4049340793%_
                       _%$%hd4049440797%_
                       _%$%tl4049540800%_
                       _%$%e4049640803%_
                       _%$%hd4049740807%_
                       _%$%tl4049840810%_))))
              (_%__match4519745198%_
               _%$%e4049340793%_
               _%$%hd4049440797%_
               _%$%tl4049540800%_
               _%$%e4049640803%_
               _%$%hd4049740807%_
               _%$%tl4049840810%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl4050140820%_)
                                              (let ((_%__splice4512545126%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl4050140820%_
                                                      '0)))
                                                (let ((_%$%tl4051940687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4512545126%_
                                                          '1)))
                                                      (_%$%target4051740684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4512545126%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl4051940687%_)
                                                      (_%__match4518545186%_
                                                       _%$%e4049340793%_
                                                       _%$%hd4049440797%_
                                                       _%$%tl4049540800%_
                                                       _%$%e4049640803%_
                                                       _%$%hd4049740807%_
                                                       _%$%tl4049840810%_
                                                       _%$%e4049940813%_
                                                       _%$%hd4050040817%_
                                                       _%$%tl4050140820%_
                                                       _%__splice4512545126%_
                                                       _%$%target4051740684%_
                                                       _%$%tl4051940687%_)
                                                      (_%__match4519745198%_
                                                       _%$%e4049340793%_
                                                       _%$%hd4049440797%_
                                                       _%$%tl4049540800%_
                                                       _%$%e4049640803%_
                                                       _%$%hd4049740807%_
                                                       _%$%tl4049840810%_))))
                                              (_%__match4519745198%_
                                               _%$%e4049340793%_
                                               _%$%hd4049440797%_
                                               _%$%tl4049540800%_
                                               _%$%e4049640803%_
                                               _%$%hd4049740807%_
                                               _%$%tl4049840810%_)))))
                                  (_%__match4519745198%_
                                   _%$%e4049340793%_
                                   _%$%hd4049440797%_
                                   _%$%tl4049540800%_
                                   _%$%e4049640803%_
                                   _%$%hd4049740807%_
                                   _%$%tl4049840810%_))))
                          (let () (declare (not safe)) (_%$%g4048940552%_)))))
                  (let () (declare (not safe)) (_%$%g4048940552%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40871%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40871%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40874%_)
        (let* ((_%$%g4087740901%_
                (lambda (_%$%g4087840897%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4087840897%_)))
               (_%$%g4087641075%_
                (lambda (_%$%g4087840905%_)
                  (if (gx#stx-pair? _%$%g4087840905%_)
                      (let ((_%$%e4088140908%_
                             (gx#syntax-e _%$%g4087840905%_)))
                        (let ((_%$%hd4088240912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4088140908%_)))
                              (_%$%tl4088340915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4088140908%_))))
                          (if (gx#stx-pair/null? _%$%tl4088340915%_)
                              (if (let ((__tmp45591
                                         (gx#stx-length _%$%tl4088340915%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45591 '1))
                                  (let ((_g45592_
                                         (gx#syntax-split-splice
                                          _%$%tl4088340915%_
                                          '1)))
                                    (begin
                                      (let ((_g45593_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45592_)
                                                   (##values-length _g45592_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45593_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45593_)))
                                      (let ((_%$%target4088440918%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45592_ 0)))
                                            (_%$%tl4088640921%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45592_ 1))))
                                        (if (gx#stx-pair? _%$%tl4088640921%_)
                                            (let ((_%$%e4089340924%_
                                                   (gx#syntax-e
                                                    _%$%tl4088640921%_)))
                                              (let ((_%$%hd4089440928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4089340924%_)))
                                                    (_%$%tl4089540931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4089340924%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4089540931%_)
                                                    (letrec ((_%$%loop4088740934%_
                                                              (lambda (_%$%hd4088540938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%tgt4089140941%_)
                        (if (gx#stx-pair? _%$%hd4088540938%_)
                            (let ((_%$%e4088840943%_
                                   (gx#syntax-e _%$%hd4088540938%_)))
                              (let ((_%$%lp-hd4088940947%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4088840943%_)))
                                    (_%$%lp-tl4089040950%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4088840943%_))))
                                (_%$%loop4088740934%_
                                 _%$%lp-tl4089040950%_
                                 (cons _%$%lp-hd4088940947%_
                                       _%$%tgt4089140941%_))))
                            (let* ((_%$%tgt4089240953%_
                                    (reverse _%$%tgt4089140941%_))
                                   (_%$%g4097640993%_
                                    (lambda (_%$%g4097740989%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g4097740989%_)))
                                   (_%$%g4097541063%_
                                    (lambda (_%$%g4097740997%_)
                                      (if (gx#stx-pair/null? _%$%g4097740997%_)
                                          (let ((_g45594_
                                                 (gx#syntax-split-splice
                                                  _%$%g4097740997%_
                                                  '0)))
                                            (begin
                                              (let ((_g45595_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g45594_)
                                                           (##values-length
                                                            _g45594_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g45595_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g45595_)))
                                              (let ((_%$%target4097941000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g45594_
                                                        0)))
                                                    (_%$%tl4098141003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g45594_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl4098141003%_)
                                                    (letrec ((_%$%loop4098241006%_
                                                              (lambda (_%$%hd4098041010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%$e4098641013%_)
                        (if (gx#stx-pair? _%$%hd4098041010%_)
                            (let ((_%$%e4098341015%_
                                   (gx#syntax-e _%$%hd4098041010%_)))
                              (let ((_%$%lp-hd4098441019%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4098341015%_)))
                                    (_%$%lp-tl4098541022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4098341015%_))))
                                (_%$%loop4098241006%_
                                 _%$%lp-tl4098541022%_
                                 (cons _%$%lp-hd4098441019%_
                                       _%$%$e4098641013%_))))
                            (let ((_%$%$e4098741025%_
                                   (reverse _%$%$e4098641013%_)))
                              (cons (gx#datum->syntax '#f 'let-values)
                                    (cons (cons (cons (foldr (lambda (_%$%g4104341049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4104441052%_)
                       (cons _%$%g4104341049%_ _%$%g4104441052%_))
                     '()
                     _%$%$e4098741025%_)
              (cons _%$%hd4089440928%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _%$%$e4098741025%_
                                             _%$%tgt4089240953%_)
                                            (foldr (lambda (_%$%g4104541055%_
                                                            _%$%g4104641058%_
                                                            _%$%g4104741060%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons _%$%g4104641058%_ (cons _%$%g4104541055%_ '())))
                   _%$%g4104741060%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%$%$e4098741025%_
                                                   _%$%tgt4089240953%_)))))))))
              (_%$%loop4098241006%_ _%$%target4097941000%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4097640993%_
                                                     _%$%g4097740997%_)))))
                                          (_%$%g4097640993%_
                                           _%$%g4097740997%_)))))
                              (_%$%g4097541063%_
                               (gx#gentemps
                                (foldr (lambda (_%$%g4106641069%_
                                                _%$%g4106741072%_)
                                         (cons _%$%g4106641069%_
                                               _%$%g4106741072%_))
                                       '()
                                       _%$%tgt4089240953%_))))))))
              (_%$%loop4088740934%_ _%$%target4088440918%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4087740901%_
                                                     _%$%g4087840905%_))))
                                            (_%$%g4087740901%_
                                             _%$%g4087840905%_)))))
                                  (_%$%g4087740901%_ _%$%g4087840905%_))
                              (_%$%g4087740901%_ _%$%g4087840905%_))))
                      (_%$%g4087740901%_ _%$%g4087840905%_)))))
          (_%$%g4087641075%_ _%stx40874%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx41081%_)
        (let* ((_%__stx4522045221%_ _%$stx41081%_)
               (_%$%g4108741175%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4522045221%_))))
          (let ((_%__kont4522345224%_
                 (lambda (_%$%g4108941515%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g4153141534%_
                                               _%$%g4153241537%_)
                                        (cons _%$%g4153141534%_
                                              _%$%g4153241537%_))
                                      '()
                                      _%$%g4108941515%_)))))
                (_%__kont4522745228%_
                 (lambda (_%$%g4110541425%_
                          _%$%g4110641427%_
                          _%$%g4110741428%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%$%g4145141454%_
                                                           _%$%g4145241457%_)
                                                    (cons _%$%g4145141454%_
                                                          _%$%g4145241457%_))
                                                  '()
                                                  _%$%g4110541425%_)))
                               (cons _%$%g4110741428%_
                                     (cons _%$%g4110641427%_ '()))))))
                (_%__kont4523145232%_
                 (lambda (_%$%g4113241288%_
                          _%$%g4113341290%_
                          _%$%g4113441291%_
                          _%$%g4113541292%_
                          _%$%g4113641293%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%$%g4113641293%_
                                                       (cons (foldr (lambda (_%$%g4132341328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4132441331%_)
                              (cons _%$%g4132341328%_ _%$%g4132441331%_))
                            '()
                            _%$%g4113341290%_)
                     (foldr (lambda (_%$%g4132541334%_ _%$%g4132641337%_)
                              (cons _%$%g4132541334%_ _%$%g4132641337%_))
                            '()
                            _%$%g4113241288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%$%g4113541292%_
                                     (cons _%$%g4113441291%_ '())))))))
            (let* ((_%__match4534145342%_
                    (lambda (_%$%e4113741182%_
                             _%$%hd4113841186%_
                             _%$%tl4113941189%_
                             _%$%e4114041192%_
                             _%$%hd4114141196%_
                             _%$%tl4114241199%_
                             _%$%e4114341202%_
                             _%$%hd4114441206%_
                             _%$%tl4114541209%_
                             _%$%e4114641212%_
                             _%$%hd4114741216%_
                             _%$%tl4114841219%_
                             _%$%e4114941222%_
                             _%$%hd4115041226%_
                             _%$%tl4115141229%_
                             _%__splice4523345234%_
                             _%$%target4115241232%_
                             _%$%tl4115441235%_)
                      (letrec ((_%$%loop4115541238%_
                                (lambda (_%$%hd4115341242%_
                                         _%$%rest4115941245%_)
                                  (if (gx#stx-pair? _%$%hd4115341242%_)
                                      (let ((_%$%e4115641247%_
                                             (gx#syntax-e _%$%hd4115341242%_)))
                                        (let ((_%$%lp-tl4115841254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4115641247%_)))
                                              (_%$%lp-hd4115741251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4115641247%_))))
                                          (_%$%loop4115541238%_
                                           _%$%lp-tl4115841254%_
                                           (cons _%$%lp-hd4115741251%_
                                                 _%$%rest4115941245%_))))
                                      (let ((_%$%rest4116041257%_
                                             (reverse _%$%rest4115941245%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4114241199%_)
                                            (let ((_%__splice4523545236%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4114241199%_
                                                    '0)))
                                              (let ((_%$%tl4116341263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4523545236%_
                                                        '1)))
                                                    (_%$%target4116141260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4523545236%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4116341263%_)
                                                    (letrec ((_%$%loop4116441266%_
                                                              (lambda (_%$%hd4116241270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body4116841273%_)
                        (if (gx#stx-pair? _%$%hd4116241270%_)
                            (let ((_%$%e4116541275%_
                                   (gx#syntax-e _%$%hd4116241270%_)))
                              (let ((_%$%lp-tl4116741282%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4116541275%_)))
                                    (_%$%lp-hd4116641279%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4116541275%_))))
                                (_%$%loop4116441266%_
                                 _%$%lp-tl4116741282%_
                                 (cons _%$%lp-hd4116641279%_
                                       _%$%body4116841273%_))))
                            (let ((_%$%body4116941285%_
                                   (reverse _%$%body4116841273%_)))
                              (_%__kont4523145232%_
                               _%$%body4116941285%_
                               _%$%rest4116041257%_
                               _%$%hd4115041226%_
                               _%$%hd4114741216%_
                               _%$%hd4113841186%_))))))
              (_%$%loop4116441266%_ _%$%target4116141260%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4108741175%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4108741175%_))))))))
                        (_%$%loop4115541238%_ _%$%target4115241232%_ '()))))
                   (_%__match4530145302%_
                    (lambda (_%$%e4110841347%_
                             _%$%hd4110941351%_
                             _%$%tl4111041354%_
                             _%$%e4111141357%_
                             _%$%hd4111241361%_
                             _%$%tl4111341364%_
                             _%$%e4111441367%_
                             _%$%hd4111541371%_
                             _%$%tl4111641374%_
                             _%$%e4111741377%_
                             _%$%hd4111841381%_
                             _%$%tl4111941384%_
                             _%$%e4112041387%_
                             _%$%hd4112141391%_
                             _%$%tl4112241394%_
                             _%__splice4522945230%_
                             _%$%target4112341397%_
                             _%$%tl4112541400%_)
                      (letrec ((_%$%loop4112641403%_
                                (lambda (_%$%hd4112441407%_
                                         _%$%body4113041410%_)
                                  (if (gx#stx-pair? _%$%hd4112441407%_)
                                      (let ((_%$%e4112741412%_
                                             (gx#syntax-e _%$%hd4112441407%_)))
                                        (let ((_%$%lp-tl4112941419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4112741412%_)))
                                              (_%$%lp-hd4112841416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4112741412%_))))
                                          (_%$%loop4112641403%_
                                           _%$%lp-tl4112941419%_
                                           (cons _%$%lp-hd4112841416%_
                                                 _%$%body4113041410%_))))
                                      (let ((_%$%body4113141422%_
                                             (reverse _%$%body4113041410%_)))
                                        (_%__kont4522745228%_
                                         _%$%body4113141422%_
                                         _%$%hd4112141391%_
                                         _%$%hd4111841381%_))))))
                        (_%$%loop4112641403%_ _%$%target4112341397%_ '()))))
                   (_%__match4525945260%_
                    (lambda (_%$%e4109041467%_
                             _%$%hd4109141471%_
                             _%$%tl4109241474%_
                             _%$%e4109341477%_
                             _%$%hd4109441481%_
                             _%$%tl4109541484%_
                             _%__splice4522545226%_
                             _%$%target4109641487%_
                             _%$%tl4109841490%_)
                      (letrec ((_%$%loop4109941493%_
                                (lambda (_%$%hd4109741497%_
                                         _%$%body4110341500%_)
                                  (if (gx#stx-pair? _%$%hd4109741497%_)
                                      (let ((_%$%e4110041502%_
                                             (gx#syntax-e _%$%hd4109741497%_)))
                                        (let ((_%$%lp-tl4110241509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4110041502%_)))
                                              (_%$%lp-hd4110141506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4110041502%_))))
                                          (_%$%loop4109941493%_
                                           _%$%lp-tl4110241509%_
                                           (cons _%$%lp-hd4110141506%_
                                                 _%$%body4110341500%_))))
                                      (let ((_%$%body4110441512%_
                                             (reverse _%$%body4110341500%_)))
                                        (_%__kont4522345224%_
                                         _%$%body4110441512%_))))))
                        (_%$%loop4109941493%_ _%$%target4109641487%_ '())))))
              (if (gx#stx-pair? _%__stx4522045221%_)
                  (let ((_%$%e4109041467%_ (gx#syntax-e _%__stx4522045221%_)))
                    (let ((_%$%tl4109241474%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4109041467%_)))
                          (_%$%hd4109141471%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4109041467%_))))
                      (if (gx#stx-pair? _%$%tl4109241474%_)
                          (let ((_%$%e4109341477%_
                                 (gx#syntax-e _%$%tl4109241474%_)))
                            (let ((_%$%tl4109541484%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4109341477%_)))
                                  (_%$%hd4109441481%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4109341477%_))))
                              (if (gx#stx-null? _%$%hd4109441481%_)
                                  (if (gx#stx-pair/null? _%$%tl4109541484%_)
                                      (let ((_%__splice4522545226%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4109541484%_
                                              '0)))
                                        (let ((_%$%tl4109841490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4522545226%_
                                                  '1)))
                                              (_%$%target4109641487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4522545226%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4109841490%_)
                                              (_%__match4525945260%_
                                               _%$%e4109041467%_
                                               _%$%hd4109141471%_
                                               _%$%tl4109241474%_
                                               _%$%e4109341477%_
                                               _%$%hd4109441481%_
                                               _%$%tl4109541484%_
                                               _%__splice4522545226%_
                                               _%$%target4109641487%_
                                               _%$%tl4109841490%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4108741175%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4108741175%_)))
                                  (if (gx#stx-pair? _%$%hd4109441481%_)
                                      (let ((_%$%e4111441367%_
                                             (gx#syntax-e _%$%hd4109441481%_)))
                                        (let ((_%$%tl4111641374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4111441367%_)))
                                              (_%$%hd4111541371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4111441367%_))))
                                          (if (gx#stx-pair? _%$%hd4111541371%_)
                                              (let ((_%$%e4111741377%_
                                                     (gx#syntax-e
                                                      _%$%hd4111541371%_)))
                                                (let ((_%$%tl4111941384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4111741377%_)))
                                                      (_%$%hd4111841381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4111741377%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl4111941384%_)
                                                      (let ((_%$%e4112041387%_
                                                             (gx#syntax-e
                                                              _%$%tl4111941384%_)))
                                                        (let ((_%$%tl4112241394%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e4112041387%_)))
                      (_%$%hd4112141391%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e4112041387%_))))
                  (if (gx#stx-null? _%$%tl4112241394%_)
                      (if (gx#stx-null? _%$%tl4111641374%_)
                          (if (gx#stx-pair/null? _%$%tl4109541484%_)
                              (let ((_%__splice4522945230%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4109541484%_
                                      '0)))
                                (let ((_%$%tl4112541400%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4522945230%_
                                          '1)))
                                      (_%$%target4112341397%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4522945230%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4112541400%_)
                                      (_%__match4530145302%_
                                       _%$%e4109041467%_
                                       _%$%hd4109141471%_
                                       _%$%tl4109241474%_
                                       _%$%e4109341477%_
                                       _%$%hd4109441481%_
                                       _%$%tl4109541484%_
                                       _%$%e4111441367%_
                                       _%$%hd4111541371%_
                                       _%$%tl4111641374%_
                                       _%$%e4111741377%_
                                       _%$%hd4111841381%_
                                       _%$%tl4111941384%_
                                       _%$%e4112041387%_
                                       _%$%hd4112141391%_
                                       _%$%tl4112241394%_
                                       _%__splice4522945230%_
                                       _%$%target4112341397%_
                                       _%$%tl4112541400%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl4111641374%_)
                                          (let ((_%__splice4523345234%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl4111641374%_
                                                  '0)))
                                            (let ((_%$%tl4115441235%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4523345234%_
                                                      '1)))
                                                  (_%$%target4115241232%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4523345234%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl4115441235%_)
                                                  (_%__match4534145342%_
                                                   _%$%e4109041467%_
                                                   _%$%hd4109141471%_
                                                   _%$%tl4109241474%_
                                                   _%$%e4109341477%_
                                                   _%$%hd4109441481%_
                                                   _%$%tl4109541484%_
                                                   _%$%e4111441367%_
                                                   _%$%hd4111541371%_
                                                   _%$%tl4111641374%_
                                                   _%$%e4111741377%_
                                                   _%$%hd4111841381%_
                                                   _%$%tl4111941384%_
                                                   _%$%e4112041387%_
                                                   _%$%hd4112141391%_
                                                   _%$%tl4112241394%_
                                                   _%__splice4523345234%_
                                                   _%$%target4115241232%_
                                                   _%$%tl4115441235%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g4108741175%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4108741175%_))))))
                              (if (gx#stx-pair/null? _%$%tl4111641374%_)
                                  (let ((_%__splice4523345234%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl4111641374%_
                                          '0)))
                                    (let ((_%$%tl4115441235%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4523345234%_
                                              '1)))
                                          (_%$%target4115241232%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4523345234%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl4115441235%_)
                                          (_%__match4534145342%_
                                           _%$%e4109041467%_
                                           _%$%hd4109141471%_
                                           _%$%tl4109241474%_
                                           _%$%e4109341477%_
                                           _%$%hd4109441481%_
                                           _%$%tl4109541484%_
                                           _%$%e4111441367%_
                                           _%$%hd4111541371%_
                                           _%$%tl4111641374%_
                                           _%$%e4111741377%_
                                           _%$%hd4111841381%_
                                           _%$%tl4111941384%_
                                           _%$%e4112041387%_
                                           _%$%hd4112141391%_
                                           _%$%tl4112241394%_
                                           _%__splice4523345234%_
                                           _%$%target4115241232%_
                                           _%$%tl4115441235%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4108741175%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g4108741175%_))))
                          (if (gx#stx-pair/null? _%$%tl4111641374%_)
                              (let ((_%__splice4523345234%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4111641374%_
                                      '0)))
                                (let ((_%$%tl4115441235%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4523345234%_
                                          '1)))
                                      (_%$%target4115241232%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4523345234%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4115441235%_)
                                      (_%__match4534145342%_
                                       _%$%e4109041467%_
                                       _%$%hd4109141471%_
                                       _%$%tl4109241474%_
                                       _%$%e4109341477%_
                                       _%$%hd4109441481%_
                                       _%$%tl4109541484%_
                                       _%$%e4111441367%_
                                       _%$%hd4111541371%_
                                       _%$%tl4111641374%_
                                       _%$%e4111741377%_
                                       _%$%hd4111841381%_
                                       _%$%tl4111941384%_
                                       _%$%e4112041387%_
                                       _%$%hd4112141391%_
                                       _%$%tl4112241394%_
                                       _%__splice4523345234%_
                                       _%$%target4115241232%_
                                       _%$%tl4115441235%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4108741175%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4108741175%_))))
                      (let () (declare (not safe)) (_%$%g4108741175%_)))))
              (let () (declare (not safe)) (_%$%g4108741175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4108741175%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4108741175%_))))))
                          (let () (declare (not safe)) (_%$%g4108741175%_)))))
                  (let () (declare (not safe)) (_%$%g4108741175%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41548%_)
        (let* ((_%$%g4155241576%_
                (lambda (_%$%g4155341572%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4155341572%_)))
               (_%$%g4155141659%_
                (lambda (_%$%g4155341580%_)
                  (if (gx#stx-pair? _%$%g4155341580%_)
                      (let ((_%$%e4155641583%_
                             (gx#syntax-e _%$%g4155341580%_)))
                        (let ((_%$%hd4155741587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4155641583%_)))
                              (_%$%tl4155841590%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4155641583%_))))
                          (if (gx#stx-pair? _%$%tl4155841590%_)
                              (let ((_%$%e4155941593%_
                                     (gx#syntax-e _%$%tl4155841590%_)))
                                (let ((_%$%hd4156041597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4155941593%_)))
                                      (_%$%tl4156141600%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4155941593%_))))
                                  (if (gx#stx-pair/null? _%$%tl4156141600%_)
                                      (let ((_g45596_
                                             (gx#syntax-split-splice
                                              _%$%tl4156141600%_
                                              '0)))
                                        (begin
                                          (let ((_g45597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45596_)
                                                       (##values-length
                                                        _g45596_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45597_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45597_)))
                                          (let ((_%$%target4156241603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45596_ 0)))
                                                (_%$%tl4156441606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45596_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4156441606%_)
                                                (letrec ((_%$%loop4156541609%_
                                                          (lambda (_%$%hd4156341613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4156941616%_)
                    (if (gx#stx-pair? _%$%hd4156341613%_)
                        (let ((_%$%e4156641618%_
                               (gx#syntax-e _%$%hd4156341613%_)))
                          (let ((_%$%lp-hd4156741622%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4156641618%_)))
                                (_%$%lp-tl4156841625%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4156641618%_))))
                            (_%$%loop4156541609%_
                             _%$%lp-tl4156841625%_
                             (cons _%$%lp-hd4156741622%_
                                   _%$%body4156941616%_))))
                        (let ((_%$%body4157041628%_
                               (reverse _%$%body4156941616%_)))
                          (if (gx#identifier? _%$%hd4156041597%_)
                              (cons (gx#datum->syntax '#f 'call/cc)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%$%hd4156041597%_
                                                            '())
                                                      (foldr (lambda (_%$%g4165041653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4165141656%_)
                       (cons _%$%g4165041653%_ _%$%g4165141656%_))
                     '()
                     _%$%body4157041628%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (_%$%g4155241576%_ _%$%g4155341580%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4156541609%_
                                                   _%$%target4156241603%_
                                                   '()))
                                                (_%$%g4155241576%_
                                                 _%$%g4155341580%_)))))
                                      (_%$%g4155241576%_ _%$%g4155341580%_))))
                              (_%$%g4155241576%_ _%$%g4155341580%_))))
                      (_%$%g4155241576%_ _%$%g4155341580%_)))))
          (_%$%g4155141659%_ _%$stx41548%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41664%_)
        (let* ((_%$%g4166841696%_
                (lambda (_%$%g4166941692%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4166941692%_)))
               (_%$%g4166741793%_
                (lambda (_%$%g4166941700%_)
                  (if (gx#stx-pair? _%$%g4166941700%_)
                      (let ((_%$%e4167341703%_
                             (gx#syntax-e _%$%g4166941700%_)))
                        (let ((_%$%hd4167441707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4167341703%_)))
                              (_%$%tl4167541710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4167341703%_))))
                          (if (gx#stx-pair? _%$%tl4167541710%_)
                              (let ((_%$%e4167641713%_
                                     (gx#syntax-e _%$%tl4167541710%_)))
                                (let ((_%$%hd4167741717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4167641713%_)))
                                      (_%$%tl4167841720%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4167641713%_))))
                                  (if (gx#stx-pair? _%$%tl4167841720%_)
                                      (let ((_%$%e4167941723%_
                                             (gx#syntax-e _%$%tl4167841720%_)))
                                        (let ((_%$%hd4168041727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4167941723%_)))
                                              (_%$%tl4168141730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4167941723%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4168141730%_)
                                              (let ((_g45598_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4168141730%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45598_)
                                                               (##values-length
                                                                _g45598_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45599_ 2)))
                (error "Context expects 2 values" _g45599_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4168241733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45598_
                                                            0)))
                                                        (_%$%tl4168441736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45598_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4168441736%_)
                                                        (letrec ((_%$%loop4168541739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4168341743%_ _%$%rest4168941746%_)
                            (if (gx#stx-pair? _%$%hd4168341743%_)
                                (let ((_%$%e4168641748%_
                                       (gx#syntax-e _%$%hd4168341743%_)))
                                  (let ((_%$%lp-hd4168741752%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4168641748%_)))
                                        (_%$%lp-tl4168841755%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4168641748%_))))
                                    (_%$%loop4168541739%_
                                     _%$%lp-tl4168841755%_
                                     (cons _%$%lp-hd4168741752%_
                                           _%$%rest4168941746%_))))
                                (let ((_%$%rest4169041758%_
                                       (reverse _%$%rest4168941746%_)))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'with-unwind-protect)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%$%hd4167741717%_
                                                                '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%$%hd4168041727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%$%g4178441787%_
                                              _%$%g4178541790%_)
                                       (cons _%$%g4178441787%_
                                             _%$%g4178541790%_))
                                     '()
                                     _%$%rest4169041758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))
                  (_%$%loop4168541739%_ _%$%target4168241733%_ '()))
                (_%$%g4166841696%_ _%$%g4166941700%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4166841696%_
                                               _%$%g4166941700%_))))
                                      (_%$%g4166841696%_ _%$%g4166941700%_))))
                              (_%$%g4166841696%_ _%$%g4166941700%_))))
                      (_%$%g4166841696%_ _%$%g4166941700%_)))))
          (_%$%g4166741793%_ _%$stx41664%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41798%_)
        (let* ((_%$%g4180241873%_
                (lambda (_%$%g4180341869%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4180341869%_)))
               (_%$%g4180142150%_
                (lambda (_%$%g4180341877%_)
                  (if (gx#stx-pair? _%$%g4180341877%_)
                      (let ((_%$%e4181041880%_
                             (gx#syntax-e _%$%g4180341877%_)))
                        (let ((_%$%hd4181141884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4181041880%_)))
                              (_%$%tl4181241887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4181041880%_))))
                          (if (gx#stx-pair? _%$%tl4181241887%_)
                              (let ((_%$%e4181341890%_
                                     (gx#syntax-e _%$%tl4181241887%_)))
                                (let ((_%$%hd4181441894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4181341890%_)))
                                      (_%$%tl4181541897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4181341890%_))))
                                  (if (gx#stx-pair/null? _%$%hd4181441894%_)
                                      (let ((_g45600_
                                             (gx#syntax-split-splice
                                              _%$%hd4181441894%_
                                              '0)))
                                        (begin
                                          (let ((_g45601_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45600_)
                                                       (##values-length
                                                        _g45600_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45601_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45601_)))
                                          (let ((_%$%target4181641900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45600_ 0)))
                                                (_%$%tl4181841903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45600_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4181841903%_)
                                                (letrec ((_%$%loop4181941906%_
                                                          (lambda (_%$%hd4181741910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4182341913%_
                           _%$%init4182441914%_
                           _%$%var4182541915%_)
                    (if (gx#stx-pair? _%$%hd4181741910%_)
                        (let ((_%$%e4182041917%_
                               (gx#syntax-e _%$%hd4181741910%_)))
                          (let ((_%$%lp-hd4182141921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4182041917%_)))
                                (_%$%lp-tl4182241924%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4182041917%_))))
                            (if (gx#stx-pair? _%$%lp-hd4182141921%_)
                                (let ((_%$%e4182941927%_
                                       (gx#syntax-e _%$%lp-hd4182141921%_)))
                                  (let ((_%$%hd4183041931%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4182941927%_)))
                                        (_%$%tl4183141934%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4182941927%_))))
                                    (if (gx#stx-pair? _%$%tl4183141934%_)
                                        (let ((_%$%e4183241937%_
                                               (gx#syntax-e
                                                _%$%tl4183141934%_)))
                                          (let ((_%$%hd4183341941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4183241937%_)))
                                                (_%$%tl4183441944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4183241937%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4183441944%_)
                                                (let ((_g45602_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4183441944%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45603_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45602_)
                         (##values-length _g45602_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45603_ 2)))
                  (error "Context expects 2 values" _g45603_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4183541947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45602_
                                                              0)))
                                                          (_%$%tl4183741950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45602_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4183741950%_)
                                                          (letrec ((_%$%loop4183841953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4183641957%_ _%$%step4184241960%_)
                              (if (gx#stx-pair? _%$%hd4183641957%_)
                                  (let ((_%$%e4183941962%_
                                         (gx#syntax-e _%$%hd4183641957%_)))
                                    (let ((_%$%lp-hd4184041966%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4183941962%_)))
                                          (_%$%lp-tl4184141969%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4183941962%_))))
                                      (_%$%loop4183841953%_
                                       _%$%lp-tl4184141969%_
                                       (cons _%$%lp-hd4184041966%_
                                             _%$%step4184241960%_))))
                                  (let ((_%$%step4184341972%_
                                         (reverse _%$%step4184241960%_)))
                                    (_%$%loop4181941906%_
                                     _%$%lp-tl4182241924%_
                                     (cons _%$%step4184341972%_
                                           _%$%step4182341913%_)
                                     (cons _%$%hd4183341941%_
                                           _%$%init4182441914%_)
                                     (cons _%$%hd4183041931%_
                                           _%$%var4182541915%_)))))))
                    (_%$%loop4183841953%_ _%$%target4183541947%_ '()))
                  (_%$%g4180241873%_ _%$%g4180341877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4180241873%_
                                                 _%$%g4180341877%_))))
                                        (_%$%g4180241873%_
                                         _%$%g4180341877%_))))
                                (_%$%g4180241873%_ _%$%g4180341877%_))))
                        (let ((_%$%step4182641975%_
                               (reverse _%$%step4182341913%_))
                              (_%$%init4182741977%_
                               (reverse _%$%init4182441914%_))
                              (_%$%var4182841978%_
                               (reverse _%$%var4182541915%_)))
                          (if (gx#stx-pair? _%$%tl4181541897%_)
                              (let ((_%$%e4184441980%_
                                     (gx#syntax-e _%$%tl4181541897%_)))
                                (let ((_%$%hd4184541984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4184441980%_)))
                                      (_%$%tl4184641987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4184441980%_))))
                                  (if (gx#stx-pair? _%$%hd4184541984%_)
                                      (let ((_%$%e4184741990%_
                                             (gx#syntax-e _%$%hd4184541984%_)))
                                        (let ((_%$%hd4184841994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4184741990%_)))
                                              (_%$%tl4184941997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4184741990%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4184941997%_)
                                              (let ((_g45604_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4184941997%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45604_)
                                                               (##values-length
                                                                _g45604_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45605_ 2)))
                (error "Context expects 2 values" _g45605_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4185042000%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45604_
                                                            0)))
                                                        (_%$%tl4185242003%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45604_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4185242003%_)
                                                        (letrec ((_%$%loop4185342006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4185142010%_ _%$%fini4185742013%_)
                            (if (gx#stx-pair? _%$%hd4185142010%_)
                                (let ((_%$%e4185442015%_
                                       (gx#syntax-e _%$%hd4185142010%_)))
                                  (let ((_%$%lp-hd4185542019%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4185442015%_)))
                                        (_%$%lp-tl4185642022%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4185442015%_))))
                                    (_%$%loop4185342006%_
                                     _%$%lp-tl4185642022%_
                                     (cons _%$%lp-hd4185542019%_
                                           _%$%fini4185742013%_))))
                                (let ((_%$%fini4185842025%_
                                       (reverse _%$%fini4185742013%_)))
                                  (if (gx#stx-pair/null? _%$%tl4184641987%_)
                                      (let ((_g45606_
                                             (gx#syntax-split-splice
                                              _%$%tl4184641987%_
                                              '0)))
                                        (begin
                                          (let ((_g45607_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45606_)
                                                       (##values-length
                                                        _g45606_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45607_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45607_)))
                                          (let ((_%$%target4185942028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45606_ 0)))
                                                (_%$%tl4186142031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45606_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4186142031%_)
                                                (letrec ((_%$%loop4186242034%_
                                                          (lambda (_%$%hd4186042038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4186642041%_)
                    (if (gx#stx-pair? _%$%hd4186042038%_)
                        (let ((_%$%e4186342043%_
                               (gx#syntax-e _%$%hd4186042038%_)))
                          (let ((_%$%lp-hd4186442047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4186342043%_)))
                                (_%$%lp-tl4186542050%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4186342043%_))))
                            (_%$%loop4186242034%_
                             _%$%lp-tl4186542050%_
                             (cons _%$%lp-hd4186442047%_
                                   _%$%body4186642041%_))))
                        (let ((_%$%body4186742053%_
                               (reverse _%$%body4186642041%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4209542098%_
                                               _%$%g4209642101%_)
                                        (cons _%$%g4209542098%_
                                              _%$%g4209642101%_))
                                      '()
                                      _%$%var4182841978%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4182741977%_
                                                   _%$%var4182841978%_)
                                                  (foldr (lambda (_%$%g4210342116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4210442119%_
                          _%$%g4210542121%_)
                   (cons (cons _%$%g4210442119%_ (cons _%$%g4210342116%_ '()))
                         _%$%g4210542121%_))
                 '()
                 _%$%init4182741977%_
                 _%$%var4182841978%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%$%hd4184841994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (cons '#!void
                                            (foldr (lambda (_%$%g4210642124%_
                                                            _%$%g4210742127%_)
                                                     (cons _%$%g4210642124%_
                                                           _%$%g4210742127%_))
                                                   '()
                                                   _%$%fini4185842025%_)))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g4210842130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4210942133%_)
                   (cons _%$%g4210842130%_ _%$%g4210942133%_))
                 (cons (cons (gx#datum->syntax '#f '$loop)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%$%step4182641975%_
                                _%$%var4182841978%_)
                               (foldr (lambda (_%$%g4211042136%_
                                               _%$%g4211142139%_
                                               _%$%g4211242141%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%$%g4211142139%_
                                                          (foldr (lambda (_%$%g4211342144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%$%g4211442147%_)
                           (cons _%$%g4211342144%_ _%$%g4211442147%_))
                         '()
                         _%$%g4211042136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%g4211242141%_))
                                      '()
                                      _%$%step4182641975%_
                                      _%$%var4182841978%_)))
                       '())
                 _%$%body4186742053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4180241873%_ _%$%g4180341877%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4186242034%_
                                                   _%$%target4185942028%_
                                                   '()))
                                                (_%$%g4180241873%_
                                                 _%$%g4180341877%_)))))
                                      (_%$%g4180241873%_
                                       _%$%g4180341877%_)))))))
                  (_%$%loop4185342006%_ _%$%target4185042000%_ '()))
                (_%$%g4180241873%_ _%$%g4180341877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4180241873%_
                                               _%$%g4180341877%_))))
                                      (_%$%g4180241873%_ _%$%g4180341877%_))))
                              (_%$%g4180241873%_ _%$%g4180341877%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4181941906%_
                                                   _%$%target4181641900%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4180241873%_
                                                 _%$%g4180341877%_)))))
                                      (_%$%g4180241873%_ _%$%g4180341877%_))))
                              (_%$%g4180241873%_ _%$%g4180341877%_))))
                      (_%$%g4180241873%_ _%$%g4180341877%_)))))
          (_%$%g4180142150%_ _%$stx41798%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx42158%_)
        (let* ((_%$%g4216242233%_
                (lambda (_%$%g4216342229%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4216342229%_)))
               (_%$%g4216142510%_
                (lambda (_%$%g4216342237%_)
                  (if (gx#stx-pair? _%$%g4216342237%_)
                      (let ((_%$%e4217042240%_
                             (gx#syntax-e _%$%g4216342237%_)))
                        (let ((_%$%hd4217142244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4217042240%_)))
                              (_%$%tl4217242247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4217042240%_))))
                          (if (gx#stx-pair? _%$%tl4217242247%_)
                              (let ((_%$%e4217342250%_
                                     (gx#syntax-e _%$%tl4217242247%_)))
                                (let ((_%$%hd4217442254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4217342250%_)))
                                      (_%$%tl4217542257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4217342250%_))))
                                  (if (gx#stx-pair/null? _%$%hd4217442254%_)
                                      (let ((_g45608_
                                             (gx#syntax-split-splice
                                              _%$%hd4217442254%_
                                              '0)))
                                        (begin
                                          (let ((_g45609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45608_)
                                                       (##values-length
                                                        _g45608_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45609_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45609_)))
                                          (let ((_%$%target4217642260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45608_ 0)))
                                                (_%$%tl4217842263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45608_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4217842263%_)
                                                (letrec ((_%$%loop4217942266%_
                                                          (lambda (_%$%hd4217742270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4218342273%_
                           _%$%init4218442274%_
                           _%$%var4218542275%_)
                    (if (gx#stx-pair? _%$%hd4217742270%_)
                        (let ((_%$%e4218042277%_
                               (gx#syntax-e _%$%hd4217742270%_)))
                          (let ((_%$%lp-hd4218142281%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4218042277%_)))
                                (_%$%lp-tl4218242284%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4218042277%_))))
                            (if (gx#stx-pair? _%$%lp-hd4218142281%_)
                                (let ((_%$%e4218942287%_
                                       (gx#syntax-e _%$%lp-hd4218142281%_)))
                                  (let ((_%$%hd4219042291%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4218942287%_)))
                                        (_%$%tl4219142294%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4218942287%_))))
                                    (if (gx#stx-pair? _%$%tl4219142294%_)
                                        (let ((_%$%e4219242297%_
                                               (gx#syntax-e
                                                _%$%tl4219142294%_)))
                                          (let ((_%$%hd4219342301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4219242297%_)))
                                                (_%$%tl4219442304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4219242297%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4219442304%_)
                                                (let ((_g45610_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4219442304%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45611_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45610_)
                         (##values-length _g45610_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45611_ 2)))
                  (error "Context expects 2 values" _g45611_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4219542307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45610_
                                                              0)))
                                                          (_%$%tl4219742310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45610_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4219742310%_)
                                                          (letrec ((_%$%loop4219842313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4219642317%_ _%$%step4220242320%_)
                              (if (gx#stx-pair? _%$%hd4219642317%_)
                                  (let ((_%$%e4219942322%_
                                         (gx#syntax-e _%$%hd4219642317%_)))
                                    (let ((_%$%lp-hd4220042326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4219942322%_)))
                                          (_%$%lp-tl4220142329%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4219942322%_))))
                                      (_%$%loop4219842313%_
                                       _%$%lp-tl4220142329%_
                                       (cons _%$%lp-hd4220042326%_
                                             _%$%step4220242320%_))))
                                  (let ((_%$%step4220342332%_
                                         (reverse _%$%step4220242320%_)))
                                    (_%$%loop4217942266%_
                                     _%$%lp-tl4218242284%_
                                     (cons _%$%step4220342332%_
                                           _%$%step4218342273%_)
                                     (cons _%$%hd4219342301%_
                                           _%$%init4218442274%_)
                                     (cons _%$%hd4219042291%_
                                           _%$%var4218542275%_)))))))
                    (_%$%loop4219842313%_ _%$%target4219542307%_ '()))
                  (_%$%g4216242233%_ _%$%g4216342237%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4216242233%_
                                                 _%$%g4216342237%_))))
                                        (_%$%g4216242233%_
                                         _%$%g4216342237%_))))
                                (_%$%g4216242233%_ _%$%g4216342237%_))))
                        (let ((_%$%step4218642335%_
                               (reverse _%$%step4218342273%_))
                              (_%$%init4218742337%_
                               (reverse _%$%init4218442274%_))
                              (_%$%var4218842338%_
                               (reverse _%$%var4218542275%_)))
                          (if (gx#stx-pair? _%$%tl4217542257%_)
                              (let ((_%$%e4220442340%_
                                     (gx#syntax-e _%$%tl4217542257%_)))
                                (let ((_%$%hd4220542344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4220442340%_)))
                                      (_%$%tl4220642347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4220442340%_))))
                                  (if (gx#stx-pair? _%$%hd4220542344%_)
                                      (let ((_%$%e4220742350%_
                                             (gx#syntax-e _%$%hd4220542344%_)))
                                        (let ((_%$%hd4220842354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4220742350%_)))
                                              (_%$%tl4220942357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4220742350%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4220942357%_)
                                              (let ((_g45612_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4220942357%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45613_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45612_)
                                                               (##values-length
                                                                _g45612_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45613_ 2)))
                (error "Context expects 2 values" _g45613_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4221042360%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45612_
                                                            0)))
                                                        (_%$%tl4221242363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45612_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4221242363%_)
                                                        (letrec ((_%$%loop4221342366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4221142370%_ _%$%fini4221742373%_)
                            (if (gx#stx-pair? _%$%hd4221142370%_)
                                (let ((_%$%e4221442375%_
                                       (gx#syntax-e _%$%hd4221142370%_)))
                                  (let ((_%$%lp-hd4221542379%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4221442375%_)))
                                        (_%$%lp-tl4221642382%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4221442375%_))))
                                    (_%$%loop4221342366%_
                                     _%$%lp-tl4221642382%_
                                     (cons _%$%lp-hd4221542379%_
                                           _%$%fini4221742373%_))))
                                (let ((_%$%fini4221842385%_
                                       (reverse _%$%fini4221742373%_)))
                                  (if (gx#stx-pair/null? _%$%tl4220642347%_)
                                      (let ((_g45614_
                                             (gx#syntax-split-splice
                                              _%$%tl4220642347%_
                                              '0)))
                                        (begin
                                          (let ((_g45615_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45614_)
                                                       (##values-length
                                                        _g45614_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45615_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45615_)))
                                          (let ((_%$%target4221942388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45614_ 0)))
                                                (_%$%tl4222142391%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45614_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4222142391%_)
                                                (letrec ((_%$%loop4222242394%_
                                                          (lambda (_%$%hd4222042398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4222642401%_)
                    (if (gx#stx-pair? _%$%hd4222042398%_)
                        (let ((_%$%e4222342403%_
                               (gx#syntax-e _%$%hd4222042398%_)))
                          (let ((_%$%lp-hd4222442407%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4222342403%_)))
                                (_%$%lp-tl4222542410%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4222342403%_))))
                            (_%$%loop4222242394%_
                             _%$%lp-tl4222542410%_
                             (cons _%$%lp-hd4222442407%_
                                   _%$%body4222642401%_))))
                        (let ((_%$%body4222742413%_
                               (reverse _%$%body4222642401%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4245542458%_
                                               _%$%g4245642461%_)
                                        (cons _%$%g4245542458%_
                                              _%$%g4245642461%_))
                                      '()
                                      _%$%var4218842338%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4218742337%_
                                                   _%$%var4218842338%_)
                                                  (foldr (lambda (_%$%g4246342476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4246442479%_
                          _%$%g4246542481%_)
                   (cons (cons _%$%g4246442479%_ (cons _%$%g4246342476%_ '()))
                         _%$%g4246542481%_))
                 '()
                 _%$%init4218742337%_
                 _%$%var4218842338%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (foldr (lambda (_%$%g4246642484%_
                                                                _%$%g4246742487%_)
                                                         (cons _%$%g4246642484%_
                                                               _%$%g4246742487%_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'if)
                           (cons _%$%hd4220842354%_
                                 (cons (cons (gx#datum->syntax '#f '$loop)
                                             (begin
                                               (gx#syntax-check-splice-targets
                                                _%$%step4218642335%_
                                                _%$%var4218842338%_)
                                               (foldr (lambda (_%$%g4246842490%_
                                                               _%$%g4246942493%_
                                                               _%$%g4247042495%_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin)
                            (cons _%$%g4246942493%_
                                  (foldr (lambda (_%$%g4247142498%_
                                                  _%$%g4247242501%_)
                                           (cons _%$%g4247142498%_
                                                 _%$%g4247242501%_))
                                         '()
                                         _%$%g4246842490%_)))
                      _%$%g4247042495%_))
              '()
              _%$%step4218642335%_
              _%$%var4218842338%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons '#!void
                                                         (foldr (lambda (_%$%g4247342504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g4247442507%_)
                          (cons _%$%g4247342504%_ _%$%g4247442507%_))
                        '()
                        _%$%fini4221842385%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                     '())
               _%$%body4222742413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4216242233%_ _%$%g4216342237%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4222242394%_
                                                   _%$%target4221942388%_
                                                   '()))
                                                (_%$%g4216242233%_
                                                 _%$%g4216342237%_)))))
                                      (_%$%g4216242233%_
                                       _%$%g4216342237%_)))))))
                  (_%$%loop4221342366%_ _%$%target4221042360%_ '()))
                (_%$%g4216242233%_ _%$%g4216342237%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4216242233%_
                                               _%$%g4216342237%_))))
                                      (_%$%g4216242233%_ _%$%g4216342237%_))))
                              (_%$%g4216242233%_ _%$%g4216342237%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4217942266%_
                                                   _%$%target4217642260%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4216242233%_
                                                 _%$%g4216342237%_)))))
                                      (_%$%g4216242233%_ _%$%g4216342237%_))))
                              (_%$%g4216242233%_ _%$%g4216342237%_))))
                      (_%$%g4216242233%_ _%$%g4216342237%_)))))
          (_%$%g4216142510%_ _%$stx42158%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42518%_)
        (let* ((_%$%g4252242546%_
                (lambda (_%$%g4252342542%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4252342542%_)))
               (_%$%g4252142629%_
                (lambda (_%$%g4252342550%_)
                  (if (gx#stx-pair? _%$%g4252342550%_)
                      (let ((_%$%e4252642553%_
                             (gx#syntax-e _%$%g4252342550%_)))
                        (let ((_%$%hd4252742557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4252642553%_)))
                              (_%$%tl4252842560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4252642553%_))))
                          (if (gx#stx-pair? _%$%tl4252842560%_)
                              (let ((_%$%e4252942563%_
                                     (gx#syntax-e _%$%tl4252842560%_)))
                                (let ((_%$%hd4253042567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4252942563%_)))
                                      (_%$%tl4253142570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4252942563%_))))
                                  (if (gx#stx-pair/null? _%$%tl4253142570%_)
                                      (let ((_g45616_
                                             (gx#syntax-split-splice
                                              _%$%tl4253142570%_
                                              '0)))
                                        (begin
                                          (let ((_g45617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45616_)
                                                       (##values-length
                                                        _g45616_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45617_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45617_)))
                                          (let ((_%$%target4253242573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45616_ 0)))
                                                (_%$%tl4253442576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45616_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4253442576%_)
                                                (letrec ((_%$%loop4253542579%_
                                                          (lambda (_%$%hd4253342583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4253942586%_)
                    (if (gx#stx-pair? _%$%hd4253342583%_)
                        (let ((_%$%e4253642588%_
                               (gx#syntax-e _%$%hd4253342583%_)))
                          (let ((_%$%lp-hd4253742592%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4253642588%_)))
                                (_%$%lp-tl4253842595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4253642588%_))))
                            (_%$%loop4253542579%_
                             _%$%lp-tl4253842595%_
                             (cons _%$%lp-hd4253742592%_
                                   _%$%body4253942586%_))))
                        (let ((_%$%body4254042598%_
                               (reverse _%$%body4253942586%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'when)
                                                        (cons _%$%hd4253042567%_
                                                              (foldr (lambda (_%$%g4262042623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4262142626%_)
                               (cons _%$%g4262042623%_ _%$%g4262142626%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4254042598%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4253542579%_
                                                   _%$%target4253242573%_
                                                   '()))
                                                (_%$%g4252242546%_
                                                 _%$%g4252342550%_)))))
                                      (_%$%g4252242546%_ _%$%g4252342550%_))))
                              (_%$%g4252242546%_ _%$%g4252342550%_))))
                      (_%$%g4252242546%_ _%$%g4252342550%_)))))
          (_%$%g4252142629%_ _%$stx42518%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42634%_)
        (let* ((_%$%g4263842662%_
                (lambda (_%$%g4263942658%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4263942658%_)))
               (_%$%g4263742745%_
                (lambda (_%$%g4263942666%_)
                  (if (gx#stx-pair? _%$%g4263942666%_)
                      (let ((_%$%e4264242669%_
                             (gx#syntax-e _%$%g4263942666%_)))
                        (let ((_%$%hd4264342673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4264242669%_)))
                              (_%$%tl4264442676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4264242669%_))))
                          (if (gx#stx-pair? _%$%tl4264442676%_)
                              (let ((_%$%e4264542679%_
                                     (gx#syntax-e _%$%tl4264442676%_)))
                                (let ((_%$%hd4264642683%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4264542679%_)))
                                      (_%$%tl4264742686%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4264542679%_))))
                                  (if (gx#stx-pair/null? _%$%tl4264742686%_)
                                      (let ((_g45618_
                                             (gx#syntax-split-splice
                                              _%$%tl4264742686%_
                                              '0)))
                                        (begin
                                          (let ((_g45619_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45618_)
                                                       (##values-length
                                                        _g45618_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45619_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45619_)))
                                          (let ((_%$%target4264842689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45618_ 0)))
                                                (_%$%tl4265042692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45618_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4265042692%_)
                                                (letrec ((_%$%loop4265142695%_
                                                          (lambda (_%$%hd4264942699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4265542702%_)
                    (if (gx#stx-pair? _%$%hd4264942699%_)
                        (let ((_%$%e4265242704%_
                               (gx#syntax-e _%$%hd4264942699%_)))
                          (let ((_%$%lp-hd4265342708%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4265242704%_)))
                                (_%$%lp-tl4265442711%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4265242704%_))))
                            (_%$%loop4265142695%_
                             _%$%lp-tl4265442711%_
                             (cons _%$%lp-hd4265342708%_
                                   _%$%body4265542702%_))))
                        (let ((_%$%body4265642714%_
                               (reverse _%$%body4265542702%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'unless)
                                                        (cons _%$%hd4264642683%_
                                                              (foldr (lambda (_%$%g4273642739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4273742742%_)
                               (cons _%$%g4273642739%_ _%$%g4273742742%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4265642714%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4265142695%_
                                                   _%$%target4264842689%_
                                                   '()))
                                                (_%$%g4263842662%_
                                                 _%$%g4263942666%_)))))
                                      (_%$%g4263842662%_ _%$%g4263942666%_))))
                              (_%$%g4263842662%_ _%$%g4263942666%_))))
                      (_%$%g4263842662%_ _%$%g4263942666%_)))))
          (_%$%g4263742745%_ _%$stx42634%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42750%_)
        (let ((_%$%g4275342760%_
               (lambda (_%$%g4275442756%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4275442756%_))))
          (_%$%g4275342760%_ _%$stx42750%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42764%_)
        (let ((_%$%g4276742774%_
               (lambda (_%$%g4276842770%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4276842770%_))))
          (_%$%g4276742774%_ _%$stx42764%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42778%_)
        (letrec ((_%generate-thunk42781%_
                  (lambda (_%body44100%_)
                    (if (null? _%body44100%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42778%_)
                        (let* ((_%$%g4410344120%_
                                (lambda (_%$%g4410444116%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4410444116%_)))
                               (_%$%g4410244179%_
                                (lambda (_%$%g4410444124%_)
                                  (if (gx#stx-pair/null? _%$%g4410444124%_)
                                      (let ((_g45620_
                                             (gx#syntax-split-splice
                                              _%$%g4410444124%_
                                              '0)))
                                        (begin
                                          (let ((_g45621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45620_)
                                                       (##values-length
                                                        _g45620_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45621_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45621_)))
                                          (let ((_%$%target4410644127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45620_ 0)))
                                                (_%$%tl4410844130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45620_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4410844130%_)
                                                (letrec ((_%$%loop4410944133%_
                                                          (lambda (_%$%hd4410744137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%e4411344140%_)
                    (if (gx#stx-pair? _%$%hd4410744137%_)
                        (let ((_%$%e4411044142%_
                               (gx#syntax-e _%$%hd4410744137%_)))
                          (let ((_%$%lp-hd4411144146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4411044142%_)))
                                (_%$%lp-tl4411244149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4411044142%_))))
                            (_%$%loop4410944133%_
                             _%$%lp-tl4411244149%_
                             (cons _%$%lp-hd4411144146%_ _%$%e4411344140%_))))
                        (let ((_%$%e4411444152%_ (reverse _%$%e4411344140%_)))
                          (cons (gx#datum->syntax '#f 'lambda)
                                (cons '()
                                      (foldr (lambda (_%$%g4417044173%_
                                                      _%$%g4417144176%_)
                                               (cons _%$%g4417044173%_
                                                     _%$%g4417144176%_))
                                             '()
                                             _%$%e4411444152%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4410944133%_
                                                   _%$%target4410644127%_
                                                   '()))
                                                (_%$%g4410344120%_
                                                 _%$%g4410444124%_)))))
                                      (_%$%g4410344120%_ _%$%g4410444124%_)))))
                          (_%$%g4410244179%_ (reverse _%body44100%_))))))
                 (_%generate-fini42783%_
                  (lambda (_%thunk43983%_ _%fini43985%_)
                    (let* ((_%$%g4398744011%_
                            (lambda (_%$%g4398844007%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4398844007%_)))
                           (_%$%g4398644096%_
                            (lambda (_%$%g4398844015%_)
                              (if (gx#stx-pair? _%$%g4398844015%_)
                                  (let ((_%$%e4399144018%_
                                         (gx#syntax-e _%$%g4398844015%_)))
                                    (let ((_%$%hd4399244022%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4399144018%_)))
                                          (_%$%tl4399344025%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4399144018%_))))
                                      (if (gx#stx-pair? _%$%tl4399344025%_)
                                          (let ((_%$%e4399444028%_
                                                 (gx#syntax-e
                                                  _%$%tl4399344025%_)))
                                            (let ((_%$%hd4399544032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4399444028%_)))
                                                  (_%$%tl4399644035%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4399444028%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd4399544032%_)
                                                  (let ((_g45622_
                                                         (gx#syntax-split-splice
                                                          _%$%hd4399544032%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45622_)
                           (##values-length _g45622_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45623_ 2)))
                    (error "Context expects 2 values" _g45623_)))
              (let ((_%$%target4399744038%_
                     (let () (declare (not safe)) (##values-ref _g45622_ 0)))
                    (_%$%tl4399944041%_
                     (let () (declare (not safe)) (##values-ref _g45622_ 1))))
                (if (gx#stx-null? _%$%tl4399944041%_)
                    (letrec ((_%$%loop4400044044%_
                              (lambda (_%$%hd4399844048%_ _%$%e4400444051%_)
                                (if (gx#stx-pair? _%$%hd4399844048%_)
                                    (let ((_%$%e4400144053%_
                                           (gx#syntax-e _%$%hd4399844048%_)))
                                      (let ((_%$%lp-hd4400244057%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4400144053%_)))
                                            (_%$%lp-tl4400344060%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4400144053%_))))
                                        (_%$%loop4400044044%_
                                         _%$%lp-tl4400344060%_
                                         (cons _%$%lp-hd4400244057%_
                                               _%$%e4400444051%_))))
                                    (let ((_%$%e4400544063%_
                                           (reverse _%$%e4400444051%_)))
                                      (if (gx#stx-null? _%$%tl4399644035%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-unwind-protect)
                                                (cons _%$%hd4399244022%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (foldr (lambda (_%$%g4408744090%_
                                                _%$%g4408844093%_)
                                         (cons _%$%g4408744090%_
                                               _%$%g4408844093%_))
                                       '()
                                       _%$%e4400544063%_)))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g4398744011%_
                                           _%$%g4398844015%_)))))))
                      (_%$%loop4400044044%_ _%$%target4399744038%_ '()))
                    (_%$%g4398744011%_ _%$%g4398844015%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4398744011%_
                                                   _%$%g4398844015%_))))
                                          (_%$%g4398744011%_
                                           _%$%g4398844015%_))))
                                  (_%$%g4398744011%_ _%$%g4398844015%_)))))
                      (_%$%g4398644096%_
                       (list _%thunk43983%_ _%fini43985%_)))))
                 (_%generate-catch42784%_
                  (lambda (_%handlers43398%_ _%thunk43400%_)
                    (let* ((_%$%g4340243410%_
                            (lambda (_%$%g4340343406%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4340343406%_)))
                           (_%$%g4340143979%_
                            (lambda (_%$%g4340343414%_)
                              (let _%lp43429%_ ((_%rest43432%_
                                                 _%handlers43398%_)
                                                (_%clauses43434%_ '()))
                                (let* ((_%$%rest4343543443%_ _%rest43432%_)
                                       (_%$%else4343743574%_
                                        (lambda ()
                                          (let* ((_%$%g4345543479%_
                                                  (lambda (_%$%g4345643475%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4345643475%_)))
                                                 (_%$%g4345443570%_
                                                  (lambda (_%$%g4345643483%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g4345643483%_)
                                                        (let ((_%$%e4345943486%_
                                                               (gx#syntax-e
                                                                _%$%g4345643483%_)))
                                                          (let ((_%$%hd4346043490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4345943486%_)))
                        (_%$%tl4346143493%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4345943486%_))))
                    (if (gx#stx-pair/null? _%$%hd4346043490%_)
                        (let ((_g45624_
                               (gx#syntax-split-splice _%$%hd4346043490%_ '0)))
                          (begin
                            (let ((_g45625_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g45624_)
                                         (##values-length _g45624_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g45625_ 2)))
                                  (error "Context expects 2 values" _g45625_)))
                            (let ((_%$%target4346243496%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g45624_ 0)))
                                  (_%$%tl4346443499%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g45624_ 1))))
                              (if (gx#stx-null? _%$%tl4346443499%_)
                                  (letrec ((_%$%loop4346543502%_
                                            (lambda (_%$%hd4346343506%_
                                                     _%$%clause4346943509%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd4346343506%_)
                                                  (let ((_%$%e4346643511%_
                                                         (gx#syntax-e
                                                          _%$%hd4346343506%_)))
                                                    (let ((_%$%lp-hd4346743515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4346643511%_)))
                                                          (_%$%lp-tl4346843518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4346643511%_))))
                                                      (_%$%loop4346543502%_
                                                       _%$%lp-tl4346843518%_
                                                       (cons _%$%lp-hd4346743515%_
                                                             _%$%clause4346943509%_))))
                                                  (let ((_%$%clause4347043521%_
                                                         (reverse _%$%clause4346943509%_)))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4346143493%_)
                                                        (let ((_%$%e4347143524%_
                                                               (gx#syntax-e
                                                                _%$%tl4346143493%_)))
                                                          (let ((_%$%hd4347243528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4347143524%_)))
                        (_%$%tl4347343531%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4347143524%_))))
                    (if (gx#stx-null? _%$%tl4347343531%_)
                        (cons (gx#datum->syntax '#f 'with-catch)
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _%$%g4340343414%_ '())
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'cond)
                                                            (foldr (lambda (_%$%g4356143564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g4356243567%_)
                             (cons _%$%g4356143564%_ _%$%g4356243567%_))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'raise)
                                                   (cons _%$%g4340343414%_
                                                         '()))
                                             '()))
                                 '())
                           _%$%clause4347043521%_))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _%$%hd4347243528%_ '())))
                        (_%$%g4345543479%_ _%$%g4345643483%_))))
                (_%$%g4345543479%_ _%$%g4345643483%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop4346543502%_
                                     _%$%target4346243496%_
                                     '()))
                                  (_%$%g4345543479%_ _%$%g4345643483%_)))))
                        (_%$%g4345543479%_ _%$%g4345643483%_))))
                (_%$%g4345543479%_ _%$%g4345643483%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4345443570%_
                                             (list _%clauses43434%_
                                                   _%thunk43400%_)))))
                                       (_%$%K4343943963%_
                                        (lambda (_%rest43578%_ _%hd43580%_)
                                          (let* ((_%__stx4534445345%_
                                                  _%hd43580%_)
                                                 (_%$%g4358543655%_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx4534445345%_))))
                                            (let ((_%__kont4534745348%_
                                                   (lambda (_%$%g4358743942%_
                                                            _%$%g4358843944%_)
                                                     (_%lp43429%_
                                                      _%rest43578%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4358843944%_ '()))
                                (cons _%$%g4340343414%_ '()))
                          (cons (gx#datum->syntax '#f '=>)
                                (cons _%$%g4358743942%_ '())))
                    _%clauses43434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4534945350%_
                                                   (lambda (_%$%g4359843874%_
                                                            _%$%g4359943876%_
                                                            _%$%g4360043877%_)
                                                     (_%lp43429%_
                                                      _%rest43578%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4360043877%_ '()))
                                (cons _%$%g4340343414%_ '()))
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4359943876%_
                                                        (cons _%$%g4340343414%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4389643899%_
                                                            _%$%g4389743902%_)
                                                     (cons _%$%g4389643899%_
                                                           _%$%g4389743902%_))
                                                   '()
                                                   _%$%g4359843874%_)))
                                '()))
                    _%clauses43434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4535345354%_
                                                   (lambda (_%$%g4361943782%_
                                                            _%$%g4362043784%_)
                                                     (_%lp43429%_
                                                      _%rest43578%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4362043784%_
                                                        (cons _%$%g4340343414%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4380043803%_
                                                            _%$%g4380143806%_)
                                                     (cons _%$%g4380043803%_
                                                           _%$%g4380143806%_))
                                                   '()
                                                   _%$%g4361943782%_)))
                                '()))
                    _%clauses43434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4535745358%_
                                                   (lambda (_%$%g4363643700%_
                                                            _%$%g4363743702%_)
                                                     (_%lp43429%_
                                                      _%rest43578%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (foldr (lambda (_%$%g4371843721%_
                                                      _%$%g4371943724%_)
                                               (cons _%$%g4371843721%_
                                                     _%$%g4371943724%_))
                                             '()
                                             _%$%g4363643700%_))
                                '()))
                    _%clauses43434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__match4544945450%_
                                                      (lambda (_%$%e4363843662%_
                                                               _%$%hd4363943666%_
                                                               _%$%tl4364043669%_
                                                               _%__splice4535945360%_
                                                               _%$%target4364143672%_
                                                               _%$%tl4364343675%_)
                                                        (letrec ((_%$%loop4364443678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4364243682%_ _%$%body4364843685%_)
                            (if (gx#stx-pair? _%$%hd4364243682%_)
                                (let ((_%$%e4364543687%_
                                       (gx#syntax-e _%$%hd4364243682%_)))
                                  (let ((_%$%lp-tl4364743694%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4364543687%_)))
                                        (_%$%lp-hd4364643691%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4364543687%_))))
                                    (_%$%loop4364443678%_
                                     _%$%lp-tl4364743694%_
                                     (cons _%$%lp-hd4364643691%_
                                           _%$%body4364843685%_))))
                                (let ((_%$%body4364943697%_
                                       (reverse _%$%body4364843685%_)))
                                  (let ((_%$%g4363643700%_
                                         _%$%body4364943697%_)
                                        (_%$%g4363743702%_ _%$%hd4363943666%_))
                                    (if (gx#underscore? _%$%g4363743702%_)
                                        (_%__kont4535745358%_
                                         _%$%g4363643700%_
                                         _%$%g4363743702%_)
                                        (_%$%g4358543655%_))))))))
                  (_%$%loop4364443678%_ _%$%target4364143672%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4543545436%_
                                                      (lambda (_%$%e4362143734%_
                                                               _%$%hd4362243738%_
                                                               _%$%tl4362343741%_
                                                               _%$%e4362443744%_
                                                               _%$%hd4362543748%_
                                                               _%$%tl4362643751%_
                                                               _%__splice4535545356%_
                                                               _%$%target4362743754%_
                                                               _%$%tl4362943757%_)
                                                        (letrec ((_%$%loop4363043760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4362843764%_ _%$%body4363443767%_)
                            (if (gx#stx-pair? _%$%hd4362843764%_)
                                (let ((_%$%e4363143769%_
                                       (gx#syntax-e _%$%hd4362843764%_)))
                                  (let ((_%$%lp-tl4363343776%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4363143769%_)))
                                        (_%$%lp-hd4363243773%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4363143769%_))))
                                    (_%$%loop4363043760%_
                                     _%$%lp-tl4363343776%_
                                     (cons _%$%lp-hd4363243773%_
                                           _%$%body4363443767%_))))
                                (let ((_%$%body4363543779%_
                                       (reverse _%$%body4363443767%_)))
                                  (let ((_%$%g4361943782%_
                                         _%$%body4363543779%_)
                                        (_%$%g4362043784%_ _%$%hd4362543748%_))
                                    (if (gx#identifier? _%$%g4362043784%_)
                                        (_%__kont4535345354%_
                                         _%$%g4361943782%_
                                         _%$%g4362043784%_)
                                        (_%__match4544945450%_
                                         _%$%e4362143734%_
                                         _%$%hd4362243738%_
                                         _%$%tl4362343741%_
                                         _%__splice4535545356%_
                                         _%$%target4362743754%_
                                         _%$%tl4362943757%_))))))))
                  (_%$%loop4363043760%_ _%$%target4362743754%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4541345414%_
                                                      (lambda (_%$%e4360143816%_
                                                               _%$%hd4360243820%_
                                                               _%$%tl4360343823%_
                                                               _%$%e4360443826%_
                                                               _%$%hd4360543830%_
                                                               _%$%tl4360643833%_
                                                               _%$%e4360743836%_
                                                               _%$%hd4360843840%_
                                                               _%$%tl4360943843%_
                                                               _%__splice4535145352%_
                                                               _%$%target4361043846%_
                                                               _%$%tl4361243849%_)
                                                        (letrec ((_%$%loop4361343852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4361143856%_ _%$%body4361743859%_)
                            (if (gx#stx-pair? _%$%hd4361143856%_)
                                (let ((_%$%e4361443861%_
                                       (gx#syntax-e _%$%hd4361143856%_)))
                                  (let ((_%$%lp-tl4361643868%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4361443861%_)))
                                        (_%$%lp-hd4361543865%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4361443861%_))))
                                    (_%$%loop4361343852%_
                                     _%$%lp-tl4361643868%_
                                     (cons _%$%lp-hd4361543865%_
                                           _%$%body4361743859%_))))
                                (let ((_%$%body4361843871%_
                                       (reverse _%$%body4361743859%_)))
                                  (let ((_%$%g4359843874%_
                                         _%$%body4361843871%_)
                                        (_%$%g4359943876%_ _%$%hd4360843840%_)
                                        (_%$%g4360043877%_ _%$%hd4360543830%_))
                                    (if (gx#identifier? _%$%g4359943876%_)
                                        (_%__kont4534945350%_
                                         _%$%g4359843874%_
                                         _%$%g4359943876%_
                                         _%$%g4360043877%_)
                                        (_%__match4544945450%_
                                         _%$%e4360143816%_
                                         _%$%hd4360243820%_
                                         _%$%tl4360343823%_
                                         _%__splice4535145352%_
                                         _%$%target4361043846%_
                                         _%$%tl4361243849%_))))))))
                  (_%$%loop4361343852%_ _%$%target4361043846%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx4534445345%_)
                                                    (let ((_%$%e4358943912%_
                                                           (gx#syntax-e
                                                            _%__stx4534445345%_)))
                                                      (let ((_%$%tl4359143919%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4358943912%_)))
                    (_%$%hd4359043916%_
                     (let () (declare (not safe)) (##car _%$%e4358943912%_))))
                (if (gx#stx-pair? _%$%tl4359143919%_)
                    (let ((_%$%e4359243922%_ (gx#syntax-e _%$%tl4359143919%_)))
                      (let ((_%$%tl4359443929%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4359243922%_)))
                            (_%$%hd4359343926%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4359243922%_))))
                        (if (gx#identifier? _%$%hd4359343926%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-sugar[1]#_g45626_|
                                 _%$%hd4359343926%_)
                                (if (gx#stx-pair? _%$%tl4359443929%_)
                                    (let ((_%$%e4359543932%_
                                           (gx#syntax-e _%$%tl4359443929%_)))
                                      (let ((_%$%tl4359743939%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4359543932%_)))
                                            (_%$%hd4359643936%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4359543932%_))))
                                        (if (gx#stx-null? _%$%tl4359743939%_)
                                            (_%__kont4534745348%_
                                             _%$%hd4359643936%_
                                             _%$%hd4359043916%_)
                                            (if (gx#stx-pair?
                                                 _%$%hd4359043916%_)
                                                (let ((_%$%e4360443826%_
                                                       (gx#syntax-e
                                                        _%$%hd4359043916%_)))
                                                  (let ((_%$%tl4360643833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4360443826%_)))
                                                        (_%$%hd4360543830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4360443826%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4360643833%_)
                                                        (let ((_%$%e4360743836%_
                                                               (gx#syntax-e
                                                                _%$%tl4360643833%_)))
                                                          (let ((_%$%tl4360943843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4360743836%_)))
                        (_%$%hd4360843840%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4360743836%_))))
                    (if (gx#stx-null? _%$%tl4360943843%_)
                        (if (gx#stx-pair/null? _%$%tl4359143919%_)
                            (let ((_%__splice4535145352%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4359143919%_
                                    '0)))
                              (let ((_%$%tl4361243849%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4535145352%_
                                        '1)))
                                    (_%$%target4361043846%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4535145352%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4361243849%_)
                                    (_%__match4541345414%_
                                     _%$%e4358943912%_
                                     _%$%hd4359043916%_
                                     _%$%tl4359143919%_
                                     _%$%e4360443826%_
                                     _%$%hd4360543830%_
                                     _%$%tl4360643833%_
                                     _%$%e4360743836%_
                                     _%$%hd4360843840%_
                                     _%$%tl4360943843%_
                                     _%__splice4535145352%_
                                     _%$%target4361043846%_
                                     _%$%tl4361243849%_)
                                    (_%$%g4358543655%_))))
                            (_%$%g4358543655%_))
                        (if (gx#stx-pair/null? _%$%tl4359143919%_)
                            (let ((_%__splice4535945360%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4359143919%_
                                    '0)))
                              (let ((_%$%tl4364343675%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4535945360%_
                                        '1)))
                                    (_%$%target4364143672%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4535945360%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4364343675%_)
                                    (_%__match4544945450%_
                                     _%$%e4358943912%_
                                     _%$%hd4359043916%_
                                     _%$%tl4359143919%_
                                     _%__splice4535945360%_
                                     _%$%target4364143672%_
                                     _%$%tl4364343675%_)
                                    (_%$%g4358543655%_))))
                            (_%$%g4358543655%_)))))
                (if (gx#stx-null? _%$%tl4360643833%_)
                    (if (gx#stx-pair/null? _%$%tl4359143919%_)
                        (let ((_%__splice4535545356%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4359143919%_
                                '0)))
                          (let ((_%$%tl4362943757%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4535545356%_ '1)))
                                (_%$%target4362743754%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4535545356%_ '0))))
                            (if (gx#stx-null? _%$%tl4362943757%_)
                                (_%__match4543545436%_
                                 _%$%e4358943912%_
                                 _%$%hd4359043916%_
                                 _%$%tl4359143919%_
                                 _%$%e4360443826%_
                                 _%$%hd4360543830%_
                                 _%$%tl4360643833%_
                                 _%__splice4535545356%_
                                 _%$%target4362743754%_
                                 _%$%tl4362943757%_)
                                (_%$%g4358543655%_))))
                        (_%$%g4358543655%_))
                    (if (gx#stx-pair/null? _%$%tl4359143919%_)
                        (let ((_%__splice4535945360%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4359143919%_
                                '0)))
                          (let ((_%$%tl4364343675%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4535945360%_ '1)))
                                (_%$%target4364143672%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4535945360%_ '0))))
                            (if (gx#stx-null? _%$%tl4364343675%_)
                                (_%__match4544945450%_
                                 _%$%e4358943912%_
                                 _%$%hd4359043916%_
                                 _%$%tl4359143919%_
                                 _%__splice4535945360%_
                                 _%$%target4364143672%_
                                 _%$%tl4364343675%_)
                                (_%$%g4358543655%_))))
                        (_%$%g4358543655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4359143919%_)
                                                    (let ((_%__splice4535945360%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4359143919%_
                                                            '0)))
                                                      (let ((_%$%tl4364343675%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4535945360%_ '1)))
                    (_%$%target4364143672%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4535945360%_ '0))))
                (if (gx#stx-null? _%$%tl4364343675%_)
                    (_%__match4544945450%_
                     _%$%e4358943912%_
                     _%$%hd4359043916%_
                     _%$%tl4359143919%_
                     _%__splice4535945360%_
                     _%$%target4364143672%_
                     _%$%tl4364343675%_)
                    (_%$%g4358543655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4358543655%_))))))
                                    (if (gx#stx-pair? _%$%hd4359043916%_)
                                        (let ((_%$%e4360443826%_
                                               (gx#syntax-e
                                                _%$%hd4359043916%_)))
                                          (let ((_%$%tl4360643833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4360443826%_)))
                                                (_%$%hd4360543830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4360443826%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4360643833%_)
                                                (let ((_%$%e4360743836%_
                                                       (gx#syntax-e
                                                        _%$%tl4360643833%_)))
                                                  (let ((_%$%tl4360943843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4360743836%_)))
                                                        (_%$%hd4360843840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4360743836%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4360943843%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl4359143919%_)
                                                            (let ((_%__splice4535145352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl4359143919%_
                            '0)))
                      (let ((_%$%tl4361243849%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4535145352%_ '1)))
                            (_%$%target4361043846%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4535145352%_ '0))))
                        (if (gx#stx-null? _%$%tl4361243849%_)
                            (_%__match4541345414%_
                             _%$%e4358943912%_
                             _%$%hd4359043916%_
                             _%$%tl4359143919%_
                             _%$%e4360443826%_
                             _%$%hd4360543830%_
                             _%$%tl4360643833%_
                             _%$%e4360743836%_
                             _%$%hd4360843840%_
                             _%$%tl4360943843%_
                             _%__splice4535145352%_
                             _%$%target4361043846%_
                             _%$%tl4361243849%_)
                            (_%$%g4358543655%_))))
                    (_%$%g4358543655%_))
                (if (gx#stx-pair/null? _%$%tl4359143919%_)
                    (let ((_%__splice4535945360%_
                           (gx#syntax-split-splice->vector
                            _%$%tl4359143919%_
                            '0)))
                      (let ((_%$%tl4364343675%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4535945360%_ '1)))
                            (_%$%target4364143672%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4535945360%_ '0))))
                        (if (gx#stx-null? _%$%tl4364343675%_)
                            (_%__match4544945450%_
                             _%$%e4358943912%_
                             _%$%hd4359043916%_
                             _%$%tl4359143919%_
                             _%__splice4535945360%_
                             _%$%target4364143672%_
                             _%$%tl4364343675%_)
                            (_%$%g4358543655%_))))
                    (_%$%g4358543655%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%$%tl4360643833%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4359143919%_)
                                                        (let ((_%__splice4535545356%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4359143919%_
                                                                '0)))
                                                          (let ((_%$%tl4362943757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4535545356%_ '1)))
                        (_%$%target4362743754%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4535545356%_ '0))))
                    (if (gx#stx-null? _%$%tl4362943757%_)
                        (_%__match4543545436%_
                         _%$%e4358943912%_
                         _%$%hd4359043916%_
                         _%$%tl4359143919%_
                         _%$%e4360443826%_
                         _%$%hd4360543830%_
                         _%$%tl4360643833%_
                         _%__splice4535545356%_
                         _%$%target4362743754%_
                         _%$%tl4362943757%_)
                        (_%$%g4358543655%_))))
                (_%$%g4358543655%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4359143919%_)
                                                        (let ((_%__splice4535945360%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4359143919%_
                                                                '0)))
                                                          (let ((_%$%tl4364343675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4535945360%_ '1)))
                        (_%$%target4364143672%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4535945360%_ '0))))
                    (if (gx#stx-null? _%$%tl4364343675%_)
                        (_%__match4544945450%_
                         _%$%e4358943912%_
                         _%$%hd4359043916%_
                         _%$%tl4359143919%_
                         _%__splice4535945360%_
                         _%$%target4364143672%_
                         _%$%tl4364343675%_)
                        (_%$%g4358543655%_))))
                (_%$%g4358543655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair/null?
                                             _%$%tl4359143919%_)
                                            (let ((_%__splice4535945360%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4359143919%_
                                                    '0)))
                                              (let ((_%$%tl4364343675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4535945360%_
                                                        '1)))
                                                    (_%$%target4364143672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4535945360%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4364343675%_)
                                                    (_%__match4544945450%_
                                                     _%$%e4358943912%_
                                                     _%$%hd4359043916%_
                                                     _%$%tl4359143919%_
                                                     _%__splice4535945360%_
                                                     _%$%target4364143672%_
                                                     _%$%tl4364343675%_)
                                                    (_%$%g4358543655%_))))
                                            (_%$%g4358543655%_))))
                                (if (gx#stx-pair? _%$%hd4359043916%_)
                                    (let ((_%$%e4360443826%_
                                           (gx#syntax-e _%$%hd4359043916%_)))
                                      (let ((_%$%tl4360643833%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4360443826%_)))
                                            (_%$%hd4360543830%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4360443826%_))))
                                        (if (gx#stx-pair? _%$%tl4360643833%_)
                                            (let ((_%$%e4360743836%_
                                                   (gx#syntax-e
                                                    _%$%tl4360643833%_)))
                                              (let ((_%$%tl4360943843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4360743836%_)))
                                                    (_%$%hd4360843840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4360743836%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4360943843%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4359143919%_)
                                                        (let ((_%__splice4535145352%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4359143919%_
                                                                '0)))
                                                          (let ((_%$%tl4361243849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4535145352%_ '1)))
                        (_%$%target4361043846%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4535145352%_ '0))))
                    (if (gx#stx-null? _%$%tl4361243849%_)
                        (_%__match4541345414%_
                         _%$%e4358943912%_
                         _%$%hd4359043916%_
                         _%$%tl4359143919%_
                         _%$%e4360443826%_
                         _%$%hd4360543830%_
                         _%$%tl4360643833%_
                         _%$%e4360743836%_
                         _%$%hd4360843840%_
                         _%$%tl4360943843%_
                         _%__splice4535145352%_
                         _%$%target4361043846%_
                         _%$%tl4361243849%_)
                        (_%$%g4358543655%_))))
                (_%$%g4358543655%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4359143919%_)
                                                        (let ((_%__splice4535945360%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4359143919%_
                                                                '0)))
                                                          (let ((_%$%tl4364343675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4535945360%_ '1)))
                        (_%$%target4364143672%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4535945360%_ '0))))
                    (if (gx#stx-null? _%$%tl4364343675%_)
                        (_%__match4544945450%_
                         _%$%e4358943912%_
                         _%$%hd4359043916%_
                         _%$%tl4359143919%_
                         _%__splice4535945360%_
                         _%$%target4364143672%_
                         _%$%tl4364343675%_)
                        (_%$%g4358543655%_))))
                (_%$%g4358543655%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-null?
                                                 _%$%tl4360643833%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4359143919%_)
                                                    (let ((_%__splice4535545356%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4359143919%_
                                                            '0)))
                                                      (let ((_%$%tl4362943757%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4535545356%_ '1)))
                    (_%$%target4362743754%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4535545356%_ '0))))
                (if (gx#stx-null? _%$%tl4362943757%_)
                    (_%__match4543545436%_
                     _%$%e4358943912%_
                     _%$%hd4359043916%_
                     _%$%tl4359143919%_
                     _%$%e4360443826%_
                     _%$%hd4360543830%_
                     _%$%tl4360643833%_
                     _%__splice4535545356%_
                     _%$%target4362743754%_
                     _%$%tl4362943757%_)
                    (_%$%g4358543655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4358543655%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4359143919%_)
                                                    (let ((_%__splice4535945360%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4359143919%_
                                                            '0)))
                                                      (let ((_%$%tl4364343675%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4535945360%_ '1)))
                    (_%$%target4364143672%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4535945360%_ '0))))
                (if (gx#stx-null? _%$%tl4364343675%_)
                    (_%__match4544945450%_
                     _%$%e4358943912%_
                     _%$%hd4359043916%_
                     _%$%tl4359143919%_
                     _%__splice4535945360%_
                     _%$%target4364143672%_
                     _%$%tl4364343675%_)
                    (_%$%g4358543655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4358543655%_))))))
                                    (if (gx#stx-pair/null? _%$%tl4359143919%_)
                                        (let ((_%__splice4535945360%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4359143919%_
                                                '0)))
                                          (let ((_%$%tl4364343675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4535945360%_
                                                    '1)))
                                                (_%$%target4364143672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4535945360%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4364343675%_)
                                                (_%__match4544945450%_
                                                 _%$%e4358943912%_
                                                 _%$%hd4359043916%_
                                                 _%$%tl4359143919%_
                                                 _%__splice4535945360%_
                                                 _%$%target4364143672%_
                                                 _%$%tl4364343675%_)
                                                (_%$%g4358543655%_))))
                                        (_%$%g4358543655%_))))
                            (if (gx#stx-pair? _%$%hd4359043916%_)
                                (let ((_%$%e4360443826%_
                                       (gx#syntax-e _%$%hd4359043916%_)))
                                  (let ((_%$%tl4360643833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4360443826%_)))
                                        (_%$%hd4360543830%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4360443826%_))))
                                    (if (gx#stx-pair? _%$%tl4360643833%_)
                                        (let ((_%$%e4360743836%_
                                               (gx#syntax-e
                                                _%$%tl4360643833%_)))
                                          (let ((_%$%tl4360943843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4360743836%_)))
                                                (_%$%hd4360843840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4360743836%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl4360943843%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4359143919%_)
                                                    (let ((_%__splice4535145352%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4359143919%_
                                                            '0)))
                                                      (let ((_%$%tl4361243849%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4535145352%_ '1)))
                    (_%$%target4361043846%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4535145352%_ '0))))
                (if (gx#stx-null? _%$%tl4361243849%_)
                    (_%__match4541345414%_
                     _%$%e4358943912%_
                     _%$%hd4359043916%_
                     _%$%tl4359143919%_
                     _%$%e4360443826%_
                     _%$%hd4360543830%_
                     _%$%tl4360643833%_
                     _%$%e4360743836%_
                     _%$%hd4360843840%_
                     _%$%tl4360943843%_
                     _%__splice4535145352%_
                     _%$%target4361043846%_
                     _%$%tl4361243849%_)
                    (_%$%g4358543655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4358543655%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4359143919%_)
                                                    (let ((_%__splice4535945360%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4359143919%_
                                                            '0)))
                                                      (let ((_%$%tl4364343675%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4535945360%_ '1)))
                    (_%$%target4364143672%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4535945360%_ '0))))
                (if (gx#stx-null? _%$%tl4364343675%_)
                    (_%__match4544945450%_
                     _%$%e4358943912%_
                     _%$%hd4359043916%_
                     _%$%tl4359143919%_
                     _%__splice4535945360%_
                     _%$%target4364143672%_
                     _%$%tl4364343675%_)
                    (_%$%g4358543655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4358543655%_)))))
                                        (if (gx#stx-null? _%$%tl4360643833%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4359143919%_)
                                                (let ((_%__splice4535545356%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4359143919%_
                                                        '0)))
                                                  (let ((_%$%tl4362943757%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4535545356%_
                                                            '1)))
                                                        (_%$%target4362743754%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4535545356%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4362943757%_)
                                                        (_%__match4543545436%_
                                                         _%$%e4358943912%_
                                                         _%$%hd4359043916%_
                                                         _%$%tl4359143919%_
                                                         _%$%e4360443826%_
                                                         _%$%hd4360543830%_
                                                         _%$%tl4360643833%_
                                                         _%__splice4535545356%_
                                                         _%$%target4362743754%_
                                                         _%$%tl4362943757%_)
                                                        (_%$%g4358543655%_))))
                                                (_%$%g4358543655%_))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4359143919%_)
                                                (let ((_%__splice4535945360%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4359143919%_
                                                        '0)))
                                                  (let ((_%$%tl4364343675%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4535945360%_
                                                            '1)))
                                                        (_%$%target4364143672%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4535945360%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4364343675%_)
                                                        (_%__match4544945450%_
                                                         _%$%e4358943912%_
                                                         _%$%hd4359043916%_
                                                         _%$%tl4359143919%_
                                                         _%__splice4535945360%_
                                                         _%$%target4364143672%_
                                                         _%$%tl4364343675%_)
                                                        (_%$%g4358543655%_))))
                                                (_%$%g4358543655%_))))))
                                (if (gx#stx-pair/null? _%$%tl4359143919%_)
                                    (let ((_%__splice4535945360%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4359143919%_
                                            '0)))
                                      (let ((_%$%tl4364343675%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4535945360%_
                                                '1)))
                                            (_%$%target4364143672%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4535945360%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4364343675%_)
                                            (_%__match4544945450%_
                                             _%$%e4358943912%_
                                             _%$%hd4359043916%_
                                             _%$%tl4359143919%_
                                             _%__splice4535945360%_
                                             _%$%target4364143672%_
                                             _%$%tl4364343675%_)
                                            (_%$%g4358543655%_))))
                                    (_%$%g4358543655%_))))))
                    (if (gx#stx-pair? _%$%hd4359043916%_)
                        (let ((_%$%e4360443826%_
                               (gx#syntax-e _%$%hd4359043916%_)))
                          (let ((_%$%tl4360643833%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4360443826%_)))
                                (_%$%hd4360543830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4360443826%_))))
                            (if (gx#stx-pair? _%$%tl4360643833%_)
                                (let ((_%$%e4360743836%_
                                       (gx#syntax-e _%$%tl4360643833%_)))
                                  (let ((_%$%tl4360943843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4360743836%_)))
                                        (_%$%hd4360843840%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4360743836%_))))
                                    (if (gx#stx-null? _%$%tl4360943843%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4359143919%_)
                                            (let ((_%__splice4535145352%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4359143919%_
                                                    '0)))
                                              (let ((_%$%tl4361243849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4535145352%_
                                                        '1)))
                                                    (_%$%target4361043846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4535145352%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4361243849%_)
                                                    (_%__match4541345414%_
                                                     _%$%e4358943912%_
                                                     _%$%hd4359043916%_
                                                     _%$%tl4359143919%_
                                                     _%$%e4360443826%_
                                                     _%$%hd4360543830%_
                                                     _%$%tl4360643833%_
                                                     _%$%e4360743836%_
                                                     _%$%hd4360843840%_
                                                     _%$%tl4360943843%_
                                                     _%__splice4535145352%_
                                                     _%$%target4361043846%_
                                                     _%$%tl4361243849%_)
                                                    (_%$%g4358543655%_))))
                                            (_%$%g4358543655%_))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4359143919%_)
                                            (let ((_%__splice4535945360%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4359143919%_
                                                    '0)))
                                              (let ((_%$%tl4364343675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4535945360%_
                                                        '1)))
                                                    (_%$%target4364143672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4535945360%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4364343675%_)
                                                    (_%__match4544945450%_
                                                     _%$%e4358943912%_
                                                     _%$%hd4359043916%_
                                                     _%$%tl4359143919%_
                                                     _%__splice4535945360%_
                                                     _%$%target4364143672%_
                                                     _%$%tl4364343675%_)
                                                    (_%$%g4358543655%_))))
                                            (_%$%g4358543655%_)))))
                                (if (gx#stx-null? _%$%tl4360643833%_)
                                    (if (gx#stx-pair/null? _%$%tl4359143919%_)
                                        (let ((_%__splice4535545356%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4359143919%_
                                                '0)))
                                          (let ((_%$%tl4362943757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4535545356%_
                                                    '1)))
                                                (_%$%target4362743754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4535545356%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4362943757%_)
                                                (_%__match4543545436%_
                                                 _%$%e4358943912%_
                                                 _%$%hd4359043916%_
                                                 _%$%tl4359143919%_
                                                 _%$%e4360443826%_
                                                 _%$%hd4360543830%_
                                                 _%$%tl4360643833%_
                                                 _%__splice4535545356%_
                                                 _%$%target4362743754%_
                                                 _%$%tl4362943757%_)
                                                (_%$%g4358543655%_))))
                                        (_%$%g4358543655%_))
                                    (if (gx#stx-pair/null? _%$%tl4359143919%_)
                                        (let ((_%__splice4535945360%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4359143919%_
                                                '0)))
                                          (let ((_%$%tl4364343675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4535945360%_
                                                    '1)))
                                                (_%$%target4364143672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4535945360%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4364343675%_)
                                                (_%__match4544945450%_
                                                 _%$%e4358943912%_
                                                 _%$%hd4359043916%_
                                                 _%$%tl4359143919%_
                                                 _%__splice4535945360%_
                                                 _%$%target4364143672%_
                                                 _%$%tl4364343675%_)
                                                (_%$%g4358543655%_))))
                                        (_%$%g4358543655%_))))))
                        (if (gx#stx-pair/null? _%$%tl4359143919%_)
                            (let ((_%__splice4535945360%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4359143919%_
                                    '0)))
                              (let ((_%$%tl4364343675%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4535945360%_
                                        '1)))
                                    (_%$%target4364143672%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4535945360%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4364343675%_)
                                    (_%__match4544945450%_
                                     _%$%e4358943912%_
                                     _%$%hd4359043916%_
                                     _%$%tl4359143919%_
                                     _%__splice4535945360%_
                                     _%$%target4364143672%_
                                     _%$%tl4364343675%_)
                                    (_%$%g4358543655%_))))
                            (_%$%g4358543655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4358543655%_))))))))
                                  (if (pair? _%$%rest4343543443%_)
                                      (let ((_%$%hd4344043967%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest4343543443%_)))
                                            (_%$%tl4344143970%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%rest4343543443%_))))
                                        (let* ((_%hd43973%_ _%$%hd4344043967%_)
                                               (_%rest43976%_
                                                _%$%tl4344143970%_))
                                          (_%$%K4343943963%_
                                           _%rest43976%_
                                           _%hd43973%_)))
                                      (_%$%else4343743574%_)))))))
                      (_%$%g4340143979%_ (gx#genident))))))
          (let* ((_%$%g4278642806%_
                  (lambda (_%$%g4278742802%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g4278742802%_)))
                 (_%$%g4278543394%_
                  (lambda (_%$%g4278742810%_)
                    (if (gx#stx-pair? _%$%g4278742810%_)
                        (let ((_%$%e4278942813%_
                               (gx#syntax-e _%$%g4278742810%_)))
                          (let ((_%$%hd4279042817%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4278942813%_)))
                                (_%$%tl4279142820%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4278942813%_))))
                            (if (gx#stx-pair/null? _%$%tl4279142820%_)
                                (let ((_g45627_
                                       (gx#syntax-split-splice
                                        _%$%tl4279142820%_
                                        '0)))
                                  (begin
                                    (let ((_g45628_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45627_)
                                                 (##values-length _g45627_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45628_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45628_)))
                                    (let ((_%$%target4279242823%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45627_ 0)))
                                          (_%$%tl4279442826%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45627_ 1))))
                                      (if (gx#stx-null? _%$%tl4279442826%_)
                                          (letrec ((_%$%loop4279542829%_
                                                    (lambda (_%$%hd4279342833%_
                                                             _%$%e4279942836%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd4279342833%_)
                                                          (let ((_%$%e4279642838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd4279342833%_)))
                    (let ((_%$%lp-hd4279742842%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4279642838%_)))
                          (_%$%lp-tl4279842845%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4279642838%_))))
                      (_%$%loop4279542829%_
                       _%$%lp-tl4279842845%_
                       (cons _%$%lp-hd4279742842%_ _%$%e4279942836%_))))
                  (let ((_%$%e4280042848%_ (reverse _%$%e4279942836%_)))
                    (let _%lp42868%_ ((_%rest42871%_
                                       (foldr (lambda (_%$%g4338543388%_
                                                       _%$%g4338643391%_)
                                                (cons _%$%g4338543388%_
                                                      _%$%g4338643391%_))
                                              '()
                                              _%$%e4280042848%_))
                                      (_%body42873%_ '()))
                      (let* ((_%__stx4557045571%_ _%rest42871%_)
                             (_%$%g4287642888%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4557045571%_))))
                        (let ((_%__kont4557345574%_
                               (lambda (_%$%g4287842916%_ _%$%g4287942918%_)
                                 (let* ((_%__stx4551845519%_ _%$%g4287942918%_)
                                        (_%$%g4293542968%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx4551845519%_))))
                                   (let ((_%__kont4552145522%_
                                          (lambda (_%$%g4293743355%_)
                                            (if (gx#stx-null?
                                                 _%$%g4287842916%_)
                                                (_%generate-fini42783%_
                                                 (_%generate-thunk42781%_
                                                  _%body42873%_)
                                                 (foldr (lambda (_%$%g4336943372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g4337043375%_)
                  (cons _%$%g4336943372%_ _%$%g4337043375%_))
                '()
                _%$%g4293743355%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced finally clause"
                                                 _%stx42778%_))))
                                         (_%__kont4552545526%_
                                          (lambda (_%$%g4295043024%_)
                                            (let _%lp43041%_ ((_%rest43044%_
                                                               _%$%g4287842916%_)
                                                              (_%handlers43046%_
                                                               (cons (foldr (lambda (_%$%g4330143304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%$%g4330243307%_)
                                      (cons _%$%g4330143304%_
                                            _%$%g4330243307%_))
                                    '()
                                    _%$%g4295043024%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__stx4545245453%_
                                                      _%rest43044%_)
                                                     (_%$%g4305043090%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx4545245453%_))))
                                                (let ((_%__kont4545545456%_
                                                       (lambda (_%$%g4305243271%_
                                                                _%$%g4305343273%_)
                                                         (_%lp43041%_
                                                          _%$%g4305243271%_
                                                          (cons (foldr (lambda (_%$%g4328943292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%$%g4329043295%_)
                                 (cons _%$%g4328943292%_ _%$%g4329043295%_))
                               '()
                               _%$%g4305343273%_)
                        _%handlers43046%_))))
              (_%__kont4545945460%_
               (lambda (_%$%g4306943156%_)
                 (let* ((_%$%g4317743185%_
                         (lambda (_%$%g4317843181%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g4317843181%_)))
                        (_%$%g4317643212%_
                         (lambda (_%$%g4317843189%_)
                           (_%generate-fini42783%_
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons '() (cons _%$%g4317843189%_ '())))
                            (foldr (lambda (_%$%g4320343206%_
                                            _%$%g4320443209%_)
                                     (cons _%$%g4320343206%_
                                           _%$%g4320443209%_))
                                   '()
                                   _%$%g4306943156%_)))))
                   (_%$%g4317643212%_
                    (_%generate-catch42784%_
                     _%handlers43046%_
                     (_%generate-thunk42781%_ _%body42873%_))))))
              (_%__kont4546345464%_
               (lambda ()
                 (_%generate-catch42784%_
                  _%handlers43046%_
                  (_%generate-thunk42781%_ _%body42873%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%$%g4304943101%_
                                                          (lambda ()
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%__stx4545245453%_)
                        (_%__kont4546345464%_)
                        (_%$%g4305043090%_))))
                 (_%__match4551345514%_
                  (lambda (_%$%e4307043108%_
                           _%$%hd4307143112%_
                           _%$%tl4307243115%_
                           _%$%e4307343118%_
                           _%$%hd4307443122%_
                           _%$%tl4307543125%_
                           _%__splice4546145462%_
                           _%$%target4307643128%_
                           _%$%tl4307843131%_)
                    (letrec ((_%$%loop4307943134%_
                              (lambda (_%$%hd4307743138%_ _%$%fini4308343141%_)
                                (if (gx#stx-pair? _%$%hd4307743138%_)
                                    (let ((_%$%e4308043143%_
                                           (gx#syntax-e _%$%hd4307743138%_)))
                                      (let ((_%$%lp-tl4308243150%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4308043143%_)))
                                            (_%$%lp-hd4308143147%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4308043143%_))))
                                        (_%$%loop4307943134%_
                                         _%$%lp-tl4308243150%_
                                         (cons _%$%lp-hd4308143147%_
                                               _%$%fini4308343141%_))))
                                    (let ((_%$%fini4308443153%_
                                           (reverse _%$%fini4308343141%_)))
                                      (if (gx#stx-null? _%$%tl4307243115%_)
                                          (_%__kont4545945460%_
                                           _%$%fini4308443153%_)
                                          (_%$%g4305043090%_)))))))
                      (_%$%loop4307943134%_ _%$%target4307643128%_ '()))))
                 (_%__match4548945490%_
                  (lambda (_%$%e4305443223%_
                           _%$%hd4305543227%_
                           _%$%tl4305643230%_
                           _%$%e4305743233%_
                           _%$%hd4305843237%_
                           _%$%tl4305943240%_
                           _%__splice4545745458%_
                           _%$%target4306043243%_
                           _%$%tl4306243246%_)
                    (letrec ((_%$%loop4306343249%_
                              (lambda (_%$%hd4306143253%_
                                       _%$%handler4306743256%_)
                                (if (gx#stx-pair? _%$%hd4306143253%_)
                                    (let ((_%$%e4306443258%_
                                           (gx#syntax-e _%$%hd4306143253%_)))
                                      (let ((_%$%lp-tl4306643265%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4306443258%_)))
                                            (_%$%lp-hd4306543262%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4306443258%_))))
                                        (_%$%loop4306343249%_
                                         _%$%lp-tl4306643265%_
                                         (cons _%$%lp-hd4306543262%_
                                               _%$%handler4306743256%_))))
                                    (let ((_%$%handler4306843268%_
                                           (reverse _%$%handler4306743256%_)))
                                      (_%__kont4545545456%_
                                       _%$%tl4305643230%_
                                       _%$%handler4306843268%_))))))
                      (_%$%loop4306343249%_ _%$%target4306043243%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _%__stx4545245453%_)
                                                        (let ((_%$%e4305443223%_
                                                               (gx#syntax-e
                                                                _%__stx4545245453%_)))
                                                          (let ((_%$%tl4305643230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4305443223%_)))
                        (_%$%hd4305543227%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4305443223%_))))
                    (if (gx#stx-pair? _%$%hd4305543227%_)
                        (let ((_%$%e4305743233%_
                               (gx#syntax-e _%$%hd4305543227%_)))
                          (let ((_%$%tl4305943240%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4305743233%_)))
                                (_%$%hd4305843237%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4305743233%_))))
                            (if (gx#identifier? _%$%hd4305843237%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/more-sugar[1]#_g45629_|
                                     _%$%hd4305843237%_)
                                    (if (gx#stx-pair/null? _%$%tl4305943240%_)
                                        (let ((_%__splice4545745458%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4305943240%_
                                                '0)))
                                          (let ((_%$%tl4306243246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4545745458%_
                                                    '1)))
                                                (_%$%target4306043243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4545745458%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4306243246%_)
                                                (_%__match4548945490%_
                                                 _%$%e4305443223%_
                                                 _%$%hd4305543227%_
                                                 _%$%tl4305643230%_
                                                 _%$%e4305743233%_
                                                 _%$%hd4305843237%_
                                                 _%$%tl4305943240%_
                                                 _%__splice4545745458%_
                                                 _%$%target4306043243%_
                                                 _%$%tl4306243246%_)
                                                (_%$%g4305043090%_))))
                                        (_%$%g4305043090%_))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/more-sugar[1]#_g45630_|
                                         _%$%hd4305843237%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4305943240%_)
                                            (let ((_%__splice4546145462%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4305943240%_
                                                    '0)))
                                              (let ((_%$%tl4307843131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4546145462%_
                                                        '1)))
                                                    (_%$%target4307643128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4546145462%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4307843131%_)
                                                    (_%__match4551345514%_
                                                     _%$%e4305443223%_
                                                     _%$%hd4305543227%_
                                                     _%$%tl4305643230%_
                                                     _%$%e4305743233%_
                                                     _%$%hd4305843237%_
                                                     _%$%tl4305943240%_
                                                     _%__splice4546145462%_
                                                     _%$%target4307643128%_
                                                     _%$%tl4307843131%_)
                                                    (_%$%g4305043090%_))))
                                            (_%$%g4305043090%_))
                                        (_%$%g4305043090%_)))
                                (_%$%g4305043090%_))))
                        (_%$%g4305043090%_))))
                (_%$%g4304943101%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont4552945530%_
                                          (lambda ()
                                            (_%lp42868%_
                                             _%$%g4287842916%_
                                             (cons _%$%g4287942918%_
                                                   _%body42873%_)))))
                                     (let* ((_%__match4556745568%_
                                             (lambda (_%$%e4295142986%_
                                                      _%$%hd4295242990%_
                                                      _%$%tl4295342993%_
                                                      _%__splice4552745528%_
                                                      _%$%target4295442996%_
                                                      _%$%tl4295642999%_)
                                               (letrec ((_%$%loop4295743002%_
                                                         (lambda (_%$%hd4295543006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%handler4296143009%_)
                   (if (gx#stx-pair? _%$%hd4295543006%_)
                       (let ((_%$%e4295843011%_
                              (gx#syntax-e _%$%hd4295543006%_)))
                         (let ((_%$%lp-tl4296043018%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4295843011%_)))
                               (_%$%lp-hd4295943015%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4295843011%_))))
                           (_%$%loop4295743002%_
                            _%$%lp-tl4296043018%_
                            (cons _%$%lp-hd4295943015%_
                                  _%$%handler4296143009%_))))
                       (let ((_%$%handler4296243021%_
                              (reverse _%$%handler4296143009%_)))
                         (_%__kont4552545526%_ _%$%handler4296243021%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4295743002%_
                                                  _%$%target4295442996%_
                                                  '()))))
                                            (_%__match4554945550%_
                                             (lambda (_%$%e4293843317%_
                                                      _%$%hd4293943321%_
                                                      _%$%tl4294043324%_
                                                      _%__splice4552345524%_
                                                      _%$%target4294143327%_
                                                      _%$%tl4294343330%_)
                                               (letrec ((_%$%loop4294443333%_
                                                         (lambda (_%$%hd4294243337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%fini4294843340%_)
                   (if (gx#stx-pair? _%$%hd4294243337%_)
                       (let ((_%$%e4294543342%_
                              (gx#syntax-e _%$%hd4294243337%_)))
                         (let ((_%$%lp-tl4294743349%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4294543342%_)))
                               (_%$%lp-hd4294643346%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4294543342%_))))
                           (_%$%loop4294443333%_
                            _%$%lp-tl4294743349%_
                            (cons _%$%lp-hd4294643346%_
                                  _%$%fini4294843340%_))))
                       (let ((_%$%fini4294943352%_
                              (reverse _%$%fini4294843340%_)))
                         (_%__kont4552145522%_ _%$%fini4294943352%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4294443333%_
                                                  _%$%target4294143327%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx4551845519%_)
                                           (let ((_%$%e4293843317%_
                                                  (gx#syntax-e
                                                   _%__stx4551845519%_)))
                                             (let ((_%$%tl4294043324%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e4293843317%_)))
                                                   (_%$%hd4293943321%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e4293843317%_))))
                                               (if (gx#identifier?
                                                    _%$%hd4293943321%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/more-sugar[1]#_g45631_|
                                                        _%$%hd4293943321%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%tl4294043324%_)
                                                           (let ((_%__splice4552345524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%$%tl4294043324%_
                           '0)))
                     (let ((_%$%tl4294343330%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4552345524%_ '1)))
                           (_%$%target4294143327%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4552345524%_ '0))))
                       (if (gx#stx-null? _%$%tl4294343330%_)
                           (_%__match4554945550%_
                            _%$%e4293843317%_
                            _%$%hd4293943321%_
                            _%$%tl4294043324%_
                            _%__splice4552345524%_
                            _%$%target4294143327%_
                            _%$%tl4294343330%_)
                           (_%__kont4552945530%_))))
                   (_%__kont4552945530%_))
               (if (gx#free-identifier=?
                    |gerbil/core/more-sugar[1]#_g45632_|
                    _%$%hd4293943321%_)
                   (if (gx#stx-pair/null? _%$%tl4294043324%_)
                       (let ((_%__splice4552745528%_
                              (gx#syntax-split-splice->vector
                               _%$%tl4294043324%_
                               '0)))
                         (let ((_%$%tl4295642999%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4552745528%_ '1)))
                               (_%$%target4295442996%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4552745528%_ '0))))
                           (if (gx#stx-null? _%$%tl4295642999%_)
                               (_%__match4556745568%_
                                _%$%e4293843317%_
                                _%$%hd4293943321%_
                                _%$%tl4294043324%_
                                _%__splice4552745528%_
                                _%$%target4295442996%_
                                _%$%tl4295642999%_)
                               (_%__kont4552945530%_))))
                       (_%__kont4552945530%_))
                   (_%__kont4552945530%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont4552945530%_))))
                                           (_%__kont4552945530%_)))))))
                              (_%__kont4557545576%_
                               (lambda ()
                                 (cons 'begin (reverse _%body42873%_)))))
                          (let ((_%$%g4287542899%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx4557045571%_)
                                       (_%__kont4557545576%_)
                                       (_%$%g4287642888%_)))))
                            (if (gx#stx-pair? _%__stx4557045571%_)
                                (let ((_%$%e4288042906%_
                                       (gx#syntax-e _%__stx4557045571%_)))
                                  (let ((_%$%tl4288242913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4288042906%_)))
                                        (_%$%hd4288142910%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4288042906%_))))
                                    (_%__kont4557345574%_
                                     _%$%tl4288242913%_
                                     _%$%hd4288142910%_)))
                                (_%$%g4287542899%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop4279542829%_
                                             _%$%target4279242823%_
                                             '()))
                                          (_%$%g4278642806%_
                                           _%$%g4278742810%_)))))
                                (_%$%g4278642806%_ _%$%g4278742810%_))))
                        (_%$%g4278642806%_ _%$%g4278742810%_)))))
            (_%$%g4278543394%_ _%stx42778%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx44194%_)
        (let* ((_%$%g4419844227%_
                (lambda (_%$%g4419944223%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4419944223%_)))
               (_%$%g4419744323%_
                (lambda (_%$%g4419944231%_)
                  (if (gx#stx-pair? _%$%g4419944231%_)
                      (let ((_%$%e4420244234%_
                             (gx#syntax-e _%$%g4419944231%_)))
                        (let ((_%$%hd4420344238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4420244234%_)))
                              (_%$%tl4420444241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4420244234%_))))
                          (if (gx#stx-pair/null? _%$%tl4420444241%_)
                              (let ((_g45633_
                                     (gx#syntax-split-splice
                                      _%$%tl4420444241%_
                                      '0)))
                                (begin
                                  (let ((_g45634_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45633_)
                                               (##values-length _g45633_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45634_ 2)))
                                        (error "Context expects 2 values"
                                               _g45634_)))
                                  (let ((_%$%target4420544244%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45633_ 0)))
                                        (_%$%tl4420744247%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45633_ 1))))
                                    (if (gx#stx-null? _%$%tl4420744247%_)
                                        (letrec ((_%$%loop4420844250%_
                                                  (lambda (_%$%hd4420644254%_
                                                           _%$%val4421244257%_
                                                           _%$%key4421344258%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4420644254%_)
                                                        (let ((_%$%e4420944260%_
                                                               (gx#syntax-e
                                                                _%$%hd4420644254%_)))
                                                          (let ((_%$%lp-hd4421044264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4420944260%_)))
                        (_%$%lp-tl4421144267%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4420944260%_))))
                    (if (gx#stx-pair? _%$%lp-hd4421044264%_)
                        (let ((_%$%e4421644270%_
                               (gx#syntax-e _%$%lp-hd4421044264%_)))
                          (let ((_%$%hd4421744274%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4421644270%_)))
                                (_%$%tl4421844277%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4421644270%_))))
                            (if (gx#stx-pair? _%$%tl4421844277%_)
                                (let ((_%$%e4421944280%_
                                       (gx#syntax-e _%$%tl4421844277%_)))
                                  (let ((_%$%hd4422044284%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4421944280%_)))
                                        (_%$%tl4422144287%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4421944280%_))))
                                    (if (gx#stx-null? _%$%tl4422144287%_)
                                        (_%$%loop4420844250%_
                                         _%$%lp-tl4421144267%_
                                         (cons _%$%hd4422044284%_
                                               _%$%val4421244257%_)
                                         (cons _%$%hd4421744274%_
                                               _%$%key4421344258%_))
                                        (_%$%g4419844227%_
                                         _%$%g4419944231%_))))
                                (_%$%g4419844227%_ _%$%g4419944231%_))))
                        (_%$%g4419844227%_ _%$%g4419944231%_))))
                (let ((_%$%val4421444290%_ (reverse _%$%val4421244257%_))
                      (_%$%key4421544292%_ (reverse _%$%key4421344258%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4421444290%_
                                 _%$%key4421544292%_)
                                (foldr (lambda (_%$%g4431144315%_
                                                _%$%g4431244318%_
                                                _%$%g4431344320%_)
                                         (cons (cons _%$%g4431244318%_
                                                     (cons _%$%g4431144315%_
                                                           '()))
                                               _%$%g4431344320%_))
                                       '()
                                       _%$%val4421444290%_
                                       _%$%key4421544292%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4420844250%_
                                           _%$%target4420544244%_
                                           '()
                                           '()))
                                        (_%$%g4419844227%_
                                         _%$%g4419944231%_)))))
                              (_%$%g4419844227%_ _%$%g4419944231%_))))
                      (_%$%g4419844227%_ _%$%g4419944231%_)))))
          (_%$%g4419744323%_ _%$stx44194%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx44328%_)
        (let* ((_%$%g4433244361%_
                (lambda (_%$%g4433344357%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4433344357%_)))
               (_%$%g4433144457%_
                (lambda (_%$%g4433344365%_)
                  (if (gx#stx-pair? _%$%g4433344365%_)
                      (let ((_%$%e4433644368%_
                             (gx#syntax-e _%$%g4433344365%_)))
                        (let ((_%$%hd4433744372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4433644368%_)))
                              (_%$%tl4433844375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4433644368%_))))
                          (if (gx#stx-pair/null? _%$%tl4433844375%_)
                              (let ((_g45635_
                                     (gx#syntax-split-splice
                                      _%$%tl4433844375%_
                                      '0)))
                                (begin
                                  (let ((_g45636_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45635_)
                                               (##values-length _g45635_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45636_ 2)))
                                        (error "Context expects 2 values"
                                               _g45636_)))
                                  (let ((_%$%target4433944378%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45635_ 0)))
                                        (_%$%tl4434144381%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45635_ 1))))
                                    (if (gx#stx-null? _%$%tl4434144381%_)
                                        (letrec ((_%$%loop4434244384%_
                                                  (lambda (_%$%hd4434044388%_
                                                           _%$%val4434644391%_
                                                           _%$%key4434744392%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4434044388%_)
                                                        (let ((_%$%e4434344394%_
                                                               (gx#syntax-e
                                                                _%$%hd4434044388%_)))
                                                          (let ((_%$%lp-hd4434444398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4434344394%_)))
                        (_%$%lp-tl4434544401%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4434344394%_))))
                    (if (gx#stx-pair? _%$%lp-hd4434444398%_)
                        (let ((_%$%e4435044404%_
                               (gx#syntax-e _%$%lp-hd4434444398%_)))
                          (let ((_%$%hd4435144408%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4435044404%_)))
                                (_%$%tl4435244411%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4435044404%_))))
                            (if (gx#stx-pair? _%$%tl4435244411%_)
                                (let ((_%$%e4435344414%_
                                       (gx#syntax-e _%$%tl4435244411%_)))
                                  (let ((_%$%hd4435444418%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4435344414%_)))
                                        (_%$%tl4435544421%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4435344414%_))))
                                    (if (gx#stx-null? _%$%tl4435544421%_)
                                        (_%$%loop4434244384%_
                                         _%$%lp-tl4434544401%_
                                         (cons _%$%hd4435444418%_
                                               _%$%val4434644391%_)
                                         (cons _%$%hd4435144408%_
                                               _%$%key4434744392%_))
                                        (_%$%g4433244361%_
                                         _%$%g4433344365%_))))
                                (_%$%g4433244361%_ _%$%g4433344365%_))))
                        (_%$%g4433244361%_ _%$%g4433344365%_))))
                (let ((_%$%val4434844424%_ (reverse _%$%val4434644391%_))
                      (_%$%key4434944426%_ (reverse _%$%key4434744392%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4434844424%_
                                 _%$%key4434944426%_)
                                (foldr (lambda (_%$%g4444544449%_
                                                _%$%g4444644452%_
                                                _%$%g4444744454%_)
                                         (cons (cons _%$%g4444644452%_
                                                     (cons _%$%g4444544449%_
                                                           '()))
                                               _%$%g4444744454%_))
                                       '()
                                       _%$%val4434844424%_
                                       _%$%key4434944426%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4434244384%_
                                           _%$%target4433944378%_
                                           '()
                                           '()))
                                        (_%$%g4433244361%_
                                         _%$%g4433344365%_)))))
                              (_%$%g4433244361%_ _%$%g4433344365%_))))
                      (_%$%g4433244361%_ _%$%g4433344365%_)))))
          (_%$%g4433144457%_ _%$stx44328%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44462%_)
        (let* ((_%$%g4446644495%_
                (lambda (_%$%g4446744491%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4446744491%_)))
               (_%$%g4446544591%_
                (lambda (_%$%g4446744499%_)
                  (if (gx#stx-pair? _%$%g4446744499%_)
                      (let ((_%$%e4447044502%_
                             (gx#syntax-e _%$%g4446744499%_)))
                        (let ((_%$%hd4447144506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4447044502%_)))
                              (_%$%tl4447244509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4447044502%_))))
                          (if (gx#stx-pair/null? _%$%tl4447244509%_)
                              (let ((_g45637_
                                     (gx#syntax-split-splice
                                      _%$%tl4447244509%_
                                      '0)))
                                (begin
                                  (let ((_g45638_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45637_)
                                               (##values-length _g45637_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45638_ 2)))
                                        (error "Context expects 2 values"
                                               _g45638_)))
                                  (let ((_%$%target4447344512%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45637_ 0)))
                                        (_%$%tl4447544515%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45637_ 1))))
                                    (if (gx#stx-null? _%$%tl4447544515%_)
                                        (letrec ((_%$%loop4447644518%_
                                                  (lambda (_%$%hd4447444522%_
                                                           _%$%val4448044525%_
                                                           _%$%key4448144526%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4447444522%_)
                                                        (let ((_%$%e4447744528%_
                                                               (gx#syntax-e
                                                                _%$%hd4447444522%_)))
                                                          (let ((_%$%lp-hd4447844532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4447744528%_)))
                        (_%$%lp-tl4447944535%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4447744528%_))))
                    (if (gx#stx-pair? _%$%lp-hd4447844532%_)
                        (let ((_%$%e4448444538%_
                               (gx#syntax-e _%$%lp-hd4447844532%_)))
                          (let ((_%$%hd4448544542%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4448444538%_)))
                                (_%$%tl4448644545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4448444538%_))))
                            (if (gx#stx-pair? _%$%tl4448644545%_)
                                (let ((_%$%e4448744548%_
                                       (gx#syntax-e _%$%tl4448644545%_)))
                                  (let ((_%$%hd4448844552%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4448744548%_)))
                                        (_%$%tl4448944555%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4448744548%_))))
                                    (if (gx#stx-null? _%$%tl4448944555%_)
                                        (_%$%loop4447644518%_
                                         _%$%lp-tl4447944535%_
                                         (cons _%$%hd4448844552%_
                                               _%$%val4448044525%_)
                                         (cons _%$%hd4448544542%_
                                               _%$%key4448144526%_))
                                        (_%$%g4446644495%_
                                         _%$%g4446744499%_))))
                                (_%$%g4446644495%_ _%$%g4446744499%_))))
                        (_%$%g4446644495%_ _%$%g4446744499%_))))
                (let ((_%$%val4448244558%_ (reverse _%$%val4448044525%_))
                      (_%$%key4448344560%_ (reverse _%$%key4448144526%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4448244558%_
                                 _%$%key4448344560%_)
                                (foldr (lambda (_%$%g4457944583%_
                                                _%$%g4458044586%_
                                                _%$%g4458144588%_)
                                         (cons (cons _%$%g4458044586%_
                                                     (cons _%$%g4457944583%_
                                                           '()))
                                               _%$%g4458144588%_))
                                       '()
                                       _%$%val4448244558%_
                                       _%$%key4448344560%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4447644518%_
                                           _%$%target4447344512%_
                                           '()
                                           '()))
                                        (_%$%g4446644495%_
                                         _%$%g4446744499%_)))))
                              (_%$%g4446644495%_ _%$%g4446744499%_))))
                      (_%$%g4446644495%_ _%$%g4446744499%_)))))
          (_%$%g4446544591%_ _%$stx44462%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44596%_)
        (let* ((_%$%g4459944623%_
                (lambda (_%$%g4460044619%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4460044619%_)))
               (_%$%g4459844864%_
                (lambda (_%$%g4460044627%_)
                  (if (gx#stx-pair? _%$%g4460044627%_)
                      (let ((_%$%e4460344630%_
                             (gx#syntax-e _%$%g4460044627%_)))
                        (let ((_%$%hd4460444634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4460344630%_)))
                              (_%$%tl4460544637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4460344630%_))))
                          (if (gx#stx-pair? _%$%tl4460544637%_)
                              (let ((_%$%e4460644640%_
                                     (gx#syntax-e _%$%tl4460544637%_)))
                                (let ((_%$%hd4460744644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4460644640%_)))
                                      (_%$%tl4460844647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4460644640%_))))
                                  (if (gx#stx-pair/null? _%$%tl4460844647%_)
                                      (let ((_g45639_
                                             (gx#syntax-split-splice
                                              _%$%tl4460844647%_
                                              '0)))
                                        (begin
                                          (let ((_g45640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45639_)
                                                       (##values-length
                                                        _g45639_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45640_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45640_)))
                                          (let ((_%$%target4460944650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45639_ 0)))
                                                (_%$%tl4461144653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45639_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4461144653%_)
                                                (letrec ((_%$%loop4461244656%_
                                                          (lambda (_%$%hd4461044660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%entry4461644663%_)
                    (if (gx#stx-pair? _%$%hd4461044660%_)
                        (let ((_%$%e4461344665%_
                               (gx#syntax-e _%$%hd4461044660%_)))
                          (let ((_%$%lp-hd4461444669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4461344665%_)))
                                (_%$%lp-tl4461544672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4461344665%_))))
                            (_%$%loop4461244656%_
                             _%$%lp-tl4461544672%_
                             (cons _%$%lp-hd4461444669%_
                                   _%$%entry4461644663%_))))
                        (let* ((_%$%entry4461744675%_
                                (reverse _%$%entry4461644663%_))
                               (_%$%g4469844706%_
                                (lambda (_%$%g4469944702%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4469944702%_)))
                               (_%$%g4469744852%_
                                (lambda (_%$%g4469944710%_)
                                  (let* ((_%$%g4472544751%_
                                          (lambda (_%$%g4472644747%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g4472644747%_)))
                                         (_%$%g4472444840%_
                                          (lambda (_%$%g4472644755%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%g4472644755%_)
                                                (let ((_g45641_
                                                       (gx#syntax-split-splice
                                                        _%$%g4472644755%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45641_)
                         (##values-length _g45641_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45642_ 2)))
                  (error "Context expects 2 values" _g45642_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4472944758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45641_
                                                              0)))
                                                          (_%$%tl4473144761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45641_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4473144761%_)
                                                          (letrec ((_%$%loop4473244764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4473044768%_
                                     _%$%val4473644771%_
                                     _%$%key4473744772%_)
                              (if (gx#stx-pair? _%$%hd4473044768%_)
                                  (let ((_%$%e4473344774%_
                                         (gx#syntax-e _%$%hd4473044768%_)))
                                    (let ((_%$%lp-hd4473444778%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4473344774%_)))
                                          (_%$%lp-tl4473544781%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4473344774%_))))
                                      (if (gx#stx-pair? _%$%lp-hd4473444778%_)
                                          (let ((_%$%e4474044784%_
                                                 (gx#syntax-e
                                                  _%$%lp-hd4473444778%_)))
                                            (let ((_%$%hd4474144788%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4474044784%_)))
                                                  (_%$%tl4474244791%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4474044784%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl4474244791%_)
                                                  (let ((_%$%e4474344794%_
                                                         (gx#syntax-e
                                                          _%$%tl4474244791%_)))
                                                    (let ((_%$%hd4474444798%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4474344794%_)))
                                                          (_%$%tl4474544801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4474344794%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4474544801%_)
                                                          (_%$%loop4473244764%_
                                                           _%$%lp-tl4473544781%_
                                                           (cons _%$%hd4474444798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%val4473644771%_)
                   (cons _%$%hd4474144788%_ _%$%key4473744772%_))
                  (_%$%g4472544751%_ _%$%g4472644755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4472544751%_
                                                   _%$%g4472644755%_))))
                                          (_%$%g4472544751%_
                                           _%$%g4472644755%_))))
                                  (let ((_%$%val4473844804%_
                                         (reverse _%$%val4473644771%_))
                                        (_%$%key4473944806%_
                                         (reverse _%$%key4473744772%_)))
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'ht)
                                                      (cons (cons _%$%hd4460744644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'size: (cons _%$%g4469944710%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%val4473844804%_
                                                   _%$%key4473944806%_)
                                                  (foldr (lambda (_%$%g4482844832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4482944835%_
                          _%$%g4483044837%_)
                   (cons (cons (gx#datum->syntax '#f 'hash-put!)
                               (cons (gx#datum->syntax '#f 'ht)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quasiquote)
                                                 (cons _%$%g4482944835%_ '()))
                                           (cons _%$%g4482844832%_ '()))))
                         _%$%g4483044837%_))
                 (cons (gx#datum->syntax '#f 'ht) '())
                 _%$%val4473844804%_
                 _%$%key4473944806%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (_%$%loop4473244764%_ _%$%target4472944758%_ '() '()))
                  (_%$%g4472544751%_ _%$%g4472644755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4472544751%_
                                                 _%$%g4472644755%_)))))
                                    (_%$%g4472444840%_
                                     (foldr (lambda (_%$%g4484344846%_
                                                     _%$%g4484444849%_)
                                              (cons _%$%g4484344846%_
                                                    _%$%g4484444849%_))
                                            '()
                                            _%$%entry4461744675%_))))))
                          (_%$%g4469744852%_
                           (gx#stx-length
                            (foldr (lambda (_%$%g4485544858%_
                                            _%$%g4485644861%_)
                                     (cons _%$%g4485544858%_
                                           _%$%g4485644861%_))
                                   '()
                                   _%$%entry4461744675%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4461244656%_
                                                   _%$%target4460944650%_
                                                   '()))
                                                (_%$%g4459944623%_
                                                 _%$%g4460044627%_)))))
                                      (_%$%g4459944623%_ _%$%g4460044627%_))))
                              (_%$%g4459944623%_ _%$%g4460044627%_))))
                      (_%$%g4459944623%_ _%$%g4460044627%_)))))
          (_%$%g4459844864%_ _%stx44596%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44870%_)
        (let* ((_%$%g4487344887%_
                (lambda (_%$%g4487444883%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4487444883%_)))
               (_%$%g4487244959%_
                (lambda (_%$%g4487444891%_)
                  (if (gx#stx-pair? _%$%g4487444891%_)
                      (let ((_%$%e4487644894%_
                             (gx#syntax-e _%$%g4487444891%_)))
                        (let ((_%$%hd4487744898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4487644894%_)))
                              (_%$%tl4487844901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4487644894%_))))
                          (if (gx#stx-pair? _%$%tl4487844901%_)
                              (let ((_%$%e4487944904%_
                                     (gx#syntax-e _%$%tl4487844901%_)))
                                (let ((_%$%hd4488044908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4487944904%_)))
                                      (_%$%tl4488144911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4487944904%_))))
                                  (if (gx#stx-null? _%$%tl4488144911%_)
                                      (if (gx#stx-string? _%$%hd4488044908%_)
                                          (let* ((_%$%g4492844936%_
                                                  (lambda (_%$%g4492944932%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4492944932%_)))
                                                 (_%$%g4492744955%_
                                                  (lambda (_%$%g4492944940%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%$%g4492944940%_
                                                                '())))))
                                            (_%$%g4492744955%_
                                             (string->bytes
                                              (gx#stx-e _%$%hd4488044908%_))))
                                          (_%$%g4487344887%_
                                           _%$%g4487444891%_))
                                      (_%$%g4487344887%_ _%$%g4487444891%_))))
                              (_%$%g4487344887%_ _%$%g4487444891%_))))
                      (_%$%g4487344887%_ _%$%g4487444891%_)))))
          (_%$%g4487244959%_ _%stx44870%_))))
    (define |gerbil/core/more-sugar[:0:]#@eval|
      (lambda (_%stx44963%_)
        (let* ((_%$%g4496644980%_
                (lambda (_%$%g4496744976%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4496744976%_)))
               (_%$%g4496545052%_
                (lambda (_%$%g4496744984%_)
                  (if (gx#stx-pair? _%$%g4496744984%_)
                      (let ((_%$%e4496944987%_
                             (gx#syntax-e _%$%g4496744984%_)))
                        (let ((_%$%hd4497044991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4496944987%_)))
                              (_%$%tl4497144994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4496944987%_))))
                          (if (gx#stx-pair? _%$%tl4497144994%_)
                              (let ((_%$%e4497244997%_
                                     (gx#syntax-e _%$%tl4497144994%_)))
                                (let ((_%$%hd4497345001%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4497244997%_)))
                                      (_%$%tl4497445004%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4497244997%_))))
                                  (if (gx#stx-null? _%$%tl4497445004%_)
                                      (let* ((_%$%g4502145029%_
                                              (lambda (_%$%g4502245025%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g4502245025%_)))
                                             (_%$%g4502045048%_
                                              (lambda (_%$%g4502245033%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%$%g4502245033%_
                                                            '())))))
                                        (_%$%g4502045048%_
                                         (gx#eval-syntax+1
                                          _%$%hd4497345001%_)))
                                      (_%$%g4496644980%_ _%$%g4496744984%_))))
                              (_%$%g4496644980%_ _%$%g4496744984%_))))
                      (_%$%g4496644980%_ _%$%g4496744984%_)))))
          (_%$%g4496545052%_ _%stx44963%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx45056%_)
        (let* ((_%$%g4505945073%_
                (lambda (_%$%g4506045069%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4506045069%_)))
               (_%$%g4505845114%_
                (lambda (_%$%g4506045077%_)
                  (if (gx#stx-pair? _%$%g4506045077%_)
                      (let ((_%$%e4506245080%_
                             (gx#syntax-e _%$%g4506045077%_)))
                        (let ((_%$%hd4506345084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4506245080%_)))
                              (_%$%tl4506445087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4506245080%_))))
                          (if (gx#stx-pair? _%$%tl4506445087%_)
                              (let ((_%$%e4506545090%_
                                     (gx#syntax-e _%$%tl4506445087%_)))
                                (let ((_%$%hd4506645094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4506545090%_)))
                                      (_%$%tl4506745097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4506545090%_))))
                                  (if (gx#stx-null? _%$%tl4506745097%_)
                                      (let ()
                                        (if (gx#current-expander-compiling?)
                                            (gx#eval-syntax _%$%hd4506645094%_)
                                            '#!void)
                                        (cons (gx#datum->syntax '#f 'void)
                                              '()))
                                      (_%$%g4505945073%_ _%$%g4506045077%_))))
                              (_%$%g4505945073%_ _%$%g4506045077%_))))
                      (_%$%g4505945073%_ _%$%g4506045077%_)))))
          (_%$%g4505845114%_ _%stx45056%_))))))
